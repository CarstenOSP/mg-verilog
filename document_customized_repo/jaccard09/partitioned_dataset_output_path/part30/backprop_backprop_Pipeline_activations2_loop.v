
module backprop_backprop_Pipeline_activations2_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,oracle_activations2_1_address0,oracle_activations2_1_ce0,oracle_activations2_1_we0,oracle_activations2_1_d0,oracle_activations2_address0,oracle_activations2_ce0,oracle_activations2_we0,oracle_activations2_d0,weights3_0_address0,weights3_0_ce0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_q1,p_reload86,weights3_1_address0,weights3_1_ce0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_q1,p_reload85,p_reload,dactivations2_address0,dactivations2_ce0,dactivations2_q0,dactivations2_address1,dactivations2_ce1,dactivations2_q1,dactivations2_1_address0,dactivations2_1_ce0,dactivations2_1_q0,dactivations2_1_address1,dactivations2_1_ce1,dactivations2_1_q1,grp_fu_3155_p_din0,grp_fu_3155_p_din1,grp_fu_3155_p_opcode,grp_fu_3155_p_dout0,grp_fu_3155_p_ce,grp_fu_3159_p_din0,grp_fu_3159_p_din1,grp_fu_3159_p_opcode,grp_fu_3159_p_dout0,grp_fu_3159_p_ce,grp_fu_3163_p_din0,grp_fu_3163_p_din1,grp_fu_3163_p_opcode,grp_fu_3163_p_dout0,grp_fu_3163_p_ce,grp_fu_3167_p_din0,grp_fu_3167_p_din1,grp_fu_3167_p_opcode,grp_fu_3167_p_dout0,grp_fu_3167_p_ce,grp_fu_1780_p_din0,grp_fu_1780_p_din1,grp_fu_1780_p_dout0,grp_fu_1780_p_ce,grp_fu_3171_p_din0,grp_fu_3171_p_din1,grp_fu_3171_p_dout0,grp_fu_3171_p_ce,grp_fu_3175_p_din0,grp_fu_3175_p_din1,grp_fu_3175_p_dout0,grp_fu_3175_p_ce,grp_fu_3179_p_din0,grp_fu_3179_p_din1,grp_fu_3179_p_dout0,grp_fu_3179_p_ce,grp_fu_3207_p_din0,grp_fu_3207_p_din1,grp_fu_3207_p_dout0,grp_fu_3207_p_ce,grp_fu_3211_p_din0,grp_fu_3211_p_din1,grp_fu_3211_p_dout0,grp_fu_3211_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] oracle_activations2_1_address0;
output   oracle_activations2_1_ce0;
output   oracle_activations2_1_we0;
output  [63:0] oracle_activations2_1_d0;
output  [4:0] oracle_activations2_address0;
output   oracle_activations2_ce0;
output   oracle_activations2_we0;
output  [63:0] oracle_activations2_d0;
output  [6:0] weights3_0_address0;
output   weights3_0_ce0;
input  [63:0] weights3_0_q0;
output  [6:0] weights3_0_address1;
output   weights3_0_ce1;
input  [63:0] weights3_0_q1;
input  [63:0] p_reload86;
output  [6:0] weights3_1_address0;
output   weights3_1_ce0;
input  [63:0] weights3_1_q0;
output  [6:0] weights3_1_address1;
output   weights3_1_ce1;
input  [63:0] weights3_1_q1;
input  [63:0] p_reload85;
input  [63:0] p_reload;
output  [4:0] dactivations2_address0;
output   dactivations2_ce0;
input  [63:0] dactivations2_q0;
output  [4:0] dactivations2_address1;
output   dactivations2_ce1;
input  [63:0] dactivations2_q1;
output  [4:0] dactivations2_1_address0;
output   dactivations2_1_ce0;
input  [63:0] dactivations2_1_q0;
output  [4:0] dactivations2_1_address1;
output   dactivations2_1_ce1;
input  [63:0] dactivations2_1_q1;
output  [63:0] grp_fu_3155_p_din0;
output  [63:0] grp_fu_3155_p_din1;
output  [0:0] grp_fu_3155_p_opcode;
input  [63:0] grp_fu_3155_p_dout0;
output   grp_fu_3155_p_ce;
output  [63:0] grp_fu_3159_p_din0;
output  [63:0] grp_fu_3159_p_din1;
output  [0:0] grp_fu_3159_p_opcode;
input  [63:0] grp_fu_3159_p_dout0;
output   grp_fu_3159_p_ce;
output  [63:0] grp_fu_3163_p_din0;
output  [63:0] grp_fu_3163_p_din1;
output  [0:0] grp_fu_3163_p_opcode;
input  [63:0] grp_fu_3163_p_dout0;
output   grp_fu_3163_p_ce;
output  [63:0] grp_fu_3167_p_din0;
output  [63:0] grp_fu_3167_p_din1;
output  [0:0] grp_fu_3167_p_opcode;
input  [63:0] grp_fu_3167_p_dout0;
output   grp_fu_3167_p_ce;
output  [63:0] grp_fu_1780_p_din0;
output  [63:0] grp_fu_1780_p_din1;
input  [63:0] grp_fu_1780_p_dout0;
output   grp_fu_1780_p_ce;
output  [63:0] grp_fu_3171_p_din0;
output  [63:0] grp_fu_3171_p_din1;
input  [63:0] grp_fu_3171_p_dout0;
output   grp_fu_3171_p_ce;
output  [63:0] grp_fu_3175_p_din0;
output  [63:0] grp_fu_3175_p_din1;
input  [63:0] grp_fu_3175_p_dout0;
output   grp_fu_3175_p_ce;
output  [63:0] grp_fu_3179_p_din0;
output  [63:0] grp_fu_3179_p_din1;
input  [63:0] grp_fu_3179_p_dout0;
output   grp_fu_3179_p_ce;
output  [63:0] grp_fu_3207_p_din0;
output  [63:0] grp_fu_3207_p_din1;
input  [63:0] grp_fu_3207_p_dout0;
output   grp_fu_3207_p_ce;
output  [63:0] grp_fu_3211_p_din0;
output  [63:0] grp_fu_3211_p_din1;
input  [63:0] grp_fu_3211_p_dout0;
output   grp_fu_3211_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
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
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] tmp_reg_744;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_364;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_368;
reg   [63:0] reg_372;
reg   [63:0] reg_376;
reg   [63:0] reg_380;
reg   [63:0] reg_385;
reg   [6:0] i_9_reg_738;
wire   [5:0] lshr_ln_fu_406_p4;
reg   [5:0] lshr_ln_reg_748;
reg   [5:0] lshr_ln_reg_748_pp0_iter1_reg;
reg   [5:0] lshr_ln_reg_748_pp0_iter2_reg;
reg   [5:0] lshr_ln_reg_748_pp0_iter3_reg;
reg   [5:0] lshr_ln_reg_748_pp0_iter4_reg;
reg   [5:0] lshr_ln_reg_748_pp0_iter5_reg;
reg   [5:0] lshr_ln_reg_748_pp0_iter6_reg;
reg   [5:0] lshr_ln_reg_748_pp0_iter7_reg;
reg   [5:0] lshr_ln_reg_748_pp0_iter8_reg;
reg   [5:0] lshr_ln_reg_748_pp0_iter9_reg;
wire   [6:0] sub_ln85_fu_438_p2;
reg   [6:0] sub_ln85_reg_753;
wire   [7:0] empty_fu_493_p2;
reg   [7:0] empty_reg_774;
wire   [6:0] lshr_ln2_fu_499_p4;
reg   [6:0] lshr_ln2_reg_781;
wire   [6:0] add_ln85_1_fu_534_p2;
reg   [6:0] add_ln85_1_reg_791;
wire   [6:0] add_ln85_3_fu_550_p2;
reg   [6:0] add_ln85_3_reg_796;
reg   [6:0] lshr_ln85_3_reg_801;
wire   [6:0] add_ln85_5_fu_590_p2;
reg   [6:0] add_ln85_5_reg_806;
wire   [63:0] bitcast_ln85_fu_596_p1;
wire   [63:0] bitcast_ln85_1_fu_601_p1;
wire   [63:0] bitcast_ln85_2_fu_606_p1;
reg   [3:0] tmp_76_reg_846;
reg   [3:0] tmp_76_reg_846_pp0_iter1_reg;
reg   [3:0] tmp_76_reg_846_pp0_iter2_reg;
reg   [3:0] tmp_76_reg_846_pp0_iter3_reg;
reg   [3:0] tmp_76_reg_846_pp0_iter4_reg;
reg   [3:0] tmp_76_reg_846_pp0_iter5_reg;
reg   [3:0] tmp_76_reg_846_pp0_iter6_reg;
reg   [3:0] tmp_76_reg_846_pp0_iter7_reg;
reg   [3:0] tmp_76_reg_846_pp0_iter8_reg;
reg   [3:0] tmp_76_reg_846_pp0_iter9_reg;
wire   [63:0] bitcast_ln85_3_fu_636_p1;
wire   [63:0] bitcast_ln85_4_fu_651_p1;
wire   [63:0] bitcast_ln85_6_fu_656_p1;
wire   [63:0] bitcast_ln85_7_fu_661_p1;
wire   [63:0] bitcast_ln85_9_fu_666_p1;
wire   [63:0] bitcast_ln85_5_fu_671_p1;
wire   [63:0] bitcast_ln85_8_fu_676_p1;
wire   [63:0] bitcast_ln85_10_fu_681_p1;
wire   [63:0] bitcast_ln85_11_fu_686_p1;
reg   [63:0] mul8_i2_reg_916;
reg   [63:0] mul8_111_i_reg_921;
reg   [63:0] mul8_111_i_reg_921_pp0_iter3_reg;
reg   [63:0] mul8_111_i_reg_921_pp0_iter4_reg;
reg   [63:0] mul8_223_i_reg_926;
reg   [63:0] mul8_223_i_reg_926_pp0_iter3_reg;
reg   [63:0] mul8_223_i_reg_926_pp0_iter4_reg;
reg   [63:0] mul8_223_i_reg_926_pp0_iter5_reg;
reg   [63:0] mul8_223_i_reg_926_pp0_iter6_reg;
reg   [63:0] mul8_223_i_reg_926_pp0_iter7_reg;
reg   [63:0] mul8_1_i2_reg_931;
reg   [63:0] mul8_1_1_i_reg_936;
reg   [63:0] mul8_1_1_i_reg_936_pp0_iter4_reg;
reg   [63:0] mul8_1_1_i_reg_936_pp0_iter5_reg;
reg   [63:0] mul8_2_i2_reg_941;
reg   [63:0] mul8_2_1_i_reg_946;
reg   [63:0] mul8_2_1_i_reg_946_pp0_iter4_reg;
reg   [63:0] mul8_2_1_i_reg_946_pp0_iter5_reg;
reg   [63:0] mul8_3_i2_reg_951;
reg   [63:0] mul8_1_2_i_reg_956;
reg   [63:0] mul8_1_2_i_reg_956_pp0_iter4_reg;
reg   [63:0] mul8_1_2_i_reg_956_pp0_iter5_reg;
reg   [63:0] mul8_1_2_i_reg_956_pp0_iter6_reg;
reg   [63:0] mul8_1_2_i_reg_956_pp0_iter7_reg;
reg   [63:0] mul8_2_2_i_reg_961;
reg   [63:0] mul8_2_2_i_reg_961_pp0_iter4_reg;
reg   [63:0] mul8_2_2_i_reg_961_pp0_iter5_reg;
reg   [63:0] mul8_2_2_i_reg_961_pp0_iter6_reg;
reg   [63:0] mul8_2_2_i_reg_961_pp0_iter7_reg;
reg   [63:0] mul8_2_2_i_reg_961_pp0_iter8_reg;
reg   [63:0] mul8_3_1_i_reg_966;
reg   [63:0] mul8_3_1_i_reg_966_pp0_iter4_reg;
reg   [63:0] mul8_3_1_i_reg_966_pp0_iter5_reg;
reg   [63:0] mul8_3_2_i_reg_971;
reg   [63:0] mul8_3_2_i_reg_971_pp0_iter4_reg;
reg   [63:0] mul8_3_2_i_reg_971_pp0_iter5_reg;
reg   [63:0] mul8_3_2_i_reg_971_pp0_iter6_reg;
reg   [63:0] mul8_3_2_i_reg_971_pp0_iter7_reg;
reg   [63:0] mul8_3_2_i_reg_971_pp0_iter8_reg;
reg   [63:0] add11_i2_reg_976;
reg   [63:0] add11_1_i2_reg_981;
reg   [63:0] add11_2_i2_reg_986;
reg   [63:0] add11_3_i2_reg_991;
reg   [63:0] add11_112_i_reg_996;
reg   [63:0] add11_1_1_i_reg_1001;
reg   [63:0] add11_2_1_i_reg_1006;
reg   [63:0] add11_3_1_i_reg_1011;
wire   [63:0] zext_ln81_fu_691_p1;
reg   [63:0] zext_ln81_reg_1016;
reg   [63:0] zext_ln81_reg_1016_pp0_iter11_reg;
reg   [63:0] zext_ln81_reg_1016_pp0_iter12_reg;
reg   [63:0] zext_ln81_reg_1016_pp0_iter13_reg;
wire   [63:0] zext_ln83_1_fu_703_p1;
reg   [63:0] zext_ln83_1_reg_1032;
reg   [63:0] zext_ln83_1_reg_1032_pp0_iter11_reg;
reg   [63:0] zext_ln83_1_reg_1032_pp0_iter12_reg;
reg   [63:0] zext_ln83_1_reg_1032_pp0_iter13_reg;
reg   [63:0] dactivations2_load_reg_1048;
reg   [63:0] dactivations2_1_load_reg_1053;
reg   [63:0] dactivations2_load_1_reg_1058;
reg   [63:0] dactivations2_1_load_1_reg_1063;
reg   [63:0] add11_224_i_reg_1068;
reg   [63:0] add11_1_2_i_reg_1073;
reg   [63:0] add11_2_2_i_reg_1078;
reg   [63:0] add11_3_2_i_reg_1083;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln85_fu_444_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln85_1_fu_468_p1;
wire   [63:0] zext_ln85_2_fu_509_p1;
wire   [63:0] zext_ln85_3_fu_529_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln85_4_fu_544_p1;
wire   [63:0] zext_ln85_5_fu_570_p1;
wire   [63:0] zext_ln87_fu_611_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln87_1_fu_624_p1;
wire   [63:0] zext_ln85_6_fu_628_p1;
wire   [63:0] zext_ln85_7_fu_632_p1;
reg   [6:0] i_fu_94;
wire   [6:0] add_ln82_fu_641_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_9;
reg    weights3_0_ce1_local;
reg   [6:0] weights3_0_address1_local;
reg    weights3_0_ce0_local;
reg   [6:0] weights3_0_address0_local;
reg    weights3_1_ce1_local;
reg   [6:0] weights3_1_address1_local;
reg    weights3_1_ce0_local;
reg   [6:0] weights3_1_address0_local;
reg    dactivations2_ce1_local;
reg    dactivations2_ce0_local;
reg    dactivations2_1_ce1_local;
reg    dactivations2_1_ce0_local;
reg    oracle_activations2_we0_local;
reg    oracle_activations2_ce0_local;
reg   [4:0] oracle_activations2_address0_local;
reg    oracle_activations2_1_we0_local;
reg    oracle_activations2_1_ce0_local;
reg   [4:0] oracle_activations2_1_address0_local;
reg   [63:0] grp_fu_322_p0;
reg   [63:0] grp_fu_322_p1;
reg   [63:0] grp_fu_327_p0;
reg   [63:0] grp_fu_327_p1;
reg   [63:0] grp_fu_332_p0;
reg   [63:0] grp_fu_332_p1;
reg   [63:0] grp_fu_336_p0;
reg   [63:0] grp_fu_336_p1;
reg   [63:0] grp_fu_340_p0;
reg   [63:0] grp_fu_340_p1;
reg   [63:0] grp_fu_344_p0;
reg   [63:0] grp_fu_344_p1;
reg   [63:0] grp_fu_348_p0;
reg   [63:0] grp_fu_348_p1;
reg   [63:0] grp_fu_352_p0;
reg   [63:0] grp_fu_352_p1;
reg   [63:0] grp_fu_356_p0;
reg   [63:0] grp_fu_356_p1;
reg   [63:0] grp_fu_360_p0;
reg   [63:0] grp_fu_360_p1;
wire   [4:0] tmp_67_fu_420_p4;
wire   [6:0] p_shl4_fu_430_p3;
wire   [6:0] zext_ln81_1_fu_416_p1;
wire   [5:0] tmp_s_fu_450_p4;
wire   [6:0] or_ln_fu_460_p3;
wire   [5:0] or_ln2_fu_473_p3;
wire   [7:0] p_shl_fu_485_p3;
wire   [7:0] zext_ln83_fu_481_p1;
wire   [7:0] add_ln85_fu_514_p2;
wire   [6:0] lshr_ln85_1_fu_519_p4;
wire   [6:0] add_ln85_2_fu_539_p2;
wire   [7:0] empty_72_fu_555_p2;
wire   [6:0] lshr_ln85_2_fu_560_p4;
wire   [7:0] add_ln85_4_fu_575_p2;
wire   [4:0] or_ln3_fu_696_p3;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
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
reg   [2:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to13;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
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
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_94 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter12_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_94 <= 7'd0;
    end else if (((tmp_reg_744 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_fu_94 <= add_ln82_fu_641_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_112_i_reg_996 <= grp_fu_3155_p_dout0;
        add11_1_1_i_reg_1001 <= grp_fu_3159_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add11_1_2_i_reg_1073 <= grp_fu_3167_p_dout0;
        add11_224_i_reg_1068 <= grp_fu_3163_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add11_1_i2_reg_981 <= grp_fu_3159_p_dout0;
        add11_i2_reg_976 <= grp_fu_3155_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add11_2_1_i_reg_1006 <= grp_fu_3163_p_dout0;
        add11_3_1_i_reg_1011 <= grp_fu_3167_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_2_2_i_reg_1078 <= grp_fu_3163_p_dout0;
        add11_3_2_i_reg_1083 <= grp_fu_3167_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add11_2_i2_reg_986 <= grp_fu_3155_p_dout0;
        add11_3_i2_reg_991 <= grp_fu_3159_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln85_1_reg_791 <= add_ln85_1_fu_534_p2;
        add_ln85_3_reg_796 <= add_ln85_3_fu_550_p2;
        add_ln85_5_reg_806 <= add_ln85_5_fu_590_p2;
        lshr_ln85_3_reg_801 <= {{add_ln85_4_fu_575_p2[7:1]}};
        mul8_1_2_i_reg_956_pp0_iter4_reg <= mul8_1_2_i_reg_956;
        mul8_1_2_i_reg_956_pp0_iter5_reg <= mul8_1_2_i_reg_956_pp0_iter4_reg;
        mul8_1_2_i_reg_956_pp0_iter6_reg <= mul8_1_2_i_reg_956_pp0_iter5_reg;
        mul8_1_2_i_reg_956_pp0_iter7_reg <= mul8_1_2_i_reg_956_pp0_iter6_reg;
        mul8_2_2_i_reg_961_pp0_iter4_reg <= mul8_2_2_i_reg_961;
        mul8_2_2_i_reg_961_pp0_iter5_reg <= mul8_2_2_i_reg_961_pp0_iter4_reg;
        mul8_2_2_i_reg_961_pp0_iter6_reg <= mul8_2_2_i_reg_961_pp0_iter5_reg;
        mul8_2_2_i_reg_961_pp0_iter7_reg <= mul8_2_2_i_reg_961_pp0_iter6_reg;
        mul8_2_2_i_reg_961_pp0_iter8_reg <= mul8_2_2_i_reg_961_pp0_iter7_reg;
        mul8_3_1_i_reg_966_pp0_iter4_reg <= mul8_3_1_i_reg_966;
        mul8_3_1_i_reg_966_pp0_iter5_reg <= mul8_3_1_i_reg_966_pp0_iter4_reg;
        mul8_3_2_i_reg_971_pp0_iter4_reg <= mul8_3_2_i_reg_971;
        mul8_3_2_i_reg_971_pp0_iter5_reg <= mul8_3_2_i_reg_971_pp0_iter4_reg;
        mul8_3_2_i_reg_971_pp0_iter6_reg <= mul8_3_2_i_reg_971_pp0_iter5_reg;
        mul8_3_2_i_reg_971_pp0_iter7_reg <= mul8_3_2_i_reg_971_pp0_iter6_reg;
        mul8_3_2_i_reg_971_pp0_iter8_reg <= mul8_3_2_i_reg_971_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        mul8_111_i_reg_921_pp0_iter3_reg <= mul8_111_i_reg_921;
        mul8_111_i_reg_921_pp0_iter4_reg <= mul8_111_i_reg_921_pp0_iter3_reg;
        mul8_223_i_reg_926_pp0_iter3_reg <= mul8_223_i_reg_926;
        mul8_223_i_reg_926_pp0_iter4_reg <= mul8_223_i_reg_926_pp0_iter3_reg;
        mul8_223_i_reg_926_pp0_iter5_reg <= mul8_223_i_reg_926_pp0_iter4_reg;
        mul8_223_i_reg_926_pp0_iter6_reg <= mul8_223_i_reg_926_pp0_iter5_reg;
        mul8_223_i_reg_926_pp0_iter7_reg <= mul8_223_i_reg_926_pp0_iter6_reg;
        tmp_76_reg_846 <= {{i_9_reg_738[5:2]}};
        tmp_76_reg_846_pp0_iter1_reg <= tmp_76_reg_846;
        tmp_76_reg_846_pp0_iter2_reg <= tmp_76_reg_846_pp0_iter1_reg;
        tmp_76_reg_846_pp0_iter3_reg <= tmp_76_reg_846_pp0_iter2_reg;
        tmp_76_reg_846_pp0_iter4_reg <= tmp_76_reg_846_pp0_iter3_reg;
        tmp_76_reg_846_pp0_iter5_reg <= tmp_76_reg_846_pp0_iter4_reg;
        tmp_76_reg_846_pp0_iter6_reg <= tmp_76_reg_846_pp0_iter5_reg;
        tmp_76_reg_846_pp0_iter7_reg <= tmp_76_reg_846_pp0_iter6_reg;
        tmp_76_reg_846_pp0_iter8_reg <= tmp_76_reg_846_pp0_iter7_reg;
        tmp_76_reg_846_pp0_iter9_reg <= tmp_76_reg_846_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        dactivations2_1_load_1_reg_1063 <= dactivations2_1_q0;
        dactivations2_1_load_reg_1053 <= dactivations2_1_q1;
        dactivations2_load_1_reg_1058 <= dactivations2_q0;
        dactivations2_load_reg_1048 <= dactivations2_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_774[7 : 1] <= empty_fu_493_p2[7 : 1];
        i_9_reg_738 <= ap_sig_allocacmp_i_9;
        lshr_ln2_reg_781 <= {{empty_fu_493_p2[7:1]}};
        lshr_ln_reg_748 <= {{ap_sig_allocacmp_i_9[6:1]}};
        lshr_ln_reg_748_pp0_iter1_reg <= lshr_ln_reg_748;
        lshr_ln_reg_748_pp0_iter2_reg <= lshr_ln_reg_748_pp0_iter1_reg;
        lshr_ln_reg_748_pp0_iter3_reg <= lshr_ln_reg_748_pp0_iter2_reg;
        lshr_ln_reg_748_pp0_iter4_reg <= lshr_ln_reg_748_pp0_iter3_reg;
        lshr_ln_reg_748_pp0_iter5_reg <= lshr_ln_reg_748_pp0_iter4_reg;
        lshr_ln_reg_748_pp0_iter6_reg <= lshr_ln_reg_748_pp0_iter5_reg;
        lshr_ln_reg_748_pp0_iter7_reg <= lshr_ln_reg_748_pp0_iter6_reg;
        lshr_ln_reg_748_pp0_iter8_reg <= lshr_ln_reg_748_pp0_iter7_reg;
        lshr_ln_reg_748_pp0_iter9_reg <= lshr_ln_reg_748_pp0_iter8_reg;
        mul8_1_1_i_reg_936_pp0_iter4_reg <= mul8_1_1_i_reg_936;
        mul8_1_1_i_reg_936_pp0_iter5_reg <= mul8_1_1_i_reg_936_pp0_iter4_reg;
        mul8_2_1_i_reg_946_pp0_iter4_reg <= mul8_2_1_i_reg_946;
        mul8_2_1_i_reg_946_pp0_iter5_reg <= mul8_2_1_i_reg_946_pp0_iter4_reg;
        sub_ln85_reg_753 <= sub_ln85_fu_438_p2;
        tmp_reg_744 <= ap_sig_allocacmp_i_9[32'd6];
        zext_ln81_reg_1016[5 : 0] <= zext_ln81_fu_691_p1[5 : 0];
        zext_ln81_reg_1016_pp0_iter11_reg[5 : 0] <= zext_ln81_reg_1016[5 : 0];
        zext_ln81_reg_1016_pp0_iter12_reg[5 : 0] <= zext_ln81_reg_1016_pp0_iter11_reg[5 : 0];
        zext_ln81_reg_1016_pp0_iter13_reg[5 : 0] <= zext_ln81_reg_1016_pp0_iter12_reg[5 : 0];
        zext_ln83_1_reg_1032[4 : 1] <= zext_ln83_1_fu_703_p1[4 : 1];
        zext_ln83_1_reg_1032_pp0_iter11_reg[4 : 1] <= zext_ln83_1_reg_1032[4 : 1];
        zext_ln83_1_reg_1032_pp0_iter12_reg[4 : 1] <= zext_ln83_1_reg_1032_pp0_iter11_reg[4 : 1];
        zext_ln83_1_reg_1032_pp0_iter13_reg[4 : 1] <= zext_ln83_1_reg_1032_pp0_iter12_reg[4 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul8_111_i_reg_921 <= grp_fu_3171_p_dout0;
        mul8_1_i2_reg_931 <= grp_fu_3179_p_dout0;
        mul8_223_i_reg_926 <= grp_fu_3175_p_dout0;
        mul8_i2_reg_916 <= grp_fu_1780_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul8_1_1_i_reg_936 <= grp_fu_1780_p_dout0;
        mul8_2_1_i_reg_946 <= grp_fu_3175_p_dout0;
        mul8_2_i2_reg_941 <= grp_fu_3171_p_dout0;
        mul8_3_i2_reg_951 <= grp_fu_3179_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul8_1_2_i_reg_956 <= grp_fu_1780_p_dout0;
        mul8_2_2_i_reg_961 <= grp_fu_3171_p_dout0;
        mul8_3_1_i_reg_966 <= grp_fu_3175_p_dout0;
        mul8_3_2_i_reg_971 <= grp_fu_3179_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_364 <= weights3_0_q1;
        reg_368 <= weights3_1_q1;
        reg_372 <= weights3_0_q0;
        reg_376 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_380 <= grp_fu_3207_p_dout0;
        reg_385 <= grp_fu_3211_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_744 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter12_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to13 = 1'b1;
    end else begin
        ap_idle_pp0_1to13 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_9 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_9 = i_fu_94;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations2_1_ce0_local = 1'b1;
    end else begin
        dactivations2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations2_1_ce1_local = 1'b1;
    end else begin
        dactivations2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations2_ce0_local = 1'b1;
    end else begin
        dactivations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations2_ce1_local = 1'b1;
    end else begin
        dactivations2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_322_p0 = add11_i2_reg_976;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_322_p0 = mul8_2_i2_reg_941;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_322_p0 = mul8_i2_reg_916;
    end else begin
        grp_fu_322_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_322_p1 = mul8_111_i_reg_921_pp0_iter4_reg;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_322_p1 = 64'd0;
    end else begin
        grp_fu_322_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_327_p0 = add11_1_i2_reg_981;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_327_p0 = mul8_3_i2_reg_951;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_327_p0 = mul8_1_i2_reg_931;
    end else begin
        grp_fu_327_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_327_p1 = mul8_1_1_i_reg_936_pp0_iter5_reg;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_327_p1 = 64'd0;
    end else begin
        grp_fu_327_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_332_p0 = add11_2_1_i_reg_1006;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_332_p0 = add11_112_i_reg_996;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_332_p0 = add11_2_i2_reg_986;
    end else begin
        grp_fu_332_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_332_p1 = mul8_2_2_i_reg_961_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_332_p1 = mul8_223_i_reg_926_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_332_p1 = mul8_2_1_i_reg_946_pp0_iter5_reg;
    end else begin
        grp_fu_332_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_336_p0 = add11_3_1_i_reg_1011;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_336_p0 = add11_1_1_i_reg_1001;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_336_p0 = add11_3_i2_reg_991;
    end else begin
        grp_fu_336_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_336_p1 = mul8_3_2_i_reg_971_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_336_p1 = mul8_1_2_i_reg_956_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_336_p1 = mul8_3_1_i_reg_966_pp0_iter5_reg;
    end else begin
        grp_fu_336_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_340_p0 = p_reload;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_340_p0 = p_reload85;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_340_p0 = p_reload86;
    end else begin
        grp_fu_340_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_340_p1 = bitcast_ln85_5_fu_671_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_340_p1 = bitcast_ln85_4_fu_651_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_340_p1 = bitcast_ln85_fu_596_p1;
    end else begin
        grp_fu_340_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_344_p0 = p_reload;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_344_p0 = p_reload86;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_344_p0 = p_reload85;
    end else begin
        grp_fu_344_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_344_p1 = bitcast_ln85_8_fu_676_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_344_p1 = bitcast_ln85_6_fu_656_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_344_p1 = bitcast_ln85_1_fu_601_p1;
    end else begin
        grp_fu_344_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_348_p0 = p_reload85;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_348_p0 = p_reload;
    end else begin
        grp_fu_348_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_348_p1 = bitcast_ln85_10_fu_681_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_348_p1 = bitcast_ln85_7_fu_661_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_348_p1 = bitcast_ln85_2_fu_606_p1;
    end else begin
        grp_fu_348_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_352_p0 = p_reload;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_352_p0 = p_reload86;
    end else begin
        grp_fu_352_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_352_p1 = bitcast_ln85_11_fu_686_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_352_p1 = bitcast_ln85_9_fu_666_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_352_p1 = bitcast_ln85_3_fu_636_p1;
    end else begin
        grp_fu_352_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter11 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_356_p0 = add11_2_2_i_reg_1078;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_356_p0 = add11_224_i_reg_1068;
        end else begin
            grp_fu_356_p0 = 'bx;
        end
    end else begin
        grp_fu_356_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter11 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_356_p1 = dactivations2_load_1_reg_1058;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_356_p1 = dactivations2_load_reg_1048;
        end else begin
            grp_fu_356_p1 = 'bx;
        end
    end else begin
        grp_fu_356_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter11 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_360_p0 = add11_3_2_i_reg_1083;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_360_p0 = add11_1_2_i_reg_1073;
        end else begin
            grp_fu_360_p0 = 'bx;
        end
    end else begin
        grp_fu_360_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter11 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_360_p1 = dactivations2_1_load_1_reg_1063;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_360_p1 = dactivations2_1_load_reg_1053;
        end else begin
            grp_fu_360_p1 = 'bx;
        end
    end else begin
        grp_fu_360_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            oracle_activations2_1_address0_local = zext_ln83_1_reg_1032_pp0_iter13_reg;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            oracle_activations2_1_address0_local = zext_ln81_reg_1016_pp0_iter13_reg;
        end else begin
            oracle_activations2_1_address0_local = 'bx;
        end
    end else begin
        oracle_activations2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations2_1_ce0_local = 1'b1;
    end else begin
        oracle_activations2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations2_1_we0_local = 1'b1;
    end else begin
        oracle_activations2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            oracle_activations2_address0_local = zext_ln83_1_reg_1032_pp0_iter13_reg;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            oracle_activations2_address0_local = zext_ln81_reg_1016_pp0_iter13_reg;
        end else begin
            oracle_activations2_address0_local = 'bx;
        end
    end else begin
        oracle_activations2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations2_ce0_local = 1'b1;
    end else begin
        oracle_activations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations2_we0_local = 1'b1;
    end else begin
        oracle_activations2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_0_address0_local = zext_ln85_6_fu_628_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_0_address0_local = zext_ln85_4_fu_544_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_0_address0_local = zext_ln85_1_fu_468_p1;
        end else begin
            weights3_0_address0_local = 'bx;
        end
    end else begin
        weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_0_address1_local = zext_ln87_1_fu_624_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_0_address1_local = zext_ln85_3_fu_529_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_0_address1_local = zext_ln85_fu_444_p1;
        end else begin
            weights3_0_address1_local = 'bx;
        end
    end else begin
        weights3_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce0_local = 1'b1;
    end else begin
        weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce1_local = 1'b1;
    end else begin
        weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_1_address0_local = zext_ln85_7_fu_632_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_1_address0_local = zext_ln85_5_fu_570_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_1_address0_local = zext_ln85_2_fu_509_p1;
        end else begin
            weights3_1_address0_local = 'bx;
        end
    end else begin
        weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_1_address1_local = zext_ln87_fu_611_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_1_address1_local = zext_ln85_4_fu_544_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_1_address1_local = zext_ln85_fu_444_p1;
        end else begin
            weights3_1_address1_local = 'bx;
        end
    end else begin
        weights3_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce0_local = 1'b1;
    end else begin
        weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce1_local = 1'b1;
    end else begin
        weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to13 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln82_fu_641_p2 = (i_9_reg_738 + 7'd4);
assign add_ln85_1_fu_534_p2 = (lshr_ln2_reg_781 + 7'd1);
assign add_ln85_2_fu_539_p2 = (sub_ln85_reg_753 + 7'd3);
assign add_ln85_3_fu_550_p2 = (sub_ln85_reg_753 + 7'd4);
assign add_ln85_4_fu_575_p2 = (empty_reg_774 + 8'd7);
assign add_ln85_5_fu_590_p2 = (lshr_ln85_2_fu_560_p4 + 7'd1);
assign add_ln85_fu_514_p2 = (empty_reg_774 + 8'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign bitcast_ln85_10_fu_681_p1 = reg_372;
assign bitcast_ln85_11_fu_686_p1 = reg_376;
assign bitcast_ln85_1_fu_601_p1 = reg_368;
assign bitcast_ln85_2_fu_606_p1 = reg_372;
assign bitcast_ln85_3_fu_636_p1 = reg_376;
assign bitcast_ln85_4_fu_651_p1 = reg_364;
assign bitcast_ln85_5_fu_671_p1 = reg_368;
assign bitcast_ln85_6_fu_656_p1 = reg_372;
assign bitcast_ln85_7_fu_661_p1 = reg_368;
assign bitcast_ln85_8_fu_676_p1 = reg_364;
assign bitcast_ln85_9_fu_666_p1 = reg_376;
assign bitcast_ln85_fu_596_p1 = reg_364;
assign dactivations2_1_address0 = zext_ln83_1_fu_703_p1;
assign dactivations2_1_address1 = zext_ln81_fu_691_p1;
assign dactivations2_1_ce0 = dactivations2_1_ce0_local;
assign dactivations2_1_ce1 = dactivations2_1_ce1_local;
assign dactivations2_address0 = zext_ln83_1_fu_703_p1;
assign dactivations2_address1 = zext_ln81_fu_691_p1;
assign dactivations2_ce0 = dactivations2_ce0_local;
assign dactivations2_ce1 = dactivations2_ce1_local;
assign empty_72_fu_555_p2 = (empty_reg_774 + 8'd6);
assign empty_fu_493_p2 = (p_shl_fu_485_p3 - zext_ln83_fu_481_p1);
assign grp_fu_1780_p_ce = 1'b1;
assign grp_fu_1780_p_din0 = grp_fu_340_p0;
assign grp_fu_1780_p_din1 = grp_fu_340_p1;
assign grp_fu_3155_p_ce = 1'b1;
assign grp_fu_3155_p_din0 = grp_fu_322_p0;
assign grp_fu_3155_p_din1 = grp_fu_322_p1;
assign grp_fu_3155_p_opcode = 2'd0;
assign grp_fu_3159_p_ce = 1'b1;
assign grp_fu_3159_p_din0 = grp_fu_327_p0;
assign grp_fu_3159_p_din1 = grp_fu_327_p1;
assign grp_fu_3159_p_opcode = 2'd0;
assign grp_fu_3163_p_ce = 1'b1;
assign grp_fu_3163_p_din0 = grp_fu_332_p0;
assign grp_fu_3163_p_din1 = grp_fu_332_p1;
assign grp_fu_3163_p_opcode = 2'd0;
assign grp_fu_3167_p_ce = 1'b1;
assign grp_fu_3167_p_din0 = grp_fu_336_p0;
assign grp_fu_3167_p_din1 = grp_fu_336_p1;
assign grp_fu_3167_p_opcode = 2'd0;
assign grp_fu_3171_p_ce = 1'b1;
assign grp_fu_3171_p_din0 = grp_fu_344_p0;
assign grp_fu_3171_p_din1 = grp_fu_344_p1;
assign grp_fu_3175_p_ce = 1'b1;
assign grp_fu_3175_p_din0 = grp_fu_348_p0;
assign grp_fu_3175_p_din1 = grp_fu_348_p1;
assign grp_fu_3179_p_ce = 1'b1;
assign grp_fu_3179_p_din0 = grp_fu_352_p0;
assign grp_fu_3179_p_din1 = grp_fu_352_p1;
assign grp_fu_3207_p_ce = 1'b1;
assign grp_fu_3207_p_din0 = grp_fu_356_p0;
assign grp_fu_3207_p_din1 = grp_fu_356_p1;
assign grp_fu_3211_p_ce = 1'b1;
assign grp_fu_3211_p_din0 = grp_fu_360_p0;
assign grp_fu_3211_p_din1 = grp_fu_360_p1;
assign lshr_ln2_fu_499_p4 = {{empty_fu_493_p2[7:1]}};
assign lshr_ln85_1_fu_519_p4 = {{add_ln85_fu_514_p2[7:1]}};
assign lshr_ln85_2_fu_560_p4 = {{empty_72_fu_555_p2[7:1]}};
assign lshr_ln_fu_406_p4 = {{ap_sig_allocacmp_i_9[6:1]}};
assign or_ln2_fu_473_p3 = {{tmp_67_fu_420_p4}, {1'd1}};
assign or_ln3_fu_696_p3 = {{tmp_76_reg_846_pp0_iter9_reg}, {1'd1}};
assign or_ln_fu_460_p3 = {{tmp_s_fu_450_p4}, {1'd1}};
assign oracle_activations2_1_address0 = oracle_activations2_1_address0_local;
assign oracle_activations2_1_ce0 = oracle_activations2_1_ce0_local;
assign oracle_activations2_1_d0 = reg_385;
assign oracle_activations2_1_we0 = oracle_activations2_1_we0_local;
assign oracle_activations2_address0 = oracle_activations2_address0_local;
assign oracle_activations2_ce0 = oracle_activations2_ce0_local;
assign oracle_activations2_d0 = reg_380;
assign oracle_activations2_we0 = oracle_activations2_we0_local;
assign p_shl4_fu_430_p3 = {{tmp_67_fu_420_p4}, {2'd0}};
assign p_shl_fu_485_p3 = {{tmp_67_fu_420_p4}, {3'd4}};
assign sub_ln85_fu_438_p2 = (p_shl4_fu_430_p3 - zext_ln81_1_fu_416_p1);
assign tmp_67_fu_420_p4 = {{ap_sig_allocacmp_i_9[5:1]}};
assign tmp_s_fu_450_p4 = {{sub_ln85_fu_438_p2[6:1]}};
assign weights3_0_address0 = weights3_0_address0_local;
assign weights3_0_address1 = weights3_0_address1_local;
assign weights3_0_ce0 = weights3_0_ce0_local;
assign weights3_0_ce1 = weights3_0_ce1_local;
assign weights3_1_address0 = weights3_1_address0_local;
assign weights3_1_address1 = weights3_1_address1_local;
assign weights3_1_ce0 = weights3_1_ce0_local;
assign weights3_1_ce1 = weights3_1_ce1_local;
assign zext_ln81_1_fu_416_p1 = lshr_ln_fu_406_p4;
assign zext_ln81_fu_691_p1 = lshr_ln_reg_748_pp0_iter9_reg;
assign zext_ln83_1_fu_703_p1 = or_ln3_fu_696_p3;
assign zext_ln83_fu_481_p1 = or_ln2_fu_473_p3;
assign zext_ln85_1_fu_468_p1 = or_ln_fu_460_p3;
assign zext_ln85_2_fu_509_p1 = lshr_ln2_fu_499_p4;
assign zext_ln85_3_fu_529_p1 = lshr_ln85_1_fu_519_p4;
assign zext_ln85_4_fu_544_p1 = add_ln85_2_fu_539_p2;
assign zext_ln85_5_fu_570_p1 = lshr_ln85_2_fu_560_p4;
assign zext_ln85_6_fu_628_p1 = lshr_ln85_3_reg_801;
assign zext_ln85_7_fu_632_p1 = add_ln85_5_reg_806;
assign zext_ln85_fu_444_p1 = sub_ln85_fu_438_p2;
assign zext_ln87_1_fu_624_p1 = add_ln85_3_reg_796;
assign zext_ln87_fu_611_p1 = add_ln85_1_reg_791;
always @ (posedge ap_clk) begin
    empty_reg_774[0] <= 1'b1;
    zext_ln81_reg_1016[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_1016_pp0_iter11_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_1016_pp0_iter12_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_1016_pp0_iter13_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln83_1_reg_1032[0] <= 1'b1;
    zext_ln83_1_reg_1032[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_1_reg_1032_pp0_iter11_reg[0] <= 1'b1;
    zext_ln83_1_reg_1032_pp0_iter11_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_1_reg_1032_pp0_iter12_reg[0] <= 1'b1;
    zext_ln83_1_reg_1032_pp0_iter12_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_1_reg_1032_pp0_iter13_reg[0] <= 1'b1;
    zext_ln83_1_reg_1032_pp0_iter13_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
end
endmodule 
