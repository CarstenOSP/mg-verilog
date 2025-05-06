
module forward_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,rem4,v12757_address0,v12757_ce0,v12757_we0,v12757_d0,v12757_1_address0,v12757_1_ce0,v12757_1_we0,v12757_1_d0,v12757_2_address0,v12757_2_ce0,v12757_2_we0,v12757_2_d0,v12757_3_address0,v12757_3_ce0,v12757_3_we0,v12757_3_d0,v12757_4_address0,v12757_4_ce0,v12757_4_we0,v12757_4_d0,v12757_5_address0,v12757_5_ce0,v12757_5_we0,v12757_5_d0,v12757_6_address0,v12757_6_ce0,v12757_6_we0,v12757_6_d0,v12757_7_address0,v12757_7_ce0,v12757_7_we0,v12757_7_d0,mul_i,empty_101,empty,zext_ln16138_1,zext_ln16138,v13682_0_0_address0,v13682_0_0_ce0,v13682_0_0_q0,v13682_1_0_address0,v13682_1_0_ce0,v13682_1_0_q0,v13682_2_0_address0,v13682_2_0_ce0,v13682_2_0_q0,v13682_3_0_address0,v13682_3_0_ce0,v13682_3_0_q0,v13682_0_1_address0,v13682_0_1_ce0,v13682_0_1_q0,v13682_1_1_address0,v13682_1_1_ce0,v13682_1_1_q0,v13682_2_1_address0,v13682_2_1_ce0,v13682_2_1_q0,v13682_3_1_address0,v13682_3_1_ce0,v13682_3_1_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [4:0] rem4;
output  [3:0] v12757_address0;
output   v12757_ce0;
output   v12757_we0;
output  [7:0] v12757_d0;
output  [3:0] v12757_1_address0;
output   v12757_1_ce0;
output   v12757_1_we0;
output  [7:0] v12757_1_d0;
output  [3:0] v12757_2_address0;
output   v12757_2_ce0;
output   v12757_2_we0;
output  [7:0] v12757_2_d0;
output  [3:0] v12757_3_address0;
output   v12757_3_ce0;
output   v12757_3_we0;
output  [7:0] v12757_3_d0;
output  [3:0] v12757_4_address0;
output   v12757_4_ce0;
output   v12757_4_we0;
output  [7:0] v12757_4_d0;
output  [3:0] v12757_5_address0;
output   v12757_5_ce0;
output   v12757_5_we0;
output  [7:0] v12757_5_d0;
output  [3:0] v12757_6_address0;
output   v12757_6_ce0;
output   v12757_6_we0;
output  [7:0] v12757_6_d0;
output  [3:0] v12757_7_address0;
output   v12757_7_ce0;
output   v12757_7_we0;
output  [7:0] v12757_7_d0;
input  [3:0] mul_i;
input  [0:0] empty_101;
input  [0:0] empty;
input  [2:0] zext_ln16138_1;
input  [1:0] zext_ln16138;
output  [9:0] v13682_0_0_address0;
output   v13682_0_0_ce0;
input  [7:0] v13682_0_0_q0;
output  [9:0] v13682_1_0_address0;
output   v13682_1_0_ce0;
input  [7:0] v13682_1_0_q0;
output  [9:0] v13682_2_0_address0;
output   v13682_2_0_ce0;
input  [7:0] v13682_2_0_q0;
output  [9:0] v13682_3_0_address0;
output   v13682_3_0_ce0;
input  [7:0] v13682_3_0_q0;
output  [9:0] v13682_0_1_address0;
output   v13682_0_1_ce0;
input  [7:0] v13682_0_1_q0;
output  [9:0] v13682_1_1_address0;
output   v13682_1_1_ce0;
input  [7:0] v13682_1_1_q0;
output  [9:0] v13682_2_1_address0;
output   v13682_2_1_ce0;
input  [7:0] v13682_2_1_q0;
output  [9:0] v13682_3_1_address0;
output   v13682_3_1_ce0;
input  [7:0] v13682_3_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln16096_fu_700_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [9:0] zext_ln16138_cast_fu_416_p1;
reg   [9:0] zext_ln16138_cast_reg_868;
wire    ap_block_pp0_stage0_11001;
wire   [1:0] tmp_s_fu_476_p4;
reg   [1:0] tmp_s_reg_876;
reg   [1:0] tmp_s_reg_876_pp0_iter1_reg;
wire   [1:0] lshr_ln_fu_496_p4;
reg   [1:0] lshr_ln_reg_881;
reg   [1:0] lshr_ln_reg_881_pp0_iter1_reg;
wire   [7:0] add_ln16100_fu_548_p2;
reg   [7:0] add_ln16100_reg_886;
wire   [7:0] add_ln16104_fu_586_p2;
reg   [7:0] add_ln16104_reg_892;
wire   [7:0] add_ln16102_fu_634_p2;
reg   [7:0] add_ln16102_reg_898;
wire   [7:0] add_ln16106_fu_668_p2;
reg   [7:0] add_ln16106_reg_904;
wire   [0:0] xor_ln16097_fu_694_p2;
reg   [0:0] xor_ln16097_reg_910;
reg   [0:0] icmp_ln16096_reg_915;
reg   [0:0] ap_phi_mux_icmp_ln1609796_phi_fu_409_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln16100_2_fu_742_p1;
wire   [63:0] zext_ln16104_2_fu_768_p1;
wire   [63:0] zext_ln16102_2_fu_796_p1;
wire   [63:0] zext_ln16106_2_fu_822_p1;
wire   [63:0] zext_ln16114_fu_835_p1;
reg   [3:0] indvar_flatten93_fu_142;
wire   [3:0] add_ln16096_1_fu_680_p2;
reg   [3:0] ap_sig_allocacmp_indvar_flatten93_load;
reg   [4:0] v1261994_fu_146;
wire   [4:0] v12619_fu_462_p3;
reg   [4:0] ap_sig_allocacmp_v1261994_load;
reg   [3:0] v1262095_fu_150;
wire   [3:0] v12620_fu_674_p2;
reg   [3:0] ap_sig_allocacmp_v1262095_load;
reg    v13682_0_0_ce0_local;
reg    v13682_0_1_ce0_local;
reg    v13682_1_0_ce0_local;
reg    v13682_1_1_ce0_local;
reg    v13682_2_0_ce0_local;
reg    v13682_2_1_ce0_local;
reg    v13682_3_0_ce0_local;
reg    v13682_3_1_ce0_local;
reg    v12757_7_we0_local;
reg    v12757_7_ce0_local;
reg    v12757_6_we0_local;
reg    v12757_6_ce0_local;
reg    v12757_5_we0_local;
reg    v12757_5_ce0_local;
reg    v12757_4_we0_local;
reg    v12757_4_ce0_local;
reg    v12757_3_we0_local;
reg    v12757_3_ce0_local;
reg    v12757_2_we0_local;
reg    v12757_2_ce0_local;
reg    v12757_1_we0_local;
reg    v12757_1_ce0_local;
reg    v12757_we0_local;
reg    v12757_ce0_local;
wire   [4:0] add_ln16096_fu_448_p2;
wire   [4:0] empty_356_fu_470_p2;
wire   [3:0] select_ln16096_fu_454_p3;
wire   [5:0] tmp_82_fu_512_p5;
wire   [7:0] p_shl25_fu_528_p6;
wire   [7:0] zext_ln16100_fu_524_p1;
wire   [7:0] sub_ln16100_fu_542_p2;
wire   [7:0] zext_ln16138_1_cast_fu_420_p1;
wire   [2:0] tmp_80_fu_486_p4;
wire   [5:0] tmp_83_fu_554_p4;
wire   [7:0] p_shl23_fu_568_p5;
wire   [7:0] zext_ln16104_fu_564_p1;
wire   [7:0] sub_ln16104_fu_580_p2;
wire   [3:0] add_ln16099_fu_506_p2;
wire   [2:0] lshr_ln48_fu_592_p4;
wire   [5:0] tmp_84_fu_602_p4;
wire   [7:0] p_shl21_fu_616_p5;
wire   [7:0] zext_ln16102_fu_612_p1;
wire   [7:0] sub_ln16102_fu_628_p2;
wire   [5:0] tmp_85_fu_640_p3;
wire   [7:0] p_shl19_fu_652_p4;
wire   [7:0] zext_ln16106_fu_648_p1;
wire   [7:0] sub_ln16106_fu_662_p2;
wire   [0:0] tmp_415_fu_686_p3;
wire   [9:0] p_shl24_fu_724_p3;
wire   [9:0] zext_ln16100_1_fu_721_p1;
wire   [9:0] sub_ln16100_1_fu_731_p2;
wire   [9:0] add_ln16100_1_fu_737_p2;
wire   [9:0] p_shl22_fu_750_p3;
wire   [9:0] zext_ln16104_1_fu_747_p1;
wire   [9:0] sub_ln16104_1_fu_757_p2;
wire   [9:0] add_ln16104_1_fu_763_p2;
wire   [9:0] p_shl20_fu_778_p3;
wire   [9:0] zext_ln16102_1_fu_775_p1;
wire   [9:0] sub_ln16102_1_fu_785_p2;
wire   [9:0] add_ln16102_1_fu_791_p2;
wire   [9:0] p_shl_fu_804_p3;
wire   [9:0] zext_ln16106_1_fu_801_p1;
wire   [9:0] sub_ln16106_1_fu_811_p2;
wire   [9:0] add_ln16106_1_fu_817_p2;
wire   [3:0] tmp_81_fu_829_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_594;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 indvar_flatten93_fu_142 = 4'd0;
#0 v1261994_fu_146 = 5'd0;
#0 v1262095_fu_150 = 4'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten93_fu_142 <= add_ln16096_1_fu_680_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten93_fu_142 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v1261994_fu_146 <= v12619_fu_462_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v1261994_fu_146 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v1262095_fu_150 <= v12620_fu_674_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v1262095_fu_150 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln16100_reg_886 <= add_ln16100_fu_548_p2;
        add_ln16102_reg_898 <= add_ln16102_fu_634_p2;
        add_ln16104_reg_892 <= add_ln16104_fu_586_p2;
        add_ln16106_reg_904 <= add_ln16106_fu_668_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln16096_reg_915 <= icmp_ln16096_fu_700_p2;
        lshr_ln_reg_881 <= {{select_ln16096_fu_454_p3[2:1]}};
        lshr_ln_reg_881_pp0_iter1_reg <= lshr_ln_reg_881;
        tmp_s_reg_876 <= {{v12619_fu_462_p3[3:2]}};
        tmp_s_reg_876_pp0_iter1_reg <= tmp_s_reg_876;
        zext_ln16138_cast_reg_868[1 : 0] <= zext_ln16138_cast_fu_416_p1[1 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xor_ln16097_reg_910 <= xor_ln16097_fu_694_p2;
    end
end
always @ (*) begin
    if (((icmp_ln16096_fu_700_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_594)) begin
            ap_phi_mux_icmp_ln1609796_phi_fu_409_p4 = xor_ln16097_reg_910;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1609796_phi_fu_409_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln1609796_phi_fu_409_p4 = xor_ln16097_reg_910;
        end
    end else begin
        ap_phi_mux_icmp_ln1609796_phi_fu_409_p4 = xor_ln16097_reg_910;
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
        ap_sig_allocacmp_indvar_flatten93_load = 4'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten93_load = indvar_flatten93_fu_142;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v1261994_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v1261994_load = v1261994_fu_146;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v1262095_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v1262095_load = v1262095_fu_150;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12757_1_ce0_local = 1'b1;
    end else begin
        v12757_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12757_1_we0_local = 1'b1;
    end else begin
        v12757_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12757_2_ce0_local = 1'b1;
    end else begin
        v12757_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12757_2_we0_local = 1'b1;
    end else begin
        v12757_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12757_3_ce0_local = 1'b1;
    end else begin
        v12757_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12757_3_we0_local = 1'b1;
    end else begin
        v12757_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12757_4_ce0_local = 1'b1;
    end else begin
        v12757_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12757_4_we0_local = 1'b1;
    end else begin
        v12757_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12757_5_ce0_local = 1'b1;
    end else begin
        v12757_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12757_5_we0_local = 1'b1;
    end else begin
        v12757_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12757_6_ce0_local = 1'b1;
    end else begin
        v12757_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12757_6_we0_local = 1'b1;
    end else begin
        v12757_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12757_7_ce0_local = 1'b1;
    end else begin
        v12757_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12757_7_we0_local = 1'b1;
    end else begin
        v12757_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12757_ce0_local = 1'b1;
    end else begin
        v12757_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12757_we0_local = 1'b1;
    end else begin
        v12757_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13682_0_0_ce0_local = 1'b1;
    end else begin
        v13682_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13682_0_1_ce0_local = 1'b1;
    end else begin
        v13682_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13682_1_0_ce0_local = 1'b1;
    end else begin
        v13682_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13682_1_1_ce0_local = 1'b1;
    end else begin
        v13682_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13682_2_0_ce0_local = 1'b1;
    end else begin
        v13682_2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13682_2_1_ce0_local = 1'b1;
    end else begin
        v13682_2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13682_3_0_ce0_local = 1'b1;
    end else begin
        v13682_3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13682_3_1_ce0_local = 1'b1;
    end else begin
        v13682_3_1_ce0_local = 1'b0;
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
assign add_ln16096_1_fu_680_p2 = (ap_sig_allocacmp_indvar_flatten93_load + 4'd1);
assign add_ln16096_fu_448_p2 = (ap_sig_allocacmp_v1261994_load + 5'd4);
assign add_ln16099_fu_506_p2 = (select_ln16096_fu_454_p3 + mul_i);
assign add_ln16100_1_fu_737_p2 = (sub_ln16100_1_fu_731_p2 + zext_ln16138_cast_reg_868);
assign add_ln16100_fu_548_p2 = (sub_ln16100_fu_542_p2 + zext_ln16138_1_cast_fu_420_p1);
assign add_ln16102_1_fu_791_p2 = (sub_ln16102_1_fu_785_p2 + zext_ln16138_cast_reg_868);
assign add_ln16102_fu_634_p2 = (sub_ln16102_fu_628_p2 + zext_ln16138_1_cast_fu_420_p1);
assign add_ln16104_1_fu_763_p2 = (sub_ln16104_1_fu_757_p2 + zext_ln16138_cast_reg_868);
assign add_ln16104_fu_586_p2 = (sub_ln16104_fu_580_p2 + zext_ln16138_1_cast_fu_420_p1);
assign add_ln16106_1_fu_817_p2 = (sub_ln16106_1_fu_811_p2 + zext_ln16138_cast_reg_868);
assign add_ln16106_fu_668_p2 = (sub_ln16106_fu_662_p2 + zext_ln16138_1_cast_fu_420_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_594 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln16096_reg_915 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_356_fu_470_p2 = (v12619_fu_462_p3 + rem4);
assign icmp_ln16096_fu_700_p2 = ((ap_sig_allocacmp_indvar_flatten93_load == 4'd15) ? 1'b1 : 1'b0);
assign lshr_ln48_fu_592_p4 = {{add_ln16099_fu_506_p2[3:1]}};
assign lshr_ln_fu_496_p4 = {{select_ln16096_fu_454_p3[2:1]}};
assign p_shl19_fu_652_p4 = {{{tmp_80_fu_486_p4}, {lshr_ln48_fu_592_p4}}, {2'd0}};
assign p_shl20_fu_778_p3 = {{add_ln16102_reg_898}, {2'd0}};
assign p_shl21_fu_616_p5 = {{{{empty_101}, {tmp_s_fu_476_p4}}, {lshr_ln48_fu_592_p4}}, {2'd0}};
assign p_shl22_fu_750_p3 = {{add_ln16104_reg_892}, {2'd0}};
assign p_shl23_fu_568_p5 = {{{{tmp_80_fu_486_p4}, {empty}}, {lshr_ln_fu_496_p4}}, {2'd0}};
assign p_shl24_fu_724_p3 = {{add_ln16100_reg_886}, {2'd0}};
assign p_shl25_fu_528_p6 = {{{{{empty_101}, {tmp_s_fu_476_p4}}, {empty}}, {lshr_ln_fu_496_p4}}, {2'd0}};
assign p_shl_fu_804_p3 = {{add_ln16106_reg_904}, {2'd0}};
assign select_ln16096_fu_454_p3 = ((ap_phi_mux_icmp_ln1609796_phi_fu_409_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v1262095_load : 4'd0);
assign sub_ln16100_1_fu_731_p2 = (p_shl24_fu_724_p3 - zext_ln16100_1_fu_721_p1);
assign sub_ln16100_fu_542_p2 = (p_shl25_fu_528_p6 - zext_ln16100_fu_524_p1);
assign sub_ln16102_1_fu_785_p2 = (p_shl20_fu_778_p3 - zext_ln16102_1_fu_775_p1);
assign sub_ln16102_fu_628_p2 = (p_shl21_fu_616_p5 - zext_ln16102_fu_612_p1);
assign sub_ln16104_1_fu_757_p2 = (p_shl22_fu_750_p3 - zext_ln16104_1_fu_747_p1);
assign sub_ln16104_fu_580_p2 = (p_shl23_fu_568_p5 - zext_ln16104_fu_564_p1);
assign sub_ln16106_1_fu_811_p2 = (p_shl_fu_804_p3 - zext_ln16106_1_fu_801_p1);
assign sub_ln16106_fu_662_p2 = (p_shl19_fu_652_p4 - zext_ln16106_fu_648_p1);
assign tmp_415_fu_686_p3 = v12620_fu_674_p2[32'd3];
assign tmp_80_fu_486_p4 = {{empty_356_fu_470_p2[4:2]}};
assign tmp_81_fu_829_p3 = {{tmp_s_reg_876_pp0_iter1_reg}, {lshr_ln_reg_881_pp0_iter1_reg}};
assign tmp_82_fu_512_p5 = {{{{empty_101}, {tmp_s_fu_476_p4}}, {empty}}, {lshr_ln_fu_496_p4}};
assign tmp_83_fu_554_p4 = {{{tmp_80_fu_486_p4}, {empty}}, {lshr_ln_fu_496_p4}};
assign tmp_84_fu_602_p4 = {{{empty_101}, {tmp_s_fu_476_p4}}, {lshr_ln48_fu_592_p4}};
assign tmp_85_fu_640_p3 = {{tmp_80_fu_486_p4}, {lshr_ln48_fu_592_p4}};
assign tmp_s_fu_476_p4 = {{v12619_fu_462_p3[3:2]}};
assign v12619_fu_462_p3 = ((ap_phi_mux_icmp_ln1609796_phi_fu_409_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v1261994_load : add_ln16096_fu_448_p2);
assign v12620_fu_674_p2 = (select_ln16096_fu_454_p3 + 4'd2);
assign v12757_1_address0 = zext_ln16114_fu_835_p1;
assign v12757_1_ce0 = v12757_1_ce0_local;
assign v12757_1_d0 = v13682_3_0_q0;
assign v12757_1_we0 = v12757_1_we0_local;
assign v12757_2_address0 = zext_ln16114_fu_835_p1;
assign v12757_2_ce0 = v12757_2_ce0_local;
assign v12757_2_d0 = v13682_2_1_q0;
assign v12757_2_we0 = v12757_2_we0_local;
assign v12757_3_address0 = zext_ln16114_fu_835_p1;
assign v12757_3_ce0 = v12757_3_ce0_local;
assign v12757_3_d0 = v13682_2_0_q0;
assign v12757_3_we0 = v12757_3_we0_local;
assign v12757_4_address0 = zext_ln16114_fu_835_p1;
assign v12757_4_ce0 = v12757_4_ce0_local;
assign v12757_4_d0 = v13682_1_1_q0;
assign v12757_4_we0 = v12757_4_we0_local;
assign v12757_5_address0 = zext_ln16114_fu_835_p1;
assign v12757_5_ce0 = v12757_5_ce0_local;
assign v12757_5_d0 = v13682_1_0_q0;
assign v12757_5_we0 = v12757_5_we0_local;
assign v12757_6_address0 = zext_ln16114_fu_835_p1;
assign v12757_6_ce0 = v12757_6_ce0_local;
assign v12757_6_d0 = v13682_0_1_q0;
assign v12757_6_we0 = v12757_6_we0_local;
assign v12757_7_address0 = zext_ln16114_fu_835_p1;
assign v12757_7_ce0 = v12757_7_ce0_local;
assign v12757_7_d0 = v13682_0_0_q0;
assign v12757_7_we0 = v12757_7_we0_local;
assign v12757_address0 = zext_ln16114_fu_835_p1;
assign v12757_ce0 = v12757_ce0_local;
assign v12757_d0 = v13682_3_1_q0;
assign v12757_we0 = v12757_we0_local;
assign v13682_0_0_address0 = zext_ln16100_2_fu_742_p1;
assign v13682_0_0_ce0 = v13682_0_0_ce0_local;
assign v13682_0_1_address0 = zext_ln16102_2_fu_796_p1;
assign v13682_0_1_ce0 = v13682_0_1_ce0_local;
assign v13682_1_0_address0 = zext_ln16104_2_fu_768_p1;
assign v13682_1_0_ce0 = v13682_1_0_ce0_local;
assign v13682_1_1_address0 = zext_ln16106_2_fu_822_p1;
assign v13682_1_1_ce0 = v13682_1_1_ce0_local;
assign v13682_2_0_address0 = zext_ln16104_2_fu_768_p1;
assign v13682_2_0_ce0 = v13682_2_0_ce0_local;
assign v13682_2_1_address0 = zext_ln16106_2_fu_822_p1;
assign v13682_2_1_ce0 = v13682_2_1_ce0_local;
assign v13682_3_0_address0 = zext_ln16104_2_fu_768_p1;
assign v13682_3_0_ce0 = v13682_3_0_ce0_local;
assign v13682_3_1_address0 = zext_ln16106_2_fu_822_p1;
assign v13682_3_1_ce0 = v13682_3_1_ce0_local;
assign xor_ln16097_fu_694_p2 = (tmp_415_fu_686_p3 ^ 1'd1);
assign zext_ln16100_1_fu_721_p1 = add_ln16100_reg_886;
assign zext_ln16100_2_fu_742_p1 = add_ln16100_1_fu_737_p2;
assign zext_ln16100_fu_524_p1 = tmp_82_fu_512_p5;
assign zext_ln16102_1_fu_775_p1 = add_ln16102_reg_898;
assign zext_ln16102_2_fu_796_p1 = add_ln16102_1_fu_791_p2;
assign zext_ln16102_fu_612_p1 = tmp_84_fu_602_p4;
assign zext_ln16104_1_fu_747_p1 = add_ln16104_reg_892;
assign zext_ln16104_2_fu_768_p1 = add_ln16104_1_fu_763_p2;
assign zext_ln16104_fu_564_p1 = tmp_83_fu_554_p4;
assign zext_ln16106_1_fu_801_p1 = add_ln16106_reg_904;
assign zext_ln16106_2_fu_822_p1 = add_ln16106_1_fu_817_p2;
assign zext_ln16106_fu_648_p1 = tmp_85_fu_640_p3;
assign zext_ln16114_fu_835_p1 = tmp_81_fu_829_p3;
assign zext_ln16138_1_cast_fu_420_p1 = zext_ln16138_1;
assign zext_ln16138_cast_fu_416_p1 = zext_ln16138;
always @ (posedge ap_clk) begin
    zext_ln16138_cast_reg_868[9:2] <= 8'b00000000;
end
endmodule 
