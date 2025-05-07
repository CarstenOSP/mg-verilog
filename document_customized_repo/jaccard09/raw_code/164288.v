module forward_dataflow_in_loop_VITIS_LOOP_8969_1_Loop_VITIS_LOOP_8739_1_proc228187 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v7548_address0,v7548_ce0,v7548_we0,v7548_d0,v7548_1_address0,v7548_1_ce0,v7548_1_we0,v7548_1_d0,v7548_2_address0,v7548_2_ce0,v7548_2_we0,v7548_2_d0,v7548_3_address0,v7548_3_ce0,v7548_3_we0,v7548_3_d0,v7548_4_address0,v7548_4_ce0,v7548_4_we0,v7548_4_d0,v7548_5_address0,v7548_5_ce0,v7548_5_we0,v7548_5_d0,v7548_6_address0,v7548_6_ce0,v7548_6_we0,v7548_6_d0,v7548_7_address0,v7548_7_ce0,v7548_7_we0,v7548_7_d0,v7543,v15495_0_address0,v15495_0_ce0,v15495_0_q0,v15495_1_address0,v15495_1_ce0,v15495_1_q0,v15495_2_address0,v15495_2_ce0,v15495_2_q0,v15495_3_address0,v15495_3_ce0,v15495_3_q0,v15495_4_address0,v15495_4_ce0,v15495_4_q0,v15495_5_address0,v15495_5_ce0,v15495_5_q0,v15495_6_address0,v15495_6_ce0,v15495_6_q0,v15495_7_address0,v15495_7_ce0,v15495_7_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [7:0] v7548_address0;
output   v7548_ce0;
output   v7548_we0;
output  [7:0] v7548_d0;
output  [7:0] v7548_1_address0;
output   v7548_1_ce0;
output   v7548_1_we0;
output  [7:0] v7548_1_d0;
output  [7:0] v7548_2_address0;
output   v7548_2_ce0;
output   v7548_2_we0;
output  [7:0] v7548_2_d0;
output  [7:0] v7548_3_address0;
output   v7548_3_ce0;
output   v7548_3_we0;
output  [7:0] v7548_3_d0;
output  [7:0] v7548_4_address0;
output   v7548_4_ce0;
output   v7548_4_we0;
output  [7:0] v7548_4_d0;
output  [7:0] v7548_5_address0;
output   v7548_5_ce0;
output   v7548_5_we0;
output  [7:0] v7548_5_d0;
output  [7:0] v7548_6_address0;
output   v7548_6_ce0;
output   v7548_6_we0;
output  [7:0] v7548_6_d0;
output  [7:0] v7548_7_address0;
output   v7548_7_ce0;
output   v7548_7_we0;
output  [7:0] v7548_7_d0;
input  [5:0] v7543;
output  [13:0] v15495_0_address0;
output   v15495_0_ce0;
input  [7:0] v15495_0_q0;
output  [13:0] v15495_1_address0;
output   v15495_1_ce0;
input  [7:0] v15495_1_q0;
output  [13:0] v15495_2_address0;
output   v15495_2_ce0;
input  [7:0] v15495_2_q0;
output  [13:0] v15495_3_address0;
output   v15495_3_ce0;
input  [7:0] v15495_3_q0;
output  [13:0] v15495_4_address0;
output   v15495_4_ce0;
input  [7:0] v15495_4_q0;
output  [13:0] v15495_5_address0;
output   v15495_5_ce0;
input  [7:0] v15495_5_q0;
output  [13:0] v15495_6_address0;
output   v15495_6_ce0;
input  [7:0] v15495_6_q0;
output  [13:0] v15495_7_address0;
output   v15495_7_ce0;
input  [7:0] v15495_7_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln8739_fu_492_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
wire   [8:0] mul_i112_i_i_fu_414_p3;
reg   [8:0] mul_i112_i_i_reg_931;
wire   [5:0] trunc_ln_i_fu_422_p3;
reg   [5:0] trunc_ln_i_reg_936;
wire   [3:0] zext_ln8926_cast_cast_i_cast_cast_fu_438_p3;
reg   [3:0] zext_ln8926_cast_cast_i_cast_cast_reg_941;
wire   [3:0] zext_ln8926_4_cast_cast_i_cast_cast_fu_450_p3;
reg   [3:0] zext_ln8926_4_cast_cast_i_cast_cast_reg_946;
reg   [3:0] zext_ln8926_4_cast_cast_i_cast_cast_reg_946_pp0_iter1_reg;
reg   [0:0] icmp_ln8739_reg_951;
reg   [0:0] icmp_ln8739_reg_951_pp0_iter1_reg;
wire   [2:0] v7442_mid2_i_fu_561_p3;
reg   [2:0] v7442_mid2_i_reg_955;
wire   [5:0] add_ln8758_fu_685_p2;
reg   [5:0] add_ln8758_reg_961;
wire   [4:0] trunc_ln8758_fu_691_p1;
reg   [4:0] trunc_ln8758_reg_966;
wire   [9:0] add_ln8744_fu_708_p2;
reg   [9:0] add_ln8744_reg_971;
wire   [9:0] add_ln8746_fu_714_p2;
reg   [9:0] add_ln8746_reg_977;
wire   [0:0] icmp_ln8741_fu_740_p2;
reg   [0:0] icmp_ln8741_reg_983;
wire   [0:0] icmp_ln8740_fu_746_p2;
reg   [0:0] icmp_ln8740_reg_988;
wire   [7:0] add_ln8758_1_fu_839_p2;
reg   [7:0] add_ln8758_1_reg_993;
reg   [0:0] ap_phi_mux_icmp_ln874099_i_phi_fu_382_p4;
wire    ap_loop_init;
reg    ap_loop_init_pp0_iter1_reg;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln874198_i_phi_fu_393_p4;
wire   [63:0] zext_ln8744_4_fu_863_p1;
wire   [63:0] zext_ln8746_2_fu_874_p1;
wire   [63:0] zext_ln8758_3_fu_885_p1;
reg   [7:0] indvar_flatten1293_i_fu_136;
wire   [7:0] add_ln8739_1_fu_486_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten1293_i_load;
reg   [5:0] v744094_i_fu_140;
wire   [5:0] select_ln8739_1_fu_541_p3;
reg   [5:0] indvar_flatten95_i_fu_144;
wire   [5:0] select_ln8740_1_fu_732_p3;
reg   [2:0] v744196_i_fu_148;
wire   [2:0] select_ln8740_fu_569_p3;
reg   [2:0] v744297_i_fu_152;
wire   [2:0] add_ln8741_fu_720_p2;
reg    v15495_0_ce0_local;
reg    v15495_1_ce0_local;
reg    v15495_2_ce0_local;
reg    v15495_3_ce0_local;
reg    v15495_4_ce0_local;
reg    v15495_5_ce0_local;
reg    v15495_6_ce0_local;
reg    v15495_7_ce0_local;
reg    v7548_7_we0_local;
reg    v7548_7_ce0_local;
reg    v7548_6_we0_local;
reg    v7548_6_ce0_local;
reg    v7548_5_we0_local;
reg    v7548_5_ce0_local;
reg    v7548_4_we0_local;
reg    v7548_4_ce0_local;
reg    v7548_3_we0_local;
reg    v7548_3_ce0_local;
reg    v7548_2_we0_local;
reg    v7548_2_ce0_local;
reg    v7548_1_we0_local;
reg    v7548_1_ce0_local;
reg    v7548_we0_local;
reg    v7548_ce0_local;
wire   [3:0] tmp_i_fu_404_p4;
wire   [10:0] v7543_cast2_fu_400_p1;
wire   [0:0] tmp_fu_430_p3;
wire   [0:0] empty_fu_446_p1;
wire   [0:0] xor_ln8739_fu_529_p2;
wire   [5:0] add_ln8739_fu_515_p2;
wire   [2:0] select_ln8739_fu_521_p3;
wire   [0:0] and_ln8739_fu_535_p2;
wire   [0:0] empty_149_fu_555_p2;
wire   [2:0] add_ln8740_fu_549_p2;
wire   [2:0] lshr_ln_i_fu_581_p4;
wire   [5:0] p_shl36_fu_595_p3;
wire   [5:0] zext_ln8739_1_fu_591_p1;
wire   [8:0] zext_ln8739_fu_577_p1;
wire   [5:0] empty_151_fu_614_p2;
wire   [6:0] tmp_19_fu_627_p3;
wire   [9:0] p_shl34_fu_619_p3;
wire   [9:0] zext_ln8744_fu_635_p1;
wire   [8:0] empty_150_fu_609_p2;
wire   [5:0] tmp_20_fu_645_p4;
wire   [6:0] tmp_21_fu_663_p3;
wire   [9:0] p_shl32_fu_655_p3;
wire   [9:0] zext_ln8746_fu_671_p1;
wire   [5:0] sub_ln8758_fu_603_p2;
wire   [5:0] zext_ln8758_fu_681_p1;
wire   [3:0] zext_ln8740_fu_695_p1;
wire   [3:0] empty_152_fu_699_p2;
wire   [9:0] sub_ln8744_fu_639_p2;
wire   [9:0] zext_ln8744_1_fu_704_p1;
wire   [9:0] sub_ln8746_fu_675_p2;
wire   [5:0] add_ln8740_1_fu_726_p2;
wire   [7:0] tmp_22_fu_772_p3;
wire   [7:0] zext_ln8758_1_fu_779_p1;
wire   [10:0] tmp_23_fu_795_p3;
wire   [13:0] p_shl29_fu_788_p3;
wire   [13:0] zext_ln8744_2_fu_802_p1;
wire   [10:0] tmp_24_fu_819_p3;
wire   [13:0] p_shl_fu_812_p3;
wire   [13:0] zext_ln8746_1_fu_826_p1;
wire   [7:0] sub_ln8740_fu_782_p2;
wire   [7:0] zext_ln8758_2_fu_836_p1;
wire   [3:0] zext_ln8741_fu_845_p1;
wire   [3:0] add_ln8743_fu_848_p2;
wire   [13:0] sub_ln8744_1_fu_806_p2;
wire   [13:0] zext_ln8744_3_fu_853_p1;
wire   [13:0] add_ln8744_1_fu_857_p2;
wire   [13:0] sub_ln8746_1_fu_830_p2;
wire   [13:0] add_ln8746_1_fu_868_p2;
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
reg    ap_condition_260;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1293_i_fu_136 = 8'd0;
#0 v744094_i_fu_140 = 6'd0;
#0 indvar_flatten95_i_fu_144 = 6'd0;
#0 v744196_i_fu_148 = 3'd0;
#0 v744297_i_fu_152 = 3'd0;
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
    if ((1'b1 == ap_condition_260)) begin
        indvar_flatten1293_i_fu_136 <= add_ln8739_1_fu_486_p2;
    end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        indvar_flatten95_i_fu_144 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        indvar_flatten95_i_fu_144 <= select_ln8740_1_fu_732_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        v744094_i_fu_140 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v744094_i_fu_140 <= select_ln8739_1_fu_541_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        v744196_i_fu_148 <= 3'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v744196_i_fu_148 <= select_ln8740_fu_569_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        v744297_i_fu_152 <= 3'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v744297_i_fu_152 <= add_ln8741_fu_720_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln8744_reg_971 <= add_ln8744_fu_708_p2;
        add_ln8746_reg_977 <= add_ln8746_fu_714_p2;
        add_ln8758_reg_961 <= add_ln8758_fu_685_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_init_pp0_iter1_reg <= ap_loop_init;
        icmp_ln8739_reg_951 <= icmp_ln8739_fu_492_p2;
        icmp_ln8739_reg_951_pp0_iter1_reg <= icmp_ln8739_reg_951;
        mul_i112_i_i_reg_931[8 : 5] <= mul_i112_i_i_fu_414_p3[8 : 5];
        trunc_ln8758_reg_966 <= trunc_ln8758_fu_691_p1;
        trunc_ln_i_reg_936[5 : 2] <= trunc_ln_i_fu_422_p3[5 : 2];
        v7442_mid2_i_reg_955 <= v7442_mid2_i_fu_561_p3;
        zext_ln8926_4_cast_cast_i_cast_cast_reg_946[2 : 0] <= zext_ln8926_4_cast_cast_i_cast_cast_fu_450_p3[2 : 0];
        zext_ln8926_4_cast_cast_i_cast_cast_reg_946_pp0_iter1_reg[2 : 0] <= zext_ln8926_4_cast_cast_i_cast_cast_reg_946[2 : 0];
        zext_ln8926_cast_cast_i_cast_cast_reg_941[2 : 0] <= zext_ln8926_cast_cast_i_cast_cast_fu_438_p3[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln8758_1_reg_993 <= add_ln8758_1_fu_839_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln8740_reg_988 <= icmp_ln8740_fu_746_p2;
        icmp_ln8741_reg_983 <= icmp_ln8741_fu_740_p2;
    end
end
always @ (*) begin
    if (((icmp_ln8739_fu_492_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln8739_reg_951_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln874099_i_phi_fu_382_p4 = icmp_ln8740_reg_988;
    end else if (((ap_loop_init_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_icmp_ln874099_i_phi_fu_382_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln874099_i_phi_fu_382_p4 = icmp_ln8740_reg_988;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln8739_reg_951_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln874198_i_phi_fu_393_p4 = icmp_ln8741_reg_983;
    end else if (((ap_loop_init_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_icmp_ln874198_i_phi_fu_393_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln874198_i_phi_fu_393_p4 = icmp_ln8741_reg_983;
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
        ap_sig_allocacmp_indvar_flatten1293_i_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1293_i_load = indvar_flatten1293_i_fu_136;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15495_0_ce0_local = 1'b1;
    end else begin
        v15495_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15495_1_ce0_local = 1'b1;
    end else begin
        v15495_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15495_2_ce0_local = 1'b1;
    end else begin
        v15495_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15495_3_ce0_local = 1'b1;
    end else begin
        v15495_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15495_4_ce0_local = 1'b1;
    end else begin
        v15495_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15495_5_ce0_local = 1'b1;
    end else begin
        v15495_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15495_6_ce0_local = 1'b1;
    end else begin
        v15495_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15495_7_ce0_local = 1'b1;
    end else begin
        v15495_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7548_1_ce0_local = 1'b1;
    end else begin
        v7548_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7548_1_we0_local = 1'b1;
    end else begin
        v7548_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7548_2_ce0_local = 1'b1;
    end else begin
        v7548_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7548_2_we0_local = 1'b1;
    end else begin
        v7548_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7548_3_ce0_local = 1'b1;
    end else begin
        v7548_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7548_3_we0_local = 1'b1;
    end else begin
        v7548_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7548_4_ce0_local = 1'b1;
    end else begin
        v7548_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7548_4_we0_local = 1'b1;
    end else begin
        v7548_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7548_5_ce0_local = 1'b1;
    end else begin
        v7548_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7548_5_we0_local = 1'b1;
    end else begin
        v7548_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7548_6_ce0_local = 1'b1;
    end else begin
        v7548_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7548_6_we0_local = 1'b1;
    end else begin
        v7548_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7548_7_ce0_local = 1'b1;
    end else begin
        v7548_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7548_7_we0_local = 1'b1;
    end else begin
        v7548_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7548_ce0_local = 1'b1;
    end else begin
        v7548_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7548_we0_local = 1'b1;
    end else begin
        v7548_we0_local = 1'b0;
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
assign add_ln8739_1_fu_486_p2 = (ap_sig_allocacmp_indvar_flatten1293_i_load + 8'd1);
assign add_ln8739_fu_515_p2 = (v744094_i_fu_140 + 6'd8);
assign add_ln8740_1_fu_726_p2 = (indvar_flatten95_i_fu_144 + 6'd1);
assign add_ln8740_fu_549_p2 = (select_ln8739_fu_521_p3 + 3'd1);
assign add_ln8741_fu_720_p2 = (v7442_mid2_i_fu_561_p3 + 3'd1);
assign add_ln8743_fu_848_p2 = (zext_ln8926_4_cast_cast_i_cast_cast_reg_946_pp0_iter1_reg + zext_ln8741_fu_845_p1);
assign add_ln8744_1_fu_857_p2 = (sub_ln8744_1_fu_806_p2 + zext_ln8744_3_fu_853_p1);
assign add_ln8744_fu_708_p2 = (sub_ln8744_fu_639_p2 + zext_ln8744_1_fu_704_p1);
assign add_ln8746_1_fu_868_p2 = (sub_ln8746_1_fu_830_p2 + zext_ln8744_3_fu_853_p1);
assign add_ln8746_fu_714_p2 = (sub_ln8746_fu_675_p2 + zext_ln8744_1_fu_704_p1);
assign add_ln8758_1_fu_839_p2 = (sub_ln8740_fu_782_p2 + zext_ln8758_2_fu_836_p1);
assign add_ln8758_fu_685_p2 = (sub_ln8758_fu_603_p2 + zext_ln8758_fu_681_p1);
assign and_ln8739_fu_535_p2 = (xor_ln8739_fu_529_p2 & ap_phi_mux_icmp_ln874198_i_phi_fu_393_p4);
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
    ap_condition_260 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_149_fu_555_p2 = (ap_phi_mux_icmp_ln874099_i_phi_fu_382_p4 | and_ln8739_fu_535_p2);
assign empty_150_fu_609_p2 = (mul_i112_i_i_reg_931 + zext_ln8739_fu_577_p1);
assign empty_151_fu_614_p2 = (zext_ln8739_1_fu_591_p1 + trunc_ln_i_reg_936);
assign empty_152_fu_699_p2 = (zext_ln8926_cast_cast_i_cast_cast_reg_941 + zext_ln8740_fu_695_p1);
assign empty_fu_446_p1 = v7543[0:0];
assign icmp_ln8739_fu_492_p2 = ((ap_sig_allocacmp_indvar_flatten1293_i_load == 8'd195) ? 1'b1 : 1'b0);
assign icmp_ln8740_fu_746_p2 = ((select_ln8740_1_fu_732_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln8741_fu_740_p2 = ((add_ln8741_fu_720_p2 == 3'd7) ? 1'b1 : 1'b0);
assign lshr_ln_i_fu_581_p4 = {{select_ln8739_1_fu_541_p3[5:3]}};
assign mul_i112_i_i_fu_414_p3 = {{tmp_i_fu_404_p4}, {5'd0}};
assign p_shl29_fu_788_p3 = {{add_ln8744_reg_971}, {4'd0}};
assign p_shl32_fu_655_p3 = {{tmp_20_fu_645_p4}, {4'd0}};
assign p_shl34_fu_619_p3 = {{empty_151_fu_614_p2}, {4'd0}};
assign p_shl36_fu_595_p3 = {{lshr_ln_i_fu_581_p4}, {3'd0}};
assign p_shl_fu_812_p3 = {{add_ln8746_reg_977}, {4'd0}};
assign select_ln8739_1_fu_541_p3 = ((ap_phi_mux_icmp_ln874099_i_phi_fu_382_p4[0:0] == 1'b1) ? add_ln8739_fu_515_p2 : v744094_i_fu_140);
assign select_ln8739_fu_521_p3 = ((ap_phi_mux_icmp_ln874099_i_phi_fu_382_p4[0:0] == 1'b1) ? 3'd0 : v744196_i_fu_148);
assign select_ln8740_1_fu_732_p3 = ((ap_phi_mux_icmp_ln874099_i_phi_fu_382_p4[0:0] == 1'b1) ? 6'd1 : add_ln8740_1_fu_726_p2);
assign select_ln8740_fu_569_p3 = ((and_ln8739_fu_535_p2[0:0] == 1'b1) ? add_ln8740_fu_549_p2 : select_ln8739_fu_521_p3);
assign sub_ln8740_fu_782_p2 = (tmp_22_fu_772_p3 - zext_ln8758_1_fu_779_p1);
assign sub_ln8744_1_fu_806_p2 = (p_shl29_fu_788_p3 - zext_ln8744_2_fu_802_p1);
assign sub_ln8744_fu_639_p2 = (p_shl34_fu_619_p3 - zext_ln8744_fu_635_p1);
assign sub_ln8746_1_fu_830_p2 = (p_shl_fu_812_p3 - zext_ln8746_1_fu_826_p1);
assign sub_ln8746_fu_675_p2 = (p_shl32_fu_655_p3 - zext_ln8746_fu_671_p1);
assign sub_ln8758_fu_603_p2 = (p_shl36_fu_595_p3 - zext_ln8739_1_fu_591_p1);
assign tmp_19_fu_627_p3 = {{empty_151_fu_614_p2}, {1'd0}};
assign tmp_20_fu_645_p4 = {{empty_150_fu_609_p2[8:3]}};
assign tmp_21_fu_663_p3 = {{tmp_20_fu_645_p4}, {1'd0}};
assign tmp_22_fu_772_p3 = {{trunc_ln8758_reg_966}, {3'd0}};
assign tmp_23_fu_795_p3 = {{add_ln8744_reg_971}, {1'd0}};
assign tmp_24_fu_819_p3 = {{add_ln8746_reg_977}, {1'd0}};
assign tmp_fu_430_p3 = v7543_cast2_fu_400_p1[32'd1];
assign tmp_i_fu_404_p4 = {{v7543[5:2]}};
assign trunc_ln8758_fu_691_p1 = add_ln8758_fu_685_p2[4:0];
assign trunc_ln_i_fu_422_p3 = {{tmp_i_fu_404_p4}, {2'd0}};
assign v15495_0_address0 = zext_ln8744_4_fu_863_p1;
assign v15495_0_ce0 = v15495_0_ce0_local;
assign v15495_1_address0 = zext_ln8746_2_fu_874_p1;
assign v15495_1_ce0 = v15495_1_ce0_local;
assign v15495_2_address0 = zext_ln8746_2_fu_874_p1;
assign v15495_2_ce0 = v15495_2_ce0_local;
assign v15495_3_address0 = zext_ln8746_2_fu_874_p1;
assign v15495_3_ce0 = v15495_3_ce0_local;
assign v15495_4_address0 = zext_ln8746_2_fu_874_p1;
assign v15495_4_ce0 = v15495_4_ce0_local;
assign v15495_5_address0 = zext_ln8746_2_fu_874_p1;
assign v15495_5_ce0 = v15495_5_ce0_local;
assign v15495_6_address0 = zext_ln8746_2_fu_874_p1;
assign v15495_6_ce0 = v15495_6_ce0_local;
assign v15495_7_address0 = zext_ln8746_2_fu_874_p1;
assign v15495_7_ce0 = v15495_7_ce0_local;
assign v7442_mid2_i_fu_561_p3 = ((empty_149_fu_555_p2[0:0] == 1'b1) ? 3'd0 : v744297_i_fu_152);
assign v7543_cast2_fu_400_p1 = v7543;
assign v7548_1_address0 = zext_ln8758_3_fu_885_p1;
assign v7548_1_ce0 = v7548_1_ce0_local;
assign v7548_1_d0 = v15495_6_q0;
assign v7548_1_we0 = v7548_1_we0_local;
assign v7548_2_address0 = zext_ln8758_3_fu_885_p1;
assign v7548_2_ce0 = v7548_2_ce0_local;
assign v7548_2_d0 = v15495_5_q0;
assign v7548_2_we0 = v7548_2_we0_local;
assign v7548_3_address0 = zext_ln8758_3_fu_885_p1;
assign v7548_3_ce0 = v7548_3_ce0_local;
assign v7548_3_d0 = v15495_4_q0;
assign v7548_3_we0 = v7548_3_we0_local;
assign v7548_4_address0 = zext_ln8758_3_fu_885_p1;
assign v7548_4_ce0 = v7548_4_ce0_local;
assign v7548_4_d0 = v15495_3_q0;
assign v7548_4_we0 = v7548_4_we0_local;
assign v7548_5_address0 = zext_ln8758_3_fu_885_p1;
assign v7548_5_ce0 = v7548_5_ce0_local;
assign v7548_5_d0 = v15495_2_q0;
assign v7548_5_we0 = v7548_5_we0_local;
assign v7548_6_address0 = zext_ln8758_3_fu_885_p1;
assign v7548_6_ce0 = v7548_6_ce0_local;
assign v7548_6_d0 = v15495_1_q0;
assign v7548_6_we0 = v7548_6_we0_local;
assign v7548_7_address0 = zext_ln8758_3_fu_885_p1;
assign v7548_7_ce0 = v7548_7_ce0_local;
assign v7548_7_d0 = v15495_0_q0;
assign v7548_7_we0 = v7548_7_we0_local;
assign v7548_address0 = zext_ln8758_3_fu_885_p1;
assign v7548_ce0 = v7548_ce0_local;
assign v7548_d0 = v15495_7_q0;
assign v7548_we0 = v7548_we0_local;
assign xor_ln8739_fu_529_p2 = (ap_phi_mux_icmp_ln874099_i_phi_fu_382_p4 ^ 1'd1);
assign zext_ln8739_1_fu_591_p1 = lshr_ln_i_fu_581_p4;
assign zext_ln8739_fu_577_p1 = select_ln8739_1_fu_541_p3;
assign zext_ln8740_fu_695_p1 = select_ln8740_fu_569_p3;
assign zext_ln8741_fu_845_p1 = v7442_mid2_i_reg_955;
assign zext_ln8744_1_fu_704_p1 = empty_152_fu_699_p2;
assign zext_ln8744_2_fu_802_p1 = tmp_23_fu_795_p3;
assign zext_ln8744_3_fu_853_p1 = add_ln8743_fu_848_p2;
assign zext_ln8744_4_fu_863_p1 = add_ln8744_1_fu_857_p2;
assign zext_ln8744_fu_635_p1 = tmp_19_fu_627_p3;
assign zext_ln8746_1_fu_826_p1 = tmp_24_fu_819_p3;
assign zext_ln8746_2_fu_874_p1 = add_ln8746_1_fu_868_p2;
assign zext_ln8746_fu_671_p1 = tmp_21_fu_663_p3;
assign zext_ln8758_1_fu_779_p1 = add_ln8758_reg_961;
assign zext_ln8758_2_fu_836_p1 = v7442_mid2_i_reg_955;
assign zext_ln8758_3_fu_885_p1 = add_ln8758_1_reg_993;
assign zext_ln8758_fu_681_p1 = select_ln8740_fu_569_p3;
assign zext_ln8926_4_cast_cast_i_cast_cast_fu_450_p3 = ((empty_fu_446_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign zext_ln8926_cast_cast_i_cast_cast_fu_438_p3 = ((tmp_fu_430_p3[0:0] == 1'b1) ? 4'd7 : 4'd0);
always @ (posedge ap_clk) begin
    mul_i112_i_i_reg_931[4:0] <= 5'b00000;
    trunc_ln_i_reg_936[1:0] <= 2'b00;
    zext_ln8926_cast_cast_i_cast_cast_reg_941[3] <= 1'b0;
    zext_ln8926_4_cast_cast_i_cast_cast_reg_946[3] <= 1'b0;
    zext_ln8926_4_cast_cast_i_cast_cast_reg_946_pp0_iter1_reg[3] <= 1'b0;
end
endmodule 