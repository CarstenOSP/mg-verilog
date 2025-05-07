module backprop_backprop_Pipeline_activations2_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,oracle_activations2_1_address0,oracle_activations2_1_ce0,oracle_activations2_1_we0,oracle_activations2_1_d0,oracle_activations2_address0,oracle_activations2_ce0,oracle_activations2_we0,oracle_activations2_d0,weights3_address0,weights3_ce0,weights3_q0,weights3_address1,weights3_ce1,weights3_q1,p_reload114,p_reload113,p_reload,dactivations2_address0,dactivations2_ce0,dactivations2_q0,dactivations2_address1,dactivations2_ce1,dactivations2_q1,grp_fu_2881_p_din0,grp_fu_2881_p_din1,grp_fu_2881_p_opcode,grp_fu_2881_p_dout0,grp_fu_2881_p_ce,grp_fu_2885_p_din0,grp_fu_2885_p_din1,grp_fu_2885_p_opcode,grp_fu_2885_p_dout0,grp_fu_2885_p_ce,grp_fu_2889_p_din0,grp_fu_2889_p_din1,grp_fu_2889_p_dout0,grp_fu_2889_p_ce,grp_fu_2893_p_din0,grp_fu_2893_p_din1,grp_fu_2893_p_dout0,grp_fu_2893_p_ce,grp_fu_2941_p_din0,grp_fu_2941_p_din1,grp_fu_2941_p_dout0,grp_fu_2941_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 6'd1;
parameter    ap_ST_fsm_pp0_stage1 = 6'd2;
parameter    ap_ST_fsm_pp0_stage2 = 6'd4;
parameter    ap_ST_fsm_pp0_stage3 = 6'd8;
parameter    ap_ST_fsm_pp0_stage4 = 6'd16;
parameter    ap_ST_fsm_pp0_stage5 = 6'd32;
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
output  [7:0] weights3_address0;
output   weights3_ce0;
input  [63:0] weights3_q0;
output  [7:0] weights3_address1;
output   weights3_ce1;
input  [63:0] weights3_q1;
input  [63:0] p_reload114;
input  [63:0] p_reload113;
input  [63:0] p_reload;
output  [5:0] dactivations2_address0;
output   dactivations2_ce0;
input  [63:0] dactivations2_q0;
output  [5:0] dactivations2_address1;
output   dactivations2_ce1;
input  [63:0] dactivations2_q1;
output  [63:0] grp_fu_2881_p_din0;
output  [63:0] grp_fu_2881_p_din1;
output  [0:0] grp_fu_2881_p_opcode;
input  [63:0] grp_fu_2881_p_dout0;
output   grp_fu_2881_p_ce;
output  [63:0] grp_fu_2885_p_din0;
output  [63:0] grp_fu_2885_p_din1;
output  [0:0] grp_fu_2885_p_opcode;
input  [63:0] grp_fu_2885_p_dout0;
output   grp_fu_2885_p_ce;
output  [63:0] grp_fu_2889_p_din0;
output  [63:0] grp_fu_2889_p_din1;
input  [63:0] grp_fu_2889_p_dout0;
output   grp_fu_2889_p_ce;
output  [63:0] grp_fu_2893_p_din0;
output  [63:0] grp_fu_2893_p_din1;
input  [63:0] grp_fu_2893_p_dout0;
output   grp_fu_2893_p_ce;
output  [63:0] grp_fu_2941_p_din0;
output  [63:0] grp_fu_2941_p_din1;
input  [63:0] grp_fu_2941_p_dout0;
output   grp_fu_2941_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
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
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] tmp_reg_704;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_330;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_block_pp0_stage5_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_334;
reg   [63:0] reg_338;
reg   [6:0] i_9_reg_698;
reg   [0:0] tmp_reg_704_pp0_iter1_reg;
reg   [0:0] tmp_reg_704_pp0_iter2_reg;
reg   [0:0] tmp_reg_704_pp0_iter3_reg;
reg   [0:0] tmp_reg_704_pp0_iter4_reg;
reg   [0:0] tmp_reg_704_pp0_iter5_reg;
reg   [0:0] tmp_reg_704_pp0_iter6_reg;
wire   [4:0] lshr_ln8_fu_369_p4;
reg   [4:0] lshr_ln8_reg_708;
reg   [4:0] lshr_ln8_reg_708_pp0_iter1_reg;
reg   [4:0] lshr_ln8_reg_708_pp0_iter2_reg;
reg   [4:0] lshr_ln8_reg_708_pp0_iter3_reg;
reg   [4:0] lshr_ln8_reg_708_pp0_iter4_reg;
reg   [4:0] lshr_ln8_reg_708_pp0_iter5_reg;
reg   [4:0] lshr_ln8_reg_708_pp0_iter6_reg;
reg   [6:0] tmp_s_reg_718;
wire   [5:0] tmp_55_fu_412_p4;
reg   [5:0] tmp_55_reg_723;
wire   [7:0] tmp_56_fu_435_p3;
reg   [7:0] tmp_56_reg_733;
reg   [63:0] dactivations2_load_reg_755;
reg   [63:0] dactivations2_load_reg_755_pp0_iter1_reg;
reg   [63:0] dactivations2_load_reg_755_pp0_iter2_reg;
reg   [63:0] dactivations2_load_reg_755_pp0_iter3_reg;
reg   [63:0] dactivations2_load_reg_755_pp0_iter4_reg;
reg   [63:0] dactivations2_load_reg_755_pp0_iter5_reg;
reg   [63:0] dactivations2_load_1_reg_760;
reg   [63:0] dactivations2_load_1_reg_760_pp0_iter1_reg;
reg   [63:0] dactivations2_load_1_reg_760_pp0_iter2_reg;
reg   [63:0] dactivations2_load_1_reg_760_pp0_iter3_reg;
reg   [63:0] dactivations2_load_1_reg_760_pp0_iter4_reg;
reg   [63:0] dactivations2_load_1_reg_760_pp0_iter5_reg;
wire   [3:0] tmp_57_fu_448_p4;
reg   [3:0] tmp_57_reg_765;
reg   [3:0] tmp_57_reg_765_pp0_iter1_reg;
reg   [3:0] tmp_57_reg_765_pp0_iter2_reg;
reg   [3:0] tmp_57_reg_765_pp0_iter3_reg;
reg   [3:0] tmp_57_reg_765_pp0_iter4_reg;
reg   [3:0] tmp_57_reg_765_pp0_iter5_reg;
reg   [3:0] tmp_57_reg_765_pp0_iter6_reg;
wire   [63:0] bitcast_ln85_fu_503_p1;
wire   [63:0] bitcast_ln85_3_fu_520_p1;
reg   [63:0] dactivations2_load_2_reg_810;
reg   [63:0] dactivations2_load_2_reg_810_pp0_iter1_reg;
reg   [63:0] dactivations2_load_2_reg_810_pp0_iter2_reg;
reg   [63:0] dactivations2_load_2_reg_810_pp0_iter3_reg;
reg   [63:0] dactivations2_load_2_reg_810_pp0_iter4_reg;
reg   [63:0] dactivations2_load_2_reg_810_pp0_iter5_reg;
reg   [63:0] dactivations2_load_3_reg_815;
reg   [63:0] dactivations2_load_3_reg_815_pp0_iter1_reg;
reg   [63:0] dactivations2_load_3_reg_815_pp0_iter2_reg;
reg   [63:0] dactivations2_load_3_reg_815_pp0_iter3_reg;
reg   [63:0] dactivations2_load_3_reg_815_pp0_iter4_reg;
reg   [63:0] dactivations2_load_3_reg_815_pp0_iter5_reg;
wire   [63:0] bitcast_ln85_6_fu_535_p1;
wire   [63:0] bitcast_ln85_9_fu_550_p1;
wire   [63:0] bitcast_ln85_1_fu_565_p1;
wire   [63:0] bitcast_ln85_4_fu_582_p1;
wire   [63:0] bitcast_ln85_7_fu_597_p1;
wire   [63:0] bitcast_ln85_10_fu_612_p1;
wire   [63:0] bitcast_ln85_2_fu_637_p1;
wire   [63:0] bitcast_ln85_5_fu_642_p1;
wire   [63:0] bitcast_ln85_8_fu_647_p1;
wire   [63:0] bitcast_ln85_11_fu_652_p1;
reg   [63:0] mul8_i2_reg_900;
reg   [63:0] mul8_1_i2_reg_905;
reg   [63:0] mul8_2_i2_reg_910;
reg   [63:0] mul8_3_i2_reg_915;
reg   [63:0] mul8_111_i_reg_920;
reg   [63:0] mul8_111_i_reg_920_pp0_iter2_reg;
reg   [63:0] mul8_1_1_i_reg_925;
reg   [63:0] mul8_1_1_i_reg_925_pp0_iter2_reg;
reg   [63:0] mul8_2_1_i_reg_930;
reg   [63:0] mul8_2_1_i_reg_930_pp0_iter2_reg;
reg   [63:0] mul8_3_1_i_reg_935;
reg   [63:0] mul8_3_1_i_reg_935_pp0_iter2_reg;
reg   [63:0] mul8_223_i_reg_940;
reg   [63:0] mul8_223_i_reg_940_pp0_iter3_reg;
reg   [63:0] mul8_223_i_reg_940_pp0_iter4_reg;
reg   [63:0] mul8_1_2_i_reg_945;
reg   [63:0] mul8_1_2_i_reg_945_pp0_iter3_reg;
reg   [63:0] mul8_1_2_i_reg_945_pp0_iter4_reg;
reg   [63:0] mul8_2_2_i_reg_950;
reg   [63:0] mul8_2_2_i_reg_950_pp0_iter3_reg;
reg   [63:0] mul8_2_2_i_reg_950_pp0_iter4_reg;
reg   [63:0] mul8_3_2_i_reg_955;
reg   [63:0] mul8_3_2_i_reg_955_pp0_iter3_reg;
reg   [63:0] mul8_3_2_i_reg_955_pp0_iter4_reg;
reg   [63:0] add11_i2_reg_960;
reg   [63:0] add11_1_i2_reg_965;
reg   [63:0] add11_2_i2_reg_970;
reg   [63:0] add11_3_i2_reg_975;
reg   [63:0] add11_112_i_reg_980;
reg   [63:0] add11_1_1_i_reg_985;
reg   [63:0] add11_2_1_i_reg_990;
reg   [63:0] add11_3_1_i_reg_995;
reg   [63:0] add11_224_i_reg_1000;
reg   [63:0] add11_1_2_i_reg_1005;
reg   [63:0] add11_2_2_i_reg_1010;
reg   [63:0] add11_3_2_i_reg_1015;
wire   [63:0] zext_ln81_fu_657_p1;
reg   [63:0] zext_ln81_reg_1020;
wire   [63:0] zext_ln83_2_fu_668_p1;
reg   [63:0] zext_ln83_2_reg_1025;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln85_fu_397_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln82_fu_360_p1;
wire   [63:0] zext_ln85_3_fu_443_p1;
wire   [63:0] zext_ln83_fu_430_p1;
wire   [63:0] zext_ln85_6_fu_475_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln83_1_fu_465_p1;
wire   [63:0] zext_ln85_9_fu_498_p1;
wire   [63:0] zext_ln83_3_fu_488_p1;
wire   [63:0] zext_ln85_1_fu_515_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln85_4_fu_530_p1;
wire   [63:0] zext_ln85_7_fu_545_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln85_10_fu_560_p1;
wire   [63:0] zext_ln85_2_fu_577_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln85_5_fu_592_p1;
wire   [63:0] zext_ln85_8_fu_607_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln85_11_fu_622_p1;
reg   [6:0] i_fu_98;
wire   [6:0] add_ln82_fu_627_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_9;
reg    weights3_ce1_local;
reg   [7:0] weights3_address1_local;
reg    weights3_ce0_local;
reg   [7:0] weights3_address0_local;
reg    dactivations2_ce1_local;
reg   [5:0] dactivations2_address1_local;
reg    dactivations2_ce0_local;
reg   [5:0] dactivations2_address0_local;
reg    oracle_activations2_we0_local;
reg    oracle_activations2_ce0_local;
reg   [4:0] oracle_activations2_address0_local;
reg    oracle_activations2_1_we0_local;
reg    oracle_activations2_1_ce0_local;
reg   [4:0] oracle_activations2_1_address0_local;
reg   [63:0] grp_fu_308_p0;
reg   [63:0] grp_fu_308_p1;
reg   [63:0] grp_fu_313_p0;
reg   [63:0] grp_fu_313_p1;
reg   [63:0] grp_fu_318_p0;
reg   [63:0] grp_fu_318_p1;
reg   [63:0] grp_fu_322_p0;
reg   [63:0] grp_fu_322_p1;
reg   [63:0] grp_fu_326_p0;
reg   [63:0] grp_fu_326_p1;
wire   [5:0] empty_fu_379_p1;
wire   [7:0] p_shl_fu_383_p3;
wire   [7:0] zext_ln37_fu_365_p1;
wire   [7:0] empty_85_fu_391_p2;
wire   [5:0] or_ln_fu_422_p3;
wire   [5:0] or_ln82_1_fu_457_p3;
wire   [7:0] empty_86_fu_470_p2;
wire   [5:0] or_ln82_2_fu_480_p3;
wire   [7:0] empty_87_fu_493_p2;
wire   [7:0] or_ln9_fu_508_p3;
wire   [7:0] add_ln85_fu_525_p2;
wire   [7:0] add_ln85_2_fu_540_p2;
wire   [7:0] add_ln85_4_fu_555_p2;
wire   [7:0] or_ln85_1_fu_570_p3;
wire   [7:0] add_ln85_1_fu_587_p2;
wire   [7:0] add_ln85_3_fu_602_p2;
wire   [7:0] add_ln85_5_fu_617_p2;
wire   [4:0] or_ln1_fu_661_p3;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter6_stage1;
reg    ap_idle_pp0_0to5;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg   [5:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to7;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_98 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter7 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_98 <= 7'd0;
    end else if (((tmp_reg_704 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        i_fu_98 <= add_ln82_fu_627_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_112_i_reg_980 <= grp_fu_2881_p_dout0;
        add11_1_1_i_reg_985 <= grp_fu_2885_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add11_1_2_i_reg_1005 <= grp_fu_2885_p_dout0;
        add11_224_i_reg_1000 <= grp_fu_2881_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add11_1_i2_reg_965 <= grp_fu_2885_p_dout0;
        add11_i2_reg_960 <= grp_fu_2881_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add11_2_1_i_reg_990 <= grp_fu_2881_p_dout0;
        add11_3_1_i_reg_995 <= grp_fu_2885_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add11_2_2_i_reg_1010 <= grp_fu_2881_p_dout0;
        add11_3_2_i_reg_1015 <= grp_fu_2885_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add11_2_i2_reg_970 <= grp_fu_2881_p_dout0;
        add11_3_i2_reg_975 <= grp_fu_2885_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        dactivations2_load_1_reg_760 <= dactivations2_q0;
        dactivations2_load_reg_755 <= dactivations2_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        dactivations2_load_1_reg_760_pp0_iter1_reg <= dactivations2_load_1_reg_760;
        dactivations2_load_1_reg_760_pp0_iter2_reg <= dactivations2_load_1_reg_760_pp0_iter1_reg;
        dactivations2_load_1_reg_760_pp0_iter3_reg <= dactivations2_load_1_reg_760_pp0_iter2_reg;
        dactivations2_load_1_reg_760_pp0_iter4_reg <= dactivations2_load_1_reg_760_pp0_iter3_reg;
        dactivations2_load_1_reg_760_pp0_iter5_reg <= dactivations2_load_1_reg_760_pp0_iter4_reg;
        dactivations2_load_reg_755_pp0_iter1_reg <= dactivations2_load_reg_755;
        dactivations2_load_reg_755_pp0_iter2_reg <= dactivations2_load_reg_755_pp0_iter1_reg;
        dactivations2_load_reg_755_pp0_iter3_reg <= dactivations2_load_reg_755_pp0_iter2_reg;
        dactivations2_load_reg_755_pp0_iter4_reg <= dactivations2_load_reg_755_pp0_iter3_reg;
        dactivations2_load_reg_755_pp0_iter5_reg <= dactivations2_load_reg_755_pp0_iter4_reg;
        mul8_2_2_i_reg_950_pp0_iter3_reg <= mul8_2_2_i_reg_950;
        mul8_2_2_i_reg_950_pp0_iter4_reg <= mul8_2_2_i_reg_950_pp0_iter3_reg;
        mul8_3_2_i_reg_955_pp0_iter3_reg <= mul8_3_2_i_reg_955;
        mul8_3_2_i_reg_955_pp0_iter4_reg <= mul8_3_2_i_reg_955_pp0_iter3_reg;
        tmp_57_reg_765 <= {{i_9_reg_698[5:2]}};
        tmp_57_reg_765_pp0_iter1_reg <= tmp_57_reg_765;
        tmp_57_reg_765_pp0_iter2_reg <= tmp_57_reg_765_pp0_iter1_reg;
        tmp_57_reg_765_pp0_iter3_reg <= tmp_57_reg_765_pp0_iter2_reg;
        tmp_57_reg_765_pp0_iter4_reg <= tmp_57_reg_765_pp0_iter3_reg;
        tmp_57_reg_765_pp0_iter5_reg <= tmp_57_reg_765_pp0_iter4_reg;
        tmp_57_reg_765_pp0_iter6_reg <= tmp_57_reg_765_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        dactivations2_load_2_reg_810 <= dactivations2_q1;
        dactivations2_load_3_reg_815 <= dactivations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        dactivations2_load_2_reg_810_pp0_iter1_reg <= dactivations2_load_2_reg_810;
        dactivations2_load_2_reg_810_pp0_iter2_reg <= dactivations2_load_2_reg_810_pp0_iter1_reg;
        dactivations2_load_2_reg_810_pp0_iter3_reg <= dactivations2_load_2_reg_810_pp0_iter2_reg;
        dactivations2_load_2_reg_810_pp0_iter4_reg <= dactivations2_load_2_reg_810_pp0_iter3_reg;
        dactivations2_load_2_reg_810_pp0_iter5_reg <= dactivations2_load_2_reg_810_pp0_iter4_reg;
        dactivations2_load_3_reg_815_pp0_iter1_reg <= dactivations2_load_3_reg_815;
        dactivations2_load_3_reg_815_pp0_iter2_reg <= dactivations2_load_3_reg_815_pp0_iter1_reg;
        dactivations2_load_3_reg_815_pp0_iter3_reg <= dactivations2_load_3_reg_815_pp0_iter2_reg;
        dactivations2_load_3_reg_815_pp0_iter4_reg <= dactivations2_load_3_reg_815_pp0_iter3_reg;
        dactivations2_load_3_reg_815_pp0_iter5_reg <= dactivations2_load_3_reg_815_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_9_reg_698 <= ap_sig_allocacmp_i_9;
        lshr_ln8_reg_708 <= {{ap_sig_allocacmp_i_9[5:1]}};
        lshr_ln8_reg_708_pp0_iter1_reg <= lshr_ln8_reg_708;
        lshr_ln8_reg_708_pp0_iter2_reg <= lshr_ln8_reg_708_pp0_iter1_reg;
        lshr_ln8_reg_708_pp0_iter3_reg <= lshr_ln8_reg_708_pp0_iter2_reg;
        lshr_ln8_reg_708_pp0_iter4_reg <= lshr_ln8_reg_708_pp0_iter3_reg;
        lshr_ln8_reg_708_pp0_iter5_reg <= lshr_ln8_reg_708_pp0_iter4_reg;
        lshr_ln8_reg_708_pp0_iter6_reg <= lshr_ln8_reg_708_pp0_iter5_reg;
        mul8_1_2_i_reg_945_pp0_iter3_reg <= mul8_1_2_i_reg_945;
        mul8_1_2_i_reg_945_pp0_iter4_reg <= mul8_1_2_i_reg_945_pp0_iter3_reg;
        mul8_223_i_reg_940_pp0_iter3_reg <= mul8_223_i_reg_940;
        mul8_223_i_reg_940_pp0_iter4_reg <= mul8_223_i_reg_940_pp0_iter3_reg;
        tmp_55_reg_723 <= {{empty_85_fu_391_p2[7:2]}};
        tmp_56_reg_733[7 : 2] <= tmp_56_fu_435_p3[7 : 2];
        tmp_reg_704 <= ap_sig_allocacmp_i_9[32'd6];
        tmp_reg_704_pp0_iter1_reg <= tmp_reg_704;
        tmp_reg_704_pp0_iter2_reg <= tmp_reg_704_pp0_iter1_reg;
        tmp_reg_704_pp0_iter3_reg <= tmp_reg_704_pp0_iter2_reg;
        tmp_reg_704_pp0_iter4_reg <= tmp_reg_704_pp0_iter3_reg;
        tmp_reg_704_pp0_iter5_reg <= tmp_reg_704_pp0_iter4_reg;
        tmp_reg_704_pp0_iter6_reg <= tmp_reg_704_pp0_iter5_reg;
        tmp_s_reg_718 <= {{empty_85_fu_391_p2[7:1]}};
        zext_ln83_2_reg_1025[4 : 1] <= zext_ln83_2_fu_668_p1[4 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul8_111_i_reg_920 <= grp_fu_2889_p_dout0;
        mul8_1_1_i_reg_925 <= grp_fu_2893_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul8_111_i_reg_920_pp0_iter2_reg <= mul8_111_i_reg_920;
        mul8_1_1_i_reg_925_pp0_iter2_reg <= mul8_1_1_i_reg_925;
        zext_ln81_reg_1020[4 : 0] <= zext_ln81_fu_657_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul8_1_2_i_reg_945 <= grp_fu_2893_p_dout0;
        mul8_223_i_reg_940 <= grp_fu_2889_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul8_1_i2_reg_905 <= grp_fu_2893_p_dout0;
        mul8_i2_reg_900 <= grp_fu_2889_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul8_2_1_i_reg_930 <= grp_fu_2889_p_dout0;
        mul8_3_1_i_reg_935 <= grp_fu_2893_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul8_2_1_i_reg_930_pp0_iter2_reg <= mul8_2_1_i_reg_930;
        mul8_3_1_i_reg_935_pp0_iter2_reg <= mul8_3_1_i_reg_935;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul8_2_2_i_reg_950 <= grp_fu_2889_p_dout0;
        mul8_3_2_i_reg_955 <= grp_fu_2893_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul8_2_i2_reg_910 <= grp_fu_2889_p_dout0;
        mul8_3_i2_reg_915 <= grp_fu_2893_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_330 <= weights3_q1;
        reg_334 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_338 <= grp_fu_2941_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_704 == 1'd1) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter6 == 1'b1) & (tmp_reg_704_pp0_iter6_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter6_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter6_stage1 = 1'b0;
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
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to5 = 1'b1;
    end else begin
        ap_idle_pp0_0to5 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_9 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_9 = i_fu_98;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            dactivations2_address0_local = zext_ln83_3_fu_488_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            dactivations2_address0_local = zext_ln83_fu_430_p1;
        end else begin
            dactivations2_address0_local = 'bx;
        end
    end else begin
        dactivations2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            dactivations2_address1_local = zext_ln83_1_fu_465_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            dactivations2_address1_local = zext_ln82_fu_360_p1;
        end else begin
            dactivations2_address1_local = 'bx;
        end
    end else begin
        dactivations2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        dactivations2_ce0_local = 1'b1;
    end else begin
        dactivations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        dactivations2_ce1_local = 1'b1;
    end else begin
        dactivations2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_308_p0 = add11_2_1_i_reg_990;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_308_p0 = add11_112_i_reg_980;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_308_p0 = add11_2_i2_reg_970;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_308_p0 = add11_i2_reg_960;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_308_p0 = mul8_2_i2_reg_910;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_308_p0 = mul8_i2_reg_900;
    end else begin
        grp_fu_308_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_308_p1 = mul8_2_2_i_reg_950_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_308_p1 = mul8_223_i_reg_940_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_308_p1 = mul8_2_1_i_reg_930_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_308_p1 = mul8_111_i_reg_920_pp0_iter2_reg;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_308_p1 = 64'd0;
    end else begin
        grp_fu_308_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_313_p0 = add11_3_1_i_reg_995;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_313_p0 = add11_1_1_i_reg_985;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_313_p0 = add11_3_i2_reg_975;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_313_p0 = add11_1_i2_reg_965;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_313_p0 = mul8_3_i2_reg_915;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_313_p0 = mul8_1_i2_reg_905;
    end else begin
        grp_fu_313_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_313_p1 = mul8_3_2_i_reg_955_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_313_p1 = mul8_1_2_i_reg_945_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_313_p1 = mul8_3_1_i_reg_935_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_313_p1 = mul8_1_1_i_reg_925_pp0_iter2_reg;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_313_p1 = 64'd0;
    end else begin
        grp_fu_313_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_318_p0 = p_reload;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_318_p0 = p_reload113;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_318_p0 = p_reload114;
    end else begin
        grp_fu_318_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_318_p1 = bitcast_ln85_8_fu_647_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_318_p1 = bitcast_ln85_2_fu_637_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_318_p1 = bitcast_ln85_7_fu_597_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_318_p1 = bitcast_ln85_1_fu_565_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_318_p1 = bitcast_ln85_6_fu_535_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_318_p1 = bitcast_ln85_fu_503_p1;
    end else begin
        grp_fu_318_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_322_p0 = p_reload;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_322_p0 = p_reload113;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_322_p0 = p_reload114;
    end else begin
        grp_fu_322_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_322_p1 = bitcast_ln85_11_fu_652_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_322_p1 = bitcast_ln85_5_fu_642_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_322_p1 = bitcast_ln85_10_fu_612_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_322_p1 = bitcast_ln85_4_fu_582_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_322_p1 = bitcast_ln85_9_fu_550_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_322_p1 = bitcast_ln85_3_fu_520_p1;
    end else begin
        grp_fu_322_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_326_p0 = add11_3_2_i_reg_1015;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_326_p0 = add11_2_2_i_reg_1010;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_326_p0 = add11_1_2_i_reg_1005;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_326_p0 = add11_224_i_reg_1000;
    end else begin
        grp_fu_326_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_326_p1 = dactivations2_load_3_reg_815_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_326_p1 = dactivations2_load_2_reg_810_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_326_p1 = dactivations2_load_1_reg_760_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_326_p1 = dactivations2_load_reg_755_pp0_iter5_reg;
    end else begin
        grp_fu_326_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations2_1_address0_local = zext_ln83_2_reg_1025;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        oracle_activations2_1_address0_local = zext_ln81_reg_1020;
    end else begin
        oracle_activations2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations2_1_ce0_local = 1'b1;
    end else begin
        oracle_activations2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations2_1_we0_local = 1'b1;
    end else begin
        oracle_activations2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_address0_local = zext_ln83_2_fu_668_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        oracle_activations2_address0_local = zext_ln81_fu_657_p1;
    end else begin
        oracle_activations2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        oracle_activations2_ce0_local = 1'b1;
    end else begin
        oracle_activations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        oracle_activations2_we0_local = 1'b1;
    end else begin
        oracle_activations2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights3_address0_local = zext_ln85_11_fu_622_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights3_address0_local = zext_ln85_5_fu_592_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights3_address0_local = zext_ln85_10_fu_560_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_address0_local = zext_ln85_4_fu_530_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_address0_local = zext_ln85_9_fu_498_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_address0_local = zext_ln85_3_fu_443_p1;
        end else begin
            weights3_address0_local = 'bx;
        end
    end else begin
        weights3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights3_address1_local = zext_ln85_8_fu_607_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights3_address1_local = zext_ln85_2_fu_577_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights3_address1_local = zext_ln85_7_fu_545_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_address1_local = zext_ln85_1_fu_515_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_address1_local = zext_ln85_6_fu_475_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_address1_local = zext_ln85_fu_397_p1;
        end else begin
            weights3_address1_local = 'bx;
        end
    end else begin
        weights3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_ce0_local = 1'b1;
    end else begin
        weights3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_ce1_local = 1'b1;
    end else begin
        weights3_ce1_local = 1'b0;
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
            if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln82_fu_627_p2 = (i_9_reg_698 + 7'd4);
assign add_ln85_1_fu_587_p2 = (tmp_56_reg_733 + 8'd2);
assign add_ln85_2_fu_540_p2 = (tmp_56_reg_733 + 8'd4);
assign add_ln85_3_fu_602_p2 = (tmp_56_reg_733 + 8'd5);
assign add_ln85_4_fu_555_p2 = (tmp_56_reg_733 + 8'd7);
assign add_ln85_5_fu_617_p2 = (tmp_56_reg_733 + 8'd8);
assign add_ln85_fu_525_p2 = (tmp_56_reg_733 + 8'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
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
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign bitcast_ln85_10_fu_612_p1 = reg_334;
assign bitcast_ln85_11_fu_652_p1 = reg_334;
assign bitcast_ln85_1_fu_565_p1 = reg_330;
assign bitcast_ln85_2_fu_637_p1 = reg_330;
assign bitcast_ln85_3_fu_520_p1 = reg_334;
assign bitcast_ln85_4_fu_582_p1 = reg_334;
assign bitcast_ln85_5_fu_642_p1 = reg_334;
assign bitcast_ln85_6_fu_535_p1 = reg_330;
assign bitcast_ln85_7_fu_597_p1 = reg_330;
assign bitcast_ln85_8_fu_647_p1 = reg_330;
assign bitcast_ln85_9_fu_550_p1 = reg_334;
assign bitcast_ln85_fu_503_p1 = reg_330;
assign dactivations2_address0 = dactivations2_address0_local;
assign dactivations2_address1 = dactivations2_address1_local;
assign dactivations2_ce0 = dactivations2_ce0_local;
assign dactivations2_ce1 = dactivations2_ce1_local;
assign empty_85_fu_391_p2 = (p_shl_fu_383_p3 - zext_ln37_fu_365_p1);
assign empty_86_fu_470_p2 = (tmp_56_reg_733 + 8'd3);
assign empty_87_fu_493_p2 = (tmp_56_reg_733 + 8'd6);
assign empty_fu_379_p1 = ap_sig_allocacmp_i_9[5:0];
assign grp_fu_2881_p_ce = 1'b1;
assign grp_fu_2881_p_din0 = grp_fu_308_p0;
assign grp_fu_2881_p_din1 = grp_fu_308_p1;
assign grp_fu_2881_p_opcode = 2'd0;
assign grp_fu_2885_p_ce = 1'b1;
assign grp_fu_2885_p_din0 = grp_fu_313_p0;
assign grp_fu_2885_p_din1 = grp_fu_313_p1;
assign grp_fu_2885_p_opcode = 2'd0;
assign grp_fu_2889_p_ce = 1'b1;
assign grp_fu_2889_p_din0 = grp_fu_318_p0;
assign grp_fu_2889_p_din1 = grp_fu_318_p1;
assign grp_fu_2893_p_ce = 1'b1;
assign grp_fu_2893_p_din0 = grp_fu_322_p0;
assign grp_fu_2893_p_din1 = grp_fu_322_p1;
assign grp_fu_2941_p_ce = 1'b1;
assign grp_fu_2941_p_din0 = grp_fu_326_p0;
assign grp_fu_2941_p_din1 = grp_fu_326_p1;
assign lshr_ln8_fu_369_p4 = {{ap_sig_allocacmp_i_9[5:1]}};
assign or_ln1_fu_661_p3 = {{tmp_57_reg_765_pp0_iter6_reg}, {1'd1}};
assign or_ln82_1_fu_457_p3 = {{tmp_57_fu_448_p4}, {2'd2}};
assign or_ln82_2_fu_480_p3 = {{tmp_57_fu_448_p4}, {2'd3}};
assign or_ln85_1_fu_570_p3 = {{tmp_55_reg_723}, {2'd2}};
assign or_ln9_fu_508_p3 = {{tmp_s_reg_718}, {1'd1}};
assign or_ln_fu_422_p3 = {{lshr_ln8_fu_369_p4}, {1'd1}};
assign oracle_activations2_1_address0 = oracle_activations2_1_address0_local;
assign oracle_activations2_1_ce0 = oracle_activations2_1_ce0_local;
assign oracle_activations2_1_d0 = reg_338;
assign oracle_activations2_1_we0 = oracle_activations2_1_we0_local;
assign oracle_activations2_address0 = oracle_activations2_address0_local;
assign oracle_activations2_ce0 = oracle_activations2_ce0_local;
assign oracle_activations2_d0 = reg_338;
assign oracle_activations2_we0 = oracle_activations2_we0_local;
assign p_shl_fu_383_p3 = {{empty_fu_379_p1}, {2'd0}};
assign tmp_55_fu_412_p4 = {{empty_85_fu_391_p2[7:2]}};
assign tmp_56_fu_435_p3 = {{tmp_55_fu_412_p4}, {2'd3}};
assign tmp_57_fu_448_p4 = {{i_9_reg_698[5:2]}};
assign weights3_address0 = weights3_address0_local;
assign weights3_address1 = weights3_address1_local;
assign weights3_ce0 = weights3_ce0_local;
assign weights3_ce1 = weights3_ce1_local;
assign zext_ln37_fu_365_p1 = ap_sig_allocacmp_i_9;
assign zext_ln81_fu_657_p1 = lshr_ln8_reg_708_pp0_iter6_reg;
assign zext_ln82_fu_360_p1 = ap_sig_allocacmp_i_9;
assign zext_ln83_1_fu_465_p1 = or_ln82_1_fu_457_p3;
assign zext_ln83_2_fu_668_p1 = or_ln1_fu_661_p3;
assign zext_ln83_3_fu_488_p1 = or_ln82_2_fu_480_p3;
assign zext_ln83_fu_430_p1 = or_ln_fu_422_p3;
assign zext_ln85_10_fu_560_p1 = add_ln85_4_fu_555_p2;
assign zext_ln85_11_fu_622_p1 = add_ln85_5_fu_617_p2;
assign zext_ln85_1_fu_515_p1 = or_ln9_fu_508_p3;
assign zext_ln85_2_fu_577_p1 = or_ln85_1_fu_570_p3;
assign zext_ln85_3_fu_443_p1 = tmp_56_fu_435_p3;
assign zext_ln85_4_fu_530_p1 = add_ln85_fu_525_p2;
assign zext_ln85_5_fu_592_p1 = add_ln85_1_fu_587_p2;
assign zext_ln85_6_fu_475_p1 = empty_86_fu_470_p2;
assign zext_ln85_7_fu_545_p1 = add_ln85_2_fu_540_p2;
assign zext_ln85_8_fu_607_p1 = add_ln85_3_fu_602_p2;
assign zext_ln85_9_fu_498_p1 = empty_87_fu_493_p2;
assign zext_ln85_fu_397_p1 = empty_85_fu_391_p2;
always @ (posedge ap_clk) begin
    tmp_56_reg_733[1:0] <= 2'b11;
    zext_ln81_reg_1020[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_2_reg_1025[0] <= 1'b1;
    zext_ln83_2_reg_1025[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
end
endmodule 