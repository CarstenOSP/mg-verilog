
module forward_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8815_1_proc90 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v9222_1_1_1_address0,v9222_1_1_1_ce0,v9222_1_1_1_we0,v9222_1_1_1_d0,v9222_1_1_0_address0,v9222_1_1_0_ce0,v9222_1_1_0_we0,v9222_1_1_0_d0,v9222_1_0_1_address0,v9222_1_0_1_ce0,v9222_1_0_1_we0,v9222_1_0_1_d0,v9222_1_0_0_address0,v9222_1_0_0_ce0,v9222_1_0_0_we0,v9222_1_0_0_d0,v9222_0_1_1_address0,v9222_0_1_1_ce0,v9222_0_1_1_we0,v9222_0_1_1_d0,v9222_0_1_0_address0,v9222_0_1_0_ce0,v9222_0_1_0_we0,v9222_0_1_0_d0,v9222_0_0_1_address0,v9222_0_0_1_ce0,v9222_0_0_1_we0,v9222_0_0_1_d0,v9222_0_0_0_address0,v9222_0_0_0_ce0,v9222_0_0_0_we0,v9222_0_0_0_d0,p_read,v5991_7_address0,v5991_7_ce0,v5991_7_q0,v5991_6_address0,v5991_6_ce0,v5991_6_q0,v5991_5_address0,v5991_5_ce0,v5991_5_q0,v5991_4_address0,v5991_4_ce0,v5991_4_q0,v5991_3_address0,v5991_3_ce0,v5991_3_q0,v5991_2_address0,v5991_2_ce0,v5991_2_q0,v5991_1_address0,v5991_1_ce0,v5991_1_q0,v5991_address0,v5991_ce0,v5991_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [13:0] v9222_1_1_1_address0;
output   v9222_1_1_1_ce0;
output   v9222_1_1_1_we0;
output  [7:0] v9222_1_1_1_d0;
output  [13:0] v9222_1_1_0_address0;
output   v9222_1_1_0_ce0;
output   v9222_1_1_0_we0;
output  [7:0] v9222_1_1_0_d0;
output  [13:0] v9222_1_0_1_address0;
output   v9222_1_0_1_ce0;
output   v9222_1_0_1_we0;
output  [7:0] v9222_1_0_1_d0;
output  [13:0] v9222_1_0_0_address0;
output   v9222_1_0_0_ce0;
output   v9222_1_0_0_we0;
output  [7:0] v9222_1_0_0_d0;
output  [13:0] v9222_0_1_1_address0;
output   v9222_0_1_1_ce0;
output   v9222_0_1_1_we0;
output  [7:0] v9222_0_1_1_d0;
output  [13:0] v9222_0_1_0_address0;
output   v9222_0_1_0_ce0;
output   v9222_0_1_0_we0;
output  [7:0] v9222_0_1_0_d0;
output  [13:0] v9222_0_0_1_address0;
output   v9222_0_0_1_ce0;
output   v9222_0_0_1_we0;
output  [7:0] v9222_0_0_1_d0;
output  [13:0] v9222_0_0_0_address0;
output   v9222_0_0_0_ce0;
output   v9222_0_0_0_we0;
output  [7:0] v9222_0_0_0_d0;
input  [3:0] p_read;
output  [9:0] v5991_7_address0;
output   v5991_7_ce0;
input  [7:0] v5991_7_q0;
output  [9:0] v5991_6_address0;
output   v5991_6_ce0;
input  [7:0] v5991_6_q0;
output  [9:0] v5991_5_address0;
output   v5991_5_ce0;
input  [7:0] v5991_5_q0;
output  [9:0] v5991_4_address0;
output   v5991_4_ce0;
input  [7:0] v5991_4_q0;
output  [9:0] v5991_3_address0;
output   v5991_3_ce0;
input  [7:0] v5991_3_q0;
output  [9:0] v5991_2_address0;
output   v5991_2_ce0;
input  [7:0] v5991_2_q0;
output  [9:0] v5991_1_address0;
output   v5991_1_ce0;
input  [7:0] v5991_1_q0;
output  [9:0] v5991_address0;
output   v5991_ce0;
input  [7:0] v5991_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln8815_fu_746_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [3:0] p_udiv8_cast_cast_cast_cast_fu_446_p3;
reg   [3:0] p_udiv8_cast_cast_cast_cast_reg_1138;
wire   [3:0] p_udiv10_cast_cast_cast_cast_fu_466_p3;
reg   [3:0] p_udiv10_cast_cast_cast_cast_reg_1143;
reg   [3:0] p_udiv10_cast_cast_cast_cast_reg_1143_pp0_iter1_reg;
wire   [5:0] empty_161_fu_618_p2;
reg   [5:0] empty_161_reg_1148;
reg   [5:0] tmp_33_reg_1154;
wire   [2:0] lshr_ln8816_1_fu_638_p4;
reg   [2:0] lshr_ln8816_1_reg_1160;
wire   [7:0] add_ln8819_fu_652_p2;
reg   [7:0] add_ln8819_reg_1165;
wire   [6:0] trunc_ln8819_fu_658_p1;
reg   [6:0] trunc_ln8819_reg_1170;
reg   [3:0] lshr_ln3_reg_1175;
reg   [3:0] lshr_ln3_reg_1175_pp0_iter1_reg;
reg   [2:0] lshr_ln8817_1_reg_1180;
reg   [2:0] lshr_ln8817_1_reg_1180_pp0_iter1_reg;
reg   [3:0] lshr_ln4_reg_1186;
reg   [3:0] lshr_ln4_reg_1186_pp0_iter1_reg;
wire   [0:0] icmp_ln8817_fu_734_p2;
reg   [0:0] icmp_ln8817_reg_1191;
wire   [0:0] icmp_ln8816_fu_740_p2;
reg   [0:0] icmp_ln8816_reg_1196;
reg   [0:0] icmp_ln8815_reg_1201;
wire   [9:0] sub_ln8826_fu_795_p2;
reg   [9:0] sub_ln8826_reg_1205;
wire   [9:0] sub_ln8834_fu_819_p2;
reg   [9:0] sub_ln8834_reg_1211;
wire   [3:0] empty_163_fu_844_p2;
reg   [3:0] empty_163_reg_1217;
reg   [0:0] ap_phi_mux_icmp_ln8816147_phi_fu_387_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln8817146_phi_fu_397_p4;
wire   [63:0] zext_ln8819_4_fu_858_p1;
wire   [63:0] zext_ln8832_1_fu_1018_p1;
wire   [63:0] zext_ln8828_fu_1029_p1;
wire   [63:0] zext_ln8824_fu_1040_p1;
wire   [63:0] zext_ln8820_fu_1051_p1;
wire   [63:0] zext_ln8834_4_fu_1065_p1;
wire   [63:0] zext_ln8830_2_fu_1076_p1;
wire   [63:0] zext_ln8826_2_fu_1087_p1;
wire   [63:0] zext_ln8822_1_fu_1098_p1;
reg   [9:0] indvar_flatten12141_fu_142;
wire   [9:0] add_ln8815_1_fu_728_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten12141_load;
reg   [5:0] v5758142_fu_146;
wire   [5:0] v5758_fu_540_p3;
reg   [5:0] ap_sig_allocacmp_v5758142_load;
reg   [5:0] indvar_flatten143_fu_150;
wire   [5:0] select_ln8816_1_fu_720_p3;
reg   [5:0] ap_sig_allocacmp_indvar_flatten143_load;
reg   [3:0] v5759144_fu_154;
wire   [3:0] v5759_fu_568_p3;
reg   [3:0] ap_sig_allocacmp_v5759144_load;
reg   [3:0] v5760145_fu_158;
wire   [3:0] v5760_fu_708_p2;
reg   [3:0] ap_sig_allocacmp_v5760145_load;
reg    v5991_7_ce0_local;
reg    v5991_6_ce0_local;
reg    v5991_5_ce0_local;
reg    v5991_4_ce0_local;
reg    v5991_3_ce0_local;
reg    v5991_2_ce0_local;
reg    v5991_1_ce0_local;
reg    v5991_ce0_local;
reg    v9222_0_0_0_we0_local;
reg    v9222_0_0_0_ce0_local;
reg    v9222_0_0_1_we0_local;
reg    v9222_0_0_1_ce0_local;
reg    v9222_0_1_0_we0_local;
reg    v9222_0_1_0_ce0_local;
reg    v9222_0_1_1_we0_local;
reg    v9222_0_1_1_ce0_local;
reg    v9222_1_0_0_we0_local;
reg    v9222_1_0_0_ce0_local;
reg    v9222_1_0_1_we0_local;
reg    v9222_1_0_1_ce0_local;
reg    v9222_1_1_0_we0_local;
reg    v9222_1_1_0_ce0_local;
reg    v9222_1_1_1_we0_local;
reg    v9222_1_1_1_ce0_local;
wire   [1:0] tmp_fu_404_p4;
wire   [0:0] tmp_31_fu_430_p3;
wire   [0:0] empty_fu_454_p1;
wire   [0:0] xor_ln8815_fu_528_p2;
wire   [5:0] add_ln8815_fu_514_p2;
wire   [3:0] select_ln8815_fu_520_p3;
wire   [0:0] and_ln8815_fu_534_p2;
wire   [0:0] empty_159_fu_554_p2;
wire   [3:0] add_ln8816_fu_548_p2;
wire   [4:0] lshr_ln_fu_580_p4;
wire   [7:0] p_shl20_fu_598_p3;
wire   [7:0] zext_ln8819_fu_594_p1;
wire   [6:0] mul_i_fu_414_p3;
wire   [6:0] zext_ln8815_fu_576_p1;
wire   [5:0] zext_ln8815_1_fu_590_p1;
wire   [5:0] trunc_ln_fu_422_p3;
wire   [6:0] empty_160_fu_612_p2;
wire   [7:0] sub_ln8819_fu_606_p2;
wire   [7:0] zext_ln8819_1_fu_648_p1;
wire   [4:0] mul9_i_cast_cast_cast_cast_cast_cast_fu_438_p3;
wire   [4:0] zext_ln8816_fu_634_p1;
wire   [4:0] empty_162_fu_662_p2;
wire   [3:0] v5760_mid2_fu_560_p3;
wire   [4:0] zext_ln9055_cast_cast_cast_cast_fu_458_p3;
wire   [4:0] zext_ln8817_fu_678_p1;
wire   [4:0] add_ln8820_fu_692_p2;
wire   [5:0] add_ln8816_1_fu_714_p2;
wire   [6:0] tmp_32_fu_784_p3;
wire   [9:0] p_shl21_fu_777_p3;
wire   [9:0] zext_ln8826_fu_791_p1;
wire   [6:0] tmp_34_fu_808_p3;
wire   [9:0] p_shl22_fu_801_p3;
wire   [9:0] zext_ln8834_fu_815_p1;
wire   [9:0] tmp_35_fu_828_p3;
wire   [9:0] zext_ln8819_2_fu_835_p1;
wire   [3:0] zext_ln8816_1_fu_825_p1;
wire   [9:0] sub_ln8819_1_fu_838_p2;
wire   [9:0] zext_ln8819_3_fu_849_p1;
wire   [9:0] add_ln8819_1_fu_852_p2;
wire   [9:0] zext_ln8830_fu_870_p1;
wire   [9:0] add_ln8830_fu_873_p2;
wire   [10:0] tmp_36_fu_886_p3;
wire   [13:0] p_shl23_fu_878_p3;
wire   [13:0] zext_ln8830_1_fu_894_p1;
wire   [9:0] add_ln8822_fu_904_p2;
wire   [10:0] tmp_37_fu_917_p3;
wire   [13:0] p_shl24_fu_909_p3;
wire   [13:0] zext_ln8822_fu_925_p1;
wire   [9:0] zext_ln8834_1_fu_935_p1;
wire   [9:0] add_ln8834_fu_938_p2;
wire   [10:0] tmp_38_fu_951_p3;
wire   [13:0] p_shl25_fu_943_p3;
wire   [13:0] zext_ln8834_2_fu_959_p1;
wire   [9:0] add_ln8826_fu_969_p2;
wire   [10:0] tmp_39_fu_982_p3;
wire   [13:0] p_shl_fu_974_p3;
wire   [13:0] zext_ln8826_1_fu_990_p1;
wire   [3:0] zext_ln8817_1_fu_1000_p1;
wire   [3:0] add_ln8820_1_fu_1003_p2;
wire   [13:0] sub_ln8834_1_fu_963_p2;
wire   [13:0] zext_ln8832_fu_1008_p1;
wire   [13:0] add_ln8832_fu_1012_p2;
wire   [13:0] sub_ln8830_fu_898_p2;
wire   [13:0] add_ln8828_fu_1023_p2;
wire   [13:0] sub_ln8826_1_fu_994_p2;
wire   [13:0] add_ln8824_fu_1034_p2;
wire   [13:0] sub_ln8822_fu_929_p2;
wire   [13:0] add_ln8820_2_fu_1045_p2;
wire   [13:0] zext_ln8834_3_fu_1056_p1;
wire   [13:0] add_ln8834_1_fu_1059_p2;
wire   [13:0] add_ln8830_1_fu_1070_p2;
wire   [13:0] add_ln8826_1_fu_1081_p2;
wire   [13:0] add_ln8822_1_fu_1092_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_775;
reg    ap_condition_202;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten12141_fu_142 = 10'd0;
#0 v5758142_fu_146 = 6'd0;
#0 indvar_flatten143_fu_150 = 6'd0;
#0 v5759144_fu_154 = 4'd0;
#0 v5760145_fu_158 = 4'd0;
end
forward_flow_control_loop_delay_pipe flow_control_loop_delay_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(ap_continue),.ap_loop_exit_ready_delayed(ap_loop_exit_ready_delayed));
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_202)) begin
        indvar_flatten12141_fu_142 <= add_ln8815_1_fu_728_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_202)) begin
    indvar_flatten143_fu_150 <= select_ln8816_1_fu_720_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_202)) begin
    v5758142_fu_146 <= v5758_fu_540_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_202)) begin
    v5759144_fu_154 <= v5759_fu_568_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_202)) begin
    v5760145_fu_158 <= v5760_fu_708_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln8819_reg_1165 <= add_ln8819_fu_652_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        empty_161_reg_1148 <= empty_161_fu_618_p2;
        empty_163_reg_1217 <= empty_163_fu_844_p2;
        icmp_ln8815_reg_1201 <= icmp_ln8815_fu_746_p2;
        lshr_ln3_reg_1175 <= {{empty_162_fu_662_p2[4:1]}};
        lshr_ln3_reg_1175_pp0_iter1_reg <= lshr_ln3_reg_1175;
        lshr_ln4_reg_1186 <= {{add_ln8820_fu_692_p2[4:1]}};
        lshr_ln4_reg_1186_pp0_iter1_reg <= lshr_ln4_reg_1186;
        lshr_ln8816_1_reg_1160 <= {{v5759_fu_568_p3[3:1]}};
        lshr_ln8817_1_reg_1180 <= {{v5760_mid2_fu_560_p3[3:1]}};
        lshr_ln8817_1_reg_1180_pp0_iter1_reg <= lshr_ln8817_1_reg_1180;
        p_udiv10_cast_cast_cast_cast_reg_1143[2 : 0] <= p_udiv10_cast_cast_cast_cast_fu_466_p3[2 : 0];
        p_udiv10_cast_cast_cast_cast_reg_1143_pp0_iter1_reg[2 : 0] <= p_udiv10_cast_cast_cast_cast_reg_1143[2 : 0];
        p_udiv8_cast_cast_cast_cast_reg_1138[2 : 0] <= p_udiv8_cast_cast_cast_cast_fu_446_p3[2 : 0];
        sub_ln8826_reg_1205[9 : 1] <= sub_ln8826_fu_795_p2[9 : 1];
        sub_ln8834_reg_1211[9 : 1] <= sub_ln8834_fu_819_p2[9 : 1];
        tmp_33_reg_1154 <= {{empty_160_fu_612_p2[6:1]}};
        trunc_ln8819_reg_1170 <= trunc_ln8819_fu_658_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln8816_reg_1196 <= icmp_ln8816_fu_740_p2;
        icmp_ln8817_reg_1191 <= icmp_ln8817_fu_734_p2;
    end
end
always @ (*) begin
    if (((icmp_ln8815_fu_746_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_775)) begin
            ap_phi_mux_icmp_ln8816147_phi_fu_387_p4 = icmp_ln8816_reg_1196;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln8816147_phi_fu_387_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln8816147_phi_fu_387_p4 = icmp_ln8816_reg_1196;
        end
    end else begin
        ap_phi_mux_icmp_ln8816147_phi_fu_387_p4 = icmp_ln8816_reg_1196;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_775)) begin
            ap_phi_mux_icmp_ln8817146_phi_fu_397_p4 = icmp_ln8817_reg_1191;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln8817146_phi_fu_397_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln8817146_phi_fu_397_p4 = icmp_ln8817_reg_1191;
        end
    end else begin
        ap_phi_mux_icmp_ln8817146_phi_fu_397_p4 = icmp_ln8817_reg_1191;
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
        ap_sig_allocacmp_indvar_flatten12141_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12141_load = indvar_flatten12141_fu_142;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten143_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten143_load = indvar_flatten143_fu_150;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v5758142_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v5758142_load = v5758142_fu_146;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v5759144_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v5759144_load = v5759144_fu_154;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v5760145_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v5760145_load = v5760145_fu_158;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5991_1_ce0_local = 1'b1;
    end else begin
        v5991_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5991_2_ce0_local = 1'b1;
    end else begin
        v5991_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5991_3_ce0_local = 1'b1;
    end else begin
        v5991_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5991_4_ce0_local = 1'b1;
    end else begin
        v5991_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5991_5_ce0_local = 1'b1;
    end else begin
        v5991_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5991_6_ce0_local = 1'b1;
    end else begin
        v5991_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5991_7_ce0_local = 1'b1;
    end else begin
        v5991_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5991_ce0_local = 1'b1;
    end else begin
        v5991_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9222_0_0_0_ce0_local = 1'b1;
    end else begin
        v9222_0_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9222_0_0_0_we0_local = 1'b1;
    end else begin
        v9222_0_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9222_0_0_1_ce0_local = 1'b1;
    end else begin
        v9222_0_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9222_0_0_1_we0_local = 1'b1;
    end else begin
        v9222_0_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9222_0_1_0_ce0_local = 1'b1;
    end else begin
        v9222_0_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9222_0_1_0_we0_local = 1'b1;
    end else begin
        v9222_0_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9222_0_1_1_ce0_local = 1'b1;
    end else begin
        v9222_0_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9222_0_1_1_we0_local = 1'b1;
    end else begin
        v9222_0_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9222_1_0_0_ce0_local = 1'b1;
    end else begin
        v9222_1_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9222_1_0_0_we0_local = 1'b1;
    end else begin
        v9222_1_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9222_1_0_1_ce0_local = 1'b1;
    end else begin
        v9222_1_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9222_1_0_1_we0_local = 1'b1;
    end else begin
        v9222_1_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9222_1_1_0_ce0_local = 1'b1;
    end else begin
        v9222_1_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9222_1_1_0_we0_local = 1'b1;
    end else begin
        v9222_1_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9222_1_1_1_ce0_local = 1'b1;
    end else begin
        v9222_1_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9222_1_1_1_we0_local = 1'b1;
    end else begin
        v9222_1_1_1_we0_local = 1'b0;
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
assign add_ln8815_1_fu_728_p2 = (ap_sig_allocacmp_indvar_flatten12141_load + 10'd1);
assign add_ln8815_fu_514_p2 = (ap_sig_allocacmp_v5758142_load + 6'd2);
assign add_ln8816_1_fu_714_p2 = (ap_sig_allocacmp_indvar_flatten143_load + 6'd1);
assign add_ln8816_fu_548_p2 = (select_ln8815_fu_520_p3 + 4'd2);
assign add_ln8819_1_fu_852_p2 = (sub_ln8819_1_fu_838_p2 + zext_ln8819_3_fu_849_p1);
assign add_ln8819_fu_652_p2 = (sub_ln8819_fu_606_p2 + zext_ln8819_1_fu_648_p1);
assign add_ln8820_1_fu_1003_p2 = (zext_ln8817_1_fu_1000_p1 + p_udiv10_cast_cast_cast_cast_reg_1143_pp0_iter1_reg);
assign add_ln8820_2_fu_1045_p2 = (sub_ln8822_fu_929_p2 + zext_ln8832_fu_1008_p1);
assign add_ln8820_fu_692_p2 = (zext_ln9055_cast_cast_cast_cast_fu_458_p3 + zext_ln8817_fu_678_p1);
assign add_ln8822_1_fu_1092_p2 = (sub_ln8822_fu_929_p2 + zext_ln8834_3_fu_1056_p1);
assign add_ln8822_fu_904_p2 = (sub_ln8826_reg_1205 + zext_ln8830_fu_870_p1);
assign add_ln8824_fu_1034_p2 = (sub_ln8826_1_fu_994_p2 + zext_ln8832_fu_1008_p1);
assign add_ln8826_1_fu_1081_p2 = (sub_ln8826_1_fu_994_p2 + zext_ln8834_3_fu_1056_p1);
assign add_ln8826_fu_969_p2 = (sub_ln8826_reg_1205 + zext_ln8834_1_fu_935_p1);
assign add_ln8828_fu_1023_p2 = (sub_ln8830_fu_898_p2 + zext_ln8832_fu_1008_p1);
assign add_ln8830_1_fu_1070_p2 = (sub_ln8830_fu_898_p2 + zext_ln8834_3_fu_1056_p1);
assign add_ln8830_fu_873_p2 = (sub_ln8834_reg_1211 + zext_ln8830_fu_870_p1);
assign add_ln8832_fu_1012_p2 = (sub_ln8834_1_fu_963_p2 + zext_ln8832_fu_1008_p1);
assign add_ln8834_1_fu_1059_p2 = (sub_ln8834_1_fu_963_p2 + zext_ln8834_3_fu_1056_p1);
assign add_ln8834_fu_938_p2 = (sub_ln8834_reg_1211 + zext_ln8834_1_fu_935_p1);
assign and_ln8815_fu_534_p2 = (xor_ln8815_fu_528_p2 & ap_phi_mux_icmp_ln8817146_phi_fu_397_p4);
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
    ap_condition_202 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_775 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln8815_reg_1201 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_159_fu_554_p2 = (ap_phi_mux_icmp_ln8816147_phi_fu_387_p4 | and_ln8815_fu_534_p2);
assign empty_160_fu_612_p2 = (mul_i_fu_414_p3 + zext_ln8815_fu_576_p1);
assign empty_161_fu_618_p2 = (zext_ln8815_1_fu_590_p1 + trunc_ln_fu_422_p3);
assign empty_162_fu_662_p2 = (mul9_i_cast_cast_cast_cast_cast_cast_fu_438_p3 + zext_ln8816_fu_634_p1);
assign empty_163_fu_844_p2 = (zext_ln8816_1_fu_825_p1 + p_udiv8_cast_cast_cast_cast_reg_1138);
assign empty_fu_454_p1 = p_read[0:0];
assign icmp_ln8815_fu_746_p2 = ((ap_sig_allocacmp_indvar_flatten12141_load == 10'd783) ? 1'b1 : 1'b0);
assign icmp_ln8816_fu_740_p2 = ((select_ln8816_1_fu_720_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln8817_fu_734_p2 = ((v5760_fu_708_p2 == 4'd14) ? 1'b1 : 1'b0);
assign lshr_ln8816_1_fu_638_p4 = {{v5759_fu_568_p3[3:1]}};
assign lshr_ln_fu_580_p4 = {{v5758_fu_540_p3[5:1]}};
assign mul9_i_cast_cast_cast_cast_cast_cast_fu_438_p3 = ((tmp_31_fu_430_p3[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign mul_i_fu_414_p3 = {{tmp_fu_404_p4}, {5'd0}};
assign p_shl20_fu_598_p3 = {{lshr_ln_fu_580_p4}, {3'd0}};
assign p_shl21_fu_777_p3 = {{empty_161_reg_1148}, {4'd0}};
assign p_shl22_fu_801_p3 = {{tmp_33_reg_1154}, {4'd0}};
assign p_shl23_fu_878_p3 = {{add_ln8830_fu_873_p2}, {4'd0}};
assign p_shl24_fu_909_p3 = {{add_ln8822_fu_904_p2}, {4'd0}};
assign p_shl25_fu_943_p3 = {{add_ln8834_fu_938_p2}, {4'd0}};
assign p_shl_fu_974_p3 = {{add_ln8826_fu_969_p2}, {4'd0}};
assign p_udiv10_cast_cast_cast_cast_fu_466_p3 = ((empty_fu_454_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign p_udiv8_cast_cast_cast_cast_fu_446_p3 = ((tmp_31_fu_430_p3[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign select_ln8815_fu_520_p3 = ((ap_phi_mux_icmp_ln8816147_phi_fu_387_p4[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v5759144_load);
assign select_ln8816_1_fu_720_p3 = ((ap_phi_mux_icmp_ln8816147_phi_fu_387_p4[0:0] == 1'b1) ? 6'd1 : add_ln8816_1_fu_714_p2);
assign sub_ln8819_1_fu_838_p2 = (tmp_35_fu_828_p3 - zext_ln8819_2_fu_835_p1);
assign sub_ln8819_fu_606_p2 = (p_shl20_fu_598_p3 - zext_ln8819_fu_594_p1);
assign sub_ln8822_fu_929_p2 = (p_shl24_fu_909_p3 - zext_ln8822_fu_925_p1);
assign sub_ln8826_1_fu_994_p2 = (p_shl_fu_974_p3 - zext_ln8826_1_fu_990_p1);
assign sub_ln8826_fu_795_p2 = (p_shl21_fu_777_p3 - zext_ln8826_fu_791_p1);
assign sub_ln8830_fu_898_p2 = (p_shl23_fu_878_p3 - zext_ln8830_1_fu_894_p1);
assign sub_ln8834_1_fu_963_p2 = (p_shl25_fu_943_p3 - zext_ln8834_2_fu_959_p1);
assign sub_ln8834_fu_819_p2 = (p_shl22_fu_801_p3 - zext_ln8834_fu_815_p1);
assign tmp_31_fu_430_p3 = p_read[32'd1];
assign tmp_32_fu_784_p3 = {{empty_161_reg_1148}, {1'd0}};
assign tmp_34_fu_808_p3 = {{tmp_33_reg_1154}, {1'd0}};
assign tmp_35_fu_828_p3 = {{trunc_ln8819_reg_1170}, {3'd0}};
assign tmp_36_fu_886_p3 = {{add_ln8830_fu_873_p2}, {1'd0}};
assign tmp_37_fu_917_p3 = {{add_ln8822_fu_904_p2}, {1'd0}};
assign tmp_38_fu_951_p3 = {{add_ln8834_fu_938_p2}, {1'd0}};
assign tmp_39_fu_982_p3 = {{add_ln8826_fu_969_p2}, {1'd0}};
assign tmp_fu_404_p4 = {{p_read[3:2]}};
assign trunc_ln8819_fu_658_p1 = add_ln8819_fu_652_p2[6:0];
assign trunc_ln_fu_422_p3 = {{tmp_fu_404_p4}, {4'd0}};
assign v5758_fu_540_p3 = ((ap_phi_mux_icmp_ln8816147_phi_fu_387_p4[0:0] == 1'b1) ? add_ln8815_fu_514_p2 : ap_sig_allocacmp_v5758142_load);
assign v5759_fu_568_p3 = ((and_ln8815_fu_534_p2[0:0] == 1'b1) ? add_ln8816_fu_548_p2 : select_ln8815_fu_520_p3);
assign v5760_fu_708_p2 = (v5760_mid2_fu_560_p3 + 4'd2);
assign v5760_mid2_fu_560_p3 = ((empty_159_fu_554_p2[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v5760145_load);
assign v5991_1_address0 = zext_ln8819_4_fu_858_p1;
assign v5991_1_ce0 = v5991_1_ce0_local;
assign v5991_2_address0 = zext_ln8819_4_fu_858_p1;
assign v5991_2_ce0 = v5991_2_ce0_local;
assign v5991_3_address0 = zext_ln8819_4_fu_858_p1;
assign v5991_3_ce0 = v5991_3_ce0_local;
assign v5991_4_address0 = zext_ln8819_4_fu_858_p1;
assign v5991_4_ce0 = v5991_4_ce0_local;
assign v5991_5_address0 = zext_ln8819_4_fu_858_p1;
assign v5991_5_ce0 = v5991_5_ce0_local;
assign v5991_6_address0 = zext_ln8819_4_fu_858_p1;
assign v5991_6_ce0 = v5991_6_ce0_local;
assign v5991_7_address0 = zext_ln8819_4_fu_858_p1;
assign v5991_7_ce0 = v5991_7_ce0_local;
assign v5991_address0 = zext_ln8819_4_fu_858_p1;
assign v5991_ce0 = v5991_ce0_local;
assign v9222_0_0_0_address0 = zext_ln8820_fu_1051_p1;
assign v9222_0_0_0_ce0 = v9222_0_0_0_ce0_local;
assign v9222_0_0_0_d0 = v5991_7_q0;
assign v9222_0_0_0_we0 = v9222_0_0_0_we0_local;
assign v9222_0_0_1_address0 = zext_ln8822_1_fu_1098_p1;
assign v9222_0_0_1_ce0 = v9222_0_0_1_ce0_local;
assign v9222_0_0_1_d0 = v5991_6_q0;
assign v9222_0_0_1_we0 = v9222_0_0_1_we0_local;
assign v9222_0_1_0_address0 = zext_ln8824_fu_1040_p1;
assign v9222_0_1_0_ce0 = v9222_0_1_0_ce0_local;
assign v9222_0_1_0_d0 = v5991_5_q0;
assign v9222_0_1_0_we0 = v9222_0_1_0_we0_local;
assign v9222_0_1_1_address0 = zext_ln8826_2_fu_1087_p1;
assign v9222_0_1_1_ce0 = v9222_0_1_1_ce0_local;
assign v9222_0_1_1_d0 = v5991_4_q0;
assign v9222_0_1_1_we0 = v9222_0_1_1_we0_local;
assign v9222_1_0_0_address0 = zext_ln8828_fu_1029_p1;
assign v9222_1_0_0_ce0 = v9222_1_0_0_ce0_local;
assign v9222_1_0_0_d0 = v5991_3_q0;
assign v9222_1_0_0_we0 = v9222_1_0_0_we0_local;
assign v9222_1_0_1_address0 = zext_ln8830_2_fu_1076_p1;
assign v9222_1_0_1_ce0 = v9222_1_0_1_ce0_local;
assign v9222_1_0_1_d0 = v5991_2_q0;
assign v9222_1_0_1_we0 = v9222_1_0_1_we0_local;
assign v9222_1_1_0_address0 = zext_ln8832_1_fu_1018_p1;
assign v9222_1_1_0_ce0 = v9222_1_1_0_ce0_local;
assign v9222_1_1_0_d0 = v5991_1_q0;
assign v9222_1_1_0_we0 = v9222_1_1_0_we0_local;
assign v9222_1_1_1_address0 = zext_ln8834_4_fu_1065_p1;
assign v9222_1_1_1_ce0 = v9222_1_1_1_ce0_local;
assign v9222_1_1_1_d0 = v5991_q0;
assign v9222_1_1_1_we0 = v9222_1_1_1_we0_local;
assign xor_ln8815_fu_528_p2 = (ap_phi_mux_icmp_ln8816147_phi_fu_387_p4 ^ 1'd1);
assign zext_ln8815_1_fu_590_p1 = lshr_ln_fu_580_p4;
assign zext_ln8815_fu_576_p1 = v5758_fu_540_p3;
assign zext_ln8816_1_fu_825_p1 = lshr_ln8816_1_reg_1160;
assign zext_ln8816_fu_634_p1 = v5759_fu_568_p3;
assign zext_ln8817_1_fu_1000_p1 = lshr_ln8817_1_reg_1180_pp0_iter1_reg;
assign zext_ln8817_fu_678_p1 = v5760_mid2_fu_560_p3;
assign zext_ln8819_1_fu_648_p1 = lshr_ln8816_1_fu_638_p4;
assign zext_ln8819_2_fu_835_p1 = add_ln8819_reg_1165;
assign zext_ln8819_3_fu_849_p1 = lshr_ln8817_1_reg_1180;
assign zext_ln8819_4_fu_858_p1 = add_ln8819_1_fu_852_p2;
assign zext_ln8819_fu_594_p1 = lshr_ln_fu_580_p4;
assign zext_ln8820_fu_1051_p1 = add_ln8820_2_fu_1045_p2;
assign zext_ln8822_1_fu_1098_p1 = add_ln8822_1_fu_1092_p2;
assign zext_ln8822_fu_925_p1 = tmp_37_fu_917_p3;
assign zext_ln8824_fu_1040_p1 = add_ln8824_fu_1034_p2;
assign zext_ln8826_1_fu_990_p1 = tmp_39_fu_982_p3;
assign zext_ln8826_2_fu_1087_p1 = add_ln8826_1_fu_1081_p2;
assign zext_ln8826_fu_791_p1 = tmp_32_fu_784_p3;
assign zext_ln8828_fu_1029_p1 = add_ln8828_fu_1023_p2;
assign zext_ln8830_1_fu_894_p1 = tmp_36_fu_886_p3;
assign zext_ln8830_2_fu_1076_p1 = add_ln8830_1_fu_1070_p2;
assign zext_ln8830_fu_870_p1 = empty_163_reg_1217;
assign zext_ln8832_1_fu_1018_p1 = add_ln8832_fu_1012_p2;
assign zext_ln8832_fu_1008_p1 = add_ln8820_1_fu_1003_p2;
assign zext_ln8834_1_fu_935_p1 = lshr_ln3_reg_1175_pp0_iter1_reg;
assign zext_ln8834_2_fu_959_p1 = tmp_38_fu_951_p3;
assign zext_ln8834_3_fu_1056_p1 = lshr_ln4_reg_1186_pp0_iter1_reg;
assign zext_ln8834_4_fu_1065_p1 = add_ln8834_1_fu_1059_p2;
assign zext_ln8834_fu_815_p1 = tmp_34_fu_808_p3;
assign zext_ln9055_cast_cast_cast_cast_fu_458_p3 = ((empty_fu_454_p1[0:0] == 1'b1) ? 5'd14 : 5'd0);
always @ (posedge ap_clk) begin
    p_udiv8_cast_cast_cast_cast_reg_1138[3] <= 1'b0;
    p_udiv10_cast_cast_cast_cast_reg_1143[3] <= 1'b0;
    p_udiv10_cast_cast_cast_cast_reg_1143_pp0_iter1_reg[3] <= 1'b0;
    sub_ln8826_reg_1205[0] <= 1'b0;
    sub_ln8834_reg_1211[0] <= 1'b0;
end
endmodule 
