module forward_dataflow_in_loop_VITIS_LOOP_8969_1_Loop_VITIS_LOOP_8684_1_proc93_Pipeline_VITIS_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,p_udiv30_cast,v7177_address0,v7177_ce0,v7177_we0,v7177_d0,v7177_1_address0,v7177_1_ce0,v7177_1_we0,v7177_1_d0,v7177_2_address0,v7177_2_ce0,v7177_2_we0,v7177_2_d0,v7177_3_address0,v7177_3_ce0,v7177_3_we0,v7177_3_d0,v7177_4_address0,v7177_4_ce0,v7177_4_we0,v7177_4_d0,v7177_5_address0,v7177_5_ce0,v7177_5_we0,v7177_5_d0,v7177_6_address0,v7177_6_ce0,v7177_6_we0,v7177_6_d0,v7177_7_address0,v7177_7_ce0,v7177_7_we0,v7177_7_d0,mul_i1,tmp_76,zext_ln8726_1,zext_ln8726,v13686_0_0_address0,v13686_0_0_ce0,v13686_0_0_q0,v13686_1_0_address0,v13686_1_0_ce0,v13686_1_0_q0,v13686_2_0_address0,v13686_2_0_ce0,v13686_2_0_q0,v13686_3_0_address0,v13686_3_0_ce0,v13686_3_0_q0,v13686_0_1_address0,v13686_0_1_ce0,v13686_0_1_q0,v13686_1_1_address0,v13686_1_1_ce0,v13686_1_1_q0,v13686_2_1_address0,v13686_2_1_ce0,v13686_2_1_q0,v13686_3_1_address0,v13686_3_1_ce0,v13686_3_1_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [8:0] mul_i;
input  [6:0] p_udiv30_cast;
output  [6:0] v7177_address0;
output   v7177_ce0;
output   v7177_we0;
output  [7:0] v7177_d0;
output  [6:0] v7177_1_address0;
output   v7177_1_ce0;
output   v7177_1_we0;
output  [7:0] v7177_1_d0;
output  [6:0] v7177_2_address0;
output   v7177_2_ce0;
output   v7177_2_we0;
output  [7:0] v7177_2_d0;
output  [6:0] v7177_3_address0;
output   v7177_3_ce0;
output   v7177_3_we0;
output  [7:0] v7177_3_d0;
output  [6:0] v7177_4_address0;
output   v7177_4_ce0;
output   v7177_4_we0;
output  [7:0] v7177_4_d0;
output  [6:0] v7177_5_address0;
output   v7177_5_ce0;
output   v7177_5_we0;
output  [7:0] v7177_5_d0;
output  [6:0] v7177_6_address0;
output   v7177_6_ce0;
output   v7177_6_we0;
output  [7:0] v7177_6_d0;
output  [6:0] v7177_7_address0;
output   v7177_7_ce0;
output   v7177_7_we0;
output  [7:0] v7177_7_d0;
input  [7:0] mul_i1;
input  [2:0] tmp_76;
input  [1:0] zext_ln8726_1;
input  [1:0] zext_ln8726;
output  [17:0] v13686_0_0_address0;
output   v13686_0_0_ce0;
input  [7:0] v13686_0_0_q0;
output  [17:0] v13686_1_0_address0;
output   v13686_1_0_ce0;
input  [7:0] v13686_1_0_q0;
output  [17:0] v13686_2_0_address0;
output   v13686_2_0_ce0;
input  [7:0] v13686_2_0_q0;
output  [17:0] v13686_3_0_address0;
output   v13686_3_0_ce0;
input  [7:0] v13686_3_0_q0;
output  [17:0] v13686_0_1_address0;
output   v13686_0_1_ce0;
input  [7:0] v13686_0_1_q0;
output  [17:0] v13686_1_1_address0;
output   v13686_1_1_ce0;
input  [7:0] v13686_1_1_q0;
output  [17:0] v13686_2_1_address0;
output   v13686_2_1_ce0;
input  [7:0] v13686_2_1_q0;
output  [17:0] v13686_3_1_address0;
output   v13686_3_1_ce0;
input  [7:0] v13686_3_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln8684_fu_445_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln868596_reg_402;
wire    ap_block_pp0_stage0_11001;
wire   [17:0] zext_ln8726_cast_fu_413_p1;
reg   [17:0] zext_ln8726_cast_reg_897;
wire   [15:0] zext_ln8726_1_cast_fu_417_p1;
reg   [15:0] zext_ln8726_1_cast_reg_905;
reg   [0:0] icmp_ln8684_reg_913;
reg   [0:0] icmp_ln8684_reg_913_pp0_iter1_reg;
reg   [2:0] lshr_ln_cast_reg_917;
reg   [2:0] lshr_ln_cast_reg_917_pp0_iter2_reg;
wire   [3:0] lshr_ln4_fu_536_p4;
reg   [3:0] lshr_ln4_reg_922;
reg   [3:0] lshr_ln4_reg_922_pp0_iter2_reg;
wire   [15:0] add_ln8688_fu_581_p2;
reg   [15:0] add_ln8688_reg_927;
wire   [15:0] add_ln8692_fu_616_p2;
reg   [15:0] add_ln8692_reg_933;
wire   [15:0] add_ln8690_fu_659_p2;
reg   [15:0] add_ln8690_reg_939;
wire   [15:0] add_ln8694_fu_692_p2;
reg   [15:0] add_ln8694_reg_945;
wire   [0:0] xor_ln8685_fu_711_p2;
reg   [0:0] xor_ln8685_reg_951;
reg   [0:0] ap_phi_mux_icmp_ln868596_phi_fu_405_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln8688_2_fu_748_p1;
wire   [63:0] zext_ln8692_2_fu_774_p1;
wire   [63:0] zext_ln8690_2_fu_802_p1;
wire   [63:0] zext_ln8694_2_fu_828_p1;
wire   [63:0] zext_ln8702_fu_841_p1;
reg   [6:0] indvar_flatten93_fu_138;
wire   [6:0] add_ln8684_1_fu_439_p2;
reg   [6:0] ap_sig_allocacmp_indvar_flatten93_load;
reg   [5:0] v704594_fu_142;
wire   [5:0] v7045_fu_476_p3;
reg   [5:0] v704695_fu_146;
wire   [5:0] v7046_fu_697_p2;
reg    v13686_0_0_ce0_local;
reg    v13686_0_1_ce0_local;
reg    v13686_1_0_ce0_local;
reg    v13686_1_1_ce0_local;
reg    v13686_2_0_ce0_local;
reg    v13686_2_1_ce0_local;
reg    v13686_3_0_ce0_local;
reg    v13686_3_1_ce0_local;
reg    v7177_7_we0_local;
reg    v7177_7_ce0_local;
reg    v7177_6_we0_local;
reg    v7177_6_ce0_local;
reg    v7177_5_we0_local;
reg    v7177_5_ce0_local;
reg    v7177_4_we0_local;
reg    v7177_4_ce0_local;
reg    v7177_3_we0_local;
reg    v7177_3_ce0_local;
reg    v7177_2_we0_local;
reg    v7177_2_ce0_local;
reg    v7177_1_we0_local;
reg    v7177_1_ce0_local;
reg    v7177_we0_local;
reg    v7177_ce0_local;
wire   [5:0] add_ln8684_fu_462_p2;
wire   [3:0] lshr_ln_fu_488_p4;
wire   [8:0] zext_ln8684_fu_484_p1;
wire   [6:0] zext_ln8684_1_fu_508_p1;
wire   [8:0] empty_fu_512_p2;
wire   [5:0] select_ln8684_fu_468_p3;
wire   [7:0] zext_ln8685_fu_532_p1;
wire   [6:0] empty_161_fu_517_p2;
wire   [13:0] tmp_20_fu_551_p4;
wire   [15:0] p_shl1_fu_564_p5;
wire   [15:0] zext_ln8688_fu_560_p1;
wire   [15:0] sub_ln8688_fu_575_p2;
wire   [6:0] tmp_s_fu_522_p4;
wire   [13:0] tmp_21_fu_586_p4;
wire   [15:0] p_shl3_fu_599_p5;
wire   [15:0] zext_ln8692_fu_595_p1;
wire   [15:0] sub_ln8692_fu_610_p2;
wire   [7:0] add_ln8687_fu_546_p2;
wire   [6:0] lshr_ln5_fu_621_p4;
wire   [13:0] tmp_22_fu_631_p3;
wire   [15:0] p_shl5_fu_643_p4;
wire   [15:0] zext_ln8690_fu_639_p1;
wire   [15:0] sub_ln8690_fu_653_p2;
wire   [13:0] tmp_23_fu_664_p3;
wire   [15:0] p_shl7_fu_676_p4;
wire   [15:0] zext_ln8694_fu_672_p1;
wire   [15:0] sub_ln8694_fu_686_p2;
wire   [0:0] tmp_fu_703_p3;
wire   [17:0] p_shl2_fu_730_p3;
wire   [17:0] zext_ln8688_1_fu_727_p1;
wire   [17:0] sub_ln8688_1_fu_737_p2;
wire   [17:0] add_ln8688_1_fu_743_p2;
wire   [17:0] p_shl4_fu_756_p3;
wire   [17:0] zext_ln8692_1_fu_753_p1;
wire   [17:0] sub_ln8692_1_fu_763_p2;
wire   [17:0] add_ln8692_1_fu_769_p2;
wire   [17:0] p_shl6_fu_784_p3;
wire   [17:0] zext_ln8690_1_fu_781_p1;
wire   [17:0] sub_ln8690_1_fu_791_p2;
wire   [17:0] add_ln8690_1_fu_797_p2;
wire   [17:0] p_shl_fu_810_p3;
wire   [17:0] zext_ln8694_1_fu_807_p1;
wire   [17:0] sub_ln8694_1_fu_817_p2;
wire   [17:0] add_ln8694_1_fu_823_p2;
wire   [6:0] tmp_19_fu_835_p3;
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
#0 indvar_flatten93_fu_138 = 7'd0;
#0 v704594_fu_142 = 6'd0;
#0 v704695_fu_146 = 6'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln8684_reg_913_pp0_iter1_reg == 1'd0))) begin
        icmp_ln868596_reg_402 <= xor_ln8685_reg_951;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln868596_reg_402 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten93_fu_138 <= add_ln8684_1_fu_439_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten93_fu_138 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v704594_fu_142 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v704594_fu_142 <= v7045_fu_476_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v704695_fu_146 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v704695_fu_146 <= v7046_fu_697_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln8688_reg_927 <= add_ln8688_fu_581_p2;
        add_ln8690_reg_939 <= add_ln8690_fu_659_p2;
        add_ln8692_reg_933 <= add_ln8692_fu_616_p2;
        add_ln8694_reg_945 <= add_ln8694_fu_692_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln8684_reg_913 <= icmp_ln8684_fu_445_p2;
        icmp_ln8684_reg_913_pp0_iter1_reg <= icmp_ln8684_reg_913;
        lshr_ln4_reg_922 <= {{select_ln8684_fu_468_p3[4:1]}};
        lshr_ln_cast_reg_917 <= {{v7045_fu_476_p3[4:2]}};
        zext_ln8726_1_cast_reg_905[1 : 0] <= zext_ln8726_1_cast_fu_417_p1[1 : 0];
        zext_ln8726_cast_reg_897[1 : 0] <= zext_ln8726_cast_fu_413_p1[1 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        lshr_ln4_reg_922_pp0_iter2_reg <= lshr_ln4_reg_922;
        lshr_ln_cast_reg_917_pp0_iter2_reg <= lshr_ln_cast_reg_917;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xor_ln8685_reg_951 <= xor_ln8685_fu_711_p2;
    end
end
always @ (*) begin
    if (((icmp_ln8684_fu_445_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln8684_reg_913_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln868596_phi_fu_405_p4 = xor_ln8685_reg_951;
    end else begin
        ap_phi_mux_icmp_ln868596_phi_fu_405_p4 = icmp_ln868596_reg_402;
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
        ap_sig_allocacmp_indvar_flatten93_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten93_load = indvar_flatten93_fu_138;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13686_0_0_ce0_local = 1'b1;
    end else begin
        v13686_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13686_0_1_ce0_local = 1'b1;
    end else begin
        v13686_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13686_1_0_ce0_local = 1'b1;
    end else begin
        v13686_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13686_1_1_ce0_local = 1'b1;
    end else begin
        v13686_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13686_2_0_ce0_local = 1'b1;
    end else begin
        v13686_2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13686_2_1_ce0_local = 1'b1;
    end else begin
        v13686_2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13686_3_0_ce0_local = 1'b1;
    end else begin
        v13686_3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13686_3_1_ce0_local = 1'b1;
    end else begin
        v13686_3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7177_1_ce0_local = 1'b1;
    end else begin
        v7177_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7177_1_we0_local = 1'b1;
    end else begin
        v7177_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7177_2_ce0_local = 1'b1;
    end else begin
        v7177_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7177_2_we0_local = 1'b1;
    end else begin
        v7177_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7177_3_ce0_local = 1'b1;
    end else begin
        v7177_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7177_3_we0_local = 1'b1;
    end else begin
        v7177_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7177_4_ce0_local = 1'b1;
    end else begin
        v7177_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7177_4_we0_local = 1'b1;
    end else begin
        v7177_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7177_5_ce0_local = 1'b1;
    end else begin
        v7177_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7177_5_we0_local = 1'b1;
    end else begin
        v7177_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7177_6_ce0_local = 1'b1;
    end else begin
        v7177_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7177_6_we0_local = 1'b1;
    end else begin
        v7177_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7177_7_ce0_local = 1'b1;
    end else begin
        v7177_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7177_7_we0_local = 1'b1;
    end else begin
        v7177_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7177_ce0_local = 1'b1;
    end else begin
        v7177_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7177_we0_local = 1'b1;
    end else begin
        v7177_we0_local = 1'b0;
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
assign add_ln8684_1_fu_439_p2 = (ap_sig_allocacmp_indvar_flatten93_load + 7'd1);
assign add_ln8684_fu_462_p2 = (v704594_fu_142 + 6'd4);
assign add_ln8687_fu_546_p2 = (mul_i1 + zext_ln8685_fu_532_p1);
assign add_ln8688_1_fu_743_p2 = (sub_ln8688_1_fu_737_p2 + zext_ln8726_cast_reg_897);
assign add_ln8688_fu_581_p2 = (sub_ln8688_fu_575_p2 + zext_ln8726_1_cast_reg_905);
assign add_ln8690_1_fu_797_p2 = (sub_ln8690_1_fu_791_p2 + zext_ln8726_cast_reg_897);
assign add_ln8690_fu_659_p2 = (sub_ln8690_fu_653_p2 + zext_ln8726_1_cast_reg_905);
assign add_ln8692_1_fu_769_p2 = (sub_ln8692_1_fu_763_p2 + zext_ln8726_cast_reg_897);
assign add_ln8692_fu_616_p2 = (sub_ln8692_fu_610_p2 + zext_ln8726_1_cast_reg_905);
assign add_ln8694_1_fu_823_p2 = (sub_ln8694_1_fu_817_p2 + zext_ln8726_cast_reg_897);
assign add_ln8694_fu_692_p2 = (sub_ln8694_fu_686_p2 + zext_ln8726_1_cast_reg_905);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_161_fu_517_p2 = (p_udiv30_cast + zext_ln8684_1_fu_508_p1);
assign empty_fu_512_p2 = (mul_i + zext_ln8684_fu_484_p1);
assign icmp_ln8684_fu_445_p2 = ((ap_sig_allocacmp_indvar_flatten93_load == 7'd127) ? 1'b1 : 1'b0);
assign lshr_ln4_fu_536_p4 = {{select_ln8684_fu_468_p3[4:1]}};
assign lshr_ln5_fu_621_p4 = {{add_ln8687_fu_546_p2[7:1]}};
assign lshr_ln_fu_488_p4 = {{v7045_fu_476_p3[5:2]}};
assign p_shl1_fu_564_p5 = {{{{empty_161_fu_517_p2}, {tmp_76}}, {lshr_ln4_fu_536_p4}}, {2'd0}};
assign p_shl2_fu_730_p3 = {{add_ln8688_reg_927}, {2'd0}};
assign p_shl3_fu_599_p5 = {{{{tmp_s_fu_522_p4}, {tmp_76}}, {lshr_ln4_fu_536_p4}}, {2'd0}};
assign p_shl4_fu_756_p3 = {{add_ln8692_reg_933}, {2'd0}};
assign p_shl5_fu_643_p4 = {{{empty_161_fu_517_p2}, {lshr_ln5_fu_621_p4}}, {2'd0}};
assign p_shl6_fu_784_p3 = {{add_ln8690_reg_939}, {2'd0}};
assign p_shl7_fu_676_p4 = {{{tmp_s_fu_522_p4}, {lshr_ln5_fu_621_p4}}, {2'd0}};
assign p_shl_fu_810_p3 = {{add_ln8694_reg_945}, {2'd0}};
assign select_ln8684_fu_468_p3 = ((ap_phi_mux_icmp_ln868596_phi_fu_405_p4[0:0] == 1'b1) ? v704695_fu_146 : 6'd0);
assign sub_ln8688_1_fu_737_p2 = (p_shl2_fu_730_p3 - zext_ln8688_1_fu_727_p1);
assign sub_ln8688_fu_575_p2 = (p_shl1_fu_564_p5 - zext_ln8688_fu_560_p1);
assign sub_ln8690_1_fu_791_p2 = (p_shl6_fu_784_p3 - zext_ln8690_1_fu_781_p1);
assign sub_ln8690_fu_653_p2 = (p_shl5_fu_643_p4 - zext_ln8690_fu_639_p1);
assign sub_ln8692_1_fu_763_p2 = (p_shl4_fu_756_p3 - zext_ln8692_1_fu_753_p1);
assign sub_ln8692_fu_610_p2 = (p_shl3_fu_599_p5 - zext_ln8692_fu_595_p1);
assign sub_ln8694_1_fu_817_p2 = (p_shl_fu_810_p3 - zext_ln8694_1_fu_807_p1);
assign sub_ln8694_fu_686_p2 = (p_shl7_fu_676_p4 - zext_ln8694_fu_672_p1);
assign tmp_19_fu_835_p3 = {{lshr_ln_cast_reg_917_pp0_iter2_reg}, {lshr_ln4_reg_922_pp0_iter2_reg}};
assign tmp_20_fu_551_p4 = {{{empty_161_fu_517_p2}, {tmp_76}}, {lshr_ln4_fu_536_p4}};
assign tmp_21_fu_586_p4 = {{{tmp_s_fu_522_p4}, {tmp_76}}, {lshr_ln4_fu_536_p4}};
assign tmp_22_fu_631_p3 = {{empty_161_fu_517_p2}, {lshr_ln5_fu_621_p4}};
assign tmp_23_fu_664_p3 = {{tmp_s_fu_522_p4}, {lshr_ln5_fu_621_p4}};
assign tmp_fu_703_p3 = v7046_fu_697_p2[32'd5];
assign tmp_s_fu_522_p4 = {{empty_fu_512_p2[8:2]}};
assign v13686_0_0_address0 = zext_ln8688_2_fu_748_p1;
assign v13686_0_0_ce0 = v13686_0_0_ce0_local;
assign v13686_0_1_address0 = zext_ln8690_2_fu_802_p1;
assign v13686_0_1_ce0 = v13686_0_1_ce0_local;
assign v13686_1_0_address0 = zext_ln8692_2_fu_774_p1;
assign v13686_1_0_ce0 = v13686_1_0_ce0_local;
assign v13686_1_1_address0 = zext_ln8694_2_fu_828_p1;
assign v13686_1_1_ce0 = v13686_1_1_ce0_local;
assign v13686_2_0_address0 = zext_ln8692_2_fu_774_p1;
assign v13686_2_0_ce0 = v13686_2_0_ce0_local;
assign v13686_2_1_address0 = zext_ln8694_2_fu_828_p1;
assign v13686_2_1_ce0 = v13686_2_1_ce0_local;
assign v13686_3_0_address0 = zext_ln8692_2_fu_774_p1;
assign v13686_3_0_ce0 = v13686_3_0_ce0_local;
assign v13686_3_1_address0 = zext_ln8694_2_fu_828_p1;
assign v13686_3_1_ce0 = v13686_3_1_ce0_local;
assign v7045_fu_476_p3 = ((ap_phi_mux_icmp_ln868596_phi_fu_405_p4[0:0] == 1'b1) ? v704594_fu_142 : add_ln8684_fu_462_p2);
assign v7046_fu_697_p2 = (select_ln8684_fu_468_p3 + 6'd2);
assign v7177_1_address0 = zext_ln8702_fu_841_p1;
assign v7177_1_ce0 = v7177_1_ce0_local;
assign v7177_1_d0 = v13686_3_0_q0;
assign v7177_1_we0 = v7177_1_we0_local;
assign v7177_2_address0 = zext_ln8702_fu_841_p1;
assign v7177_2_ce0 = v7177_2_ce0_local;
assign v7177_2_d0 = v13686_2_1_q0;
assign v7177_2_we0 = v7177_2_we0_local;
assign v7177_3_address0 = zext_ln8702_fu_841_p1;
assign v7177_3_ce0 = v7177_3_ce0_local;
assign v7177_3_d0 = v13686_2_0_q0;
assign v7177_3_we0 = v7177_3_we0_local;
assign v7177_4_address0 = zext_ln8702_fu_841_p1;
assign v7177_4_ce0 = v7177_4_ce0_local;
assign v7177_4_d0 = v13686_1_1_q0;
assign v7177_4_we0 = v7177_4_we0_local;
assign v7177_5_address0 = zext_ln8702_fu_841_p1;
assign v7177_5_ce0 = v7177_5_ce0_local;
assign v7177_5_d0 = v13686_1_0_q0;
assign v7177_5_we0 = v7177_5_we0_local;
assign v7177_6_address0 = zext_ln8702_fu_841_p1;
assign v7177_6_ce0 = v7177_6_ce0_local;
assign v7177_6_d0 = v13686_0_1_q0;
assign v7177_6_we0 = v7177_6_we0_local;
assign v7177_7_address0 = zext_ln8702_fu_841_p1;
assign v7177_7_ce0 = v7177_7_ce0_local;
assign v7177_7_d0 = v13686_0_0_q0;
assign v7177_7_we0 = v7177_7_we0_local;
assign v7177_address0 = zext_ln8702_fu_841_p1;
assign v7177_ce0 = v7177_ce0_local;
assign v7177_d0 = v13686_3_1_q0;
assign v7177_we0 = v7177_we0_local;
assign xor_ln8685_fu_711_p2 = (tmp_fu_703_p3 ^ 1'd1);
assign zext_ln8684_1_fu_508_p1 = lshr_ln_fu_488_p4;
assign zext_ln8684_fu_484_p1 = v7045_fu_476_p3;
assign zext_ln8685_fu_532_p1 = select_ln8684_fu_468_p3;
assign zext_ln8688_1_fu_727_p1 = add_ln8688_reg_927;
assign zext_ln8688_2_fu_748_p1 = add_ln8688_1_fu_743_p2;
assign zext_ln8688_fu_560_p1 = tmp_20_fu_551_p4;
assign zext_ln8690_1_fu_781_p1 = add_ln8690_reg_939;
assign zext_ln8690_2_fu_802_p1 = add_ln8690_1_fu_797_p2;
assign zext_ln8690_fu_639_p1 = tmp_22_fu_631_p3;
assign zext_ln8692_1_fu_753_p1 = add_ln8692_reg_933;
assign zext_ln8692_2_fu_774_p1 = add_ln8692_1_fu_769_p2;
assign zext_ln8692_fu_595_p1 = tmp_21_fu_586_p4;
assign zext_ln8694_1_fu_807_p1 = add_ln8694_reg_945;
assign zext_ln8694_2_fu_828_p1 = add_ln8694_1_fu_823_p2;
assign zext_ln8694_fu_672_p1 = tmp_23_fu_664_p3;
assign zext_ln8702_fu_841_p1 = tmp_19_fu_835_p3;
assign zext_ln8726_1_cast_fu_417_p1 = zext_ln8726_1;
assign zext_ln8726_cast_fu_413_p1 = zext_ln8726;
always @ (posedge ap_clk) begin
    zext_ln8726_cast_reg_897[17:2] <= 16'b0000000000000000;
    zext_ln8726_1_cast_reg_905[15:2] <= 14'b00000000000000;
end
endmodule 