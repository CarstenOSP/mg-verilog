module forward_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,v13602_address0,v13602_ce0,v13602_we0,v13602_d0,v13602_1_address0,v13602_1_ce0,v13602_1_we0,v13602_1_d0,v13602_2_address0,v13602_2_ce0,v13602_2_we0,v13602_2_d0,v13602_3_address0,v13602_3_ce0,v13602_3_we0,v13602_3_d0,mul_i13,empty_106,empty,zext_ln17178_1,zext_ln17178,v16147_0_0_address0,v16147_0_0_ce0,v16147_0_0_q0,v16147_1_0_address0,v16147_1_0_ce0,v16147_1_0_q0,v16147_0_1_address0,v16147_0_1_ce0,v16147_0_1_q0,v16147_1_1_address0,v16147_1_1_ce0,v16147_1_1_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [5:0] mul_i;
output  [7:0] v13602_address0;
output   v13602_ce0;
output   v13602_we0;
output  [7:0] v13602_d0;
output  [7:0] v13602_1_address0;
output   v13602_1_ce0;
output   v13602_1_we0;
output  [7:0] v13602_1_d0;
output  [7:0] v13602_2_address0;
output   v13602_2_ce0;
output   v13602_2_we0;
output  [7:0] v13602_2_d0;
output  [7:0] v13602_3_address0;
output   v13602_3_ce0;
output   v13602_3_we0;
output  [7:0] v13602_3_d0;
input  [5:0] mul_i13;
input  [0:0] empty_106;
input  [0:0] empty;
input  [2:0] zext_ln17178_1;
input  [1:0] zext_ln17178;
output  [13:0] v16147_0_0_address0;
output   v16147_0_0_ce0;
input  [7:0] v16147_0_0_q0;
output  [13:0] v16147_1_0_address0;
output   v16147_1_0_ce0;
input  [7:0] v16147_1_0_q0;
output  [13:0] v16147_0_1_address0;
output   v16147_0_1_ce0;
input  [7:0] v16147_0_1_q0;
output  [13:0] v16147_1_1_address0;
output   v16147_1_1_ce0;
input  [7:0] v16147_1_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln17144_fu_494_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [13:0] zext_ln17178_cast_fu_282_p1;
reg   [13:0] zext_ln17178_cast_reg_718;
wire   [11:0] zext_ln17178_1_cast_fu_286_p1;
reg   [11:0] zext_ln17178_1_cast_reg_726;
wire   [3:0] lshr_ln_fu_336_p4;
reg   [3:0] lshr_ln_reg_732;
reg   [3:0] lshr_ln_reg_732_pp0_iter1_reg;
reg   [4:0] tmp_s_reg_737;
wire   [3:0] lshr_ln51_fu_362_p4;
reg   [3:0] lshr_ln51_reg_745;
reg   [3:0] lshr_ln51_reg_745_pp0_iter1_reg;
wire   [11:0] add_ln17148_fu_414_p2;
reg   [11:0] add_ln17148_reg_752;
wire   [4:0] lshr_ln52_fu_420_p4;
reg   [4:0] lshr_ln52_reg_758;
wire   [11:0] add_ln17150_fu_462_p2;
reg   [11:0] add_ln17150_reg_764;
wire   [0:0] xor_ln17145_fu_488_p2;
reg   [0:0] xor_ln17145_reg_770;
reg   [0:0] icmp_ln17144_reg_775;
wire   [11:0] add_ln17152_fu_567_p2;
reg   [11:0] add_ln17152_reg_784;
wire   [11:0] add_ln17154_fu_622_p2;
reg   [11:0] add_ln17154_reg_795;
wire   [63:0] zext_ln17154_fu_633_p1;
reg   [63:0] zext_ln17154_reg_801;
reg   [0:0] ap_phi_mux_icmp_ln1714548_phi_fu_275_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln17148_2_fu_536_p1;
wire   [63:0] zext_ln17150_2_fu_593_p1;
wire   [63:0] zext_ln17152_2_fu_660_p1;
wire   [63:0] zext_ln17154_3_fu_686_p1;
reg   [7:0] indvar_flatten45_fu_116;
wire   [7:0] add_ln17144_1_fu_474_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten45_load;
reg   [5:0] v1345246_fu_120;
wire   [5:0] v13452_fu_328_p3;
reg   [5:0] ap_sig_allocacmp_v1345246_load;
reg   [5:0] v1345347_fu_124;
wire   [5:0] v13453_fu_468_p2;
reg   [5:0] ap_sig_allocacmp_v1345347_load;
reg    v16147_0_0_ce0_local;
reg    v16147_0_1_ce0_local;
reg    v16147_1_0_ce0_local;
reg    v16147_1_1_ce0_local;
reg    v13602_3_we0_local;
reg    v13602_3_ce0_local;
reg    v13602_2_we0_local;
reg    v13602_2_ce0_local;
reg    v13602_1_we0_local;
reg    v13602_1_ce0_local;
reg    v13602_we0_local;
reg    v13602_ce0_local;
wire   [5:0] add_ln17144_fu_314_p2;
wire   [5:0] empty_356_fu_346_p2;
wire   [5:0] select_ln17144_fu_320_p3;
wire   [9:0] tmp_86_fu_378_p5;
wire   [11:0] p_shl25_fu_394_p6;
wire   [11:0] zext_ln17148_fu_390_p1;
wire   [11:0] sub_ln17148_fu_408_p2;
wire   [5:0] add_ln17147_fu_372_p2;
wire   [9:0] tmp_88_fu_430_p4;
wire   [11:0] p_shl21_fu_444_p5;
wire   [11:0] zext_ln17150_fu_440_p1;
wire   [11:0] sub_ln17150_fu_456_p2;
wire   [0:0] tmp_384_fu_480_p3;
wire   [13:0] p_shl24_fu_518_p3;
wire   [13:0] zext_ln17148_1_fu_515_p1;
wire   [13:0] sub_ln17148_1_fu_525_p2;
wire   [13:0] add_ln17148_1_fu_531_p2;
wire   [9:0] tmp_87_fu_541_p4;
wire   [11:0] p_shl23_fu_552_p5;
wire   [11:0] zext_ln17152_fu_548_p1;
wire   [11:0] sub_ln17152_fu_561_p2;
wire   [13:0] p_shl20_fu_575_p3;
wire   [13:0] zext_ln17150_1_fu_572_p1;
wire   [13:0] sub_ln17150_1_fu_582_p2;
wire   [13:0] add_ln17150_1_fu_588_p2;
wire   [9:0] tmp_89_fu_598_p3;
wire   [11:0] p_shl19_fu_608_p4;
wire   [11:0] zext_ln17154_1_fu_604_p1;
wire   [11:0] sub_ln17154_fu_616_p2;
wire   [7:0] tmp_85_fu_627_p3;
wire   [13:0] p_shl22_fu_642_p3;
wire   [13:0] zext_ln17152_1_fu_639_p1;
wire   [13:0] sub_ln17152_1_fu_649_p2;
wire   [13:0] add_ln17152_1_fu_655_p2;
wire   [13:0] p_shl_fu_668_p3;
wire   [13:0] zext_ln17154_2_fu_665_p1;
wire   [13:0] sub_ln17154_1_fu_675_p2;
wire   [13:0] add_ln17154_1_fu_681_p2;
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
reg    ap_condition_516;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 indvar_flatten45_fu_116 = 8'd0;
#0 v1345246_fu_120 = 6'd0;
#0 v1345347_fu_124 = 6'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten45_fu_116 <= add_ln17144_1_fu_474_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten45_fu_116 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v1345246_fu_120 <= v13452_fu_328_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v1345246_fu_120 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v1345347_fu_124 <= v13453_fu_468_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v1345347_fu_124 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln17148_reg_752 <= add_ln17148_fu_414_p2;
        add_ln17150_reg_764 <= add_ln17150_fu_462_p2;
        add_ln17152_reg_784 <= add_ln17152_fu_567_p2;
        add_ln17154_reg_795 <= add_ln17154_fu_622_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln17144_reg_775 <= icmp_ln17144_fu_494_p2;
        lshr_ln51_reg_745 <= {{select_ln17144_fu_320_p3[4:1]}};
        lshr_ln51_reg_745_pp0_iter1_reg <= lshr_ln51_reg_745;
        lshr_ln52_reg_758 <= {{add_ln17147_fu_372_p2[5:1]}};
        lshr_ln_reg_732 <= {{v13452_fu_328_p3[4:1]}};
        lshr_ln_reg_732_pp0_iter1_reg <= lshr_ln_reg_732;
        tmp_s_reg_737 <= {{empty_356_fu_346_p2[5:1]}};
        zext_ln17178_1_cast_reg_726[2 : 0] <= zext_ln17178_1_cast_fu_286_p1[2 : 0];
        zext_ln17178_cast_reg_718[1 : 0] <= zext_ln17178_cast_fu_282_p1[1 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xor_ln17145_reg_770 <= xor_ln17145_fu_488_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        zext_ln17154_reg_801[7 : 0] <= zext_ln17154_fu_633_p1[7 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln17144_fu_494_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_516)) begin
            ap_phi_mux_icmp_ln1714548_phi_fu_275_p4 = xor_ln17145_reg_770;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1714548_phi_fu_275_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln1714548_phi_fu_275_p4 = xor_ln17145_reg_770;
        end
    end else begin
        ap_phi_mux_icmp_ln1714548_phi_fu_275_p4 = xor_ln17145_reg_770;
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten45_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten45_load = indvar_flatten45_fu_116;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1345246_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v1345246_load = v1345246_fu_120;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1345347_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v1345347_load = v1345347_fu_124;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13602_1_ce0_local = 1'b1;
    end else begin
        v13602_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13602_1_we0_local = 1'b1;
    end else begin
        v13602_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13602_2_ce0_local = 1'b1;
    end else begin
        v13602_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13602_2_we0_local = 1'b1;
    end else begin
        v13602_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13602_3_ce0_local = 1'b1;
    end else begin
        v13602_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13602_3_we0_local = 1'b1;
    end else begin
        v13602_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13602_ce0_local = 1'b1;
    end else begin
        v13602_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13602_we0_local = 1'b1;
    end else begin
        v13602_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16147_0_0_ce0_local = 1'b1;
    end else begin
        v16147_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16147_0_1_ce0_local = 1'b1;
    end else begin
        v16147_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16147_1_0_ce0_local = 1'b1;
    end else begin
        v16147_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16147_1_1_ce0_local = 1'b1;
    end else begin
        v16147_1_1_ce0_local = 1'b0;
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
assign add_ln17144_1_fu_474_p2 = (ap_sig_allocacmp_indvar_flatten45_load + 8'd1);
assign add_ln17144_fu_314_p2 = (ap_sig_allocacmp_v1345246_load + 6'd2);
assign add_ln17147_fu_372_p2 = (select_ln17144_fu_320_p3 + mul_i13);
assign add_ln17148_1_fu_531_p2 = (sub_ln17148_1_fu_525_p2 + zext_ln17178_cast_reg_718);
assign add_ln17148_fu_414_p2 = (sub_ln17148_fu_408_p2 + zext_ln17178_1_cast_fu_286_p1);
assign add_ln17150_1_fu_588_p2 = (sub_ln17150_1_fu_582_p2 + zext_ln17178_cast_reg_718);
assign add_ln17150_fu_462_p2 = (sub_ln17150_fu_456_p2 + zext_ln17178_1_cast_fu_286_p1);
assign add_ln17152_1_fu_655_p2 = (sub_ln17152_1_fu_649_p2 + zext_ln17178_cast_reg_718);
assign add_ln17152_fu_567_p2 = (sub_ln17152_fu_561_p2 + zext_ln17178_1_cast_reg_726);
assign add_ln17154_1_fu_681_p2 = (sub_ln17154_1_fu_675_p2 + zext_ln17178_cast_reg_718);
assign add_ln17154_fu_622_p2 = (sub_ln17154_fu_616_p2 + zext_ln17178_1_cast_reg_726);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_516 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln17144_reg_775 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_356_fu_346_p2 = (v13452_fu_328_p3 + mul_i);
assign icmp_ln17144_fu_494_p2 = ((ap_sig_allocacmp_indvar_flatten45_load == 8'd255) ? 1'b1 : 1'b0);
assign lshr_ln51_fu_362_p4 = {{select_ln17144_fu_320_p3[4:1]}};
assign lshr_ln52_fu_420_p4 = {{add_ln17147_fu_372_p2[5:1]}};
assign lshr_ln_fu_336_p4 = {{v13452_fu_328_p3[4:1]}};
assign p_shl19_fu_608_p4 = {{{tmp_s_reg_737}, {lshr_ln52_reg_758}}, {2'd0}};
assign p_shl20_fu_575_p3 = {{add_ln17150_reg_764}, {2'd0}};
assign p_shl21_fu_444_p5 = {{{{empty_106}, {lshr_ln_fu_336_p4}}, {lshr_ln52_fu_420_p4}}, {2'd0}};
assign p_shl22_fu_642_p3 = {{add_ln17152_reg_784}, {2'd0}};
assign p_shl23_fu_552_p5 = {{{{tmp_s_reg_737}, {empty}}, {lshr_ln51_reg_745}}, {2'd0}};
assign p_shl24_fu_518_p3 = {{add_ln17148_reg_752}, {2'd0}};
assign p_shl25_fu_394_p6 = {{{{{empty_106}, {lshr_ln_fu_336_p4}}, {empty}}, {lshr_ln51_fu_362_p4}}, {2'd0}};
assign p_shl_fu_668_p3 = {{add_ln17154_reg_795}, {2'd0}};
assign select_ln17144_fu_320_p3 = ((ap_phi_mux_icmp_ln1714548_phi_fu_275_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v1345347_load : 6'd0);
assign sub_ln17148_1_fu_525_p2 = (p_shl24_fu_518_p3 - zext_ln17148_1_fu_515_p1);
assign sub_ln17148_fu_408_p2 = (p_shl25_fu_394_p6 - zext_ln17148_fu_390_p1);
assign sub_ln17150_1_fu_582_p2 = (p_shl20_fu_575_p3 - zext_ln17150_1_fu_572_p1);
assign sub_ln17150_fu_456_p2 = (p_shl21_fu_444_p5 - zext_ln17150_fu_440_p1);
assign sub_ln17152_1_fu_649_p2 = (p_shl22_fu_642_p3 - zext_ln17152_1_fu_639_p1);
assign sub_ln17152_fu_561_p2 = (p_shl23_fu_552_p5 - zext_ln17152_fu_548_p1);
assign sub_ln17154_1_fu_675_p2 = (p_shl_fu_668_p3 - zext_ln17154_2_fu_665_p1);
assign sub_ln17154_fu_616_p2 = (p_shl19_fu_608_p4 - zext_ln17154_1_fu_604_p1);
assign tmp_384_fu_480_p3 = v13453_fu_468_p2[32'd5];
assign tmp_85_fu_627_p3 = {{lshr_ln_reg_732_pp0_iter1_reg}, {lshr_ln51_reg_745_pp0_iter1_reg}};
assign tmp_86_fu_378_p5 = {{{{empty_106}, {lshr_ln_fu_336_p4}}, {empty}}, {lshr_ln51_fu_362_p4}};
assign tmp_87_fu_541_p4 = {{{tmp_s_reg_737}, {empty}}, {lshr_ln51_reg_745}};
assign tmp_88_fu_430_p4 = {{{empty_106}, {lshr_ln_fu_336_p4}}, {lshr_ln52_fu_420_p4}};
assign tmp_89_fu_598_p3 = {{tmp_s_reg_737}, {lshr_ln52_reg_758}};
assign v13452_fu_328_p3 = ((ap_phi_mux_icmp_ln1714548_phi_fu_275_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v1345246_load : add_ln17144_fu_314_p2);
assign v13453_fu_468_p2 = (select_ln17144_fu_320_p3 + 6'd2);
assign v13602_1_address0 = zext_ln17154_reg_801;
assign v13602_1_ce0 = v13602_1_ce0_local;
assign v13602_1_d0 = v16147_1_0_q0;
assign v13602_1_we0 = v13602_1_we0_local;
assign v13602_2_address0 = zext_ln17154_fu_633_p1;
assign v13602_2_ce0 = v13602_2_ce0_local;
assign v13602_2_d0 = v16147_0_1_q0;
assign v13602_2_we0 = v13602_2_we0_local;
assign v13602_3_address0 = zext_ln17154_fu_633_p1;
assign v13602_3_ce0 = v13602_3_ce0_local;
assign v13602_3_d0 = v16147_0_0_q0;
assign v13602_3_we0 = v13602_3_we0_local;
assign v13602_address0 = zext_ln17154_reg_801;
assign v13602_ce0 = v13602_ce0_local;
assign v13602_d0 = v16147_1_1_q0;
assign v13602_we0 = v13602_we0_local;
assign v16147_0_0_address0 = zext_ln17148_2_fu_536_p1;
assign v16147_0_0_ce0 = v16147_0_0_ce0_local;
assign v16147_0_1_address0 = zext_ln17150_2_fu_593_p1;
assign v16147_0_1_ce0 = v16147_0_1_ce0_local;
assign v16147_1_0_address0 = zext_ln17152_2_fu_660_p1;
assign v16147_1_0_ce0 = v16147_1_0_ce0_local;
assign v16147_1_1_address0 = zext_ln17154_3_fu_686_p1;
assign v16147_1_1_ce0 = v16147_1_1_ce0_local;
assign xor_ln17145_fu_488_p2 = (tmp_384_fu_480_p3 ^ 1'd1);
assign zext_ln17148_1_fu_515_p1 = add_ln17148_reg_752;
assign zext_ln17148_2_fu_536_p1 = add_ln17148_1_fu_531_p2;
assign zext_ln17148_fu_390_p1 = tmp_86_fu_378_p5;
assign zext_ln17150_1_fu_572_p1 = add_ln17150_reg_764;
assign zext_ln17150_2_fu_593_p1 = add_ln17150_1_fu_588_p2;
assign zext_ln17150_fu_440_p1 = tmp_88_fu_430_p4;
assign zext_ln17152_1_fu_639_p1 = add_ln17152_reg_784;
assign zext_ln17152_2_fu_660_p1 = add_ln17152_1_fu_655_p2;
assign zext_ln17152_fu_548_p1 = tmp_87_fu_541_p4;
assign zext_ln17154_1_fu_604_p1 = tmp_89_fu_598_p3;
assign zext_ln17154_2_fu_665_p1 = add_ln17154_reg_795;
assign zext_ln17154_3_fu_686_p1 = add_ln17154_1_fu_681_p2;
assign zext_ln17154_fu_633_p1 = tmp_85_fu_627_p3;
assign zext_ln17178_1_cast_fu_286_p1 = zext_ln17178_1;
assign zext_ln17178_cast_fu_282_p1 = zext_ln17178;
always @ (posedge ap_clk) begin
    zext_ln17178_cast_reg_718[13:2] <= 12'b000000000000;
    zext_ln17178_1_cast_reg_726[11:3] <= 9'b000000000;
    zext_ln17154_reg_801[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 