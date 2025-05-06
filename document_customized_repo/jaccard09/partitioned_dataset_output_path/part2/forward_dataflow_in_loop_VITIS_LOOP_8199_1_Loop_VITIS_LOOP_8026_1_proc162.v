
module forward_dataflow_in_loop_VITIS_LOOP_8199_1_Loop_VITIS_LOOP_8026_1_proc162 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,p_read,v5399_i_address0,v5399_i_ce0,v5399_i_we0,v5399_i_d0,v5399_1_i_address0,v5399_1_i_ce0,v5399_1_i_we0,v5399_1_i_d0,v5404_i_address0,v5404_i_ce0,v5404_i_we0,v5404_i_d0,v5404_i_address1,v5404_i_ce1,v5404_i_q1,v5404_1_i_address0,v5404_1_i_ce0,v5404_1_i_we0,v5404_1_i_d0,v5404_1_i_address1,v5404_1_i_ce1,v5404_1_i_q1,v5402_i_address0,v5402_i_ce0,v5402_i_q0,v5403_1_i_address0,v5403_1_i_ce0,v5403_1_i_q0,v5401_1_i_address0,v5401_1_i_ce0,v5401_1_i_q0,v5403_i_address0,v5403_i_ce0,v5403_i_q0,v5401_i_address0,v5401_i_ce0,v5401_i_q0,v5400_1_i_address0,v5400_1_i_ce0,v5400_1_i_q0,v5400_i_address0,v5400_i_ce0,v5400_i_q0,ap_return_0,ap_return_1);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [4:0] p_read;
output  [11:0] v5399_i_address0;
output   v5399_i_ce0;
output   v5399_i_we0;
output  [7:0] v5399_i_d0;
output  [11:0] v5399_1_i_address0;
output   v5399_1_i_ce0;
output   v5399_1_i_we0;
output  [7:0] v5399_1_i_d0;
output  [11:0] v5404_i_address0;
output   v5404_i_ce0;
output   v5404_i_we0;
output  [7:0] v5404_i_d0;
output  [11:0] v5404_i_address1;
output   v5404_i_ce1;
input  [7:0] v5404_i_q1;
output  [11:0] v5404_1_i_address0;
output   v5404_1_i_ce0;
output   v5404_1_i_we0;
output  [7:0] v5404_1_i_d0;
output  [11:0] v5404_1_i_address1;
output   v5404_1_i_ce1;
input  [7:0] v5404_1_i_q1;
output  [9:0] v5402_i_address0;
output   v5402_i_ce0;
input  [7:0] v5402_i_q0;
output  [11:0] v5403_1_i_address0;
output   v5403_1_i_ce0;
input  [7:0] v5403_1_i_q0;
output  [11:0] v5401_1_i_address0;
output   v5401_1_i_ce0;
input  [7:0] v5401_1_i_q0;
output  [11:0] v5403_i_address0;
output   v5403_i_ce0;
input  [7:0] v5403_i_q0;
output  [11:0] v5401_i_address0;
output   v5401_i_ce0;
input  [7:0] v5401_i_q0;
output  [11:0] v5400_1_i_address0;
output   v5400_1_i_ce0;
input  [7:0] v5400_1_i_q0;
output  [11:0] v5400_i_address0;
output   v5400_i_ce0;
input  [7:0] v5400_i_q0;
output  [5:0] ap_return_0;
output  [5:0] ap_return_1;
reg ap_idle;
reg[5:0] ap_return_0;
reg[5:0] ap_return_1;
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
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln8026_fu_423_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter3_reg;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter4_reg;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter5_reg;
reg    ap_loop_exit_ready_delayed;
reg   [0:0] icmp_ln802872_reg_297;
wire   [5:0] p_read_cast_fu_330_p1;
reg   [5:0] p_read_cast_reg_948;
reg   [5:0] p_read_cast_reg_948_pp0_iter1_reg;
reg   [5:0] p_read_cast_reg_948_pp0_iter2_reg;
reg   [5:0] p_read_cast_reg_948_pp0_iter3_reg;
reg   [5:0] p_read_cast_reg_948_pp0_iter4_reg;
reg   [5:0] p_read_cast_reg_948_pp0_iter5_reg;
reg   [5:0] p_read_cast_reg_948_pp0_iter6_reg;
wire   [6:0] select_ln8026_cast_fu_342_p3;
reg   [6:0] select_ln8026_cast_reg_954;
wire   [0:0] xor_ln8026_fu_391_p2;
reg   [0:0] xor_ln8026_reg_959;
wire   [0:0] icmp_ln8028_fu_417_p2;
reg   [0:0] icmp_ln8028_reg_965;
reg   [0:0] icmp_ln8026_reg_970;
reg   [0:0] icmp_ln8026_reg_970_pp0_iter1_reg;
wire   [5:0] v5310_fu_475_p3;
reg   [5:0] v5310_reg_974;
wire   [5:0] v5311_fu_521_p3;
reg   [5:0] v5311_reg_980;
wire   [4:0] trunc_ln8029_fu_529_p1;
reg   [4:0] trunc_ln8029_reg_986;
wire   [0:0] cmp55_i_i_i_fu_606_p2;
reg   [0:0] cmp55_i_i_i_reg_991;
reg   [0:0] cmp55_i_i_i_reg_991_pp0_iter2_reg;
reg   [0:0] cmp55_i_i_i_reg_991_pp0_iter3_reg;
reg   [0:0] cmp55_i_i_i_reg_991_pp0_iter4_reg;
reg   [0:0] cmp55_i_i_i_reg_991_pp0_iter5_reg;
reg   [0:0] cmp55_i_i_i_reg_991_pp0_iter6_reg;
wire   [9:0] zext_ln8071_1_fu_612_p1;
reg   [9:0] zext_ln8071_1_reg_995;
wire   [9:0] add_ln8032_fu_616_p2;
reg   [9:0] add_ln8032_reg_1000;
wire   [8:0] trunc_ln8032_fu_622_p1;
reg   [8:0] trunc_ln8032_reg_1005;
reg   [2:0] lshr_ln_reg_1010;
wire   [0:0] icmp_ln8030_fu_659_p2;
reg   [0:0] icmp_ln8030_reg_1015;
wire   [0:0] icmp_ln8029_fu_665_p2;
reg   [0:0] icmp_ln8029_reg_1020;
wire   [0:0] cmp33_i_i_i_fu_699_p2;
reg   [0:0] cmp33_i_i_i_reg_1025;
reg   [0:0] cmp33_i_i_i_reg_1025_pp0_iter3_reg;
reg   [0:0] cmp33_i_i_i_reg_1025_pp0_iter4_reg;
wire   [11:0] add_ln8071_1_fu_792_p2;
reg   [11:0] add_ln8071_1_reg_1036;
reg   [11:0] add_ln8071_1_reg_1036_pp0_iter3_reg;
wire   [63:0] zext_ln8071_4_fu_810_p1;
reg   [63:0] zext_ln8071_4_reg_1067;
reg   [11:0] v5404_i_addr_reg_1075;
reg   [11:0] v5404_i_addr_reg_1075_pp0_iter5_reg;
reg   [11:0] v5404_1_i_addr_reg_1081;
reg   [11:0] v5404_1_i_addr_reg_1081_pp0_iter5_reg;
reg   [11:0] v5399_i_addr_reg_1097;
reg   [11:0] v5399_i_addr_reg_1097_pp0_iter6_reg;
reg   [11:0] v5399_1_i_addr_reg_1102;
reg   [11:0] v5399_1_i_addr_reg_1102_pp0_iter6_reg;
wire   [7:0] select_ln8049_fu_842_p3;
reg   [7:0] select_ln8049_reg_1127;
wire   [7:0] v5346_1_fu_861_p3;
reg   [7:0] v5346_1_reg_1132;
reg   [0:0] ap_phi_mux_icmp_ln802872_phi_fu_300_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln802971_phi_fu_312_p4;
reg    ap_loop_init_pp0_iter1_reg;
reg   [0:0] ap_phi_mux_icmp_ln803070_phi_fu_323_p4;
wire   [63:0] p_cast_fu_741_p1;
wire   [63:0] zext_ln8032_3_fu_804_p1;
reg   [16:0] indvar_flatten3563_fu_114;
wire   [16:0] add_ln8026_1_fu_397_p2;
reg   [16:0] ap_sig_allocacmp_indvar_flatten3563_load;
reg   [5:0] v531064_fu_118;
reg   [12:0] indvar_flatten1265_fu_122;
wire   [12:0] select_ln8028_1_fu_409_p3;
reg   [12:0] ap_sig_allocacmp_indvar_flatten1265_load;
reg   [5:0] v531166_fu_126;
reg   [6:0] indvar_flatten67_fu_130;
wire   [6:0] select_ln8029_1_fu_651_p3;
reg   [3:0] v531268_fu_134;
wire   [3:0] v5312_fu_559_p3;
reg   [3:0] v531369_fu_138;
wire   [3:0] v5313_fu_639_p2;
reg    v5402_i_ce0_local;
reg    v5403_1_i_ce0_local;
reg    v5403_i_ce0_local;
reg    v5401_1_i_ce0_local;
reg    v5404_1_i_ce1_local;
reg    v5404_1_i_we0_local;
wire   [7:0] grp_fu_879_p3;
reg    v5404_1_i_ce0_local;
reg    v5401_i_ce0_local;
reg    v5404_i_ce1_local;
reg    v5404_i_we0_local;
wire   [7:0] grp_fu_889_p3;
reg    v5404_i_ce0_local;
reg    v5400_1_i_ce0_local;
reg    v5400_i_ce0_local;
reg    v5399_1_i_we0_local;
reg    v5399_1_i_ce0_local;
reg    v5399_i_we0_local;
reg    v5399_i_ce0_local;
wire   [0:0] tmp_82_fu_334_p3;
wire   [12:0] add_ln8028_1_fu_403_p2;
wire   [5:0] add_ln8026_fu_451_p2;
wire   [5:0] select_ln8026_fu_457_p3;
wire   [0:0] and_ln8026_1_fu_470_p2;
wire   [0:0] empty_fu_489_p2;
wire   [0:0] exitcond_flatten_not_fu_503_p2;
wire   [0:0] and_ln8026_fu_465_p2;
wire   [0:0] not_exitcond_flatten_mid234_fu_509_p2;
wire   [5:0] add_ln8028_fu_483_p2;
wire   [3:0] v5312_mid26_fu_495_p3;
wire   [0:0] icmp_ln8030_mid211_fu_515_p2;
wire   [0:0] empty_192_fu_539_p2;
wire   [0:0] empty_193_fu_545_p2;
wire   [3:0] add_ln8029_fu_533_p2;
wire   [6:0] tmp_83_fu_575_p3;
wire   [9:0] p_shl_fu_567_p3;
wire   [9:0] zext_ln8032_1_fu_583_p1;
wire   [4:0] empty_194_fu_593_p1;
wire   [6:0] v5310_cast_cast_i_i_fu_597_p1;
wire   [6:0] empty_195_fu_601_p2;
wire   [9:0] sub_ln8032_fu_587_p2;
wire   [3:0] v5313_mid2_fu_551_p3;
wire   [6:0] add_ln8029_1_fu_645_p2;
wire   [6:0] tmp_84_fu_711_p3;
wire   [9:0] p_shl48_fu_704_p3;
wire   [9:0] zext_ln8071_fu_718_p1;
wire   [9:0] tmp_fu_728_p3;
wire   [9:0] zext_ln8032_fu_696_p1;
wire   [9:0] empty_196_fu_735_p2;
wire   [9:0] sub_ln8071_fu_722_p2;
wire   [9:0] add_ln8071_fu_746_p2;
wire   [8:0] trunc_ln8071_fu_751_p1;
wire   [11:0] tmp_85_fu_755_p3;
wire   [11:0] zext_ln8071_2_fu_763_p1;
wire   [11:0] tmp_86_fu_773_p3;
wire   [11:0] zext_ln8032_2_fu_780_p1;
wire   [11:0] sub_ln8032_1_fu_767_p2;
wire   [11:0] zext_ln8071_3_fu_789_p1;
wire   [11:0] sub_ln8031_fu_783_p2;
wire   [11:0] add_ln8032_1_fu_798_p2;
wire  signed [7:0] add_ln8046_fu_831_p1;
(* use_dsp48 = "no" *) wire   [7:0] add_ln8046_fu_831_p2;
wire   [0:0] icmp_ln8048_fu_836_p2;
wire  signed [7:0] v5344_fu_850_p1;
(* use_dsp48 = "no" *) wire   [7:0] v5344_fu_850_p2;
wire   [0:0] v5345_fu_855_p2;
wire   [7:0] grp_fu_879_p2;
wire   [7:0] grp_fu_889_p2;
reg    grp_fu_879_ce;
reg    grp_fu_889_ce;
reg   [5:0] ap_return_0_preg;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg   [5:0] ap_return_1_preg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_762;
reg    ap_condition_767;
reg    ap_condition_182;
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
#0 ap_done_reg = 1'b0;
#0 indvar_flatten3563_fu_114 = 17'd0;
#0 v531064_fu_118 = 6'd0;
#0 indvar_flatten1265_fu_122 = 13'd0;
#0 v531166_fu_126 = 6'd0;
#0 indvar_flatten67_fu_130 = 7'd0;
#0 v531268_fu_134 = 4'd0;
#0 v531369_fu_138 = 4'd0;
#0 ap_return_0_preg = 6'd0;
#0 ap_return_1_preg = 6'd0;
end
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U6190(.clk(ap_clk),.reset(ap_rst),.din0(v5403_1_i_q0),.din1(v5402_i_q0),.din2(grp_fu_879_p2),.ce(grp_fu_879_ce),.dout(grp_fu_879_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U6191(.clk(ap_clk),.reset(ap_rst),.din0(v5403_i_q0),.din1(v5402_i_q0),.din2(grp_fu_889_p2),.ce(grp_fu_889_ce),.dout(grp_fu_889_p3));
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
    if (ap_rst == 1'b1) begin
                ap_return_0_preg[0] <= 1'b0;
        ap_return_0_preg[1] <= 1'b0;
        ap_return_0_preg[2] <= 1'b0;
        ap_return_0_preg[3] <= 1'b0;
        ap_return_0_preg[4] <= 1'b0;
    end else begin
        if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
                        ap_return_0_preg[4 : 0] <= p_read_cast_reg_948_pp0_iter6_reg[4 : 0];
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
                ap_return_1_preg[0] <= 1'b0;
        ap_return_1_preg[1] <= 1'b0;
        ap_return_1_preg[2] <= 1'b0;
        ap_return_1_preg[3] <= 1'b0;
        ap_return_1_preg[4] <= 1'b0;
    end else begin
        if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
                        ap_return_1_preg[4 : 0] <= p_read_cast_reg_948_pp0_iter6_reg[4 : 0];
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
        if ((1'b1 == ap_condition_767)) begin
            icmp_ln802872_reg_297 <= icmp_ln8028_reg_965;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln802872_reg_297 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_182)) begin
        indvar_flatten1265_fu_122 <= select_ln8028_1_fu_409_p3;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_182)) begin
    indvar_flatten3563_fu_114 <= add_ln8026_1_fu_397_p2;
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        indvar_flatten67_fu_130 <= 7'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        indvar_flatten67_fu_130 <= select_ln8029_1_fu_651_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        v531064_fu_118 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v531064_fu_118 <= v5310_fu_475_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        v531166_fu_126 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v531166_fu_126 <= v5311_fu_521_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        v531268_fu_134 <= 4'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v531268_fu_134 <= v5312_fu_559_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        v531369_fu_138 <= 4'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v531369_fu_138 <= v5313_fu_639_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln8032_reg_1000 <= add_ln8032_fu_616_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_init_pp0_iter1_reg <= ap_loop_init;
        cmp55_i_i_i_reg_991 <= cmp55_i_i_i_fu_606_p2;
        icmp_ln8026_reg_970 <= icmp_ln8026_fu_423_p2;
        icmp_ln8026_reg_970_pp0_iter1_reg <= icmp_ln8026_reg_970;
        lshr_ln_reg_1010 <= {{v5313_mid2_fu_551_p3[3:1]}};
        p_read_cast_reg_948[4 : 0] <= p_read_cast_fu_330_p1[4 : 0];
        p_read_cast_reg_948_pp0_iter1_reg[4 : 0] <= p_read_cast_reg_948[4 : 0];
        select_ln8026_cast_reg_954[6 : 5] <= select_ln8026_cast_fu_342_p3[6 : 5];
        trunc_ln8029_reg_986 <= trunc_ln8029_fu_529_p1;
        trunc_ln8032_reg_1005 <= trunc_ln8032_fu_622_p1;
        v5310_reg_974 <= v5310_fu_475_p3;
        v5311_reg_980 <= v5311_fu_521_p3;
        xor_ln8026_reg_959 <= xor_ln8026_fu_391_p2;
        zext_ln8071_1_reg_995[3 : 0] <= zext_ln8071_1_fu_612_p1[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln8071_1_reg_1036 <= add_ln8071_1_fu_792_p2;
        add_ln8071_1_reg_1036_pp0_iter3_reg <= add_ln8071_1_reg_1036;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter3_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter4_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter3_reg;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter5_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        cmp33_i_i_i_reg_1025 <= cmp33_i_i_i_fu_699_p2;
        cmp33_i_i_i_reg_1025_pp0_iter3_reg <= cmp33_i_i_i_reg_1025;
        cmp33_i_i_i_reg_1025_pp0_iter4_reg <= cmp33_i_i_i_reg_1025_pp0_iter3_reg;
        cmp55_i_i_i_reg_991_pp0_iter2_reg <= cmp55_i_i_i_reg_991;
        cmp55_i_i_i_reg_991_pp0_iter3_reg <= cmp55_i_i_i_reg_991_pp0_iter2_reg;
        cmp55_i_i_i_reg_991_pp0_iter4_reg <= cmp55_i_i_i_reg_991_pp0_iter3_reg;
        cmp55_i_i_i_reg_991_pp0_iter5_reg <= cmp55_i_i_i_reg_991_pp0_iter4_reg;
        cmp55_i_i_i_reg_991_pp0_iter6_reg <= cmp55_i_i_i_reg_991_pp0_iter5_reg;
        p_read_cast_reg_948_pp0_iter2_reg[4 : 0] <= p_read_cast_reg_948_pp0_iter1_reg[4 : 0];
        p_read_cast_reg_948_pp0_iter3_reg[4 : 0] <= p_read_cast_reg_948_pp0_iter2_reg[4 : 0];
        p_read_cast_reg_948_pp0_iter4_reg[4 : 0] <= p_read_cast_reg_948_pp0_iter3_reg[4 : 0];
        p_read_cast_reg_948_pp0_iter5_reg[4 : 0] <= p_read_cast_reg_948_pp0_iter4_reg[4 : 0];
        p_read_cast_reg_948_pp0_iter6_reg[4 : 0] <= p_read_cast_reg_948_pp0_iter5_reg[4 : 0];
        select_ln8049_reg_1127 <= select_ln8049_fu_842_p3;
        v5346_1_reg_1132 <= v5346_1_fu_861_p3;
        v5399_1_i_addr_reg_1102 <= zext_ln8071_4_reg_1067;
        v5399_1_i_addr_reg_1102_pp0_iter6_reg <= v5399_1_i_addr_reg_1102;
        v5399_i_addr_reg_1097 <= zext_ln8071_4_reg_1067;
        v5399_i_addr_reg_1097_pp0_iter6_reg <= v5399_i_addr_reg_1097;
        v5404_1_i_addr_reg_1081 <= zext_ln8071_4_fu_810_p1;
        v5404_1_i_addr_reg_1081_pp0_iter5_reg <= v5404_1_i_addr_reg_1081;
        v5404_i_addr_reg_1075 <= zext_ln8071_4_fu_810_p1;
        v5404_i_addr_reg_1075_pp0_iter5_reg <= v5404_i_addr_reg_1075;
        zext_ln8071_4_reg_1067[11 : 0] <= zext_ln8071_4_fu_810_p1[11 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln8028_reg_965 <= icmp_ln8028_fu_417_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln8029_reg_1020 <= icmp_ln8029_fu_665_p2;
        icmp_ln8030_reg_1015 <= icmp_ln8030_fu_659_p2;
    end
end
always @ (*) begin
    if (((icmp_ln8026_fu_423_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter5_reg))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_762)) begin
            ap_phi_mux_icmp_ln802872_phi_fu_300_p4 = icmp_ln8028_reg_965;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln802872_phi_fu_300_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln802872_phi_fu_300_p4 = icmp_ln8028_reg_965;
        end
    end else begin
        ap_phi_mux_icmp_ln802872_phi_fu_300_p4 = icmp_ln8028_reg_965;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln8026_reg_970_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln802971_phi_fu_312_p4 = icmp_ln8029_reg_1020;
    end else if (((ap_loop_init_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_icmp_ln802971_phi_fu_312_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln802971_phi_fu_312_p4 = icmp_ln8029_reg_1020;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln8026_reg_970_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln803070_phi_fu_323_p4 = icmp_ln8030_reg_1015;
    end else if (((ap_loop_init_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_icmp_ln803070_phi_fu_323_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln803070_phi_fu_323_p4 = icmp_ln8030_reg_1015;
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
    if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_return_0 = p_read_cast_reg_948_pp0_iter6_reg;
    end else begin
        ap_return_0 = ap_return_0_preg;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_return_1 = p_read_cast_reg_948_pp0_iter6_reg;
    end else begin
        ap_return_1 = ap_return_1_preg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten1265_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1265_load = indvar_flatten1265_fu_122;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten3563_load = 17'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten3563_load = indvar_flatten3563_fu_114;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_879_ce = 1'b1;
    end else begin
        grp_fu_879_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_889_ce = 1'b1;
    end else begin
        grp_fu_889_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5399_1_i_ce0_local = 1'b1;
    end else begin
        v5399_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (cmp55_i_i_i_reg_991_pp0_iter6_reg == 1'd1))) begin
        v5399_1_i_we0_local = 1'b1;
    end else begin
        v5399_1_i_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5399_i_ce0_local = 1'b1;
    end else begin
        v5399_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (cmp55_i_i_i_reg_991_pp0_iter6_reg == 1'd1))) begin
        v5399_i_we0_local = 1'b1;
    end else begin
        v5399_i_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5400_1_i_ce0_local = 1'b1;
    end else begin
        v5400_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5400_i_ce0_local = 1'b1;
    end else begin
        v5400_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v5401_1_i_ce0_local = 1'b1;
    end else begin
        v5401_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v5401_i_ce0_local = 1'b1;
    end else begin
        v5401_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5402_i_ce0_local = 1'b1;
    end else begin
        v5402_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5403_1_i_ce0_local = 1'b1;
    end else begin
        v5403_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5403_i_ce0_local = 1'b1;
    end else begin
        v5403_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v5404_1_i_ce0_local = 1'b1;
    end else begin
        v5404_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v5404_1_i_ce1_local = 1'b1;
    end else begin
        v5404_1_i_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v5404_1_i_we0_local = 1'b1;
    end else begin
        v5404_1_i_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v5404_i_ce0_local = 1'b1;
    end else begin
        v5404_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v5404_i_ce1_local = 1'b1;
    end else begin
        v5404_i_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v5404_i_we0_local = 1'b1;
    end else begin
        v5404_i_we0_local = 1'b0;
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
assign add_ln8026_1_fu_397_p2 = (ap_sig_allocacmp_indvar_flatten3563_load + 17'd1);
assign add_ln8026_fu_451_p2 = (v531064_fu_118 + 6'd1);
assign add_ln8028_1_fu_403_p2 = (ap_sig_allocacmp_indvar_flatten1265_load + 13'd1);
assign add_ln8028_fu_483_p2 = (select_ln8026_fu_457_p3 + 6'd1);
assign add_ln8029_1_fu_645_p2 = (indvar_flatten67_fu_130 + 7'd1);
assign add_ln8029_fu_533_p2 = (v5312_mid26_fu_495_p3 + 4'd1);
assign add_ln8032_1_fu_798_p2 = (sub_ln8031_fu_783_p2 + zext_ln8071_3_fu_789_p1);
assign add_ln8032_fu_616_p2 = (sub_ln8032_fu_587_p2 + zext_ln8071_1_fu_612_p1);
assign add_ln8046_fu_831_p1 = grp_fu_879_p3;
assign add_ln8046_fu_831_p2 = ($signed(v5400_1_i_q0) + $signed(add_ln8046_fu_831_p1));
assign add_ln8071_1_fu_792_p2 = (sub_ln8032_1_fu_767_p2 + zext_ln8071_3_fu_789_p1);
assign add_ln8071_fu_746_p2 = (sub_ln8071_fu_722_p2 + zext_ln8071_1_reg_995);
assign and_ln8026_1_fu_470_p2 = (xor_ln8026_reg_959 & ap_phi_mux_icmp_ln802971_phi_fu_312_p4);
assign and_ln8026_fu_465_p2 = (xor_ln8026_reg_959 & ap_phi_mux_icmp_ln803070_phi_fu_323_p4);
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
    ap_condition_182 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_762 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln8026_reg_970 == 1'd0));
end
always @ (*) begin
    ap_condition_767 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln8026_reg_970 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign cmp33_i_i_i_fu_699_p2 = ((v5310_reg_974 == 6'd0) ? 1'b1 : 1'b0);
assign cmp55_i_i_i_fu_606_p2 = ((empty_195_fu_601_p2 == 7'd65) ? 1'b1 : 1'b0);
assign empty_192_fu_539_p2 = (icmp_ln8030_mid211_fu_515_p2 | and_ln8026_1_fu_470_p2);
assign empty_193_fu_545_p2 = (icmp_ln802872_reg_297 | empty_192_fu_539_p2);
assign empty_194_fu_593_p1 = v5310_fu_475_p3[4:0];
assign empty_195_fu_601_p2 = (select_ln8026_cast_reg_954 - v5310_cast_cast_i_i_fu_597_p1);
assign empty_196_fu_735_p2 = (tmp_fu_728_p3 + zext_ln8032_fu_696_p1);
assign empty_fu_489_p2 = (icmp_ln802872_reg_297 | and_ln8026_1_fu_470_p2);
assign exitcond_flatten_not_fu_503_p2 = (ap_phi_mux_icmp_ln802971_phi_fu_312_p4 ^ 1'd1);
assign grp_fu_879_p2 = ((cmp33_i_i_i_reg_1025_pp0_iter4_reg[0:0] == 1'b1) ? v5401_1_i_q0 : v5404_1_i_q1);
assign grp_fu_889_p2 = ((cmp33_i_i_i_reg_1025_pp0_iter4_reg[0:0] == 1'b1) ? v5401_i_q0 : v5404_i_q1);
assign icmp_ln8026_fu_423_p2 = ((ap_sig_allocacmp_indvar_flatten3563_load == 17'd100351) ? 1'b1 : 1'b0);
assign icmp_ln8028_fu_417_p2 = ((select_ln8028_1_fu_409_p3 == 13'd3136) ? 1'b1 : 1'b0);
assign icmp_ln8029_fu_665_p2 = ((select_ln8029_1_fu_651_p3 == 7'd98) ? 1'b1 : 1'b0);
assign icmp_ln8030_fu_659_p2 = ((v5313_fu_639_p2 == 4'd14) ? 1'b1 : 1'b0);
assign icmp_ln8030_mid211_fu_515_p2 = (not_exitcond_flatten_mid234_fu_509_p2 & and_ln8026_fu_465_p2);
assign icmp_ln8048_fu_836_p2 = (($signed(add_ln8046_fu_831_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign not_exitcond_flatten_mid234_fu_509_p2 = (icmp_ln802872_reg_297 | exitcond_flatten_not_fu_503_p2);
assign p_cast_fu_741_p1 = empty_196_fu_735_p2;
assign p_read_cast_fu_330_p1 = p_read;
assign p_shl48_fu_704_p3 = {{v5311_reg_980}, {4'd0}};
assign p_shl_fu_567_p3 = {{v5310_fu_475_p3}, {4'd0}};
assign select_ln8026_cast_fu_342_p3 = ((tmp_82_fu_334_p3[0:0] == 1'b1) ? 7'd96 : 7'd0);
assign select_ln8026_fu_457_p3 = ((icmp_ln802872_reg_297[0:0] == 1'b1) ? 6'd0 : v531166_fu_126);
assign select_ln8028_1_fu_409_p3 = ((ap_phi_mux_icmp_ln802872_phi_fu_300_p4[0:0] == 1'b1) ? 13'd1 : add_ln8028_1_fu_403_p2);
assign select_ln8029_1_fu_651_p3 = ((empty_fu_489_p2[0:0] == 1'b1) ? 7'd1 : add_ln8029_1_fu_645_p2);
assign select_ln8049_fu_842_p3 = ((icmp_ln8048_fu_836_p2[0:0] == 1'b1) ? add_ln8046_fu_831_p2 : 8'd229);
assign sub_ln8031_fu_783_p2 = (tmp_86_fu_773_p3 - zext_ln8032_2_fu_780_p1);
assign sub_ln8032_1_fu_767_p2 = (tmp_85_fu_755_p3 - zext_ln8071_2_fu_763_p1);
assign sub_ln8032_fu_587_p2 = (p_shl_fu_567_p3 - zext_ln8032_1_fu_583_p1);
assign sub_ln8071_fu_722_p2 = (p_shl48_fu_704_p3 - zext_ln8071_fu_718_p1);
assign tmp_82_fu_334_p3 = p_read[32'd4];
assign tmp_83_fu_575_p3 = {{v5310_fu_475_p3}, {1'd0}};
assign tmp_84_fu_711_p3 = {{v5311_reg_980}, {1'd0}};
assign tmp_85_fu_755_p3 = {{trunc_ln8071_fu_751_p1}, {3'd0}};
assign tmp_86_fu_773_p3 = {{trunc_ln8032_reg_1005}, {3'd0}};
assign tmp_fu_728_p3 = {{trunc_ln8029_reg_986}, {5'd0}};
assign trunc_ln8029_fu_529_p1 = v5311_fu_521_p3[4:0];
assign trunc_ln8032_fu_622_p1 = add_ln8032_fu_616_p2[8:0];
assign trunc_ln8071_fu_751_p1 = add_ln8071_fu_746_p2[8:0];
assign v5310_cast_cast_i_i_fu_597_p1 = empty_194_fu_593_p1;
assign v5310_fu_475_p3 = ((icmp_ln802872_reg_297[0:0] == 1'b1) ? add_ln8026_fu_451_p2 : v531064_fu_118);
assign v5311_fu_521_p3 = ((and_ln8026_1_fu_470_p2[0:0] == 1'b1) ? add_ln8028_fu_483_p2 : select_ln8026_fu_457_p3);
assign v5312_fu_559_p3 = ((icmp_ln8030_mid211_fu_515_p2[0:0] == 1'b1) ? add_ln8029_fu_533_p2 : v5312_mid26_fu_495_p3);
assign v5312_mid26_fu_495_p3 = ((empty_fu_489_p2[0:0] == 1'b1) ? 4'd0 : v531268_fu_134);
assign v5313_fu_639_p2 = (v5313_mid2_fu_551_p3 + 4'd2);
assign v5313_mid2_fu_551_p3 = ((empty_193_fu_545_p2[0:0] == 1'b1) ? 4'd0 : v531369_fu_138);
assign v5344_fu_850_p1 = grp_fu_889_p3;
assign v5344_fu_850_p2 = ($signed(v5400_i_q0) + $signed(v5344_fu_850_p1));
assign v5345_fu_855_p2 = (($signed(v5344_fu_850_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v5346_1_fu_861_p3 = ((v5345_fu_855_p2[0:0] == 1'b1) ? v5344_fu_850_p2 : 8'd229);
assign v5399_1_i_address0 = v5399_1_i_addr_reg_1102_pp0_iter6_reg;
assign v5399_1_i_ce0 = v5399_1_i_ce0_local;
assign v5399_1_i_d0 = select_ln8049_reg_1127;
assign v5399_1_i_we0 = v5399_1_i_we0_local;
assign v5399_i_address0 = v5399_i_addr_reg_1097_pp0_iter6_reg;
assign v5399_i_ce0 = v5399_i_ce0_local;
assign v5399_i_d0 = v5346_1_reg_1132;
assign v5399_i_we0 = v5399_i_we0_local;
assign v5400_1_i_address0 = zext_ln8071_4_reg_1067;
assign v5400_1_i_ce0 = v5400_1_i_ce0_local;
assign v5400_i_address0 = zext_ln8071_4_reg_1067;
assign v5400_i_ce0 = v5400_i_ce0_local;
assign v5401_1_i_address0 = zext_ln8071_4_fu_810_p1;
assign v5401_1_i_ce0 = v5401_1_i_ce0_local;
assign v5401_i_address0 = zext_ln8071_4_fu_810_p1;
assign v5401_i_ce0 = v5401_i_ce0_local;
assign v5402_i_address0 = p_cast_fu_741_p1;
assign v5402_i_ce0 = v5402_i_ce0_local;
assign v5403_1_i_address0 = zext_ln8032_3_fu_804_p1;
assign v5403_1_i_ce0 = v5403_1_i_ce0_local;
assign v5403_i_address0 = zext_ln8032_3_fu_804_p1;
assign v5403_i_ce0 = v5403_i_ce0_local;
assign v5404_1_i_address0 = v5404_1_i_addr_reg_1081_pp0_iter5_reg;
assign v5404_1_i_address1 = zext_ln8071_4_fu_810_p1;
assign v5404_1_i_ce0 = v5404_1_i_ce0_local;
assign v5404_1_i_ce1 = v5404_1_i_ce1_local;
assign v5404_1_i_d0 = grp_fu_879_p3;
assign v5404_1_i_we0 = v5404_1_i_we0_local;
assign v5404_i_address0 = v5404_i_addr_reg_1075_pp0_iter5_reg;
assign v5404_i_address1 = zext_ln8071_4_fu_810_p1;
assign v5404_i_ce0 = v5404_i_ce0_local;
assign v5404_i_ce1 = v5404_i_ce1_local;
assign v5404_i_d0 = grp_fu_889_p3;
assign v5404_i_we0 = v5404_i_we0_local;
assign xor_ln8026_fu_391_p2 = (ap_phi_mux_icmp_ln802872_phi_fu_300_p4 ^ 1'd1);
assign zext_ln8032_1_fu_583_p1 = tmp_83_fu_575_p3;
assign zext_ln8032_2_fu_780_p1 = add_ln8032_reg_1000;
assign zext_ln8032_3_fu_804_p1 = add_ln8032_1_fu_798_p2;
assign zext_ln8032_fu_696_p1 = v5310_reg_974;
assign zext_ln8071_1_fu_612_p1 = v5312_fu_559_p3;
assign zext_ln8071_2_fu_763_p1 = add_ln8071_fu_746_p2;
assign zext_ln8071_3_fu_789_p1 = lshr_ln_reg_1010;
assign zext_ln8071_4_fu_810_p1 = add_ln8071_1_reg_1036_pp0_iter3_reg;
assign zext_ln8071_fu_718_p1 = tmp_84_fu_711_p3;
always @ (posedge ap_clk) begin
    p_read_cast_reg_948[5] <= 1'b0;
    p_read_cast_reg_948_pp0_iter1_reg[5] <= 1'b0;
    p_read_cast_reg_948_pp0_iter2_reg[5] <= 1'b0;
    p_read_cast_reg_948_pp0_iter3_reg[5] <= 1'b0;
    p_read_cast_reg_948_pp0_iter4_reg[5] <= 1'b0;
    p_read_cast_reg_948_pp0_iter5_reg[5] <= 1'b0;
    p_read_cast_reg_948_pp0_iter6_reg[5] <= 1'b0;
    select_ln8026_cast_reg_954[4:0] <= 5'b00000;
    zext_ln8071_1_reg_995[9:4] <= 6'b000000;
    zext_ln8071_4_reg_1067[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    ap_return_0_preg[5] <= 1'b0;
    ap_return_1_preg[5] <= 1'b0;
end
endmodule 
