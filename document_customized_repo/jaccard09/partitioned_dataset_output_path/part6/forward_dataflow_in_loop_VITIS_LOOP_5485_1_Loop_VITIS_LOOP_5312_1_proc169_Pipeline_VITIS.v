
module forward_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i63_i_i,v3751_1_i_address0,v3751_1_i_ce0,v3751_1_i_q0,v3751_i_address0,v3751_i_ce0,v3751_i_q0,v3748_i_address0,v3748_i_ce0,v3748_i_we0,v3748_i_d0,v3748_1_i_address0,v3748_1_i_ce0,v3748_1_i_we0,v3748_1_i_d0,v3753_i_address0,v3753_i_ce0,v3753_i_we0,v3753_i_d0,v3753_i_address1,v3753_i_ce1,v3753_i_q1,v3753_1_i_address0,v3753_1_i_ce0,v3753_1_i_we0,v3753_1_i_d0,v3753_1_i_address1,v3753_1_i_ce1,v3753_1_i_q1,v3752_i_address0,v3752_i_ce0,v3752_i_q0,v3750_1_i_address0,v3750_1_i_ce0,v3750_1_i_q0,v3750_i_address0,v3750_i_ce0,v3750_i_q0,v3749_1_i_address0,v3749_1_i_ce0,v3749_1_i_q0,v3749_i_address0,v3749_i_ce0,v3749_i_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] mul_i63_i_i;
output  [8:0] v3751_1_i_address0;
output   v3751_1_i_ce0;
input  [7:0] v3751_1_i_q0;
output  [8:0] v3751_i_address0;
output   v3751_i_ce0;
input  [7:0] v3751_i_q0;
output  [9:0] v3748_i_address0;
output   v3748_i_ce0;
output   v3748_i_we0;
output  [7:0] v3748_i_d0;
output  [9:0] v3748_1_i_address0;
output   v3748_1_i_ce0;
output   v3748_1_i_we0;
output  [7:0] v3748_1_i_d0;
output  [9:0] v3753_i_address0;
output   v3753_i_ce0;
output   v3753_i_we0;
output  [7:0] v3753_i_d0;
output  [9:0] v3753_i_address1;
output   v3753_i_ce1;
input  [7:0] v3753_i_q1;
output  [9:0] v3753_1_i_address0;
output   v3753_1_i_ce0;
output   v3753_1_i_we0;
output  [7:0] v3753_1_i_d0;
output  [9:0] v3753_1_i_address1;
output   v3753_1_i_ce1;
input  [7:0] v3753_1_i_q1;
output  [10:0] v3752_i_address0;
output   v3752_i_ce0;
input  [7:0] v3752_i_q0;
output  [9:0] v3750_1_i_address0;
output   v3750_1_i_ce0;
input  [7:0] v3750_1_i_q0;
output  [9:0] v3750_i_address0;
output   v3750_i_ce0;
input  [7:0] v3750_i_q0;
output  [9:0] v3749_1_i_address0;
output   v3749_1_i_ce0;
input  [7:0] v3749_1_i_q0;
output  [9:0] v3749_i_address0;
output   v3749_i_ce0;
input  [7:0] v3749_i_q0;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln5312_fu_391_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln531472_reg_285;
reg   [0:0] icmp_ln531571_reg_296;
reg   [0:0] icmp_ln531670_reg_307;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] xor_ln5312_fu_359_p2;
reg   [0:0] xor_ln5312_reg_890;
wire   [0:0] icmp_ln5314_fu_385_p2;
reg   [0:0] icmp_ln5314_reg_896;
reg   [0:0] icmp_ln5312_reg_901;
reg   [0:0] icmp_ln5312_reg_901_pp0_iter1_reg;
wire   [2:0] v3662_mid2_fu_515_p3;
reg   [2:0] v3662_mid2_reg_905;
reg   [2:0] v3662_mid2_reg_905_pp0_iter2_reg;
reg   [2:0] v3662_mid2_reg_905_pp0_iter3_reg;
wire   [2:0] v3661_fu_523_p3;
reg   [2:0] v3661_reg_911;
reg   [2:0] v3661_reg_911_pp0_iter2_reg;
wire   [8:0] zext_ln5318_fu_531_p1;
reg   [8:0] zext_ln5318_reg_916;
wire   [0:0] cmp33_i_i_i_fu_549_p2;
reg   [0:0] cmp33_i_i_i_reg_921;
reg   [0:0] cmp33_i_i_i_reg_921_pp0_iter2_reg;
reg   [0:0] cmp33_i_i_i_reg_921_pp0_iter3_reg;
reg   [0:0] cmp33_i_i_i_reg_921_pp0_iter4_reg;
wire   [0:0] cmp55_i_i_i_fu_568_p2;
reg   [0:0] cmp55_i_i_i_reg_927;
reg   [0:0] cmp55_i_i_i_reg_927_pp0_iter2_reg;
reg   [0:0] cmp55_i_i_i_reg_927_pp0_iter3_reg;
reg   [0:0] cmp55_i_i_i_reg_927_pp0_iter4_reg;
reg   [0:0] cmp55_i_i_i_reg_927_pp0_iter5_reg;
reg   [0:0] cmp55_i_i_i_reg_927_pp0_iter6_reg;
reg   [3:0] lshr_ln_reg_931;
reg   [3:0] lshr_ln_reg_931_pp0_iter2_reg;
wire   [8:0] add_ln5318_fu_588_p2;
reg   [8:0] add_ln5318_reg_938;
wire   [7:0] trunc_ln5318_fu_594_p1;
reg   [7:0] trunc_ln5318_reg_943;
wire   [0:0] icmp_ln5316_fu_621_p2;
reg   [0:0] icmp_ln5316_reg_948;
wire   [0:0] icmp_ln5315_fu_627_p2;
reg   [0:0] icmp_ln5315_reg_953;
wire   [6:0] add_ln5357_fu_725_p2;
reg   [6:0] add_ln5357_reg_983;
wire   [63:0] zext_ln5357_6_fu_756_p1;
reg   [63:0] zext_ln5357_6_reg_995;
reg   [9:0] v3753_i_addr_reg_1003;
reg   [9:0] v3753_i_addr_reg_1003_pp0_iter5_reg;
reg   [9:0] v3753_1_i_addr_reg_1009;
reg   [9:0] v3753_1_i_addr_reg_1009_pp0_iter5_reg;
reg   [9:0] v3748_i_addr_reg_1025;
reg   [9:0] v3748_i_addr_reg_1025_pp0_iter6_reg;
reg   [9:0] v3748_1_i_addr_reg_1030;
reg   [9:0] v3748_1_i_addr_reg_1030_pp0_iter6_reg;
wire   [7:0] select_ln5335_fu_789_p3;
reg   [7:0] select_ln5335_reg_1055;
wire   [7:0] v3695_1_fu_808_p3;
reg   [7:0] v3695_1_reg_1060;
reg   [0:0] ap_phi_mux_icmp_ln531472_phi_fu_288_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln531571_phi_fu_300_p4;
reg   [0:0] ap_phi_mux_icmp_ln531670_phi_fu_311_p4;
wire   [63:0] p_cast_fu_670_p1;
wire   [63:0] zext_ln5318_2_fu_701_p1;
reg   [14:0] indvar_flatten3563_fu_102;
wire   [14:0] add_ln5312_1_fu_365_p2;
reg   [14:0] ap_sig_allocacmp_indvar_flatten3563_load;
reg   [5:0] v365964_fu_106;
wire   [5:0] v3659_fu_443_p3;
reg   [10:0] indvar_flatten1265_fu_110;
wire   [10:0] select_ln5314_1_fu_377_p3;
reg   [10:0] ap_sig_allocacmp_indvar_flatten1265_load;
reg   [5:0] v366066_fu_114;
wire   [5:0] v3660_fu_489_p3;
reg   [5:0] indvar_flatten67_fu_118;
wire   [5:0] select_ln5315_1_fu_613_p3;
reg   [2:0] v366168_fu_122;
reg   [2:0] v366269_fu_126;
wire   [2:0] v3662_fu_601_p2;
reg    v3751_1_i_ce0_local;
reg    v3751_i_ce0_local;
reg    v3752_i_ce0_local;
reg    v3750_1_i_ce0_local;
reg    v3753_1_i_ce1_local;
reg    v3753_1_i_we0_local;
wire   [7:0] grp_fu_816_p3;
reg    v3753_1_i_ce0_local;
reg    v3750_i_ce0_local;
reg    v3753_i_ce1_local;
reg    v3753_i_we0_local;
wire   [7:0] grp_fu_826_p3;
reg    v3753_i_ce0_local;
reg    v3749_1_i_ce0_local;
reg    v3749_i_ce0_local;
reg    v3748_1_i_we0_local;
reg    v3748_1_i_ce0_local;
reg    v3748_i_we0_local;
reg    v3748_i_ce0_local;
wire   [10:0] add_ln5314_1_fu_371_p2;
wire   [5:0] add_ln5312_fu_419_p2;
wire   [5:0] select_ln5312_fu_425_p3;
wire   [0:0] and_ln5312_1_fu_438_p2;
wire   [0:0] empty_fu_457_p2;
wire   [0:0] exitcond_flatten_not_fu_471_p2;
wire   [0:0] and_ln5312_fu_433_p2;
wire   [0:0] not_exitcond_flatten_mid234_fu_477_p2;
wire   [5:0] add_ln5314_fu_451_p2;
wire   [2:0] v3661_mid26_fu_463_p3;
wire   [0:0] icmp_ln5316_mid211_fu_483_p2;
wire   [0:0] empty_298_fu_503_p2;
wire   [0:0] empty_299_fu_509_p2;
wire   [2:0] add_ln5315_fu_497_p2;
wire   [8:0] p_shl20_fu_535_p3;
wire   [4:0] empty_300_fu_555_p1;
wire   [7:0] v3659_cast_cast_i_i_fu_559_p1;
wire   [7:0] empty_301_fu_563_p2;
wire   [8:0] sub_ln5318_fu_543_p2;
wire   [8:0] zext_ln5357_1_fu_584_p1;
wire   [5:0] add_ln5315_1_fu_607_p2;
wire   [8:0] tmp_fu_658_p3;
wire   [8:0] empty_302_fu_665_p2;
wire   [10:0] tmp_233_fu_676_p3;
wire   [10:0] zext_ln5318_1_fu_683_p1;
wire   [10:0] sub_ln5316_fu_686_p2;
wire   [10:0] zext_ln5357_4_fu_692_p1;
wire   [10:0] add_ln5318_1_fu_695_p2;
wire   [6:0] p_shl19_fu_709_p3;
wire   [6:0] zext_ln5357_fu_706_p1;
wire   [6:0] sub_ln5357_fu_716_p2;
wire   [6:0] zext_ln5357_2_fu_722_p1;
wire   [9:0] p_shl18_fu_734_p3;
wire   [9:0] zext_ln5357_3_fu_731_p1;
wire   [9:0] sub_ln5357_1_fu_741_p2;
wire   [9:0] zext_ln5357_5_fu_747_p1;
wire   [9:0] add_ln5357_1_fu_750_p2;
wire  signed [7:0] add_ln5332_fu_778_p1;
(* use_dsp48 = "no" *) wire   [7:0] add_ln5332_fu_778_p2;
wire   [0:0] icmp_ln5334_fu_783_p2;
wire  signed [7:0] v3693_fu_797_p1;
(* use_dsp48 = "no" *) wire   [7:0] v3693_fu_797_p2;
wire   [0:0] v3694_fu_802_p2;
wire   [7:0] grp_fu_816_p2;
wire   [7:0] grp_fu_826_p2;
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
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_693;
reg    ap_condition_698;
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
#0 indvar_flatten3563_fu_102 = 15'd0;
#0 v365964_fu_106 = 6'd0;
#0 indvar_flatten1265_fu_110 = 11'd0;
#0 v366066_fu_114 = 6'd0;
#0 indvar_flatten67_fu_118 = 6'd0;
#0 v366168_fu_122 = 3'd0;
#0 v366269_fu_126 = 3'd0;
#0 ap_done_reg = 1'b0;
end
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U8168(.clk(ap_clk),.reset(ap_rst),.din0(v3752_i_q0),.din1(v3751_1_i_q0),.din2(grp_fu_816_p2),.ce(1'b1),.dout(grp_fu_816_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U8169(.clk(ap_clk),.reset(ap_rst),.din0(v3752_i_q0),.din1(v3751_i_q0),.din2(grp_fu_826_p2),.ce(1'b1),.dout(grp_fu_826_p3));
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_698)) begin
            icmp_ln531472_reg_285 <= icmp_ln5314_reg_896;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln531472_reg_285 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln5312_reg_901_pp0_iter1_reg == 1'd0))) begin
        icmp_ln531571_reg_296 <= icmp_ln5315_reg_953;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln531571_reg_296 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln5312_reg_901_pp0_iter1_reg == 1'd0))) begin
        icmp_ln531670_reg_307 <= icmp_ln5316_reg_948;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln531670_reg_307 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten1265_fu_110 <= select_ln5314_1_fu_377_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1265_fu_110 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten3563_fu_102 <= add_ln5312_1_fu_365_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten3563_fu_102 <= 15'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten67_fu_118 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten67_fu_118 <= select_ln5315_1_fu_613_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v365964_fu_106 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v365964_fu_106 <= v3659_fu_443_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v366066_fu_114 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v366066_fu_114 <= v3660_fu_489_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v366168_fu_122 <= 3'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v366168_fu_122 <= v3661_fu_523_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v366269_fu_126 <= 3'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v366269_fu_126 <= v3662_fu_601_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln5318_reg_938 <= add_ln5318_fu_588_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        cmp33_i_i_i_reg_921 <= cmp33_i_i_i_fu_549_p2;
        cmp55_i_i_i_reg_927 <= cmp55_i_i_i_fu_568_p2;
        icmp_ln5312_reg_901 <= icmp_ln5312_fu_391_p2;
        icmp_ln5312_reg_901_pp0_iter1_reg <= icmp_ln5312_reg_901;
        lshr_ln_reg_931 <= {{v3660_fu_489_p3[4:1]}};
        trunc_ln5318_reg_943 <= trunc_ln5318_fu_594_p1;
        v3661_reg_911 <= v3661_fu_523_p3;
        v3662_mid2_reg_905 <= v3662_mid2_fu_515_p3;
        xor_ln5312_reg_890 <= xor_ln5312_fu_359_p2;
        zext_ln5318_reg_916[5 : 0] <= zext_ln5318_fu_531_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln5357_reg_983 <= add_ln5357_fu_725_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        cmp33_i_i_i_reg_921_pp0_iter2_reg <= cmp33_i_i_i_reg_921;
        cmp33_i_i_i_reg_921_pp0_iter3_reg <= cmp33_i_i_i_reg_921_pp0_iter2_reg;
        cmp33_i_i_i_reg_921_pp0_iter4_reg <= cmp33_i_i_i_reg_921_pp0_iter3_reg;
        cmp55_i_i_i_reg_927_pp0_iter2_reg <= cmp55_i_i_i_reg_927;
        cmp55_i_i_i_reg_927_pp0_iter3_reg <= cmp55_i_i_i_reg_927_pp0_iter2_reg;
        cmp55_i_i_i_reg_927_pp0_iter4_reg <= cmp55_i_i_i_reg_927_pp0_iter3_reg;
        cmp55_i_i_i_reg_927_pp0_iter5_reg <= cmp55_i_i_i_reg_927_pp0_iter4_reg;
        cmp55_i_i_i_reg_927_pp0_iter6_reg <= cmp55_i_i_i_reg_927_pp0_iter5_reg;
        lshr_ln_reg_931_pp0_iter2_reg <= lshr_ln_reg_931;
        select_ln5335_reg_1055 <= select_ln5335_fu_789_p3;
        v3661_reg_911_pp0_iter2_reg <= v3661_reg_911;
        v3662_mid2_reg_905_pp0_iter2_reg <= v3662_mid2_reg_905;
        v3662_mid2_reg_905_pp0_iter3_reg <= v3662_mid2_reg_905_pp0_iter2_reg;
        v3695_1_reg_1060 <= v3695_1_fu_808_p3;
        v3748_1_i_addr_reg_1030 <= zext_ln5357_6_reg_995;
        v3748_1_i_addr_reg_1030_pp0_iter6_reg <= v3748_1_i_addr_reg_1030;
        v3748_i_addr_reg_1025 <= zext_ln5357_6_reg_995;
        v3748_i_addr_reg_1025_pp0_iter6_reg <= v3748_i_addr_reg_1025;
        v3753_1_i_addr_reg_1009 <= zext_ln5357_6_fu_756_p1;
        v3753_1_i_addr_reg_1009_pp0_iter5_reg <= v3753_1_i_addr_reg_1009;
        v3753_i_addr_reg_1003 <= zext_ln5357_6_fu_756_p1;
        v3753_i_addr_reg_1003_pp0_iter5_reg <= v3753_i_addr_reg_1003;
        zext_ln5357_6_reg_995[9 : 0] <= zext_ln5357_6_fu_756_p1[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln5314_reg_896 <= icmp_ln5314_fu_385_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln5315_reg_953 <= icmp_ln5315_fu_627_p2;
        icmp_ln5316_reg_948 <= icmp_ln5316_fu_621_p2;
    end
end
always @ (*) begin
    if (((icmp_ln5312_fu_391_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_693)) begin
            ap_phi_mux_icmp_ln531472_phi_fu_288_p4 = icmp_ln5314_reg_896;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln531472_phi_fu_288_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln531472_phi_fu_288_p4 = icmp_ln5314_reg_896;
        end
    end else begin
        ap_phi_mux_icmp_ln531472_phi_fu_288_p4 = icmp_ln5314_reg_896;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln5312_reg_901_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln531571_phi_fu_300_p4 = icmp_ln5315_reg_953;
    end else begin
        ap_phi_mux_icmp_ln531571_phi_fu_300_p4 = icmp_ln531571_reg_296;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln5312_reg_901_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln531670_phi_fu_311_p4 = icmp_ln5316_reg_948;
    end else begin
        ap_phi_mux_icmp_ln531670_phi_fu_311_p4 = icmp_ln531670_reg_307;
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
        ap_sig_allocacmp_indvar_flatten1265_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1265_load = indvar_flatten1265_fu_110;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten3563_load = 15'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten3563_load = indvar_flatten3563_fu_102;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v3748_1_i_ce0_local = 1'b1;
    end else begin
        v3748_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (cmp55_i_i_i_reg_927_pp0_iter6_reg == 1'd1))) begin
        v3748_1_i_we0_local = 1'b1;
    end else begin
        v3748_1_i_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v3748_i_ce0_local = 1'b1;
    end else begin
        v3748_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (cmp55_i_i_i_reg_927_pp0_iter6_reg == 1'd1))) begin
        v3748_i_we0_local = 1'b1;
    end else begin
        v3748_i_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v3749_1_i_ce0_local = 1'b1;
    end else begin
        v3749_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v3749_i_ce0_local = 1'b1;
    end else begin
        v3749_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v3750_1_i_ce0_local = 1'b1;
    end else begin
        v3750_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v3750_i_ce0_local = 1'b1;
    end else begin
        v3750_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v3751_1_i_ce0_local = 1'b1;
    end else begin
        v3751_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v3751_i_ce0_local = 1'b1;
    end else begin
        v3751_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v3752_i_ce0_local = 1'b1;
    end else begin
        v3752_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3753_1_i_ce0_local = 1'b1;
    end else begin
        v3753_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v3753_1_i_ce1_local = 1'b1;
    end else begin
        v3753_1_i_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3753_1_i_we0_local = 1'b1;
    end else begin
        v3753_1_i_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3753_i_ce0_local = 1'b1;
    end else begin
        v3753_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v3753_i_ce1_local = 1'b1;
    end else begin
        v3753_i_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3753_i_we0_local = 1'b1;
    end else begin
        v3753_i_we0_local = 1'b0;
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
assign add_ln5312_1_fu_365_p2 = (ap_sig_allocacmp_indvar_flatten3563_load + 15'd1);
assign add_ln5312_fu_419_p2 = (v365964_fu_106 + 6'd1);
assign add_ln5314_1_fu_371_p2 = (ap_sig_allocacmp_indvar_flatten1265_load + 11'd1);
assign add_ln5314_fu_451_p2 = (select_ln5312_fu_425_p3 + 6'd2);
assign add_ln5315_1_fu_607_p2 = (indvar_flatten67_fu_118 + 6'd1);
assign add_ln5315_fu_497_p2 = (v3661_mid26_fu_463_p3 + 3'd1);
assign add_ln5318_1_fu_695_p2 = (sub_ln5316_fu_686_p2 + zext_ln5357_4_fu_692_p1);
assign add_ln5318_fu_588_p2 = (sub_ln5318_fu_543_p2 + zext_ln5357_1_fu_584_p1);
assign add_ln5332_fu_778_p1 = grp_fu_816_p3;
assign add_ln5332_fu_778_p2 = ($signed(v3749_1_i_q0) + $signed(add_ln5332_fu_778_p1));
assign add_ln5357_1_fu_750_p2 = (sub_ln5357_1_fu_741_p2 + zext_ln5357_5_fu_747_p1);
assign add_ln5357_fu_725_p2 = (sub_ln5357_fu_716_p2 + zext_ln5357_2_fu_722_p1);
assign and_ln5312_1_fu_438_p2 = (xor_ln5312_reg_890 & ap_phi_mux_icmp_ln531571_phi_fu_300_p4);
assign and_ln5312_fu_433_p2 = (xor_ln5312_reg_890 & ap_phi_mux_icmp_ln531670_phi_fu_311_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_693 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln5312_reg_901 == 1'd0));
end
always @ (*) begin
    ap_condition_698 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln5312_reg_901 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign cmp33_i_i_i_fu_549_p2 = ((v3659_fu_443_p3 == 6'd0) ? 1'b1 : 1'b0);
assign cmp55_i_i_i_fu_568_p2 = ((empty_301_fu_563_p2 == 8'd129) ? 1'b1 : 1'b0);
assign empty_298_fu_503_p2 = (icmp_ln5316_mid211_fu_483_p2 | and_ln5312_1_fu_438_p2);
assign empty_299_fu_509_p2 = (icmp_ln531472_reg_285 | empty_298_fu_503_p2);
assign empty_300_fu_555_p1 = v3659_fu_443_p3[4:0];
assign empty_301_fu_563_p2 = (mul_i63_i_i - v3659_cast_cast_i_i_fu_559_p1);
assign empty_302_fu_665_p2 = (tmp_fu_658_p3 + zext_ln5318_reg_916);
assign empty_fu_457_p2 = (icmp_ln531472_reg_285 | and_ln5312_1_fu_438_p2);
assign exitcond_flatten_not_fu_471_p2 = (ap_phi_mux_icmp_ln531571_phi_fu_300_p4 ^ 1'd1);
assign grp_fu_816_p2 = ((cmp33_i_i_i_reg_921_pp0_iter4_reg[0:0] == 1'b1) ? v3750_1_i_q0 : v3753_1_i_q1);
assign grp_fu_826_p2 = ((cmp33_i_i_i_reg_921_pp0_iter4_reg[0:0] == 1'b1) ? v3750_i_q0 : v3753_i_q1);
assign icmp_ln5312_fu_391_p2 = ((ap_sig_allocacmp_indvar_flatten3563_load == 15'd25087) ? 1'b1 : 1'b0);
assign icmp_ln5314_fu_385_p2 = ((select_ln5314_1_fu_377_p3 == 11'd784) ? 1'b1 : 1'b0);
assign icmp_ln5315_fu_627_p2 = ((select_ln5315_1_fu_613_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln5316_fu_621_p2 = ((v3662_fu_601_p2 == 3'd7) ? 1'b1 : 1'b0);
assign icmp_ln5316_mid211_fu_483_p2 = (not_exitcond_flatten_mid234_fu_477_p2 & and_ln5312_fu_433_p2);
assign icmp_ln5334_fu_783_p2 = (($signed(add_ln5332_fu_778_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign not_exitcond_flatten_mid234_fu_477_p2 = (icmp_ln531472_reg_285 | exitcond_flatten_not_fu_471_p2);
assign p_cast_fu_670_p1 = empty_302_fu_665_p2;
assign p_shl18_fu_734_p3 = {{add_ln5357_reg_983}, {3'd0}};
assign p_shl19_fu_709_p3 = {{lshr_ln_reg_931_pp0_iter2_reg}, {3'd0}};
assign p_shl20_fu_535_p3 = {{v3659_fu_443_p3}, {3'd0}};
assign select_ln5312_fu_425_p3 = ((icmp_ln531472_reg_285[0:0] == 1'b1) ? 6'd0 : v366066_fu_114);
assign select_ln5314_1_fu_377_p3 = ((ap_phi_mux_icmp_ln531472_phi_fu_288_p4[0:0] == 1'b1) ? 11'd1 : add_ln5314_1_fu_371_p2);
assign select_ln5315_1_fu_613_p3 = ((empty_fu_457_p2[0:0] == 1'b1) ? 6'd1 : add_ln5315_1_fu_607_p2);
assign select_ln5335_fu_789_p3 = ((icmp_ln5334_fu_783_p2[0:0] == 1'b1) ? add_ln5332_fu_778_p2 : 8'd229);
assign sub_ln5316_fu_686_p2 = (tmp_233_fu_676_p3 - zext_ln5318_1_fu_683_p1);
assign sub_ln5318_fu_543_p2 = (p_shl20_fu_535_p3 - zext_ln5318_fu_531_p1);
assign sub_ln5357_1_fu_741_p2 = (p_shl18_fu_734_p3 - zext_ln5357_3_fu_731_p1);
assign sub_ln5357_fu_716_p2 = (p_shl19_fu_709_p3 - zext_ln5357_fu_706_p1);
assign tmp_233_fu_676_p3 = {{trunc_ln5318_reg_943}, {3'd0}};
assign tmp_fu_658_p3 = {{lshr_ln_reg_931}, {5'd0}};
assign trunc_ln5318_fu_594_p1 = add_ln5318_fu_588_p2[7:0];
assign v3659_cast_cast_i_i_fu_559_p1 = empty_300_fu_555_p1;
assign v3659_fu_443_p3 = ((icmp_ln531472_reg_285[0:0] == 1'b1) ? add_ln5312_fu_419_p2 : v365964_fu_106);
assign v3660_fu_489_p3 = ((and_ln5312_1_fu_438_p2[0:0] == 1'b1) ? add_ln5314_fu_451_p2 : select_ln5312_fu_425_p3);
assign v3661_fu_523_p3 = ((icmp_ln5316_mid211_fu_483_p2[0:0] == 1'b1) ? add_ln5315_fu_497_p2 : v3661_mid26_fu_463_p3);
assign v3661_mid26_fu_463_p3 = ((empty_fu_457_p2[0:0] == 1'b1) ? 3'd0 : v366168_fu_122);
assign v3662_fu_601_p2 = (v3662_mid2_fu_515_p3 + 3'd1);
assign v3662_mid2_fu_515_p3 = ((empty_299_fu_509_p2[0:0] == 1'b1) ? 3'd0 : v366269_fu_126);
assign v3693_fu_797_p1 = grp_fu_826_p3;
assign v3693_fu_797_p2 = ($signed(v3749_i_q0) + $signed(v3693_fu_797_p1));
assign v3694_fu_802_p2 = (($signed(v3693_fu_797_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v3695_1_fu_808_p3 = ((v3694_fu_802_p2[0:0] == 1'b1) ? v3693_fu_797_p2 : 8'd229);
assign v3748_1_i_address0 = v3748_1_i_addr_reg_1030_pp0_iter6_reg;
assign v3748_1_i_ce0 = v3748_1_i_ce0_local;
assign v3748_1_i_d0 = select_ln5335_reg_1055;
assign v3748_1_i_we0 = v3748_1_i_we0_local;
assign v3748_i_address0 = v3748_i_addr_reg_1025_pp0_iter6_reg;
assign v3748_i_ce0 = v3748_i_ce0_local;
assign v3748_i_d0 = v3695_1_reg_1060;
assign v3748_i_we0 = v3748_i_we0_local;
assign v3749_1_i_address0 = zext_ln5357_6_reg_995;
assign v3749_1_i_ce0 = v3749_1_i_ce0_local;
assign v3749_i_address0 = zext_ln5357_6_reg_995;
assign v3749_i_ce0 = v3749_i_ce0_local;
assign v3750_1_i_address0 = zext_ln5357_6_fu_756_p1;
assign v3750_1_i_ce0 = v3750_1_i_ce0_local;
assign v3750_i_address0 = zext_ln5357_6_fu_756_p1;
assign v3750_i_ce0 = v3750_i_ce0_local;
assign v3751_1_i_address0 = p_cast_fu_670_p1;
assign v3751_1_i_ce0 = v3751_1_i_ce0_local;
assign v3751_i_address0 = p_cast_fu_670_p1;
assign v3751_i_ce0 = v3751_i_ce0_local;
assign v3752_i_address0 = zext_ln5318_2_fu_701_p1;
assign v3752_i_ce0 = v3752_i_ce0_local;
assign v3753_1_i_address0 = v3753_1_i_addr_reg_1009_pp0_iter5_reg;
assign v3753_1_i_address1 = zext_ln5357_6_fu_756_p1;
assign v3753_1_i_ce0 = v3753_1_i_ce0_local;
assign v3753_1_i_ce1 = v3753_1_i_ce1_local;
assign v3753_1_i_d0 = grp_fu_816_p3;
assign v3753_1_i_we0 = v3753_1_i_we0_local;
assign v3753_i_address0 = v3753_i_addr_reg_1003_pp0_iter5_reg;
assign v3753_i_address1 = zext_ln5357_6_fu_756_p1;
assign v3753_i_ce0 = v3753_i_ce0_local;
assign v3753_i_ce1 = v3753_i_ce1_local;
assign v3753_i_d0 = grp_fu_826_p3;
assign v3753_i_we0 = v3753_i_we0_local;
assign xor_ln5312_fu_359_p2 = (ap_phi_mux_icmp_ln531472_phi_fu_288_p4 ^ 1'd1);
assign zext_ln5318_1_fu_683_p1 = add_ln5318_reg_938;
assign zext_ln5318_2_fu_701_p1 = add_ln5318_1_fu_695_p2;
assign zext_ln5318_fu_531_p1 = v3659_fu_443_p3;
assign zext_ln5357_1_fu_584_p1 = v3661_fu_523_p3;
assign zext_ln5357_2_fu_722_p1 = v3661_reg_911_pp0_iter2_reg;
assign zext_ln5357_3_fu_731_p1 = add_ln5357_reg_983;
assign zext_ln5357_4_fu_692_p1 = v3662_mid2_reg_905;
assign zext_ln5357_5_fu_747_p1 = v3662_mid2_reg_905_pp0_iter3_reg;
assign zext_ln5357_6_fu_756_p1 = add_ln5357_1_fu_750_p2;
assign zext_ln5357_fu_706_p1 = lshr_ln_reg_931_pp0_iter2_reg;
always @ (posedge ap_clk) begin
    zext_ln5318_reg_916[8:6] <= 3'b000;
    zext_ln5357_6_reg_995[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end
endmodule 
