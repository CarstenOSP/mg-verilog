module forward_dataflow_in_loop_VITIS_LOOP_9191_1_Loop_VITIS_LOOP_9074_1_proc36_Pipeline_VITIS_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,tmp_50,urem_ln9197_cast,select_ln9197,v7242_address0,v7242_ce0,v7242_we0,v7242_d0,v7242_1_address0,v7242_1_ce0,v7242_1_we0,v7242_1_d0,v7242_2_address0,v7242_2_ce0,v7242_2_we0,v7242_2_d0,v7242_3_address0,v7242_3_ce0,v7242_3_we0,v7242_3_d0,v7242_4_address0,v7242_4_ce0,v7242_4_we0,v7242_4_d0,v7242_5_address0,v7242_5_ce0,v7242_5_we0,v7242_5_d0,v7242_6_address0,v7242_6_ce0,v7242_6_we0,v7242_6_d0,v7242_7_address0,v7242_7_ce0,v7242_7_we0,v7242_7_d0,v7242_8_address0,v7242_8_ce0,v7242_8_we0,v7242_8_d0,v7242_9_address0,v7242_9_ce0,v7242_9_we0,v7242_9_d0,v7242_10_address0,v7242_10_ce0,v7242_10_we0,v7242_10_d0,v7242_11_address0,v7242_11_ce0,v7242_11_we0,v7242_11_d0,v7242_12_address0,v7242_12_ce0,v7242_12_we0,v7242_12_d0,v7242_13_address0,v7242_13_ce0,v7242_13_we0,v7242_13_d0,v7242_14_address0,v7242_14_ce0,v7242_14_we0,v7242_14_d0,v7242_15_address0,v7242_15_ce0,v7242_15_we0,v7242_15_d0,empty,select_ln9196,v9017_0_address0,v9017_0_ce0,v9017_0_q0,v9017_1_address0,v9017_1_ce0,v9017_1_q0,v9017_2_address0,v9017_2_ce0,v9017_2_q0,v9017_3_address0,v9017_3_ce0,v9017_3_q0,v9017_4_address0,v9017_4_ce0,v9017_4_q0,v9017_5_address0,v9017_5_ce0,v9017_5_q0,v9017_6_address0,v9017_6_ce0,v9017_6_q0,v9017_7_address0,v9017_7_ce0,v9017_7_q0,v9017_8_address0,v9017_8_ce0,v9017_8_q0,v9017_9_address0,v9017_9_ce0,v9017_9_q0,v9017_10_address0,v9017_10_ce0,v9017_10_q0,v9017_11_address0,v9017_11_ce0,v9017_11_q0,v9017_12_address0,v9017_12_ce0,v9017_12_q0,v9017_13_address0,v9017_13_ce0,v9017_13_q0,v9017_14_address0,v9017_14_ce0,v9017_14_q0,v9017_15_address0,v9017_15_ce0,v9017_15_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [6:0] mul_i;
input  [1:0] tmp_50;
input  [2:0] urem_ln9197_cast;
input  [5:0] select_ln9197;
output  [8:0] v7242_address0;
output   v7242_ce0;
output   v7242_we0;
output  [7:0] v7242_d0;
output  [8:0] v7242_1_address0;
output   v7242_1_ce0;
output   v7242_1_we0;
output  [7:0] v7242_1_d0;
output  [8:0] v7242_2_address0;
output   v7242_2_ce0;
output   v7242_2_we0;
output  [7:0] v7242_2_d0;
output  [8:0] v7242_3_address0;
output   v7242_3_ce0;
output   v7242_3_we0;
output  [7:0] v7242_3_d0;
output  [8:0] v7242_4_address0;
output   v7242_4_ce0;
output   v7242_4_we0;
output  [7:0] v7242_4_d0;
output  [8:0] v7242_5_address0;
output   v7242_5_ce0;
output   v7242_5_we0;
output  [7:0] v7242_5_d0;
output  [8:0] v7242_6_address0;
output   v7242_6_ce0;
output   v7242_6_we0;
output  [7:0] v7242_6_d0;
output  [8:0] v7242_7_address0;
output   v7242_7_ce0;
output   v7242_7_we0;
output  [7:0] v7242_7_d0;
output  [8:0] v7242_8_address0;
output   v7242_8_ce0;
output   v7242_8_we0;
output  [7:0] v7242_8_d0;
output  [8:0] v7242_9_address0;
output   v7242_9_ce0;
output   v7242_9_we0;
output  [7:0] v7242_9_d0;
output  [8:0] v7242_10_address0;
output   v7242_10_ce0;
output   v7242_10_we0;
output  [7:0] v7242_10_d0;
output  [8:0] v7242_11_address0;
output   v7242_11_ce0;
output   v7242_11_we0;
output  [7:0] v7242_11_d0;
output  [8:0] v7242_12_address0;
output   v7242_12_ce0;
output   v7242_12_we0;
output  [7:0] v7242_12_d0;
output  [8:0] v7242_13_address0;
output   v7242_13_ce0;
output   v7242_13_we0;
output  [7:0] v7242_13_d0;
output  [8:0] v7242_14_address0;
output   v7242_14_ce0;
output   v7242_14_we0;
output  [7:0] v7242_14_d0;
output  [8:0] v7242_15_address0;
output   v7242_15_ce0;
output   v7242_15_we0;
output  [7:0] v7242_15_d0;
input  [2:0] empty;
input  [5:0] select_ln9196;
output  [14:0] v9017_0_address0;
output   v9017_0_ce0;
input  [7:0] v9017_0_q0;
output  [14:0] v9017_1_address0;
output   v9017_1_ce0;
input  [7:0] v9017_1_q0;
output  [14:0] v9017_2_address0;
output   v9017_2_ce0;
input  [7:0] v9017_2_q0;
output  [14:0] v9017_3_address0;
output   v9017_3_ce0;
input  [7:0] v9017_3_q0;
output  [14:0] v9017_4_address0;
output   v9017_4_ce0;
input  [7:0] v9017_4_q0;
output  [14:0] v9017_5_address0;
output   v9017_5_ce0;
input  [7:0] v9017_5_q0;
output  [14:0] v9017_6_address0;
output   v9017_6_ce0;
input  [7:0] v9017_6_q0;
output  [14:0] v9017_7_address0;
output   v9017_7_ce0;
input  [7:0] v9017_7_q0;
output  [14:0] v9017_8_address0;
output   v9017_8_ce0;
input  [7:0] v9017_8_q0;
output  [14:0] v9017_9_address0;
output   v9017_9_ce0;
input  [7:0] v9017_9_q0;
output  [14:0] v9017_10_address0;
output   v9017_10_ce0;
input  [7:0] v9017_10_q0;
output  [14:0] v9017_11_address0;
output   v9017_11_ce0;
input  [7:0] v9017_11_q0;
output  [14:0] v9017_12_address0;
output   v9017_12_ce0;
input  [7:0] v9017_12_q0;
output  [14:0] v9017_13_address0;
output   v9017_13_ce0;
input  [7:0] v9017_13_q0;
output  [14:0] v9017_14_address0;
output   v9017_14_ce0;
input  [7:0] v9017_14_q0;
output  [14:0] v9017_15_address0;
output   v9017_15_ce0;
input  [7:0] v9017_15_q0;
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
wire   [0:0] icmp_ln9074_fu_814_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln9075198_reg_658;
reg   [0:0] icmp_ln9075198_reg_658_pp0_iter1_reg;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln9076197_reg_669;
wire  signed [6:0] select_ln9196_cast_fu_680_p1;
reg  signed [6:0] select_ln9196_cast_reg_1119;
wire   [4:0] p_cast1_fu_684_p1;
reg   [4:0] p_cast1_reg_1124;
wire  signed [6:0] select_ln9197_cast_fu_688_p1;
reg  signed [6:0] select_ln9197_cast_reg_1129;
wire   [4:0] urem_ln9197_cast_cast_fu_692_p1;
reg   [4:0] urem_ln9197_cast_cast_reg_1134;
wire   [0:0] tmp_55_fu_748_p3;
reg   [0:0] tmp_55_reg_1139;
reg   [0:0] tmp_55_reg_1139_pp0_iter1_reg;
reg   [0:0] tmp_55_reg_1139_pp0_iter2_reg;
reg   [0:0] tmp_55_reg_1139_pp0_iter3_reg;
wire   [0:0] icmp_ln9075_fu_808_p2;
reg   [0:0] icmp_ln9075_reg_1155;
reg   [0:0] icmp_ln9074_reg_1160;
reg   [0:0] icmp_ln9074_reg_1160_pp0_iter1_reg;
reg   [0:0] icmp_ln9074_reg_1160_pp0_iter2_reg;
wire   [3:0] v7186_mid2_fu_873_p3;
reg   [3:0] v7186_mid2_reg_1164;
reg   [3:0] v7186_mid2_reg_1164_pp0_iter3_reg;
reg   [3:0] v7186_mid2_reg_1164_pp0_iter4_reg;
reg   [3:0] v7186_mid2_reg_1164_pp0_iter5_reg;
wire   [3:0] v7185_fu_881_p3;
reg   [3:0] v7185_reg_1170;
reg   [3:0] v7185_reg_1170_pp0_iter3_reg;
wire  signed [9:0] sext_ln9079_fu_911_p1;
wire   [0:0] icmp_ln9076_fu_921_p2;
reg   [0:0] icmp_ln9076_reg_1181;
wire  signed [14:0] sext_ln9079_1_fu_989_p1;
reg   [0:0] ap_phi_mux_icmp_ln9075198_phi_fu_661_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln9076197_phi_fu_672_p4;
wire   [63:0] zext_ln9079_1_fu_996_p1;
wire   [63:0] zext_ln9081_1_fu_1000_p1;
wire   [63:0] zext_ln9109_2_fu_1018_p1;
reg   [8:0] indvar_flatten12192_fu_170;
wire   [8:0] add_ln9074_1_fu_802_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten12192_load;
reg   [5:0] v7184193_fu_174;
wire   [5:0] v7184_fu_736_p3;
reg   [5:0] ap_sig_allocacmp_v7184193_load;
reg   [7:0] indvar_flatten194_fu_178;
wire   [7:0] select_ln9075_1_fu_794_p3;
reg   [7:0] ap_sig_allocacmp_indvar_flatten194_load;
reg   [3:0] v7185195_fu_182;
reg   [3:0] v7186196_fu_186;
wire   [3:0] v7186_fu_915_p2;
reg    v9017_0_ce0_local;
reg    v9017_1_ce0_local;
reg    v9017_2_ce0_local;
reg    v9017_3_ce0_local;
reg    v9017_4_ce0_local;
reg    v9017_5_ce0_local;
reg    v9017_6_ce0_local;
reg    v9017_7_ce0_local;
reg    v9017_8_ce0_local;
reg    v9017_9_ce0_local;
reg    v9017_10_ce0_local;
reg    v9017_11_ce0_local;
reg    v9017_12_ce0_local;
reg    v9017_13_ce0_local;
reg    v9017_14_ce0_local;
reg    v9017_15_ce0_local;
reg    v7242_15_we0_local;
reg    v7242_15_ce0_local;
reg    v7242_14_we0_local;
reg    v7242_14_ce0_local;
reg    v7242_13_we0_local;
reg    v7242_13_ce0_local;
reg    v7242_12_we0_local;
reg    v7242_12_ce0_local;
reg    v7242_11_we0_local;
reg    v7242_11_ce0_local;
reg    v7242_10_we0_local;
reg    v7242_10_ce0_local;
reg    v7242_9_we0_local;
reg    v7242_9_ce0_local;
reg    v7242_8_we0_local;
reg    v7242_8_ce0_local;
reg    v7242_7_we0_local;
reg    v7242_7_ce0_local;
reg    v7242_6_we0_local;
reg    v7242_6_ce0_local;
reg    v7242_5_we0_local;
reg    v7242_5_ce0_local;
reg    v7242_4_we0_local;
reg    v7242_4_ce0_local;
reg    v7242_3_we0_local;
reg    v7242_3_ce0_local;
reg    v7242_2_we0_local;
reg    v7242_2_ce0_local;
reg    v7242_1_we0_local;
reg    v7242_1_ce0_local;
reg    v7242_we0_local;
reg    v7242_ce0_local;
wire   [5:0] add_ln9074_fu_730_p2;
wire   [6:0] zext_ln9074_fu_744_p1;
wire   [2:0] tmp_33_fu_762_p3;
wire   [6:0] empty_112_fu_756_p2;
wire   [2:0] tmp_34_fu_774_p4;
wire   [7:0] add_ln9075_1_fu_788_p2;
wire   [0:0] xor_ln9074_fu_849_p2;
wire   [3:0] select_ln9074_fu_841_p3;
wire   [0:0] and_ln9074_fu_855_p2;
wire   [0:0] empty_111_fu_867_p2;
wire   [3:0] add_ln9075_fu_861_p2;
wire   [4:0] tmp_35_fu_889_p3;
wire   [4:0] tmp_fu_897_p2;
wire   [6:0] tmp_cast_fu_902_p1;
wire   [6:0] empty_113_fu_906_p2;
wire  signed [9:0] grp_fu_1037_p3;
wire  signed [9:0] grp_fu_1046_p3;
wire   [1:0] select_ln9109_fu_943_p3;
wire   [4:0] tmp_s_fu_950_p5;
wire   [4:0] shl_ln_fu_968_p3;
wire   [4:0] add_ln9078_1_fu_975_p2;
wire   [6:0] zext_ln9078_fu_980_p1;
wire   [6:0] add_ln9078_fu_984_p2;
wire  signed [14:0] zext_ln9079_1_fu_996_p0;
wire   [14:0] grp_fu_1055_p3;
wire  signed [14:0] zext_ln9081_1_fu_1000_p0;
wire   [14:0] grp_fu_1064_p3;
wire   [8:0] grp_fu_1073_p4;
wire   [5:0] grp_fu_1037_p0;
wire   [2:0] grp_fu_1037_p1;
wire  signed [6:0] grp_fu_1037_p2;
wire   [5:0] grp_fu_1046_p0;
wire   [2:0] grp_fu_1046_p1;
wire  signed [6:0] grp_fu_1046_p2;
wire   [5:0] grp_fu_1055_p1;
wire  signed [6:0] grp_fu_1055_p2;
wire   [5:0] grp_fu_1064_p1;
wire  signed [6:0] grp_fu_1064_p2;
wire   [4:0] grp_fu_1073_p0;
wire   [3:0] grp_fu_1073_p1;
wire   [3:0] grp_fu_1073_p2;
wire   [3:0] grp_fu_1073_p3;
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
wire   [8:0] grp_fu_1037_p10;
wire   [8:0] grp_fu_1046_p10;
wire   [5:0] grp_fu_1073_p00;
wire   [5:0] grp_fu_1073_p10;
wire   [8:0] grp_fu_1073_p30;
reg    ap_condition_855;
reg    ap_condition_860;
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
#0 indvar_flatten12192_fu_170 = 9'd0;
#0 v7184193_fu_174 = 6'd0;
#0 indvar_flatten194_fu_178 = 8'd0;
#0 v7185195_fu_182 = 4'd0;
#0 v7186196_fu_186 = 4'd0;
#0 ap_done_reg = 1'b0;
end
forward_mac_muladd_6ns_3ns_7s_10_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 3 ),.din2_WIDTH( 7 ),.dout_WIDTH( 10 ))
mac_muladd_6ns_3ns_7s_10_4_1_U3055(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1037_p0),.din1(grp_fu_1037_p1),.din2(grp_fu_1037_p2),.ce(1'b1),.dout(grp_fu_1037_p3));
forward_mac_muladd_6ns_3ns_7s_10_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 3 ),.din2_WIDTH( 7 ),.dout_WIDTH( 10 ))
mac_muladd_6ns_3ns_7s_10_4_1_U3056(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1046_p0),.din1(grp_fu_1046_p1),.din2(grp_fu_1046_p2),.ce(1'b1),.dout(grp_fu_1046_p3));
forward_mac_muladd_10s_6ns_7s_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 10 ),.din1_WIDTH( 6 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_10s_6ns_7s_15_4_1_U3057(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1037_p3),.din1(grp_fu_1055_p1),.din2(grp_fu_1055_p2),.ce(1'b1),.dout(grp_fu_1055_p3));
forward_mac_muladd_10s_6ns_7s_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 10 ),.din1_WIDTH( 6 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_10s_6ns_7s_15_4_1_U3058(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1046_p3),.din1(grp_fu_1064_p1),.din2(grp_fu_1064_p2),.ce(1'b1),.dout(grp_fu_1064_p3));
forward_ama_addmuladd_5ns_4ns_4ns_4ns_9_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 5 ),.din1_WIDTH( 4 ),.din2_WIDTH( 4 ),.din3_WIDTH( 4 ),.dout_WIDTH( 9 ))
ama_addmuladd_5ns_4ns_4ns_4ns_9_4_1_U3059(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1073_p0),.din1(grp_fu_1073_p1),.din2(grp_fu_1073_p2),.din3(grp_fu_1073_p3),.ce(1'b1),.dout(grp_fu_1073_p4));
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
        if ((1'b1 == ap_condition_860)) begin
            icmp_ln9075198_reg_658 <= icmp_ln9075_reg_1155;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln9075198_reg_658 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln9074_reg_1160_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        icmp_ln9076197_reg_669 <= icmp_ln9076_reg_1181;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln9076197_reg_669 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten12192_fu_170 <= add_ln9074_1_fu_802_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten12192_fu_170 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten194_fu_178 <= select_ln9075_1_fu_794_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten194_fu_178 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v7184193_fu_174 <= v7184_fu_736_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v7184193_fu_174 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v7185195_fu_182 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            v7185195_fu_182 <= v7185_fu_881_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v7186196_fu_186 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            v7186196_fu_186 <= v7186_fu_915_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln9074_reg_1160 <= icmp_ln9074_fu_814_p2;
        icmp_ln9074_reg_1160_pp0_iter1_reg <= icmp_ln9074_reg_1160;
        icmp_ln9075198_reg_658_pp0_iter1_reg <= icmp_ln9075198_reg_658;
        p_cast1_reg_1124[2 : 0] <= p_cast1_fu_684_p1[2 : 0];
        select_ln9196_cast_reg_1119 <= select_ln9196_cast_fu_680_p1;
        select_ln9197_cast_reg_1129 <= select_ln9197_cast_fu_688_p1;
        tmp_55_reg_1139 <= v7184_fu_736_p3[32'd4];
        tmp_55_reg_1139_pp0_iter1_reg <= tmp_55_reg_1139;
        urem_ln9197_cast_cast_reg_1134[2 : 0] <= urem_ln9197_cast_cast_fu_692_p1[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        icmp_ln9074_reg_1160_pp0_iter2_reg <= icmp_ln9074_reg_1160_pp0_iter1_reg;
        tmp_55_reg_1139_pp0_iter2_reg <= tmp_55_reg_1139_pp0_iter1_reg;
        tmp_55_reg_1139_pp0_iter3_reg <= tmp_55_reg_1139_pp0_iter2_reg;
        v7185_reg_1170 <= v7185_fu_881_p3;
        v7185_reg_1170_pp0_iter3_reg <= v7185_reg_1170;
        v7186_mid2_reg_1164 <= v7186_mid2_fu_873_p3;
        v7186_mid2_reg_1164_pp0_iter3_reg <= v7186_mid2_reg_1164;
        v7186_mid2_reg_1164_pp0_iter4_reg <= v7186_mid2_reg_1164_pp0_iter3_reg;
        v7186_mid2_reg_1164_pp0_iter5_reg <= v7186_mid2_reg_1164_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln9075_reg_1155 <= icmp_ln9075_fu_808_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        icmp_ln9076_reg_1181 <= icmp_ln9076_fu_921_p2;
    end
end
always @ (*) begin
    if (((icmp_ln9074_fu_814_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_855)) begin
            ap_phi_mux_icmp_ln9075198_phi_fu_661_p4 = icmp_ln9075_reg_1155;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln9075198_phi_fu_661_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln9075198_phi_fu_661_p4 = icmp_ln9075_reg_1155;
        end
    end else begin
        ap_phi_mux_icmp_ln9075198_phi_fu_661_p4 = icmp_ln9075_reg_1155;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln9074_reg_1160_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        ap_phi_mux_icmp_ln9076197_phi_fu_672_p4 = icmp_ln9076_reg_1181;
    end else begin
        ap_phi_mux_icmp_ln9076197_phi_fu_672_p4 = icmp_ln9076197_reg_669;
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
        ap_sig_allocacmp_indvar_flatten12192_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12192_load = indvar_flatten12192_fu_170;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten194_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten194_load = indvar_flatten194_fu_178;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v7184193_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v7184193_load = v7184193_fu_174;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v7242_10_ce0_local = 1'b1;
    end else begin
        v7242_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v7242_10_we0_local = 1'b1;
    end else begin
        v7242_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v7242_11_ce0_local = 1'b1;
    end else begin
        v7242_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v7242_11_we0_local = 1'b1;
    end else begin
        v7242_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v7242_12_ce0_local = 1'b1;
    end else begin
        v7242_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v7242_12_we0_local = 1'b1;
    end else begin
        v7242_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v7242_13_ce0_local = 1'b1;
    end else begin
        v7242_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v7242_13_we0_local = 1'b1;
    end else begin
        v7242_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v7242_14_ce0_local = 1'b1;
    end else begin
        v7242_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v7242_14_we0_local = 1'b1;
    end else begin
        v7242_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v7242_15_ce0_local = 1'b1;
    end else begin
        v7242_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v7242_15_we0_local = 1'b1;
    end else begin
        v7242_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v7242_1_ce0_local = 1'b1;
    end else begin
        v7242_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v7242_1_we0_local = 1'b1;
    end else begin
        v7242_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v7242_2_ce0_local = 1'b1;
    end else begin
        v7242_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v7242_2_we0_local = 1'b1;
    end else begin
        v7242_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v7242_3_ce0_local = 1'b1;
    end else begin
        v7242_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v7242_3_we0_local = 1'b1;
    end else begin
        v7242_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v7242_4_ce0_local = 1'b1;
    end else begin
        v7242_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v7242_4_we0_local = 1'b1;
    end else begin
        v7242_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v7242_5_ce0_local = 1'b1;
    end else begin
        v7242_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v7242_5_we0_local = 1'b1;
    end else begin
        v7242_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v7242_6_ce0_local = 1'b1;
    end else begin
        v7242_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v7242_6_we0_local = 1'b1;
    end else begin
        v7242_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v7242_7_ce0_local = 1'b1;
    end else begin
        v7242_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v7242_7_we0_local = 1'b1;
    end else begin
        v7242_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v7242_8_ce0_local = 1'b1;
    end else begin
        v7242_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v7242_8_we0_local = 1'b1;
    end else begin
        v7242_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v7242_9_ce0_local = 1'b1;
    end else begin
        v7242_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v7242_9_we0_local = 1'b1;
    end else begin
        v7242_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v7242_ce0_local = 1'b1;
    end else begin
        v7242_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v7242_we0_local = 1'b1;
    end else begin
        v7242_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v9017_0_ce0_local = 1'b1;
    end else begin
        v9017_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v9017_10_ce0_local = 1'b1;
    end else begin
        v9017_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v9017_11_ce0_local = 1'b1;
    end else begin
        v9017_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v9017_12_ce0_local = 1'b1;
    end else begin
        v9017_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v9017_13_ce0_local = 1'b1;
    end else begin
        v9017_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v9017_14_ce0_local = 1'b1;
    end else begin
        v9017_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v9017_15_ce0_local = 1'b1;
    end else begin
        v9017_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v9017_1_ce0_local = 1'b1;
    end else begin
        v9017_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v9017_2_ce0_local = 1'b1;
    end else begin
        v9017_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v9017_3_ce0_local = 1'b1;
    end else begin
        v9017_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v9017_4_ce0_local = 1'b1;
    end else begin
        v9017_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v9017_5_ce0_local = 1'b1;
    end else begin
        v9017_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v9017_6_ce0_local = 1'b1;
    end else begin
        v9017_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v9017_7_ce0_local = 1'b1;
    end else begin
        v9017_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v9017_8_ce0_local = 1'b1;
    end else begin
        v9017_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v9017_9_ce0_local = 1'b1;
    end else begin
        v9017_9_ce0_local = 1'b0;
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
assign add_ln9074_1_fu_802_p2 = (ap_sig_allocacmp_indvar_flatten12192_load + 9'd1);
assign add_ln9074_fu_730_p2 = (ap_sig_allocacmp_v7184193_load + 6'd16);
assign add_ln9075_1_fu_788_p2 = (ap_sig_allocacmp_indvar_flatten194_load + 8'd1);
assign add_ln9075_fu_861_p2 = (select_ln9074_fu_841_p3 + 4'd1);
assign add_ln9078_1_fu_975_p2 = (p_cast1_reg_1124 + shl_ln_fu_968_p3);
assign add_ln9078_fu_984_p2 = ($signed(zext_ln9078_fu_980_p1) + $signed(select_ln9196_cast_reg_1119));
assign and_ln9074_fu_855_p2 = (xor_ln9074_fu_849_p2 & ap_phi_mux_icmp_ln9076197_phi_fu_672_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_855 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln9074_reg_1160 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_860 = ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln9074_reg_1160 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_111_fu_867_p2 = (icmp_ln9075198_reg_658_pp0_iter1_reg | and_ln9074_fu_855_p2);
assign empty_112_fu_756_p2 = (mul_i + zext_ln9074_fu_744_p1);
assign empty_113_fu_906_p2 = ($signed(tmp_cast_fu_902_p1) + $signed(select_ln9197_cast_reg_1129));
assign grp_fu_1037_p0 = 9'd54;
assign grp_fu_1037_p1 = grp_fu_1037_p10;
assign grp_fu_1037_p10 = tmp_33_fu_762_p3;
assign grp_fu_1037_p2 = sext_ln9079_fu_911_p1;
assign grp_fu_1046_p0 = 9'd54;
assign grp_fu_1046_p1 = grp_fu_1046_p10;
assign grp_fu_1046_p10 = tmp_34_fu_774_p4;
assign grp_fu_1046_p2 = sext_ln9079_fu_911_p1;
assign grp_fu_1055_p1 = 15'd54;
assign grp_fu_1055_p2 = sext_ln9079_1_fu_989_p1;
assign grp_fu_1064_p1 = 15'd54;
assign grp_fu_1064_p2 = sext_ln9079_1_fu_989_p1;
assign grp_fu_1073_p0 = grp_fu_1073_p00;
assign grp_fu_1073_p00 = tmp_s_fu_950_p5;
assign grp_fu_1073_p1 = grp_fu_1073_p10;
assign grp_fu_1073_p10 = v7185_reg_1170_pp0_iter3_reg;
assign grp_fu_1073_p2 = 9'd13;
assign grp_fu_1073_p3 = grp_fu_1073_p30;
assign grp_fu_1073_p30 = v7186_mid2_reg_1164_pp0_iter5_reg;
assign icmp_ln9074_fu_814_p2 = ((ap_sig_allocacmp_indvar_flatten12192_load == 9'd337) ? 1'b1 : 1'b0);
assign icmp_ln9075_fu_808_p2 = ((select_ln9075_1_fu_794_p3 == 8'd169) ? 1'b1 : 1'b0);
assign icmp_ln9076_fu_921_p2 = ((v7186_fu_915_p2 == 4'd13) ? 1'b1 : 1'b0);
assign p_cast1_fu_684_p1 = empty;
assign select_ln9074_fu_841_p3 = ((icmp_ln9075198_reg_658_pp0_iter1_reg[0:0] == 1'b1) ? 4'd0 : v7185195_fu_182);
assign select_ln9075_1_fu_794_p3 = ((ap_phi_mux_icmp_ln9075198_phi_fu_661_p4[0:0] == 1'b1) ? 8'd1 : add_ln9075_1_fu_788_p2);
assign select_ln9109_fu_943_p3 = ((tmp_55_reg_1139_pp0_iter3_reg[0:0] == 1'b1) ? 2'd3 : 2'd0);
assign select_ln9196_cast_fu_680_p1 = $signed(select_ln9196);
assign select_ln9197_cast_fu_688_p1 = $signed(select_ln9197);
assign sext_ln9079_1_fu_989_p1 = $signed(add_ln9078_fu_984_p2);
assign sext_ln9079_fu_911_p1 = $signed(empty_113_fu_906_p2);
assign shl_ln_fu_968_p3 = {{v7186_mid2_reg_1164_pp0_iter4_reg}, {1'd0}};
assign tmp_33_fu_762_p3 = {{tmp_50}, {tmp_55_fu_748_p3}};
assign tmp_34_fu_774_p4 = {{empty_112_fu_756_p2[6:4]}};
assign tmp_35_fu_889_p3 = {{v7185_fu_881_p3}, {1'd0}};
assign tmp_55_fu_748_p3 = v7184_fu_736_p3[32'd4];
assign tmp_cast_fu_902_p1 = tmp_fu_897_p2;
assign tmp_fu_897_p2 = (tmp_35_fu_889_p3 + urem_ln9197_cast_cast_reg_1134);
assign tmp_s_fu_950_p5 = {{{{{{1'd0}, {select_ln9109_fu_943_p3}}}, {1'd0}}}, {tmp_55_reg_1139_pp0_iter3_reg}};
assign urem_ln9197_cast_cast_fu_692_p1 = urem_ln9197_cast;
assign v7184_fu_736_p3 = ((ap_phi_mux_icmp_ln9075198_phi_fu_661_p4[0:0] == 1'b1) ? add_ln9074_fu_730_p2 : ap_sig_allocacmp_v7184193_load);
assign v7185_fu_881_p3 = ((and_ln9074_fu_855_p2[0:0] == 1'b1) ? add_ln9075_fu_861_p2 : select_ln9074_fu_841_p3);
assign v7186_fu_915_p2 = (v7186_mid2_fu_873_p3 + 4'd1);
assign v7186_mid2_fu_873_p3 = ((empty_111_fu_867_p2[0:0] == 1'b1) ? 4'd0 : v7186196_fu_186);
assign v7242_10_address0 = zext_ln9109_2_fu_1018_p1;
assign v7242_10_ce0 = v7242_10_ce0_local;
assign v7242_10_d0 = v9017_5_q0;
assign v7242_10_we0 = v7242_10_we0_local;
assign v7242_11_address0 = zext_ln9109_2_fu_1018_p1;
assign v7242_11_ce0 = v7242_11_ce0_local;
assign v7242_11_d0 = v9017_4_q0;
assign v7242_11_we0 = v7242_11_we0_local;
assign v7242_12_address0 = zext_ln9109_2_fu_1018_p1;
assign v7242_12_ce0 = v7242_12_ce0_local;
assign v7242_12_d0 = v9017_3_q0;
assign v7242_12_we0 = v7242_12_we0_local;
assign v7242_13_address0 = zext_ln9109_2_fu_1018_p1;
assign v7242_13_ce0 = v7242_13_ce0_local;
assign v7242_13_d0 = v9017_2_q0;
assign v7242_13_we0 = v7242_13_we0_local;
assign v7242_14_address0 = zext_ln9109_2_fu_1018_p1;
assign v7242_14_ce0 = v7242_14_ce0_local;
assign v7242_14_d0 = v9017_1_q0;
assign v7242_14_we0 = v7242_14_we0_local;
assign v7242_15_address0 = zext_ln9109_2_fu_1018_p1;
assign v7242_15_ce0 = v7242_15_ce0_local;
assign v7242_15_d0 = v9017_0_q0;
assign v7242_15_we0 = v7242_15_we0_local;
assign v7242_1_address0 = zext_ln9109_2_fu_1018_p1;
assign v7242_1_ce0 = v7242_1_ce0_local;
assign v7242_1_d0 = v9017_14_q0;
assign v7242_1_we0 = v7242_1_we0_local;
assign v7242_2_address0 = zext_ln9109_2_fu_1018_p1;
assign v7242_2_ce0 = v7242_2_ce0_local;
assign v7242_2_d0 = v9017_13_q0;
assign v7242_2_we0 = v7242_2_we0_local;
assign v7242_3_address0 = zext_ln9109_2_fu_1018_p1;
assign v7242_3_ce0 = v7242_3_ce0_local;
assign v7242_3_d0 = v9017_12_q0;
assign v7242_3_we0 = v7242_3_we0_local;
assign v7242_4_address0 = zext_ln9109_2_fu_1018_p1;
assign v7242_4_ce0 = v7242_4_ce0_local;
assign v7242_4_d0 = v9017_11_q0;
assign v7242_4_we0 = v7242_4_we0_local;
assign v7242_5_address0 = zext_ln9109_2_fu_1018_p1;
assign v7242_5_ce0 = v7242_5_ce0_local;
assign v7242_5_d0 = v9017_10_q0;
assign v7242_5_we0 = v7242_5_we0_local;
assign v7242_6_address0 = zext_ln9109_2_fu_1018_p1;
assign v7242_6_ce0 = v7242_6_ce0_local;
assign v7242_6_d0 = v9017_9_q0;
assign v7242_6_we0 = v7242_6_we0_local;
assign v7242_7_address0 = zext_ln9109_2_fu_1018_p1;
assign v7242_7_ce0 = v7242_7_ce0_local;
assign v7242_7_d0 = v9017_8_q0;
assign v7242_7_we0 = v7242_7_we0_local;
assign v7242_8_address0 = zext_ln9109_2_fu_1018_p1;
assign v7242_8_ce0 = v7242_8_ce0_local;
assign v7242_8_d0 = v9017_7_q0;
assign v7242_8_we0 = v7242_8_we0_local;
assign v7242_9_address0 = zext_ln9109_2_fu_1018_p1;
assign v7242_9_ce0 = v7242_9_ce0_local;
assign v7242_9_d0 = v9017_6_q0;
assign v7242_9_we0 = v7242_9_we0_local;
assign v7242_address0 = zext_ln9109_2_fu_1018_p1;
assign v7242_ce0 = v7242_ce0_local;
assign v7242_d0 = v9017_15_q0;
assign v7242_we0 = v7242_we0_local;
assign v9017_0_address0 = zext_ln9079_1_fu_996_p1;
assign v9017_0_ce0 = v9017_0_ce0_local;
assign v9017_10_address0 = zext_ln9081_1_fu_1000_p1;
assign v9017_10_ce0 = v9017_10_ce0_local;
assign v9017_11_address0 = zext_ln9081_1_fu_1000_p1;
assign v9017_11_ce0 = v9017_11_ce0_local;
assign v9017_12_address0 = zext_ln9081_1_fu_1000_p1;
assign v9017_12_ce0 = v9017_12_ce0_local;
assign v9017_13_address0 = zext_ln9081_1_fu_1000_p1;
assign v9017_13_ce0 = v9017_13_ce0_local;
assign v9017_14_address0 = zext_ln9081_1_fu_1000_p1;
assign v9017_14_ce0 = v9017_14_ce0_local;
assign v9017_15_address0 = zext_ln9081_1_fu_1000_p1;
assign v9017_15_ce0 = v9017_15_ce0_local;
assign v9017_1_address0 = zext_ln9081_1_fu_1000_p1;
assign v9017_1_ce0 = v9017_1_ce0_local;
assign v9017_2_address0 = zext_ln9081_1_fu_1000_p1;
assign v9017_2_ce0 = v9017_2_ce0_local;
assign v9017_3_address0 = zext_ln9081_1_fu_1000_p1;
assign v9017_3_ce0 = v9017_3_ce0_local;
assign v9017_4_address0 = zext_ln9081_1_fu_1000_p1;
assign v9017_4_ce0 = v9017_4_ce0_local;
assign v9017_5_address0 = zext_ln9081_1_fu_1000_p1;
assign v9017_5_ce0 = v9017_5_ce0_local;
assign v9017_6_address0 = zext_ln9081_1_fu_1000_p1;
assign v9017_6_ce0 = v9017_6_ce0_local;
assign v9017_7_address0 = zext_ln9081_1_fu_1000_p1;
assign v9017_7_ce0 = v9017_7_ce0_local;
assign v9017_8_address0 = zext_ln9081_1_fu_1000_p1;
assign v9017_8_ce0 = v9017_8_ce0_local;
assign v9017_9_address0 = zext_ln9081_1_fu_1000_p1;
assign v9017_9_ce0 = v9017_9_ce0_local;
assign xor_ln9074_fu_849_p2 = (icmp_ln9075198_reg_658_pp0_iter1_reg ^ 1'd1);
assign zext_ln9074_fu_744_p1 = v7184_fu_736_p3;
assign zext_ln9078_fu_980_p1 = add_ln9078_1_fu_975_p2;
assign zext_ln9079_1_fu_996_p0 = grp_fu_1055_p3;
assign zext_ln9079_1_fu_996_p1 = $unsigned(zext_ln9079_1_fu_996_p0);
assign zext_ln9081_1_fu_1000_p0 = grp_fu_1064_p3;
assign zext_ln9081_1_fu_1000_p1 = $unsigned(zext_ln9081_1_fu_1000_p0);
assign zext_ln9109_2_fu_1018_p1 = grp_fu_1073_p4;
always @ (posedge ap_clk) begin
    p_cast1_reg_1124[4:3] <= 2'b00;
    urem_ln9197_cast_cast_reg_1134[4:3] <= 2'b00;
end
endmodule 