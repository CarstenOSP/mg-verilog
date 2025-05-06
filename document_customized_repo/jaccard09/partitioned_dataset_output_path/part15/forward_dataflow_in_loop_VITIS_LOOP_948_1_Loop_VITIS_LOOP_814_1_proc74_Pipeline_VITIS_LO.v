
module forward_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,rem_r,shl_ln,v508_address0,v508_ce0,v508_we0,v508_d0,v508_1_address0,v508_1_ce0,v508_1_we0,v508_1_d0,v508_2_address0,v508_2_ce0,v508_2_we0,v508_2_d0,v508_3_address0,v508_3_ce0,v508_3_we0,v508_3_d0,v508_4_address0,v508_4_ce0,v508_4_we0,v508_4_d0,v508_5_address0,v508_5_ce0,v508_5_we0,v508_5_d0,v508_6_address0,v508_6_ce0,v508_6_we0,v508_6_d0,v508_7_address0,v508_7_ce0,v508_7_we0,v508_7_d0,v508_8_address0,v508_8_ce0,v508_8_we0,v508_8_d0,v508_9_address0,v508_9_ce0,v508_9_we0,v508_9_d0,v508_10_address0,v508_10_ce0,v508_10_we0,v508_10_d0,v508_11_address0,v508_11_ce0,v508_11_we0,v508_11_d0,v508_12_address0,v508_12_ce0,v508_12_we0,v508_12_d0,v508_13_address0,v508_13_ce0,v508_13_we0,v508_13_d0,v508_14_address0,v508_14_ce0,v508_14_we0,v508_14_d0,v508_15_address0,v508_15_ce0,v508_15_we0,v508_15_d0,mul_i,shl_ln1,idxprom1_i491,idxprom3_i2,v9007_0_0_address0,v9007_0_0_ce0,v9007_0_0_q0,v9007_1_0_address0,v9007_1_0_ce0,v9007_1_0_q0,v9007_2_0_address0,v9007_2_0_ce0,v9007_2_0_q0,v9007_3_0_address0,v9007_3_0_ce0,v9007_3_0_q0,v9007_0_1_address0,v9007_0_1_ce0,v9007_0_1_q0,v9007_0_2_address0,v9007_0_2_ce0,v9007_0_2_q0,v9007_0_3_address0,v9007_0_3_ce0,v9007_0_3_q0,v9007_1_1_address0,v9007_1_1_ce0,v9007_1_1_q0,v9007_1_2_address0,v9007_1_2_ce0,v9007_1_2_q0,v9007_1_3_address0,v9007_1_3_ce0,v9007_1_3_q0,v9007_2_1_address0,v9007_2_1_ce0,v9007_2_1_q0,v9007_2_2_address0,v9007_2_2_ce0,v9007_2_2_q0,v9007_2_3_address0,v9007_2_3_ce0,v9007_2_3_q0,v9007_3_1_address0,v9007_3_1_ce0,v9007_3_1_q0,v9007_3_2_address0,v9007_3_2_ce0,v9007_3_2_q0,v9007_3_3_address0,v9007_3_3_ce0,v9007_3_3_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [11:0] rem_r;
input  [9:0] shl_ln;
output  [5:0] v508_address0;
output   v508_ce0;
output   v508_we0;
output  [7:0] v508_d0;
output  [5:0] v508_1_address0;
output   v508_1_ce0;
output   v508_1_we0;
output  [7:0] v508_1_d0;
output  [5:0] v508_2_address0;
output   v508_2_ce0;
output   v508_2_we0;
output  [7:0] v508_2_d0;
output  [5:0] v508_3_address0;
output   v508_3_ce0;
output   v508_3_we0;
output  [7:0] v508_3_d0;
output  [5:0] v508_4_address0;
output   v508_4_ce0;
output   v508_4_we0;
output  [7:0] v508_4_d0;
output  [5:0] v508_5_address0;
output   v508_5_ce0;
output   v508_5_we0;
output  [7:0] v508_5_d0;
output  [5:0] v508_6_address0;
output   v508_6_ce0;
output   v508_6_we0;
output  [7:0] v508_6_d0;
output  [5:0] v508_7_address0;
output   v508_7_ce0;
output   v508_7_we0;
output  [7:0] v508_7_d0;
output  [5:0] v508_8_address0;
output   v508_8_ce0;
output   v508_8_we0;
output  [7:0] v508_8_d0;
output  [5:0] v508_9_address0;
output   v508_9_ce0;
output   v508_9_we0;
output  [7:0] v508_9_d0;
output  [5:0] v508_10_address0;
output   v508_10_ce0;
output   v508_10_we0;
output  [7:0] v508_10_d0;
output  [5:0] v508_11_address0;
output   v508_11_ce0;
output   v508_11_we0;
output  [7:0] v508_11_d0;
output  [5:0] v508_12_address0;
output   v508_12_ce0;
output   v508_12_we0;
output  [7:0] v508_12_d0;
output  [5:0] v508_13_address0;
output   v508_13_ce0;
output   v508_13_we0;
output  [7:0] v508_13_d0;
output  [5:0] v508_14_address0;
output   v508_14_ce0;
output   v508_14_we0;
output  [7:0] v508_14_d0;
output  [5:0] v508_15_address0;
output   v508_15_ce0;
output   v508_15_we0;
output  [7:0] v508_15_d0;
input  [7:0] mul_i;
input  [5:0] shl_ln1;
input  [2:0] idxprom1_i491;
input  [2:0] idxprom3_i2;
output  [20:0] v9007_0_0_address0;
output   v9007_0_0_ce0;
input  [7:0] v9007_0_0_q0;
output  [20:0] v9007_1_0_address0;
output   v9007_1_0_ce0;
input  [7:0] v9007_1_0_q0;
output  [20:0] v9007_2_0_address0;
output   v9007_2_0_ce0;
input  [7:0] v9007_2_0_q0;
output  [20:0] v9007_3_0_address0;
output   v9007_3_0_ce0;
input  [7:0] v9007_3_0_q0;
output  [20:0] v9007_0_1_address0;
output   v9007_0_1_ce0;
input  [7:0] v9007_0_1_q0;
output  [20:0] v9007_0_2_address0;
output   v9007_0_2_ce0;
input  [7:0] v9007_0_2_q0;
output  [20:0] v9007_0_3_address0;
output   v9007_0_3_ce0;
input  [7:0] v9007_0_3_q0;
output  [20:0] v9007_1_1_address0;
output   v9007_1_1_ce0;
input  [7:0] v9007_1_1_q0;
output  [20:0] v9007_1_2_address0;
output   v9007_1_2_ce0;
input  [7:0] v9007_1_2_q0;
output  [20:0] v9007_1_3_address0;
output   v9007_1_3_ce0;
input  [7:0] v9007_1_3_q0;
output  [20:0] v9007_2_1_address0;
output   v9007_2_1_ce0;
input  [7:0] v9007_2_1_q0;
output  [20:0] v9007_2_2_address0;
output   v9007_2_2_ce0;
input  [7:0] v9007_2_2_q0;
output  [20:0] v9007_2_3_address0;
output   v9007_2_3_ce0;
input  [7:0] v9007_2_3_q0;
output  [20:0] v9007_3_1_address0;
output   v9007_3_1_ce0;
input  [7:0] v9007_3_1_q0;
output  [20:0] v9007_3_2_address0;
output   v9007_3_2_ce0;
input  [7:0] v9007_3_2_q0;
output  [20:0] v9007_3_3_address0;
output   v9007_3_3_ce0;
input  [7:0] v9007_3_3_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln814_fu_687_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln815195_reg_644;
wire    ap_block_pp0_stage0_11001;
wire   [20:0] idxprom3_i2_cast_fu_655_p1;
reg   [20:0] idxprom3_i2_cast_reg_1180;
wire   [18:0] idxprom1_i491_cast_fu_659_p1;
reg   [18:0] idxprom1_i491_cast_reg_1188;
reg   [0:0] icmp_ln814_reg_1196;
reg   [0:0] icmp_ln814_reg_1196_pp0_iter1_reg;
wire   [5:0] add_ln848_fu_800_p2;
reg   [5:0] add_ln848_reg_1200;
reg   [5:0] add_ln848_reg_1200_pp0_iter2_reg;
wire   [18:0] add_ln818_1_fu_848_p2;
reg   [18:0] add_ln818_1_reg_1205;
wire   [18:0] add_ln826_fu_885_p2;
reg   [18:0] add_ln826_reg_1211;
wire   [18:0] add_ln820_fu_932_p2;
reg   [18:0] add_ln820_reg_1217;
wire   [18:0] add_ln828_fu_969_p2;
reg   [18:0] add_ln828_reg_1223;
wire   [0:0] xor_ln815_fu_988_p2;
reg   [0:0] xor_ln815_reg_1229;
reg   [0:0] ap_phi_mux_icmp_ln815195_phi_fu_647_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln818_3_fu_1025_p1;
wire   [63:0] zext_ln826_3_fu_1051_p1;
wire   [63:0] zext_ln820_3_fu_1079_p1;
wire   [63:0] zext_ln828_3_fu_1107_p1;
wire   [63:0] zext_ln848_fu_1120_p1;
reg   [5:0] indvar_flatten192_fu_164;
wire   [5:0] add_ln814_1_fu_681_p2;
reg   [5:0] ap_sig_allocacmp_indvar_flatten192_load;
reg   [5:0] v452193_fu_168;
wire   [5:0] v452_fu_718_p3;
reg   [5:0] v453194_fu_172;
wire   [5:0] v453_fu_974_p2;
reg    v9007_0_0_ce0_local;
reg    v9007_0_1_ce0_local;
reg    v9007_0_2_ce0_local;
reg    v9007_0_3_ce0_local;
reg    v9007_1_0_ce0_local;
reg    v9007_1_1_ce0_local;
reg    v9007_1_2_ce0_local;
reg    v9007_1_3_ce0_local;
reg    v9007_2_0_ce0_local;
reg    v9007_2_1_ce0_local;
reg    v9007_2_2_ce0_local;
reg    v9007_2_3_ce0_local;
reg    v9007_3_0_ce0_local;
reg    v9007_3_1_ce0_local;
reg    v9007_3_2_ce0_local;
reg    v9007_3_3_ce0_local;
reg    v508_15_we0_local;
reg    v508_15_ce0_local;
reg    v508_14_we0_local;
reg    v508_14_ce0_local;
reg    v508_13_we0_local;
reg    v508_13_ce0_local;
reg    v508_12_we0_local;
reg    v508_12_ce0_local;
reg    v508_11_we0_local;
reg    v508_11_ce0_local;
reg    v508_10_we0_local;
reg    v508_10_ce0_local;
reg    v508_9_we0_local;
reg    v508_9_ce0_local;
reg    v508_8_we0_local;
reg    v508_8_ce0_local;
reg    v508_7_we0_local;
reg    v508_7_ce0_local;
reg    v508_6_we0_local;
reg    v508_6_ce0_local;
reg    v508_5_we0_local;
reg    v508_5_ce0_local;
reg    v508_4_we0_local;
reg    v508_4_ce0_local;
reg    v508_3_we0_local;
reg    v508_3_ce0_local;
reg    v508_2_we0_local;
reg    v508_2_ce0_local;
reg    v508_1_we0_local;
reg    v508_1_ce0_local;
reg    v508_we0_local;
reg    v508_ce0_local;
wire   [5:0] add_ln814_fu_704_p2;
wire   [3:0] lshr_ln_fu_730_p4;
wire   [2:0] lshr_ln_cast_fu_740_p4;
wire   [11:0] zext_ln814_fu_726_p1;
wire   [9:0] zext_ln814_1_fu_750_p1;
wire   [11:0] empty_fu_762_p2;
wire   [5:0] select_ln814_fu_710_p3;
wire   [3:0] lshr_ln4_fu_786_p4;
wire   [5:0] tmp_s_fu_754_p3;
wire   [5:0] zext_ln815_1_fu_796_p1;
wire   [7:0] zext_ln815_fu_782_p1;
wire   [9:0] empty_90_fu_767_p2;
wire   [5:0] add_ln818_fu_811_p2;
wire   [15:0] tmp_26_fu_816_p3;
wire   [17:0] tmp_fu_828_p4;
wire   [18:0] zext_ln818_1_fu_838_p1;
wire   [18:0] zext_ln818_fu_824_p1;
wire   [18:0] add_ln818_3_fu_842_p2;
wire   [9:0] tmp_25_fu_772_p4;
wire   [15:0] tmp_27_fu_853_p3;
wire   [17:0] tmp_38_fu_865_p4;
wire   [18:0] zext_ln826_1_fu_875_p1;
wire   [18:0] zext_ln826_fu_861_p1;
wire   [18:0] add_ln826_2_fu_879_p2;
wire   [7:0] add_ln817_fu_806_p2;
wire   [5:0] lshr_ln5_fu_890_p4;
wire   [15:0] tmp_28_fu_900_p3;
wire   [17:0] tmp_40_fu_912_p4;
wire   [18:0] zext_ln820_1_fu_922_p1;
wire   [18:0] zext_ln820_fu_908_p1;
wire   [18:0] add_ln820_2_fu_926_p2;
wire   [15:0] tmp_29_fu_937_p3;
wire   [17:0] tmp_42_fu_949_p4;
wire   [18:0] zext_ln828_1_fu_959_p1;
wire   [18:0] zext_ln828_fu_945_p1;
wire   [18:0] add_ln828_2_fu_963_p2;
wire   [0:0] tmp_44_fu_980_p3;
wire   [20:0] tmp_36_fu_1007_p3;
wire   [20:0] zext_ln818_2_fu_1004_p1;
wire   [20:0] add_ln818_4_fu_1014_p2;
wire   [20:0] add_ln818_2_fu_1020_p2;
wire   [20:0] tmp_39_fu_1033_p3;
wire   [20:0] zext_ln826_2_fu_1030_p1;
wire   [20:0] add_ln826_3_fu_1040_p2;
wire   [20:0] add_ln826_1_fu_1046_p2;
wire   [20:0] tmp_41_fu_1061_p3;
wire   [20:0] zext_ln820_2_fu_1058_p1;
wire   [20:0] add_ln820_3_fu_1068_p2;
wire   [20:0] add_ln820_1_fu_1074_p2;
wire   [20:0] tmp_43_fu_1089_p3;
wire   [20:0] zext_ln828_2_fu_1086_p1;
wire   [20:0] add_ln828_3_fu_1096_p2;
wire   [20:0] add_ln828_1_fu_1102_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 indvar_flatten192_fu_164 = 6'd0;
#0 v452193_fu_168 = 6'd0;
#0 v453194_fu_172 = 6'd0;
#0 ap_done_reg = 1'b0;
end
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln814_reg_1196_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        icmp_ln815195_reg_644 <= xor_ln815_reg_1229;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln815195_reg_644 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten192_fu_164 <= add_ln814_1_fu_681_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten192_fu_164 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v452193_fu_168 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v452193_fu_168 <= v452_fu_718_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v453194_fu_172 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v453194_fu_172 <= v453_fu_974_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln818_1_reg_1205 <= add_ln818_1_fu_848_p2;
        add_ln820_reg_1217 <= add_ln820_fu_932_p2;
        add_ln826_reg_1211 <= add_ln826_fu_885_p2;
        add_ln828_reg_1223 <= add_ln828_fu_969_p2;
        add_ln848_reg_1200 <= add_ln848_fu_800_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln814_reg_1196 <= icmp_ln814_fu_687_p2;
        icmp_ln814_reg_1196_pp0_iter1_reg <= icmp_ln814_reg_1196;
        idxprom1_i491_cast_reg_1188[2 : 0] <= idxprom1_i491_cast_fu_659_p1[2 : 0];
        idxprom3_i2_cast_reg_1180[2 : 0] <= idxprom3_i2_cast_fu_655_p1[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln848_reg_1200_pp0_iter2_reg <= add_ln848_reg_1200;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xor_ln815_reg_1229 <= xor_ln815_fu_988_p2;
    end
end
always @ (*) begin
    if (((icmp_ln814_fu_687_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln814_reg_1196_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln815195_phi_fu_647_p4 = xor_ln815_reg_1229;
    end else begin
        ap_phi_mux_icmp_ln815195_phi_fu_647_p4 = icmp_ln815195_reg_644;
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
        ap_sig_allocacmp_indvar_flatten192_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten192_load = indvar_flatten192_fu_164;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v508_10_ce0_local = 1'b1;
    end else begin
        v508_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v508_10_we0_local = 1'b1;
    end else begin
        v508_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v508_11_ce0_local = 1'b1;
    end else begin
        v508_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v508_11_we0_local = 1'b1;
    end else begin
        v508_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v508_12_ce0_local = 1'b1;
    end else begin
        v508_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v508_12_we0_local = 1'b1;
    end else begin
        v508_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v508_13_ce0_local = 1'b1;
    end else begin
        v508_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v508_13_we0_local = 1'b1;
    end else begin
        v508_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v508_14_ce0_local = 1'b1;
    end else begin
        v508_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v508_14_we0_local = 1'b1;
    end else begin
        v508_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v508_15_ce0_local = 1'b1;
    end else begin
        v508_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v508_15_we0_local = 1'b1;
    end else begin
        v508_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v508_1_ce0_local = 1'b1;
    end else begin
        v508_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v508_1_we0_local = 1'b1;
    end else begin
        v508_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v508_2_ce0_local = 1'b1;
    end else begin
        v508_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v508_2_we0_local = 1'b1;
    end else begin
        v508_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v508_3_ce0_local = 1'b1;
    end else begin
        v508_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v508_3_we0_local = 1'b1;
    end else begin
        v508_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v508_4_ce0_local = 1'b1;
    end else begin
        v508_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v508_4_we0_local = 1'b1;
    end else begin
        v508_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v508_5_ce0_local = 1'b1;
    end else begin
        v508_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v508_5_we0_local = 1'b1;
    end else begin
        v508_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v508_6_ce0_local = 1'b1;
    end else begin
        v508_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v508_6_we0_local = 1'b1;
    end else begin
        v508_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v508_7_ce0_local = 1'b1;
    end else begin
        v508_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v508_7_we0_local = 1'b1;
    end else begin
        v508_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v508_8_ce0_local = 1'b1;
    end else begin
        v508_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v508_8_we0_local = 1'b1;
    end else begin
        v508_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v508_9_ce0_local = 1'b1;
    end else begin
        v508_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v508_9_we0_local = 1'b1;
    end else begin
        v508_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v508_ce0_local = 1'b1;
    end else begin
        v508_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v508_we0_local = 1'b1;
    end else begin
        v508_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9007_0_0_ce0_local = 1'b1;
    end else begin
        v9007_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9007_0_1_ce0_local = 1'b1;
    end else begin
        v9007_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9007_0_2_ce0_local = 1'b1;
    end else begin
        v9007_0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9007_0_3_ce0_local = 1'b1;
    end else begin
        v9007_0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9007_1_0_ce0_local = 1'b1;
    end else begin
        v9007_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9007_1_1_ce0_local = 1'b1;
    end else begin
        v9007_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9007_1_2_ce0_local = 1'b1;
    end else begin
        v9007_1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9007_1_3_ce0_local = 1'b1;
    end else begin
        v9007_1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9007_2_0_ce0_local = 1'b1;
    end else begin
        v9007_2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9007_2_1_ce0_local = 1'b1;
    end else begin
        v9007_2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9007_2_2_ce0_local = 1'b1;
    end else begin
        v9007_2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9007_2_3_ce0_local = 1'b1;
    end else begin
        v9007_2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9007_3_0_ce0_local = 1'b1;
    end else begin
        v9007_3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9007_3_1_ce0_local = 1'b1;
    end else begin
        v9007_3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9007_3_2_ce0_local = 1'b1;
    end else begin
        v9007_3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9007_3_3_ce0_local = 1'b1;
    end else begin
        v9007_3_3_ce0_local = 1'b0;
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
assign add_ln814_1_fu_681_p2 = (ap_sig_allocacmp_indvar_flatten192_load + 6'd1);
assign add_ln814_fu_704_p2 = (v452193_fu_168 + 6'd4);
assign add_ln817_fu_806_p2 = (mul_i + zext_ln815_fu_782_p1);
assign add_ln818_1_fu_848_p2 = (add_ln818_3_fu_842_p2 + idxprom1_i491_cast_reg_1188);
assign add_ln818_2_fu_1020_p2 = (add_ln818_4_fu_1014_p2 + idxprom3_i2_cast_reg_1180);
assign add_ln818_3_fu_842_p2 = (zext_ln818_1_fu_838_p1 + zext_ln818_fu_824_p1);
assign add_ln818_4_fu_1014_p2 = (tmp_36_fu_1007_p3 + zext_ln818_2_fu_1004_p1);
assign add_ln818_fu_811_p2 = (zext_ln815_1_fu_796_p1 + shl_ln1);
assign add_ln820_1_fu_1074_p2 = (add_ln820_3_fu_1068_p2 + idxprom3_i2_cast_reg_1180);
assign add_ln820_2_fu_926_p2 = (zext_ln820_1_fu_922_p1 + zext_ln820_fu_908_p1);
assign add_ln820_3_fu_1068_p2 = (tmp_41_fu_1061_p3 + zext_ln820_2_fu_1058_p1);
assign add_ln820_fu_932_p2 = (add_ln820_2_fu_926_p2 + idxprom1_i491_cast_reg_1188);
assign add_ln826_1_fu_1046_p2 = (add_ln826_3_fu_1040_p2 + idxprom3_i2_cast_reg_1180);
assign add_ln826_2_fu_879_p2 = (zext_ln826_1_fu_875_p1 + zext_ln826_fu_861_p1);
assign add_ln826_3_fu_1040_p2 = (tmp_39_fu_1033_p3 + zext_ln826_2_fu_1030_p1);
assign add_ln826_fu_885_p2 = (add_ln826_2_fu_879_p2 + idxprom1_i491_cast_reg_1188);
assign add_ln828_1_fu_1102_p2 = (add_ln828_3_fu_1096_p2 + idxprom3_i2_cast_reg_1180);
assign add_ln828_2_fu_963_p2 = (zext_ln828_1_fu_959_p1 + zext_ln828_fu_945_p1);
assign add_ln828_3_fu_1096_p2 = (tmp_43_fu_1089_p3 + zext_ln828_2_fu_1086_p1);
assign add_ln828_fu_969_p2 = (add_ln828_2_fu_963_p2 + idxprom1_i491_cast_reg_1188);
assign add_ln848_fu_800_p2 = (tmp_s_fu_754_p3 + zext_ln815_1_fu_796_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_90_fu_767_p2 = (shl_ln + zext_ln814_1_fu_750_p1);
assign empty_fu_762_p2 = (rem_r + zext_ln814_fu_726_p1);
assign icmp_ln814_fu_687_p2 = ((ap_sig_allocacmp_indvar_flatten192_load == 6'd63) ? 1'b1 : 1'b0);
assign idxprom1_i491_cast_fu_659_p1 = idxprom1_i491;
assign idxprom3_i2_cast_fu_655_p1 = idxprom3_i2;
assign lshr_ln4_fu_786_p4 = {{select_ln814_fu_710_p3[5:2]}};
assign lshr_ln5_fu_890_p4 = {{add_ln817_fu_806_p2[7:2]}};
assign lshr_ln_cast_fu_740_p4 = {{v452_fu_718_p3[4:2]}};
assign lshr_ln_fu_730_p4 = {{v452_fu_718_p3[5:2]}};
assign select_ln814_fu_710_p3 = ((ap_phi_mux_icmp_ln815195_phi_fu_647_p4[0:0] == 1'b1) ? v453194_fu_172 : 6'd0);
assign tmp_25_fu_772_p4 = {{empty_fu_762_p2[11:2]}};
assign tmp_26_fu_816_p3 = {{empty_90_fu_767_p2}, {add_ln818_fu_811_p2}};
assign tmp_27_fu_853_p3 = {{tmp_25_fu_772_p4}, {add_ln818_fu_811_p2}};
assign tmp_28_fu_900_p3 = {{empty_90_fu_767_p2}, {lshr_ln5_fu_890_p4}};
assign tmp_29_fu_937_p3 = {{tmp_25_fu_772_p4}, {lshr_ln5_fu_890_p4}};
assign tmp_36_fu_1007_p3 = {{add_ln818_1_reg_1205}, {2'd0}};
assign tmp_38_fu_865_p4 = {{{tmp_25_fu_772_p4}, {add_ln818_fu_811_p2}}, {2'd0}};
assign tmp_39_fu_1033_p3 = {{add_ln826_reg_1211}, {2'd0}};
assign tmp_40_fu_912_p4 = {{{empty_90_fu_767_p2}, {lshr_ln5_fu_890_p4}}, {2'd0}};
assign tmp_41_fu_1061_p3 = {{add_ln820_reg_1217}, {2'd0}};
assign tmp_42_fu_949_p4 = {{{tmp_25_fu_772_p4}, {lshr_ln5_fu_890_p4}}, {2'd0}};
assign tmp_43_fu_1089_p3 = {{add_ln828_reg_1223}, {2'd0}};
assign tmp_44_fu_980_p3 = v453_fu_974_p2[32'd5];
assign tmp_fu_828_p4 = {{{empty_90_fu_767_p2}, {add_ln818_fu_811_p2}}, {2'd0}};
assign tmp_s_fu_754_p3 = {{lshr_ln_cast_fu_740_p4}, {3'd0}};
assign v452_fu_718_p3 = ((ap_phi_mux_icmp_ln815195_phi_fu_647_p4[0:0] == 1'b1) ? v452193_fu_168 : add_ln814_fu_704_p2);
assign v453_fu_974_p2 = (select_ln814_fu_710_p3 + 6'd4);
assign v508_10_address0 = zext_ln848_fu_1120_p1;
assign v508_10_ce0 = v508_10_ce0_local;
assign v508_10_d0 = v9007_1_1_q0;
assign v508_10_we0 = v508_10_we0_local;
assign v508_11_address0 = zext_ln848_fu_1120_p1;
assign v508_11_ce0 = v508_11_ce0_local;
assign v508_11_d0 = v9007_1_0_q0;
assign v508_11_we0 = v508_11_we0_local;
assign v508_12_address0 = zext_ln848_fu_1120_p1;
assign v508_12_ce0 = v508_12_ce0_local;
assign v508_12_d0 = v9007_0_3_q0;
assign v508_12_we0 = v508_12_we0_local;
assign v508_13_address0 = zext_ln848_fu_1120_p1;
assign v508_13_ce0 = v508_13_ce0_local;
assign v508_13_d0 = v9007_0_2_q0;
assign v508_13_we0 = v508_13_we0_local;
assign v508_14_address0 = zext_ln848_fu_1120_p1;
assign v508_14_ce0 = v508_14_ce0_local;
assign v508_14_d0 = v9007_0_1_q0;
assign v508_14_we0 = v508_14_we0_local;
assign v508_15_address0 = zext_ln848_fu_1120_p1;
assign v508_15_ce0 = v508_15_ce0_local;
assign v508_15_d0 = v9007_0_0_q0;
assign v508_15_we0 = v508_15_we0_local;
assign v508_1_address0 = zext_ln848_fu_1120_p1;
assign v508_1_ce0 = v508_1_ce0_local;
assign v508_1_d0 = v9007_3_2_q0;
assign v508_1_we0 = v508_1_we0_local;
assign v508_2_address0 = zext_ln848_fu_1120_p1;
assign v508_2_ce0 = v508_2_ce0_local;
assign v508_2_d0 = v9007_3_1_q0;
assign v508_2_we0 = v508_2_we0_local;
assign v508_3_address0 = zext_ln848_fu_1120_p1;
assign v508_3_ce0 = v508_3_ce0_local;
assign v508_3_d0 = v9007_3_0_q0;
assign v508_3_we0 = v508_3_we0_local;
assign v508_4_address0 = zext_ln848_fu_1120_p1;
assign v508_4_ce0 = v508_4_ce0_local;
assign v508_4_d0 = v9007_2_3_q0;
assign v508_4_we0 = v508_4_we0_local;
assign v508_5_address0 = zext_ln848_fu_1120_p1;
assign v508_5_ce0 = v508_5_ce0_local;
assign v508_5_d0 = v9007_2_2_q0;
assign v508_5_we0 = v508_5_we0_local;
assign v508_6_address0 = zext_ln848_fu_1120_p1;
assign v508_6_ce0 = v508_6_ce0_local;
assign v508_6_d0 = v9007_2_1_q0;
assign v508_6_we0 = v508_6_we0_local;
assign v508_7_address0 = zext_ln848_fu_1120_p1;
assign v508_7_ce0 = v508_7_ce0_local;
assign v508_7_d0 = v9007_2_0_q0;
assign v508_7_we0 = v508_7_we0_local;
assign v508_8_address0 = zext_ln848_fu_1120_p1;
assign v508_8_ce0 = v508_8_ce0_local;
assign v508_8_d0 = v9007_1_3_q0;
assign v508_8_we0 = v508_8_we0_local;
assign v508_9_address0 = zext_ln848_fu_1120_p1;
assign v508_9_ce0 = v508_9_ce0_local;
assign v508_9_d0 = v9007_1_2_q0;
assign v508_9_we0 = v508_9_we0_local;
assign v508_address0 = zext_ln848_fu_1120_p1;
assign v508_ce0 = v508_ce0_local;
assign v508_d0 = v9007_3_3_q0;
assign v508_we0 = v508_we0_local;
assign v9007_0_0_address0 = zext_ln818_3_fu_1025_p1;
assign v9007_0_0_ce0 = v9007_0_0_ce0_local;
assign v9007_0_1_address0 = zext_ln820_3_fu_1079_p1;
assign v9007_0_1_ce0 = v9007_0_1_ce0_local;
assign v9007_0_2_address0 = zext_ln820_3_fu_1079_p1;
assign v9007_0_2_ce0 = v9007_0_2_ce0_local;
assign v9007_0_3_address0 = zext_ln820_3_fu_1079_p1;
assign v9007_0_3_ce0 = v9007_0_3_ce0_local;
assign v9007_1_0_address0 = zext_ln826_3_fu_1051_p1;
assign v9007_1_0_ce0 = v9007_1_0_ce0_local;
assign v9007_1_1_address0 = zext_ln828_3_fu_1107_p1;
assign v9007_1_1_ce0 = v9007_1_1_ce0_local;
assign v9007_1_2_address0 = zext_ln828_3_fu_1107_p1;
assign v9007_1_2_ce0 = v9007_1_2_ce0_local;
assign v9007_1_3_address0 = zext_ln828_3_fu_1107_p1;
assign v9007_1_3_ce0 = v9007_1_3_ce0_local;
assign v9007_2_0_address0 = zext_ln826_3_fu_1051_p1;
assign v9007_2_0_ce0 = v9007_2_0_ce0_local;
assign v9007_2_1_address0 = zext_ln828_3_fu_1107_p1;
assign v9007_2_1_ce0 = v9007_2_1_ce0_local;
assign v9007_2_2_address0 = zext_ln828_3_fu_1107_p1;
assign v9007_2_2_ce0 = v9007_2_2_ce0_local;
assign v9007_2_3_address0 = zext_ln828_3_fu_1107_p1;
assign v9007_2_3_ce0 = v9007_2_3_ce0_local;
assign v9007_3_0_address0 = zext_ln826_3_fu_1051_p1;
assign v9007_3_0_ce0 = v9007_3_0_ce0_local;
assign v9007_3_1_address0 = zext_ln828_3_fu_1107_p1;
assign v9007_3_1_ce0 = v9007_3_1_ce0_local;
assign v9007_3_2_address0 = zext_ln828_3_fu_1107_p1;
assign v9007_3_2_ce0 = v9007_3_2_ce0_local;
assign v9007_3_3_address0 = zext_ln828_3_fu_1107_p1;
assign v9007_3_3_ce0 = v9007_3_3_ce0_local;
assign xor_ln815_fu_988_p2 = (tmp_44_fu_980_p3 ^ 1'd1);
assign zext_ln814_1_fu_750_p1 = lshr_ln_fu_730_p4;
assign zext_ln814_fu_726_p1 = v452_fu_718_p3;
assign zext_ln815_1_fu_796_p1 = lshr_ln4_fu_786_p4;
assign zext_ln815_fu_782_p1 = select_ln814_fu_710_p3;
assign zext_ln818_1_fu_838_p1 = tmp_fu_828_p4;
assign zext_ln818_2_fu_1004_p1 = add_ln818_1_reg_1205;
assign zext_ln818_3_fu_1025_p1 = add_ln818_2_fu_1020_p2;
assign zext_ln818_fu_824_p1 = tmp_26_fu_816_p3;
assign zext_ln820_1_fu_922_p1 = tmp_40_fu_912_p4;
assign zext_ln820_2_fu_1058_p1 = add_ln820_reg_1217;
assign zext_ln820_3_fu_1079_p1 = add_ln820_1_fu_1074_p2;
assign zext_ln820_fu_908_p1 = tmp_28_fu_900_p3;
assign zext_ln826_1_fu_875_p1 = tmp_38_fu_865_p4;
assign zext_ln826_2_fu_1030_p1 = add_ln826_reg_1211;
assign zext_ln826_3_fu_1051_p1 = add_ln826_1_fu_1046_p2;
assign zext_ln826_fu_861_p1 = tmp_27_fu_853_p3;
assign zext_ln828_1_fu_959_p1 = tmp_42_fu_949_p4;
assign zext_ln828_2_fu_1086_p1 = add_ln828_reg_1223;
assign zext_ln828_3_fu_1107_p1 = add_ln828_1_fu_1102_p2;
assign zext_ln828_fu_945_p1 = tmp_29_fu_937_p3;
assign zext_ln848_fu_1120_p1 = add_ln848_reg_1200_pp0_iter2_reg;
always @ (posedge ap_clk) begin
    idxprom3_i2_cast_reg_1180[20:3] <= 18'b000000000000000000;
    idxprom1_i491_cast_reg_1188[18:3] <= 16'b0000000000000000;
end
endmodule 
