
module forward_dataflow_in_loop_VITIS_LOOP_12443_1_Loop_VITIS_LOOP_12400_1_proc211147 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v10133_address0,v10133_ce0,v10133_we0,v10133_d0,v10133_1_address0,v10133_1_ce0,v10133_1_we0,v10133_1_d0,v10133_2_address0,v10133_2_ce0,v10133_2_we0,v10133_2_d0,v10133_3_address0,v10133_3_ce0,v10133_3_we0,v10133_3_d0,v10133_4_address0,v10133_4_ce0,v10133_4_we0,v10133_4_d0,v10133_5_address0,v10133_5_ce0,v10133_5_we0,v10133_5_d0,v10133_6_address0,v10133_6_ce0,v10133_6_we0,v10133_6_d0,v10133_7_address0,v10133_7_ce0,v10133_7_we0,v10133_7_d0,v10126,v15475_0_address0,v15475_0_ce0,v15475_0_q0,v15475_1_address0,v15475_1_ce0,v15475_1_q0,v15475_2_address0,v15475_2_ce0,v15475_2_q0,v15475_3_address0,v15475_3_ce0,v15475_3_q0,v15475_4_address0,v15475_4_ce0,v15475_4_q0,v15475_5_address0,v15475_5_ce0,v15475_5_q0,v15475_6_address0,v15475_6_ce0,v15475_6_q0,v15475_7_address0,v15475_7_ce0,v15475_7_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [7:0] v10133_address0;
output   v10133_ce0;
output   v10133_we0;
output  [7:0] v10133_d0;
output  [7:0] v10133_1_address0;
output   v10133_1_ce0;
output   v10133_1_we0;
output  [7:0] v10133_1_d0;
output  [7:0] v10133_2_address0;
output   v10133_2_ce0;
output   v10133_2_we0;
output  [7:0] v10133_2_d0;
output  [7:0] v10133_3_address0;
output   v10133_3_ce0;
output   v10133_3_we0;
output  [7:0] v10133_3_d0;
output  [7:0] v10133_4_address0;
output   v10133_4_ce0;
output   v10133_4_we0;
output  [7:0] v10133_4_d0;
output  [7:0] v10133_5_address0;
output   v10133_5_ce0;
output   v10133_5_we0;
output  [7:0] v10133_5_d0;
output  [7:0] v10133_6_address0;
output   v10133_6_ce0;
output   v10133_6_we0;
output  [7:0] v10133_6_d0;
output  [7:0] v10133_7_address0;
output   v10133_7_ce0;
output   v10133_7_we0;
output  [7:0] v10133_7_d0;
input  [9:0] v10126;
output  [13:0] v15475_0_address0;
output   v15475_0_ce0;
input  [7:0] v15475_0_q0;
output  [13:0] v15475_1_address0;
output   v15475_1_ce0;
input  [7:0] v15475_1_q0;
output  [13:0] v15475_2_address0;
output   v15475_2_ce0;
input  [7:0] v15475_2_q0;
output  [13:0] v15475_3_address0;
output   v15475_3_ce0;
input  [7:0] v15475_3_q0;
output  [13:0] v15475_4_address0;
output   v15475_4_ce0;
input  [7:0] v15475_4_q0;
output  [13:0] v15475_5_address0;
output   v15475_5_ce0;
input  [7:0] v15475_5_q0;
output  [13:0] v15475_6_address0;
output   v15475_6_ce0;
input  [7:0] v15475_6_q0;
output  [13:0] v15475_7_address0;
output   v15475_7_ce0;
input  [7:0] v15475_7_q0;
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
wire   [0:0] icmp_ln12400_fu_494_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
wire   [8:0] mul_i230_i_i_fu_416_p3;
reg   [8:0] mul_i230_i_i_reg_933;
wire   [5:0] trunc_ln_i_fu_424_p3;
reg   [5:0] trunc_ln_i_reg_938;
wire   [3:0] zext_ln12400_cast_cast_i_cast_cast_fu_440_p3;
reg   [3:0] zext_ln12400_cast_cast_i_cast_cast_reg_943;
wire   [3:0] zext_ln12400_1_cast_cast_i_cast_cast_fu_452_p3;
reg   [3:0] zext_ln12400_1_cast_cast_i_cast_cast_reg_948;
reg   [3:0] zext_ln12400_1_cast_cast_i_cast_cast_reg_948_pp0_iter1_reg;
reg   [0:0] icmp_ln12400_reg_953;
reg   [0:0] icmp_ln12400_reg_953_pp0_iter1_reg;
wire   [2:0] v10111_mid2_i_fu_563_p3;
reg   [2:0] v10111_mid2_i_reg_957;
wire   [5:0] add_ln12419_fu_687_p2;
reg   [5:0] add_ln12419_reg_963;
wire   [4:0] trunc_ln12419_fu_693_p1;
reg   [4:0] trunc_ln12419_reg_968;
wire   [9:0] add_ln12405_fu_710_p2;
reg   [9:0] add_ln12405_reg_973;
wire   [9:0] add_ln12407_fu_716_p2;
reg   [9:0] add_ln12407_reg_979;
wire   [0:0] icmp_ln12402_fu_742_p2;
reg   [0:0] icmp_ln12402_reg_985;
wire   [0:0] icmp_ln12401_fu_748_p2;
reg   [0:0] icmp_ln12401_reg_990;
wire   [7:0] add_ln12419_1_fu_841_p2;
reg   [7:0] add_ln12419_1_reg_995;
reg   [0:0] ap_phi_mux_icmp_ln1240199_i_phi_fu_384_p4;
wire    ap_loop_init;
reg    ap_loop_init_pp0_iter1_reg;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1240298_i_phi_fu_395_p4;
wire   [63:0] zext_ln12405_4_fu_865_p1;
wire   [63:0] zext_ln12407_2_fu_876_p1;
wire   [63:0] zext_ln12419_3_fu_887_p1;
reg   [7:0] indvar_flatten1293_i_fu_138;
wire   [7:0] add_ln12400_1_fu_488_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten1293_i_load;
reg   [5:0] v1010994_i_fu_142;
wire   [5:0] select_ln12400_1_fu_543_p3;
reg   [5:0] indvar_flatten95_i_fu_146;
wire   [5:0] select_ln12401_1_fu_734_p3;
reg   [2:0] v1011096_i_fu_150;
wire   [2:0] select_ln12401_fu_571_p3;
reg   [2:0] v1011197_i_fu_154;
wire   [2:0] add_ln12402_fu_722_p2;
reg    v15475_0_ce0_local;
reg    v15475_1_ce0_local;
reg    v15475_2_ce0_local;
reg    v15475_3_ce0_local;
reg    v15475_4_ce0_local;
reg    v15475_5_ce0_local;
reg    v15475_6_ce0_local;
reg    v15475_7_ce0_local;
reg    v10133_7_we0_local;
reg    v10133_7_ce0_local;
reg    v10133_6_we0_local;
reg    v10133_6_ce0_local;
reg    v10133_5_we0_local;
reg    v10133_5_ce0_local;
reg    v10133_4_we0_local;
reg    v10133_4_ce0_local;
reg    v10133_3_we0_local;
reg    v10133_3_ce0_local;
reg    v10133_2_we0_local;
reg    v10133_2_ce0_local;
reg    v10133_1_we0_local;
reg    v10133_1_ce0_local;
reg    v10133_we0_local;
reg    v10133_ce0_local;
wire   [3:0] tmp_i_fu_406_p4;
wire   [10:0] v10126_cast2_fu_402_p1;
wire   [0:0] tmp_fu_432_p3;
wire   [0:0] empty_fu_448_p1;
wire   [0:0] xor_ln12400_fu_531_p2;
wire   [5:0] add_ln12400_fu_517_p2;
wire   [2:0] select_ln12400_fu_523_p3;
wire   [0:0] and_ln12400_fu_537_p2;
wire   [0:0] empty_426_fu_557_p2;
wire   [2:0] add_ln12401_fu_551_p2;
wire   [2:0] lshr_ln_i_fu_583_p4;
wire   [5:0] p_shl36_fu_597_p3;
wire   [5:0] zext_ln12400_1_fu_593_p1;
wire   [8:0] zext_ln12400_fu_579_p1;
wire   [5:0] empty_428_fu_616_p2;
wire   [6:0] tmp_457_fu_629_p3;
wire   [9:0] p_shl34_fu_621_p3;
wire   [9:0] zext_ln12405_fu_637_p1;
wire   [8:0] empty_427_fu_611_p2;
wire   [5:0] tmp_458_fu_647_p4;
wire   [6:0] tmp_459_fu_665_p3;
wire   [9:0] p_shl32_fu_657_p3;
wire   [9:0] zext_ln12407_fu_673_p1;
wire   [5:0] sub_ln12419_fu_605_p2;
wire   [5:0] zext_ln12419_fu_683_p1;
wire   [3:0] zext_ln12401_fu_697_p1;
wire   [3:0] empty_429_fu_701_p2;
wire   [9:0] sub_ln12405_fu_641_p2;
wire   [9:0] zext_ln12405_1_fu_706_p1;
wire   [9:0] sub_ln12407_fu_677_p2;
wire   [5:0] add_ln12401_1_fu_728_p2;
wire   [7:0] tmp_460_fu_774_p3;
wire   [7:0] zext_ln12419_1_fu_781_p1;
wire   [10:0] tmp_461_fu_797_p3;
wire   [13:0] p_shl29_fu_790_p3;
wire   [13:0] zext_ln12405_2_fu_804_p1;
wire   [10:0] tmp_462_fu_821_p3;
wire   [13:0] p_shl_fu_814_p3;
wire   [13:0] zext_ln12407_1_fu_828_p1;
wire   [7:0] sub_ln12401_fu_784_p2;
wire   [7:0] zext_ln12419_2_fu_838_p1;
wire   [3:0] zext_ln12402_fu_847_p1;
wire   [3:0] add_ln12404_fu_850_p2;
wire   [13:0] sub_ln12405_1_fu_808_p2;
wire   [13:0] zext_ln12405_3_fu_855_p1;
wire   [13:0] add_ln12405_1_fu_859_p2;
wire   [13:0] sub_ln12407_1_fu_832_p2;
wire   [13:0] add_ln12407_1_fu_870_p2;
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
#0 indvar_flatten1293_i_fu_138 = 8'd0;
#0 v1010994_i_fu_142 = 6'd0;
#0 indvar_flatten95_i_fu_146 = 6'd0;
#0 v1011096_i_fu_150 = 3'd0;
#0 v1011197_i_fu_154 = 3'd0;
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
        indvar_flatten1293_i_fu_138 <= add_ln12400_1_fu_488_p2;
    end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        indvar_flatten95_i_fu_146 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        indvar_flatten95_i_fu_146 <= select_ln12401_1_fu_734_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        v1010994_i_fu_142 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v1010994_i_fu_142 <= select_ln12400_1_fu_543_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        v1011096_i_fu_150 <= 3'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v1011096_i_fu_150 <= select_ln12401_fu_571_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        v1011197_i_fu_154 <= 3'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v1011197_i_fu_154 <= add_ln12402_fu_722_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln12405_reg_973 <= add_ln12405_fu_710_p2;
        add_ln12407_reg_979 <= add_ln12407_fu_716_p2;
        add_ln12419_reg_963 <= add_ln12419_fu_687_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_init_pp0_iter1_reg <= ap_loop_init;
        icmp_ln12400_reg_953 <= icmp_ln12400_fu_494_p2;
        icmp_ln12400_reg_953_pp0_iter1_reg <= icmp_ln12400_reg_953;
        mul_i230_i_i_reg_933[8 : 5] <= mul_i230_i_i_fu_416_p3[8 : 5];
        trunc_ln12419_reg_968 <= trunc_ln12419_fu_693_p1;
        trunc_ln_i_reg_938[5 : 2] <= trunc_ln_i_fu_424_p3[5 : 2];
        v10111_mid2_i_reg_957 <= v10111_mid2_i_fu_563_p3;
        zext_ln12400_1_cast_cast_i_cast_cast_reg_948[2 : 0] <= zext_ln12400_1_cast_cast_i_cast_cast_fu_452_p3[2 : 0];
        zext_ln12400_1_cast_cast_i_cast_cast_reg_948_pp0_iter1_reg[2 : 0] <= zext_ln12400_1_cast_cast_i_cast_cast_reg_948[2 : 0];
        zext_ln12400_cast_cast_i_cast_cast_reg_943[2 : 0] <= zext_ln12400_cast_cast_i_cast_cast_fu_440_p3[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln12419_1_reg_995 <= add_ln12419_1_fu_841_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln12401_reg_990 <= icmp_ln12401_fu_748_p2;
        icmp_ln12402_reg_985 <= icmp_ln12402_fu_742_p2;
    end
end
always @ (*) begin
    if (((icmp_ln12400_fu_494_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln12400_reg_953_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln1240199_i_phi_fu_384_p4 = icmp_ln12401_reg_990;
    end else if (((ap_loop_init_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_icmp_ln1240199_i_phi_fu_384_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln1240199_i_phi_fu_384_p4 = icmp_ln12401_reg_990;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln12400_reg_953_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln1240298_i_phi_fu_395_p4 = icmp_ln12402_reg_985;
    end else if (((ap_loop_init_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_icmp_ln1240298_i_phi_fu_395_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln1240298_i_phi_fu_395_p4 = icmp_ln12402_reg_985;
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
        ap_sig_allocacmp_indvar_flatten1293_i_load = indvar_flatten1293_i_fu_138;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v10133_1_ce0_local = 1'b1;
    end else begin
        v10133_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v10133_1_we0_local = 1'b1;
    end else begin
        v10133_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v10133_2_ce0_local = 1'b1;
    end else begin
        v10133_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v10133_2_we0_local = 1'b1;
    end else begin
        v10133_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v10133_3_ce0_local = 1'b1;
    end else begin
        v10133_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v10133_3_we0_local = 1'b1;
    end else begin
        v10133_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v10133_4_ce0_local = 1'b1;
    end else begin
        v10133_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v10133_4_we0_local = 1'b1;
    end else begin
        v10133_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v10133_5_ce0_local = 1'b1;
    end else begin
        v10133_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v10133_5_we0_local = 1'b1;
    end else begin
        v10133_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v10133_6_ce0_local = 1'b1;
    end else begin
        v10133_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v10133_6_we0_local = 1'b1;
    end else begin
        v10133_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v10133_7_ce0_local = 1'b1;
    end else begin
        v10133_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v10133_7_we0_local = 1'b1;
    end else begin
        v10133_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v10133_ce0_local = 1'b1;
    end else begin
        v10133_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v10133_we0_local = 1'b1;
    end else begin
        v10133_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15475_0_ce0_local = 1'b1;
    end else begin
        v15475_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15475_1_ce0_local = 1'b1;
    end else begin
        v15475_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15475_2_ce0_local = 1'b1;
    end else begin
        v15475_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15475_3_ce0_local = 1'b1;
    end else begin
        v15475_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15475_4_ce0_local = 1'b1;
    end else begin
        v15475_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15475_5_ce0_local = 1'b1;
    end else begin
        v15475_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15475_6_ce0_local = 1'b1;
    end else begin
        v15475_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15475_7_ce0_local = 1'b1;
    end else begin
        v15475_7_ce0_local = 1'b0;
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
assign add_ln12400_1_fu_488_p2 = (ap_sig_allocacmp_indvar_flatten1293_i_load + 8'd1);
assign add_ln12400_fu_517_p2 = (v1010994_i_fu_142 + 6'd8);
assign add_ln12401_1_fu_728_p2 = (indvar_flatten95_i_fu_146 + 6'd1);
assign add_ln12401_fu_551_p2 = (select_ln12400_fu_523_p3 + 3'd1);
assign add_ln12402_fu_722_p2 = (v10111_mid2_i_fu_563_p3 + 3'd1);
assign add_ln12404_fu_850_p2 = (zext_ln12400_1_cast_cast_i_cast_cast_reg_948_pp0_iter1_reg + zext_ln12402_fu_847_p1);
assign add_ln12405_1_fu_859_p2 = (sub_ln12405_1_fu_808_p2 + zext_ln12405_3_fu_855_p1);
assign add_ln12405_fu_710_p2 = (sub_ln12405_fu_641_p2 + zext_ln12405_1_fu_706_p1);
assign add_ln12407_1_fu_870_p2 = (sub_ln12407_1_fu_832_p2 + zext_ln12405_3_fu_855_p1);
assign add_ln12407_fu_716_p2 = (sub_ln12407_fu_677_p2 + zext_ln12405_1_fu_706_p1);
assign add_ln12419_1_fu_841_p2 = (sub_ln12401_fu_784_p2 + zext_ln12419_2_fu_838_p1);
assign add_ln12419_fu_687_p2 = (sub_ln12419_fu_605_p2 + zext_ln12419_fu_683_p1);
assign and_ln12400_fu_537_p2 = (xor_ln12400_fu_531_p2 & ap_phi_mux_icmp_ln1240298_i_phi_fu_395_p4);
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
assign empty_426_fu_557_p2 = (ap_phi_mux_icmp_ln1240199_i_phi_fu_384_p4 | and_ln12400_fu_537_p2);
assign empty_427_fu_611_p2 = (mul_i230_i_i_reg_933 + zext_ln12400_fu_579_p1);
assign empty_428_fu_616_p2 = (zext_ln12400_1_fu_593_p1 + trunc_ln_i_reg_938);
assign empty_429_fu_701_p2 = (zext_ln12400_cast_cast_i_cast_cast_reg_943 + zext_ln12401_fu_697_p1);
assign empty_fu_448_p1 = v10126[0:0];
assign icmp_ln12400_fu_494_p2 = ((ap_sig_allocacmp_indvar_flatten1293_i_load == 8'd195) ? 1'b1 : 1'b0);
assign icmp_ln12401_fu_748_p2 = ((select_ln12401_1_fu_734_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln12402_fu_742_p2 = ((add_ln12402_fu_722_p2 == 3'd7) ? 1'b1 : 1'b0);
assign lshr_ln_i_fu_583_p4 = {{select_ln12400_1_fu_543_p3[5:3]}};
assign mul_i230_i_i_fu_416_p3 = {{tmp_i_fu_406_p4}, {5'd0}};
assign p_shl29_fu_790_p3 = {{add_ln12405_reg_973}, {4'd0}};
assign p_shl32_fu_657_p3 = {{tmp_458_fu_647_p4}, {4'd0}};
assign p_shl34_fu_621_p3 = {{empty_428_fu_616_p2}, {4'd0}};
assign p_shl36_fu_597_p3 = {{lshr_ln_i_fu_583_p4}, {3'd0}};
assign p_shl_fu_814_p3 = {{add_ln12407_reg_979}, {4'd0}};
assign select_ln12400_1_fu_543_p3 = ((ap_phi_mux_icmp_ln1240199_i_phi_fu_384_p4[0:0] == 1'b1) ? add_ln12400_fu_517_p2 : v1010994_i_fu_142);
assign select_ln12400_fu_523_p3 = ((ap_phi_mux_icmp_ln1240199_i_phi_fu_384_p4[0:0] == 1'b1) ? 3'd0 : v1011096_i_fu_150);
assign select_ln12401_1_fu_734_p3 = ((ap_phi_mux_icmp_ln1240199_i_phi_fu_384_p4[0:0] == 1'b1) ? 6'd1 : add_ln12401_1_fu_728_p2);
assign select_ln12401_fu_571_p3 = ((and_ln12400_fu_537_p2[0:0] == 1'b1) ? add_ln12401_fu_551_p2 : select_ln12400_fu_523_p3);
assign sub_ln12401_fu_784_p2 = (tmp_460_fu_774_p3 - zext_ln12419_1_fu_781_p1);
assign sub_ln12405_1_fu_808_p2 = (p_shl29_fu_790_p3 - zext_ln12405_2_fu_804_p1);
assign sub_ln12405_fu_641_p2 = (p_shl34_fu_621_p3 - zext_ln12405_fu_637_p1);
assign sub_ln12407_1_fu_832_p2 = (p_shl_fu_814_p3 - zext_ln12407_1_fu_828_p1);
assign sub_ln12407_fu_677_p2 = (p_shl32_fu_657_p3 - zext_ln12407_fu_673_p1);
assign sub_ln12419_fu_605_p2 = (p_shl36_fu_597_p3 - zext_ln12400_1_fu_593_p1);
assign tmp_457_fu_629_p3 = {{empty_428_fu_616_p2}, {1'd0}};
assign tmp_458_fu_647_p4 = {{empty_427_fu_611_p2[8:3]}};
assign tmp_459_fu_665_p3 = {{tmp_458_fu_647_p4}, {1'd0}};
assign tmp_460_fu_774_p3 = {{trunc_ln12419_reg_968}, {3'd0}};
assign tmp_461_fu_797_p3 = {{add_ln12405_reg_973}, {1'd0}};
assign tmp_462_fu_821_p3 = {{add_ln12407_reg_979}, {1'd0}};
assign tmp_fu_432_p3 = v10126_cast2_fu_402_p1[32'd1];
assign tmp_i_fu_406_p4 = {{v10126[9:6]}};
assign trunc_ln12419_fu_693_p1 = add_ln12419_fu_687_p2[4:0];
assign trunc_ln_i_fu_424_p3 = {{tmp_i_fu_406_p4}, {2'd0}};
assign v10111_mid2_i_fu_563_p3 = ((empty_426_fu_557_p2[0:0] == 1'b1) ? 3'd0 : v1011197_i_fu_154);
assign v10126_cast2_fu_402_p1 = v10126;
assign v10133_1_address0 = zext_ln12419_3_fu_887_p1;
assign v10133_1_ce0 = v10133_1_ce0_local;
assign v10133_1_d0 = v15475_6_q0;
assign v10133_1_we0 = v10133_1_we0_local;
assign v10133_2_address0 = zext_ln12419_3_fu_887_p1;
assign v10133_2_ce0 = v10133_2_ce0_local;
assign v10133_2_d0 = v15475_5_q0;
assign v10133_2_we0 = v10133_2_we0_local;
assign v10133_3_address0 = zext_ln12419_3_fu_887_p1;
assign v10133_3_ce0 = v10133_3_ce0_local;
assign v10133_3_d0 = v15475_4_q0;
assign v10133_3_we0 = v10133_3_we0_local;
assign v10133_4_address0 = zext_ln12419_3_fu_887_p1;
assign v10133_4_ce0 = v10133_4_ce0_local;
assign v10133_4_d0 = v15475_3_q0;
assign v10133_4_we0 = v10133_4_we0_local;
assign v10133_5_address0 = zext_ln12419_3_fu_887_p1;
assign v10133_5_ce0 = v10133_5_ce0_local;
assign v10133_5_d0 = v15475_2_q0;
assign v10133_5_we0 = v10133_5_we0_local;
assign v10133_6_address0 = zext_ln12419_3_fu_887_p1;
assign v10133_6_ce0 = v10133_6_ce0_local;
assign v10133_6_d0 = v15475_1_q0;
assign v10133_6_we0 = v10133_6_we0_local;
assign v10133_7_address0 = zext_ln12419_3_fu_887_p1;
assign v10133_7_ce0 = v10133_7_ce0_local;
assign v10133_7_d0 = v15475_0_q0;
assign v10133_7_we0 = v10133_7_we0_local;
assign v10133_address0 = zext_ln12419_3_fu_887_p1;
assign v10133_ce0 = v10133_ce0_local;
assign v10133_d0 = v15475_7_q0;
assign v10133_we0 = v10133_we0_local;
assign v15475_0_address0 = zext_ln12405_4_fu_865_p1;
assign v15475_0_ce0 = v15475_0_ce0_local;
assign v15475_1_address0 = zext_ln12407_2_fu_876_p1;
assign v15475_1_ce0 = v15475_1_ce0_local;
assign v15475_2_address0 = zext_ln12407_2_fu_876_p1;
assign v15475_2_ce0 = v15475_2_ce0_local;
assign v15475_3_address0 = zext_ln12407_2_fu_876_p1;
assign v15475_3_ce0 = v15475_3_ce0_local;
assign v15475_4_address0 = zext_ln12407_2_fu_876_p1;
assign v15475_4_ce0 = v15475_4_ce0_local;
assign v15475_5_address0 = zext_ln12407_2_fu_876_p1;
assign v15475_5_ce0 = v15475_5_ce0_local;
assign v15475_6_address0 = zext_ln12407_2_fu_876_p1;
assign v15475_6_ce0 = v15475_6_ce0_local;
assign v15475_7_address0 = zext_ln12407_2_fu_876_p1;
assign v15475_7_ce0 = v15475_7_ce0_local;
assign xor_ln12400_fu_531_p2 = (ap_phi_mux_icmp_ln1240199_i_phi_fu_384_p4 ^ 1'd1);
assign zext_ln12400_1_cast_cast_i_cast_cast_fu_452_p3 = ((empty_fu_448_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign zext_ln12400_1_fu_593_p1 = lshr_ln_i_fu_583_p4;
assign zext_ln12400_cast_cast_i_cast_cast_fu_440_p3 = ((tmp_fu_432_p3[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign zext_ln12400_fu_579_p1 = select_ln12400_1_fu_543_p3;
assign zext_ln12401_fu_697_p1 = select_ln12401_fu_571_p3;
assign zext_ln12402_fu_847_p1 = v10111_mid2_i_reg_957;
assign zext_ln12405_1_fu_706_p1 = empty_429_fu_701_p2;
assign zext_ln12405_2_fu_804_p1 = tmp_461_fu_797_p3;
assign zext_ln12405_3_fu_855_p1 = add_ln12404_fu_850_p2;
assign zext_ln12405_4_fu_865_p1 = add_ln12405_1_fu_859_p2;
assign zext_ln12405_fu_637_p1 = tmp_457_fu_629_p3;
assign zext_ln12407_1_fu_828_p1 = tmp_462_fu_821_p3;
assign zext_ln12407_2_fu_876_p1 = add_ln12407_1_fu_870_p2;
assign zext_ln12407_fu_673_p1 = tmp_459_fu_665_p3;
assign zext_ln12419_1_fu_781_p1 = add_ln12419_reg_963;
assign zext_ln12419_2_fu_838_p1 = v10111_mid2_i_reg_957;
assign zext_ln12419_3_fu_887_p1 = add_ln12419_1_reg_995;
assign zext_ln12419_fu_683_p1 = select_ln12401_fu_571_p3;
always @ (posedge ap_clk) begin
    mul_i230_i_i_reg_933[4:0] <= 5'b00000;
    trunc_ln_i_reg_938[1:0] <= 2'b00;
    zext_ln12400_cast_cast_i_cast_cast_reg_943[3] <= 1'b0;
    zext_ln12400_1_cast_cast_i_cast_cast_reg_948[3] <= 1'b0;
    zext_ln12400_1_cast_cast_i_cast_cast_reg_948_pp0_iter1_reg[3] <= 1'b0;
end
endmodule 
