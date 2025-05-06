
module forward_dataflow_in_loop_VITIS_LOOP_4579_1_Loop_VITIS_LOOP_4408_1_proc158 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v3195_address0,v3195_ce0,v3195_we0,v3195_d0,v3195_1_address0,v3195_1_ce0,v3195_1_we0,v3195_1_d0,v3195_2_address0,v3195_2_ce0,v3195_2_we0,v3195_2_d0,v3195_3_address0,v3195_3_ce0,v3195_3_we0,v3195_3_d0,v3195_4_address0,v3195_4_ce0,v3195_4_we0,v3195_4_d0,v3195_5_address0,v3195_5_ce0,v3195_5_we0,v3195_5_d0,v3195_6_address0,v3195_6_ce0,v3195_6_we0,v3195_6_d0,v3195_7_address0,v3195_7_ce0,v3195_7_we0,v3195_7_d0,v3186_0,v9259_0_address0,v9259_0_ce0,v9259_0_q0,v9259_1_address0,v9259_1_ce0,v9259_1_q0,v9259_2_address0,v9259_2_ce0,v9259_2_q0,v9259_3_address0,v9259_3_ce0,v9259_3_q0,v9259_4_address0,v9259_4_ce0,v9259_4_q0,v9259_5_address0,v9259_5_ce0,v9259_5_q0,v9259_6_address0,v9259_6_ce0,v9259_6_q0,v9259_7_address0,v9259_7_ce0,v9259_7_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [7:0] v3195_address0;
output   v3195_ce0;
output   v3195_we0;
output  [7:0] v3195_d0;
output  [7:0] v3195_1_address0;
output   v3195_1_ce0;
output   v3195_1_we0;
output  [7:0] v3195_1_d0;
output  [7:0] v3195_2_address0;
output   v3195_2_ce0;
output   v3195_2_we0;
output  [7:0] v3195_2_d0;
output  [7:0] v3195_3_address0;
output   v3195_3_ce0;
output   v3195_3_we0;
output  [7:0] v3195_3_d0;
output  [7:0] v3195_4_address0;
output   v3195_4_ce0;
output   v3195_4_we0;
output  [7:0] v3195_4_d0;
output  [7:0] v3195_5_address0;
output   v3195_5_ce0;
output   v3195_5_we0;
output  [7:0] v3195_5_d0;
output  [7:0] v3195_6_address0;
output   v3195_6_ce0;
output   v3195_6_we0;
output  [7:0] v3195_6_d0;
output  [7:0] v3195_7_address0;
output   v3195_7_ce0;
output   v3195_7_we0;
output  [7:0] v3195_7_d0;
input  [11:0] v3186_0;
output  [12:0] v9259_0_address0;
output   v9259_0_ce0;
input  [7:0] v9259_0_q0;
output  [12:0] v9259_1_address0;
output   v9259_1_ce0;
input  [7:0] v9259_1_q0;
output  [12:0] v9259_2_address0;
output   v9259_2_ce0;
input  [7:0] v9259_2_q0;
output  [12:0] v9259_3_address0;
output   v9259_3_ce0;
input  [7:0] v9259_3_q0;
output  [12:0] v9259_4_address0;
output   v9259_4_ce0;
input  [7:0] v9259_4_q0;
output  [12:0] v9259_5_address0;
output   v9259_5_ce0;
input  [7:0] v9259_5_q0;
output  [12:0] v9259_6_address0;
output   v9259_6_ce0;
input  [7:0] v9259_6_q0;
output  [12:0] v9259_7_address0;
output   v9259_7_ce0;
input  [7:0] v9259_7_q0;
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
wire   [0:0] icmp_ln4408_fu_480_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
wire   [2:0] tmp_fu_400_p4;
reg   [2:0] tmp_reg_910;
wire   [7:0] mul_i_fu_410_p3;
reg   [7:0] mul_i_reg_916;
wire   [3:0] zext_ln4535_cast_cast_cast_cast_fu_426_p3;
reg   [3:0] zext_ln4535_cast_cast_cast_cast_reg_921;
wire   [3:0] zext_ln4535_4_cast_cast_cast_cast_fu_438_p3;
reg   [3:0] zext_ln4535_4_cast_cast_cast_cast_reg_926;
reg   [3:0] zext_ln4535_4_cast_cast_cast_cast_reg_926_pp0_iter1_reg;
reg   [0:0] icmp_ln4408_reg_931;
reg   [0:0] icmp_ln4408_reg_931_pp0_iter1_reg;
wire   [2:0] v3113_mid2_fu_549_p3;
reg   [2:0] v3113_mid2_reg_935;
reg   [2:0] v3113_mid2_reg_935_pp0_iter2_reg;
wire   [2:0] v3112_fu_557_p3;
reg   [2:0] v3112_reg_941;
wire   [1:0] lshr_ln_fu_569_p4;
reg   [1:0] lshr_ln_reg_946;
wire   [8:0] add_ln4413_fu_661_p2;
reg   [8:0] add_ln4413_reg_952;
wire   [8:0] add_ln4415_fu_667_p2;
reg   [8:0] add_ln4415_reg_958;
wire   [0:0] icmp_ln4410_fu_693_p2;
reg   [0:0] icmp_ln4410_reg_964;
wire   [0:0] icmp_ln4409_fu_699_p2;
reg   [0:0] icmp_ln4409_reg_969;
wire   [4:0] add_ln4427_fu_744_p2;
reg   [4:0] add_ln4427_reg_974;
reg   [0:0] ap_phi_mux_icmp_ln440999_phi_fu_382_p4;
wire    ap_loop_init;
reg    ap_loop_init_pp0_iter1_reg;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln441098_phi_fu_393_p4;
wire   [63:0] zext_ln4413_4_fu_816_p1;
wire   [63:0] zext_ln4415_2_fu_827_p1;
wire   [63:0] zext_ln4427_4_fu_863_p1;
reg   [7:0] indvar_flatten1293_fu_136;
wire   [7:0] add_ln4408_1_fu_474_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten1293_load;
reg   [5:0] v311194_fu_140;
wire   [5:0] v3111_fu_529_p3;
reg   [5:0] indvar_flatten95_fu_144;
wire   [5:0] select_ln4409_1_fu_685_p3;
reg   [2:0] v311296_fu_148;
reg   [2:0] v311397_fu_152;
wire   [2:0] v3113_fu_673_p2;
reg    v9259_0_ce0_local;
reg    v9259_1_ce0_local;
reg    v9259_2_ce0_local;
reg    v9259_3_ce0_local;
reg    v9259_4_ce0_local;
reg    v9259_5_ce0_local;
reg    v9259_6_ce0_local;
reg    v9259_7_ce0_local;
reg    v3195_7_we0_local;
reg    v3195_7_ce0_local;
reg    v3195_6_we0_local;
reg    v3195_6_ce0_local;
reg    v3195_5_we0_local;
reg    v3195_5_ce0_local;
reg    v3195_4_we0_local;
reg    v3195_4_ce0_local;
reg    v3195_3_we0_local;
reg    v3195_3_ce0_local;
reg    v3195_2_we0_local;
reg    v3195_2_ce0_local;
reg    v3195_1_we0_local;
reg    v3195_1_ce0_local;
reg    v3195_we0_local;
reg    v3195_ce0_local;
wire   [0:0] tmp_284_fu_418_p3;
wire   [0:0] empty_fu_434_p1;
wire   [0:0] xor_ln4408_fu_517_p2;
wire   [5:0] add_ln4408_fu_503_p2;
wire   [2:0] select_ln4408_fu_509_p3;
wire   [0:0] and_ln4408_fu_523_p2;
wire   [0:0] empty_333_fu_543_p2;
wire   [2:0] add_ln4409_fu_537_p2;
wire   [7:0] zext_ln4408_fu_565_p1;
wire   [5:0] tmp_285_fu_593_p4;
wire   [8:0] p_shl127_fu_584_p4;
wire   [8:0] zext_ln4413_fu_602_p1;
wire   [7:0] empty_334_fu_579_p2;
wire   [4:0] tmp_286_fu_612_p4;
wire   [5:0] tmp_287_fu_630_p3;
wire   [8:0] p_shl125_fu_622_p3;
wire   [8:0] zext_ln4415_fu_638_p1;
wire   [3:0] zext_ln4409_fu_648_p1;
wire   [3:0] empty_335_fu_652_p2;
wire   [8:0] sub_ln4413_fu_606_p2;
wire   [8:0] zext_ln4413_1_fu_657_p1;
wire   [8:0] sub_ln4415_fu_642_p2;
wire   [5:0] add_ln4409_1_fu_679_p2;
wire   [4:0] p_shl120_fu_728_p3;
wire   [4:0] zext_ln4427_fu_725_p1;
wire   [4:0] sub_ln4427_fu_735_p2;
wire   [4:0] zext_ln4427_1_fu_741_p1;
wire   [9:0] tmp_288_fu_757_p3;
wire   [12:0] p_shl122_fu_750_p3;
wire   [12:0] zext_ln4413_2_fu_764_p1;
wire   [9:0] tmp_289_fu_781_p3;
wire   [12:0] p_shl_fu_774_p3;
wire   [12:0] zext_ln4415_1_fu_788_p1;
wire   [3:0] zext_ln4410_fu_798_p1;
wire   [3:0] add_ln4412_fu_801_p2;
wire   [12:0] sub_ln4413_1_fu_768_p2;
wire   [12:0] zext_ln4413_3_fu_806_p1;
wire   [12:0] add_ln4413_1_fu_810_p2;
wire   [12:0] sub_ln4415_1_fu_792_p2;
wire   [12:0] add_ln4415_1_fu_821_p2;
wire   [7:0] p_shl124_fu_841_p3;
wire   [7:0] zext_ln4427_2_fu_838_p1;
wire   [7:0] sub_ln4427_1_fu_848_p2;
wire   [7:0] zext_ln4427_3_fu_854_p1;
wire   [7:0] add_ln4427_1_fu_857_p2;
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
reg    ap_condition_262;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1293_fu_136 = 8'd0;
#0 v311194_fu_140 = 6'd0;
#0 indvar_flatten95_fu_144 = 6'd0;
#0 v311296_fu_148 = 3'd0;
#0 v311397_fu_152 = 3'd0;
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
    if ((1'b1 == ap_condition_262)) begin
        indvar_flatten1293_fu_136 <= add_ln4408_1_fu_474_p2;
    end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        indvar_flatten95_fu_144 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        indvar_flatten95_fu_144 <= select_ln4409_1_fu_685_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        v311194_fu_140 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v311194_fu_140 <= v3111_fu_529_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        v311296_fu_148 <= 3'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v311296_fu_148 <= v3112_fu_557_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        v311397_fu_152 <= 3'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v311397_fu_152 <= v3113_fu_673_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln4413_reg_952 <= add_ln4413_fu_661_p2;
        add_ln4415_reg_958 <= add_ln4415_fu_667_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_init_pp0_iter1_reg <= ap_loop_init;
        icmp_ln4408_reg_931 <= icmp_ln4408_fu_480_p2;
        icmp_ln4408_reg_931_pp0_iter1_reg <= icmp_ln4408_reg_931;
        lshr_ln_reg_946 <= {{v3111_fu_529_p3[4:3]}};
        mul_i_reg_916[7 : 5] <= mul_i_fu_410_p3[7 : 5];
        tmp_reg_910 <= {{v3186_0[4:2]}};
        v3112_reg_941 <= v3112_fu_557_p3;
        v3113_mid2_reg_935 <= v3113_mid2_fu_549_p3;
        zext_ln4535_4_cast_cast_cast_cast_reg_926[2 : 0] <= zext_ln4535_4_cast_cast_cast_cast_fu_438_p3[2 : 0];
        zext_ln4535_4_cast_cast_cast_cast_reg_926_pp0_iter1_reg[2 : 0] <= zext_ln4535_4_cast_cast_cast_cast_reg_926[2 : 0];
        zext_ln4535_cast_cast_cast_cast_reg_921[2 : 0] <= zext_ln4535_cast_cast_cast_cast_fu_426_p3[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln4427_reg_974 <= add_ln4427_fu_744_p2;
        v3113_mid2_reg_935_pp0_iter2_reg <= v3113_mid2_reg_935;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln4409_reg_969 <= icmp_ln4409_fu_699_p2;
        icmp_ln4410_reg_964 <= icmp_ln4410_fu_693_p2;
    end
end
always @ (*) begin
    if (((icmp_ln4408_fu_480_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln4408_reg_931_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln440999_phi_fu_382_p4 = icmp_ln4409_reg_969;
    end else if (((ap_loop_init_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_icmp_ln440999_phi_fu_382_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln440999_phi_fu_382_p4 = icmp_ln4409_reg_969;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln4408_reg_931_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln441098_phi_fu_393_p4 = icmp_ln4410_reg_964;
    end else if (((ap_loop_init_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_icmp_ln441098_phi_fu_393_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln441098_phi_fu_393_p4 = icmp_ln4410_reg_964;
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
        ap_sig_allocacmp_indvar_flatten1293_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1293_load = indvar_flatten1293_fu_136;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3195_1_ce0_local = 1'b1;
    end else begin
        v3195_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3195_1_we0_local = 1'b1;
    end else begin
        v3195_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3195_2_ce0_local = 1'b1;
    end else begin
        v3195_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3195_2_we0_local = 1'b1;
    end else begin
        v3195_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3195_3_ce0_local = 1'b1;
    end else begin
        v3195_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3195_3_we0_local = 1'b1;
    end else begin
        v3195_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3195_4_ce0_local = 1'b1;
    end else begin
        v3195_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3195_4_we0_local = 1'b1;
    end else begin
        v3195_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3195_5_ce0_local = 1'b1;
    end else begin
        v3195_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3195_5_we0_local = 1'b1;
    end else begin
        v3195_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3195_6_ce0_local = 1'b1;
    end else begin
        v3195_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3195_6_we0_local = 1'b1;
    end else begin
        v3195_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3195_7_ce0_local = 1'b1;
    end else begin
        v3195_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3195_7_we0_local = 1'b1;
    end else begin
        v3195_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3195_ce0_local = 1'b1;
    end else begin
        v3195_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3195_we0_local = 1'b1;
    end else begin
        v3195_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9259_0_ce0_local = 1'b1;
    end else begin
        v9259_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9259_1_ce0_local = 1'b1;
    end else begin
        v9259_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9259_2_ce0_local = 1'b1;
    end else begin
        v9259_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9259_3_ce0_local = 1'b1;
    end else begin
        v9259_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9259_4_ce0_local = 1'b1;
    end else begin
        v9259_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9259_5_ce0_local = 1'b1;
    end else begin
        v9259_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9259_6_ce0_local = 1'b1;
    end else begin
        v9259_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9259_7_ce0_local = 1'b1;
    end else begin
        v9259_7_ce0_local = 1'b0;
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
assign add_ln4408_1_fu_474_p2 = (ap_sig_allocacmp_indvar_flatten1293_load + 8'd1);
assign add_ln4408_fu_503_p2 = (v311194_fu_140 + 6'd8);
assign add_ln4409_1_fu_679_p2 = (indvar_flatten95_fu_144 + 6'd1);
assign add_ln4409_fu_537_p2 = (select_ln4408_fu_509_p3 + 3'd1);
assign add_ln4412_fu_801_p2 = (zext_ln4535_4_cast_cast_cast_cast_reg_926_pp0_iter1_reg + zext_ln4410_fu_798_p1);
assign add_ln4413_1_fu_810_p2 = (sub_ln4413_1_fu_768_p2 + zext_ln4413_3_fu_806_p1);
assign add_ln4413_fu_661_p2 = (sub_ln4413_fu_606_p2 + zext_ln4413_1_fu_657_p1);
assign add_ln4415_1_fu_821_p2 = (sub_ln4415_1_fu_792_p2 + zext_ln4413_3_fu_806_p1);
assign add_ln4415_fu_667_p2 = (sub_ln4415_fu_642_p2 + zext_ln4413_1_fu_657_p1);
assign add_ln4427_1_fu_857_p2 = (sub_ln4427_1_fu_848_p2 + zext_ln4427_3_fu_854_p1);
assign add_ln4427_fu_744_p2 = (sub_ln4427_fu_735_p2 + zext_ln4427_1_fu_741_p1);
assign and_ln4408_fu_523_p2 = (xor_ln4408_fu_517_p2 & ap_phi_mux_icmp_ln441098_phi_fu_393_p4);
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
    ap_condition_262 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_333_fu_543_p2 = (ap_phi_mux_icmp_ln440999_phi_fu_382_p4 | and_ln4408_fu_523_p2);
assign empty_334_fu_579_p2 = (mul_i_reg_916 + zext_ln4408_fu_565_p1);
assign empty_335_fu_652_p2 = (zext_ln4535_cast_cast_cast_cast_reg_921 + zext_ln4409_fu_648_p1);
assign empty_fu_434_p1 = v3186_0[0:0];
assign icmp_ln4408_fu_480_p2 = ((ap_sig_allocacmp_indvar_flatten1293_load == 8'd195) ? 1'b1 : 1'b0);
assign icmp_ln4409_fu_699_p2 = ((select_ln4409_1_fu_685_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln4410_fu_693_p2 = ((v3113_fu_673_p2 == 3'd7) ? 1'b1 : 1'b0);
assign lshr_ln_fu_569_p4 = {{v3111_fu_529_p3[4:3]}};
assign mul_i_fu_410_p3 = {{tmp_fu_400_p4}, {5'd0}};
assign p_shl120_fu_728_p3 = {{lshr_ln_reg_946}, {3'd0}};
assign p_shl122_fu_750_p3 = {{add_ln4413_reg_952}, {4'd0}};
assign p_shl124_fu_841_p3 = {{add_ln4427_reg_974}, {3'd0}};
assign p_shl125_fu_622_p3 = {{tmp_286_fu_612_p4}, {4'd0}};
assign p_shl127_fu_584_p4 = {{{tmp_reg_910}, {lshr_ln_fu_569_p4}}, {4'd0}};
assign p_shl_fu_774_p3 = {{add_ln4415_reg_958}, {4'd0}};
assign select_ln4408_fu_509_p3 = ((ap_phi_mux_icmp_ln440999_phi_fu_382_p4[0:0] == 1'b1) ? 3'd0 : v311296_fu_148);
assign select_ln4409_1_fu_685_p3 = ((ap_phi_mux_icmp_ln440999_phi_fu_382_p4[0:0] == 1'b1) ? 6'd1 : add_ln4409_1_fu_679_p2);
assign sub_ln4413_1_fu_768_p2 = (p_shl122_fu_750_p3 - zext_ln4413_2_fu_764_p1);
assign sub_ln4413_fu_606_p2 = (p_shl127_fu_584_p4 - zext_ln4413_fu_602_p1);
assign sub_ln4415_1_fu_792_p2 = (p_shl_fu_774_p3 - zext_ln4415_1_fu_788_p1);
assign sub_ln4415_fu_642_p2 = (p_shl125_fu_622_p3 - zext_ln4415_fu_638_p1);
assign sub_ln4427_1_fu_848_p2 = (p_shl124_fu_841_p3 - zext_ln4427_2_fu_838_p1);
assign sub_ln4427_fu_735_p2 = (p_shl120_fu_728_p3 - zext_ln4427_fu_725_p1);
assign tmp_284_fu_418_p3 = v3186_0[32'd1];
assign tmp_285_fu_593_p4 = {{{tmp_reg_910}, {lshr_ln_fu_569_p4}}, {1'd0}};
assign tmp_286_fu_612_p4 = {{empty_334_fu_579_p2[7:3]}};
assign tmp_287_fu_630_p3 = {{tmp_286_fu_612_p4}, {1'd0}};
assign tmp_288_fu_757_p3 = {{add_ln4413_reg_952}, {1'd0}};
assign tmp_289_fu_781_p3 = {{add_ln4415_reg_958}, {1'd0}};
assign tmp_fu_400_p4 = {{v3186_0[4:2]}};
assign v3111_fu_529_p3 = ((ap_phi_mux_icmp_ln440999_phi_fu_382_p4[0:0] == 1'b1) ? add_ln4408_fu_503_p2 : v311194_fu_140);
assign v3112_fu_557_p3 = ((and_ln4408_fu_523_p2[0:0] == 1'b1) ? add_ln4409_fu_537_p2 : select_ln4408_fu_509_p3);
assign v3113_fu_673_p2 = (v3113_mid2_fu_549_p3 + 3'd1);
assign v3113_mid2_fu_549_p3 = ((empty_333_fu_543_p2[0:0] == 1'b1) ? 3'd0 : v311397_fu_152);
assign v3195_1_address0 = zext_ln4427_4_fu_863_p1;
assign v3195_1_ce0 = v3195_1_ce0_local;
assign v3195_1_d0 = v9259_6_q0;
assign v3195_1_we0 = v3195_1_we0_local;
assign v3195_2_address0 = zext_ln4427_4_fu_863_p1;
assign v3195_2_ce0 = v3195_2_ce0_local;
assign v3195_2_d0 = v9259_5_q0;
assign v3195_2_we0 = v3195_2_we0_local;
assign v3195_3_address0 = zext_ln4427_4_fu_863_p1;
assign v3195_3_ce0 = v3195_3_ce0_local;
assign v3195_3_d0 = v9259_4_q0;
assign v3195_3_we0 = v3195_3_we0_local;
assign v3195_4_address0 = zext_ln4427_4_fu_863_p1;
assign v3195_4_ce0 = v3195_4_ce0_local;
assign v3195_4_d0 = v9259_3_q0;
assign v3195_4_we0 = v3195_4_we0_local;
assign v3195_5_address0 = zext_ln4427_4_fu_863_p1;
assign v3195_5_ce0 = v3195_5_ce0_local;
assign v3195_5_d0 = v9259_2_q0;
assign v3195_5_we0 = v3195_5_we0_local;
assign v3195_6_address0 = zext_ln4427_4_fu_863_p1;
assign v3195_6_ce0 = v3195_6_ce0_local;
assign v3195_6_d0 = v9259_1_q0;
assign v3195_6_we0 = v3195_6_we0_local;
assign v3195_7_address0 = zext_ln4427_4_fu_863_p1;
assign v3195_7_ce0 = v3195_7_ce0_local;
assign v3195_7_d0 = v9259_0_q0;
assign v3195_7_we0 = v3195_7_we0_local;
assign v3195_address0 = zext_ln4427_4_fu_863_p1;
assign v3195_ce0 = v3195_ce0_local;
assign v3195_d0 = v9259_7_q0;
assign v3195_we0 = v3195_we0_local;
assign v9259_0_address0 = zext_ln4413_4_fu_816_p1;
assign v9259_0_ce0 = v9259_0_ce0_local;
assign v9259_1_address0 = zext_ln4415_2_fu_827_p1;
assign v9259_1_ce0 = v9259_1_ce0_local;
assign v9259_2_address0 = zext_ln4415_2_fu_827_p1;
assign v9259_2_ce0 = v9259_2_ce0_local;
assign v9259_3_address0 = zext_ln4415_2_fu_827_p1;
assign v9259_3_ce0 = v9259_3_ce0_local;
assign v9259_4_address0 = zext_ln4415_2_fu_827_p1;
assign v9259_4_ce0 = v9259_4_ce0_local;
assign v9259_5_address0 = zext_ln4415_2_fu_827_p1;
assign v9259_5_ce0 = v9259_5_ce0_local;
assign v9259_6_address0 = zext_ln4415_2_fu_827_p1;
assign v9259_6_ce0 = v9259_6_ce0_local;
assign v9259_7_address0 = zext_ln4415_2_fu_827_p1;
assign v9259_7_ce0 = v9259_7_ce0_local;
assign xor_ln4408_fu_517_p2 = (ap_phi_mux_icmp_ln440999_phi_fu_382_p4 ^ 1'd1);
assign zext_ln4408_fu_565_p1 = v3111_fu_529_p3;
assign zext_ln4409_fu_648_p1 = v3112_fu_557_p3;
assign zext_ln4410_fu_798_p1 = v3113_mid2_reg_935;
assign zext_ln4413_1_fu_657_p1 = empty_335_fu_652_p2;
assign zext_ln4413_2_fu_764_p1 = tmp_288_fu_757_p3;
assign zext_ln4413_3_fu_806_p1 = add_ln4412_fu_801_p2;
assign zext_ln4413_4_fu_816_p1 = add_ln4413_1_fu_810_p2;
assign zext_ln4413_fu_602_p1 = tmp_285_fu_593_p4;
assign zext_ln4415_1_fu_788_p1 = tmp_289_fu_781_p3;
assign zext_ln4415_2_fu_827_p1 = add_ln4415_1_fu_821_p2;
assign zext_ln4415_fu_638_p1 = tmp_287_fu_630_p3;
assign zext_ln4427_1_fu_741_p1 = v3112_reg_941;
assign zext_ln4427_2_fu_838_p1 = add_ln4427_reg_974;
assign zext_ln4427_3_fu_854_p1 = v3113_mid2_reg_935_pp0_iter2_reg;
assign zext_ln4427_4_fu_863_p1 = add_ln4427_1_fu_857_p2;
assign zext_ln4427_fu_725_p1 = lshr_ln_reg_946;
assign zext_ln4535_4_cast_cast_cast_cast_fu_438_p3 = ((empty_fu_434_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign zext_ln4535_cast_cast_cast_cast_fu_426_p3 = ((tmp_284_fu_418_p3[0:0] == 1'b1) ? 4'd7 : 4'd0);
always @ (posedge ap_clk) begin
    mul_i_reg_916[4:0] <= 5'b00000;
    zext_ln4535_cast_cast_cast_cast_reg_921[3] <= 1'b0;
    zext_ln4535_4_cast_cast_cast_cast_reg_926[3] <= 1'b0;
    zext_ln4535_4_cast_cast_cast_cast_reg_926_pp0_iter1_reg[3] <= 1'b0;
end
endmodule 
