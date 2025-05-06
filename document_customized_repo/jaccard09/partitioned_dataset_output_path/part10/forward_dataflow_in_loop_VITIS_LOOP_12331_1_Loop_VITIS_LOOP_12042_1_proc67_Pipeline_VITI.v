
module forward_dataflow_in_loop_VITIS_LOOP_12331_1_Loop_VITIS_LOOP_12042_1_proc67_Pipeline_VITI (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,rem4,p_udiv42_cast,v9653_address0,v9653_ce0,v9653_we0,v9653_d0,v9653_1_address0,v9653_1_ce0,v9653_1_we0,v9653_1_d0,v9653_2_address0,v9653_2_ce0,v9653_2_we0,v9653_2_d0,v9653_3_address0,v9653_3_ce0,v9653_3_we0,v9653_3_d0,mul_i,empty,zext_ln12076_1,zext_ln12076,v13684_0_0_address0,v13684_0_0_ce0,v13684_0_0_q0,v13684_1_0_address0,v13684_1_0_ce0,v13684_1_0_q0,v13684_0_1_address0,v13684_0_1_ce0,v13684_0_1_q0,v13684_1_1_address0,v13684_1_1_ce0,v13684_1_1_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [6:0] rem4;
input  [5:0] p_udiv42_cast;
output  [7:0] v9653_address0;
output   v9653_ce0;
output   v9653_we0;
output  [7:0] v9653_d0;
output  [7:0] v9653_1_address0;
output   v9653_1_ce0;
output   v9653_1_we0;
output  [7:0] v9653_1_d0;
output  [7:0] v9653_2_address0;
output   v9653_2_ce0;
output   v9653_2_we0;
output  [7:0] v9653_2_d0;
output  [7:0] v9653_3_address0;
output   v9653_3_ce0;
output   v9653_3_we0;
output  [7:0] v9653_3_d0;
input  [5:0] mul_i;
input  [0:0] empty;
input  [2:0] zext_ln12076_1;
input  [1:0] zext_ln12076;
output  [14:0] v13684_0_0_address0;
output   v13684_0_0_ce0;
input  [7:0] v13684_0_0_q0;
output  [14:0] v13684_1_0_address0;
output   v13684_1_0_ce0;
input  [7:0] v13684_1_0_q0;
output  [14:0] v13684_0_1_address0;
output   v13684_0_1_ce0;
input  [7:0] v13684_0_1_q0;
output  [14:0] v13684_1_1_address0;
output   v13684_1_1_ce0;
input  [7:0] v13684_1_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln12042_fu_313_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1204348_reg_270;
wire    ap_block_pp0_stage0_11001;
wire   [14:0] zext_ln12076_cast_fu_281_p1;
reg   [14:0] zext_ln12076_cast_reg_753;
wire   [12:0] zext_ln12076_1_cast_fu_285_p1;
reg   [12:0] zext_ln12076_1_cast_reg_761;
reg   [0:0] icmp_ln12042_reg_769;
reg   [0:0] icmp_ln12042_reg_769_pp0_iter1_reg;
reg   [3:0] lshr_ln_cast_reg_773;
reg   [3:0] lshr_ln_cast_reg_773_pp0_iter2_reg;
wire   [3:0] lshr_ln69_fu_400_p4;
reg   [3:0] lshr_ln69_reg_778;
reg   [3:0] lshr_ln69_reg_778_pp0_iter2_reg;
wire   [12:0] add_ln12046_fu_445_p2;
reg   [12:0] add_ln12046_reg_783;
wire   [12:0] add_ln12050_fu_480_p2;
reg   [12:0] add_ln12050_reg_789;
wire   [12:0] add_ln12048_fu_523_p2;
reg   [12:0] add_ln12048_reg_795;
wire   [12:0] add_ln12052_fu_556_p2;
reg   [12:0] add_ln12052_reg_801;
wire   [0:0] xor_ln12043_fu_575_p2;
reg   [0:0] xor_ln12043_reg_807;
reg   [0:0] ap_phi_mux_icmp_ln1204348_phi_fu_273_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln12046_2_fu_612_p1;
wire   [63:0] zext_ln12050_2_fu_638_p1;
wire   [63:0] zext_ln12048_2_fu_664_p1;
wire   [63:0] zext_ln12052_3_fu_690_p1;
wire   [63:0] zext_ln12052_fu_701_p1;
reg   [7:0] indvar_flatten45_fu_114;
wire   [7:0] add_ln12042_1_fu_307_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten45_load;
reg   [5:0] v951946_fu_118;
wire   [5:0] v9519_fu_344_p3;
reg   [5:0] v952047_fu_122;
wire   [5:0] v9520_fu_561_p2;
reg    v13684_0_0_ce0_local;
reg    v13684_0_1_ce0_local;
reg    v13684_1_0_ce0_local;
reg    v13684_1_1_ce0_local;
reg    v9653_3_we0_local;
reg    v9653_3_ce0_local;
reg    v9653_2_we0_local;
reg    v9653_2_ce0_local;
reg    v9653_1_we0_local;
reg    v9653_1_ce0_local;
reg    v9653_we0_local;
reg    v9653_ce0_local;
wire   [5:0] add_ln12042_fu_330_p2;
wire   [4:0] lshr_ln_fu_356_p4;
wire   [6:0] zext_ln12042_fu_352_p1;
wire   [5:0] zext_ln12042_1_fu_376_p1;
wire   [6:0] empty_414_fu_380_p2;
wire   [5:0] select_ln12042_fu_336_p3;
wire   [5:0] empty_415_fu_385_p2;
wire   [10:0] tmp_126_fu_415_p4;
wire   [12:0] p_shl29_fu_428_p5;
wire   [12:0] zext_ln12046_fu_424_p1;
wire   [12:0] sub_ln12046_fu_439_p2;
wire   [5:0] tmp_s_fu_390_p4;
wire   [10:0] tmp_127_fu_450_p4;
wire   [12:0] p_shl27_fu_463_p5;
wire   [12:0] zext_ln12050_fu_459_p1;
wire   [12:0] sub_ln12050_fu_474_p2;
wire   [5:0] add_ln12045_fu_410_p2;
wire   [4:0] lshr_ln70_fu_485_p4;
wire   [10:0] tmp_128_fu_495_p3;
wire   [12:0] p_shl25_fu_507_p4;
wire   [12:0] zext_ln12048_fu_503_p1;
wire   [12:0] sub_ln12048_fu_517_p2;
wire   [10:0] tmp_129_fu_528_p3;
wire   [12:0] p_shl23_fu_540_p4;
wire   [12:0] zext_ln12052_1_fu_536_p1;
wire   [12:0] sub_ln12052_fu_550_p2;
wire   [0:0] tmp_558_fu_567_p3;
wire   [14:0] p_shl28_fu_594_p3;
wire   [14:0] zext_ln12046_1_fu_591_p1;
wire   [14:0] sub_ln12046_1_fu_601_p2;
wire   [14:0] add_ln12046_1_fu_607_p2;
wire   [14:0] p_shl26_fu_620_p3;
wire   [14:0] zext_ln12050_1_fu_617_p1;
wire   [14:0] sub_ln12050_1_fu_627_p2;
wire   [14:0] add_ln12050_1_fu_633_p2;
wire   [14:0] p_shl24_fu_646_p3;
wire   [14:0] zext_ln12048_1_fu_643_p1;
wire   [14:0] sub_ln12048_1_fu_653_p2;
wire   [14:0] add_ln12048_1_fu_659_p2;
wire   [14:0] p_shl_fu_672_p3;
wire   [14:0] zext_ln12052_2_fu_669_p1;
wire   [14:0] sub_ln12052_1_fu_679_p2;
wire   [14:0] add_ln12052_1_fu_685_p2;
wire   [7:0] tmp_125_fu_695_p3;
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
#0 indvar_flatten45_fu_114 = 8'd0;
#0 v951946_fu_118 = 6'd0;
#0 v952047_fu_122 = 6'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln12042_reg_769_pp0_iter1_reg == 1'd0))) begin
        icmp_ln1204348_reg_270 <= xor_ln12043_reg_807;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1204348_reg_270 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten45_fu_114 <= add_ln12042_1_fu_307_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten45_fu_114 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v951946_fu_118 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v951946_fu_118 <= v9519_fu_344_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v952047_fu_122 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v952047_fu_122 <= v9520_fu_561_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln12046_reg_783 <= add_ln12046_fu_445_p2;
        add_ln12048_reg_795 <= add_ln12048_fu_523_p2;
        add_ln12050_reg_789 <= add_ln12050_fu_480_p2;
        add_ln12052_reg_801 <= add_ln12052_fu_556_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln12042_reg_769 <= icmp_ln12042_fu_313_p2;
        icmp_ln12042_reg_769_pp0_iter1_reg <= icmp_ln12042_reg_769;
        lshr_ln69_reg_778 <= {{select_ln12042_fu_336_p3[4:1]}};
        lshr_ln_cast_reg_773 <= {{v9519_fu_344_p3[4:1]}};
        zext_ln12076_1_cast_reg_761[2 : 0] <= zext_ln12076_1_cast_fu_285_p1[2 : 0];
        zext_ln12076_cast_reg_753[1 : 0] <= zext_ln12076_cast_fu_281_p1[1 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        lshr_ln69_reg_778_pp0_iter2_reg <= lshr_ln69_reg_778;
        lshr_ln_cast_reg_773_pp0_iter2_reg <= lshr_ln_cast_reg_773;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xor_ln12043_reg_807 <= xor_ln12043_fu_575_p2;
    end
end
always @ (*) begin
    if (((icmp_ln12042_fu_313_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln12042_reg_769_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln1204348_phi_fu_273_p4 = xor_ln12043_reg_807;
    end else begin
        ap_phi_mux_icmp_ln1204348_phi_fu_273_p4 = icmp_ln1204348_reg_270;
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
        ap_sig_allocacmp_indvar_flatten45_load = indvar_flatten45_fu_114;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13684_0_0_ce0_local = 1'b1;
    end else begin
        v13684_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13684_0_1_ce0_local = 1'b1;
    end else begin
        v13684_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13684_1_0_ce0_local = 1'b1;
    end else begin
        v13684_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13684_1_1_ce0_local = 1'b1;
    end else begin
        v13684_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v9653_1_ce0_local = 1'b1;
    end else begin
        v9653_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v9653_1_we0_local = 1'b1;
    end else begin
        v9653_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v9653_2_ce0_local = 1'b1;
    end else begin
        v9653_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v9653_2_we0_local = 1'b1;
    end else begin
        v9653_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v9653_3_ce0_local = 1'b1;
    end else begin
        v9653_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v9653_3_we0_local = 1'b1;
    end else begin
        v9653_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v9653_ce0_local = 1'b1;
    end else begin
        v9653_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v9653_we0_local = 1'b1;
    end else begin
        v9653_we0_local = 1'b0;
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
assign add_ln12042_1_fu_307_p2 = (ap_sig_allocacmp_indvar_flatten45_load + 8'd1);
assign add_ln12042_fu_330_p2 = (v951946_fu_118 + 6'd2);
assign add_ln12045_fu_410_p2 = (select_ln12042_fu_336_p3 + mul_i);
assign add_ln12046_1_fu_607_p2 = (sub_ln12046_1_fu_601_p2 + zext_ln12076_cast_reg_753);
assign add_ln12046_fu_445_p2 = (sub_ln12046_fu_439_p2 + zext_ln12076_1_cast_reg_761);
assign add_ln12048_1_fu_659_p2 = (sub_ln12048_1_fu_653_p2 + zext_ln12076_cast_reg_753);
assign add_ln12048_fu_523_p2 = (sub_ln12048_fu_517_p2 + zext_ln12076_1_cast_reg_761);
assign add_ln12050_1_fu_633_p2 = (sub_ln12050_1_fu_627_p2 + zext_ln12076_cast_reg_753);
assign add_ln12050_fu_480_p2 = (sub_ln12050_fu_474_p2 + zext_ln12076_1_cast_reg_761);
assign add_ln12052_1_fu_685_p2 = (sub_ln12052_1_fu_679_p2 + zext_ln12076_cast_reg_753);
assign add_ln12052_fu_556_p2 = (sub_ln12052_fu_550_p2 + zext_ln12076_1_cast_reg_761);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_414_fu_380_p2 = (rem4 + zext_ln12042_fu_352_p1);
assign empty_415_fu_385_p2 = (zext_ln12042_1_fu_376_p1 + p_udiv42_cast);
assign icmp_ln12042_fu_313_p2 = ((ap_sig_allocacmp_indvar_flatten45_load == 8'd255) ? 1'b1 : 1'b0);
assign lshr_ln69_fu_400_p4 = {{select_ln12042_fu_336_p3[4:1]}};
assign lshr_ln70_fu_485_p4 = {{add_ln12045_fu_410_p2[5:1]}};
assign lshr_ln_fu_356_p4 = {{v9519_fu_344_p3[5:1]}};
assign p_shl23_fu_540_p4 = {{{tmp_s_fu_390_p4}, {lshr_ln70_fu_485_p4}}, {2'd0}};
assign p_shl24_fu_646_p3 = {{add_ln12048_reg_795}, {2'd0}};
assign p_shl25_fu_507_p4 = {{{empty_415_fu_385_p2}, {lshr_ln70_fu_485_p4}}, {2'd0}};
assign p_shl26_fu_620_p3 = {{add_ln12050_reg_789}, {2'd0}};
assign p_shl27_fu_463_p5 = {{{{tmp_s_fu_390_p4}, {empty}}, {lshr_ln69_fu_400_p4}}, {2'd0}};
assign p_shl28_fu_594_p3 = {{add_ln12046_reg_783}, {2'd0}};
assign p_shl29_fu_428_p5 = {{{{empty_415_fu_385_p2}, {empty}}, {lshr_ln69_fu_400_p4}}, {2'd0}};
assign p_shl_fu_672_p3 = {{add_ln12052_reg_801}, {2'd0}};
assign select_ln12042_fu_336_p3 = ((ap_phi_mux_icmp_ln1204348_phi_fu_273_p4[0:0] == 1'b1) ? v952047_fu_122 : 6'd0);
assign sub_ln12046_1_fu_601_p2 = (p_shl28_fu_594_p3 - zext_ln12046_1_fu_591_p1);
assign sub_ln12046_fu_439_p2 = (p_shl29_fu_428_p5 - zext_ln12046_fu_424_p1);
assign sub_ln12048_1_fu_653_p2 = (p_shl24_fu_646_p3 - zext_ln12048_1_fu_643_p1);
assign sub_ln12048_fu_517_p2 = (p_shl25_fu_507_p4 - zext_ln12048_fu_503_p1);
assign sub_ln12050_1_fu_627_p2 = (p_shl26_fu_620_p3 - zext_ln12050_1_fu_617_p1);
assign sub_ln12050_fu_474_p2 = (p_shl27_fu_463_p5 - zext_ln12050_fu_459_p1);
assign sub_ln12052_1_fu_679_p2 = (p_shl_fu_672_p3 - zext_ln12052_2_fu_669_p1);
assign sub_ln12052_fu_550_p2 = (p_shl23_fu_540_p4 - zext_ln12052_1_fu_536_p1);
assign tmp_125_fu_695_p3 = {{lshr_ln_cast_reg_773_pp0_iter2_reg}, {lshr_ln69_reg_778_pp0_iter2_reg}};
assign tmp_126_fu_415_p4 = {{{empty_415_fu_385_p2}, {empty}}, {lshr_ln69_fu_400_p4}};
assign tmp_127_fu_450_p4 = {{{tmp_s_fu_390_p4}, {empty}}, {lshr_ln69_fu_400_p4}};
assign tmp_128_fu_495_p3 = {{empty_415_fu_385_p2}, {lshr_ln70_fu_485_p4}};
assign tmp_129_fu_528_p3 = {{tmp_s_fu_390_p4}, {lshr_ln70_fu_485_p4}};
assign tmp_558_fu_567_p3 = v9520_fu_561_p2[32'd5];
assign tmp_s_fu_390_p4 = {{empty_414_fu_380_p2[6:1]}};
assign v13684_0_0_address0 = zext_ln12046_2_fu_612_p1;
assign v13684_0_0_ce0 = v13684_0_0_ce0_local;
assign v13684_0_1_address0 = zext_ln12048_2_fu_664_p1;
assign v13684_0_1_ce0 = v13684_0_1_ce0_local;
assign v13684_1_0_address0 = zext_ln12050_2_fu_638_p1;
assign v13684_1_0_ce0 = v13684_1_0_ce0_local;
assign v13684_1_1_address0 = zext_ln12052_3_fu_690_p1;
assign v13684_1_1_ce0 = v13684_1_1_ce0_local;
assign v9519_fu_344_p3 = ((ap_phi_mux_icmp_ln1204348_phi_fu_273_p4[0:0] == 1'b1) ? v951946_fu_118 : add_ln12042_fu_330_p2);
assign v9520_fu_561_p2 = (select_ln12042_fu_336_p3 + 6'd2);
assign v9653_1_address0 = zext_ln12052_fu_701_p1;
assign v9653_1_ce0 = v9653_1_ce0_local;
assign v9653_1_d0 = v13684_1_0_q0;
assign v9653_1_we0 = v9653_1_we0_local;
assign v9653_2_address0 = zext_ln12052_fu_701_p1;
assign v9653_2_ce0 = v9653_2_ce0_local;
assign v9653_2_d0 = v13684_0_1_q0;
assign v9653_2_we0 = v9653_2_we0_local;
assign v9653_3_address0 = zext_ln12052_fu_701_p1;
assign v9653_3_ce0 = v9653_3_ce0_local;
assign v9653_3_d0 = v13684_0_0_q0;
assign v9653_3_we0 = v9653_3_we0_local;
assign v9653_address0 = zext_ln12052_fu_701_p1;
assign v9653_ce0 = v9653_ce0_local;
assign v9653_d0 = v13684_1_1_q0;
assign v9653_we0 = v9653_we0_local;
assign xor_ln12043_fu_575_p2 = (tmp_558_fu_567_p3 ^ 1'd1);
assign zext_ln12042_1_fu_376_p1 = lshr_ln_fu_356_p4;
assign zext_ln12042_fu_352_p1 = v9519_fu_344_p3;
assign zext_ln12046_1_fu_591_p1 = add_ln12046_reg_783;
assign zext_ln12046_2_fu_612_p1 = add_ln12046_1_fu_607_p2;
assign zext_ln12046_fu_424_p1 = tmp_126_fu_415_p4;
assign zext_ln12048_1_fu_643_p1 = add_ln12048_reg_795;
assign zext_ln12048_2_fu_664_p1 = add_ln12048_1_fu_659_p2;
assign zext_ln12048_fu_503_p1 = tmp_128_fu_495_p3;
assign zext_ln12050_1_fu_617_p1 = add_ln12050_reg_789;
assign zext_ln12050_2_fu_638_p1 = add_ln12050_1_fu_633_p2;
assign zext_ln12050_fu_459_p1 = tmp_127_fu_450_p4;
assign zext_ln12052_1_fu_536_p1 = tmp_129_fu_528_p3;
assign zext_ln12052_2_fu_669_p1 = add_ln12052_reg_801;
assign zext_ln12052_3_fu_690_p1 = add_ln12052_1_fu_685_p2;
assign zext_ln12052_fu_701_p1 = tmp_125_fu_695_p3;
assign zext_ln12076_1_cast_fu_285_p1 = zext_ln12076_1;
assign zext_ln12076_cast_fu_281_p1 = zext_ln12076;
always @ (posedge ap_clk) begin
    zext_ln12076_cast_reg_753[14:2] <= 13'b0000000000000;
    zext_ln12076_1_cast_reg_761[12:3] <= 10'b0000000000;
end
endmodule 
