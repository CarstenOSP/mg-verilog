module forward_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_Pipeline_VITI (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,rem4,tmp_s,v11265_address0,v11265_ce0,v11265_we0,v11265_d0,v11265_1_address0,v11265_1_ce0,v11265_1_we0,v11265_1_d0,empty_103,v13705_0_address0,v13705_0_ce0,v13705_0_q0,v13705_1_address0,v13705_1_ce0,v13705_1_q0,v13705_2_address0,v13705_2_ce0,v13705_2_q0,v13705_3_address0,v13705_3_ce0,v13705_3_q0,empty); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [4:0] rem4;
input  [9:0] tmp_s;
output  [12:0] v11265_address0;
output   v11265_ce0;
output   v11265_we0;
output  [7:0] v11265_d0;
output  [12:0] v11265_1_address0;
output   v11265_1_ce0;
output   v11265_1_we0;
output  [7:0] v11265_1_d0;
input  [1:0] empty_103;
output  [19:0] v13705_0_address0;
output   v13705_0_ce0;
input  [7:0] v13705_0_q0;
output  [19:0] v13705_1_address0;
output   v13705_1_ce0;
input  [7:0] v13705_1_q0;
output  [19:0] v13705_2_address0;
output   v13705_2_ce0;
input  [7:0] v13705_2_q0;
output  [19:0] v13705_3_address0;
output   v13705_3_ce0;
input  [7:0] v13705_3_q0;
input  [0:0] empty;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln14501_fu_400_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1450239_reg_240;
reg   [0:0] icmp_ln1450338_reg_252;
wire    ap_block_pp0_stage0_11001;
wire   [5:0] v11249_fu_336_p3;
reg   [5:0] v11249_reg_664;
reg   [3:0] lshr_ln_reg_670;
reg   [3:0] lshr_ln_reg_670_pp0_iter2_reg;
reg   [3:0] lshr_ln_reg_670_pp0_iter3_reg;
wire   [0:0] xor_ln14503_fu_388_p2;
reg   [0:0] xor_ln14503_reg_676;
wire   [0:0] icmp_ln14502_fu_394_p2;
reg   [0:0] icmp_ln14502_reg_681;
reg   [0:0] icmp_ln14501_reg_686;
wire   [8:0] add_ln14508_fu_493_p2;
reg   [8:0] add_ln14508_reg_690;
reg   [8:0] add_ln14508_reg_690_pp0_iter3_reg;
wire   [14:0] add_ln14506_fu_517_p2;
reg   [14:0] add_ln14506_reg_695;
wire   [13:0] trunc_ln14506_fu_523_p1;
reg   [13:0] trunc_ln14506_reg_700;
reg   [0:0] ap_phi_mux_icmp_ln1450239_phi_fu_244_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1450338_phi_fu_256_p4;
wire   [63:0] zext_ln14506_5_fu_572_p1;
wire   [63:0] zext_ln14508_1_fu_586_p1;
reg   [12:0] indvar_flatten1233_fu_118;
wire   [12:0] add_ln14501_1_fu_374_p2;
reg   [4:0] v1124834_fu_122;
wire   [4:0] v11248_fu_435_p3;
reg   [10:0] indvar_flatten35_fu_126;
wire   [10:0] select_ln14502_1_fu_366_p3;
reg   [5:0] v1124936_fu_130;
reg   [5:0] v1125037_fu_134;
wire   [5:0] v11250_fu_354_p2;
reg    v13705_0_ce0_local;
reg    v13705_1_ce0_local;
reg    v13705_2_ce0_local;
reg    v13705_3_ce0_local;
reg    v11265_1_we0_local;
wire   [7:0] select_ln14506_fu_592_p3;
reg    v11265_1_ce0_local;
reg    v11265_we0_local;
wire   [7:0] select_ln14508_fu_600_p3;
reg    v11265_ce0_local;
wire   [5:0] select_ln14501_fu_300_p3;
wire   [0:0] or_ln14501_fu_316_p2;
wire   [5:0] select_ln14501_1_fu_308_p3;
wire   [5:0] add_ln14502_fu_322_p2;
wire   [5:0] v11250_mid2_fu_328_p3;
wire   [10:0] add_ln14502_1_fu_360_p2;
wire   [0:0] tmp_438_fu_380_p3;
wire   [4:0] add_ln14501_fu_429_p2;
wire   [3:0] trunc_ln14502_fu_443_p1;
wire   [4:0] empty_366_fu_455_p2;
wire   [13:0] tmp_434_fu_460_p3;
wire   [11:0] tmp_435_fu_472_p3;
wire   [14:0] zext_ln14506_fu_468_p1;
wire   [14:0] zext_ln14506_1_fu_480_p1;
wire   [8:0] tmp_93_fu_447_p3;
wire   [8:0] zext_ln14508_fu_490_p1;
wire   [5:0] empty_367_fu_499_p2;
wire   [9:0] p_cast_i_fu_504_p1;
wire   [9:0] empty_368_fu_508_p2;
wire   [14:0] add_ln14506_2_fu_484_p2;
wire   [14:0] zext_ln14506_2_fu_513_p1;
wire   [18:0] tmp_436_fu_532_p3;
wire   [19:0] tmp_437_fu_539_p3;
wire   [19:0] zext_ln14506_3_fu_546_p1;
wire   [5:0] lshr_ln52_fu_556_p3;
wire   [19:0] sub_ln14504_fu_550_p2;
wire   [19:0] zext_ln14506_4_fu_562_p1;
wire   [19:0] add_ln14506_1_fu_566_p2;
wire   [12:0] tmp_94_fu_580_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
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
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 indvar_flatten1233_fu_118 = 13'd0;
#0 v1124834_fu_122 = 5'd0;
#0 indvar_flatten35_fu_126 = 11'd0;
#0 v1124936_fu_130 = 6'd0;
#0 v1125037_fu_134 = 6'd0;
#0 ap_done_reg = 1'b0;
end
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln14501_reg_686 == 1'd0))) begin
        icmp_ln1450239_reg_240 <= icmp_ln14502_reg_681;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1450239_reg_240 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln14501_reg_686 == 1'd0))) begin
        icmp_ln1450338_reg_252 <= xor_ln14503_reg_676;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1450338_reg_252 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1233_fu_118 <= 13'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten1233_fu_118 <= add_ln14501_1_fu_374_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten35_fu_126 <= 11'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten35_fu_126 <= select_ln14502_1_fu_366_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v1124834_fu_122 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            v1124834_fu_122 <= v11248_fu_435_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1124936_fu_130 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1124936_fu_130 <= v11249_fu_336_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1125037_fu_134 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1125037_fu_134 <= v11250_fu_354_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln14506_reg_695 <= add_ln14506_fu_517_p2;
        add_ln14508_reg_690 <= add_ln14508_fu_493_p2;
        add_ln14508_reg_690_pp0_iter3_reg <= add_ln14508_reg_690;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        lshr_ln_reg_670_pp0_iter2_reg <= lshr_ln_reg_670;
        lshr_ln_reg_670_pp0_iter3_reg <= lshr_ln_reg_670_pp0_iter2_reg;
        trunc_ln14506_reg_700 <= trunc_ln14506_fu_523_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        icmp_ln14501_reg_686 <= icmp_ln14501_fu_400_p2;
        lshr_ln_reg_670 <= {{v11250_mid2_fu_328_p3[4:1]}};
        v11249_reg_664 <= v11249_fu_336_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln14502_reg_681 <= icmp_ln14502_fu_394_p2;
        xor_ln14503_reg_676 <= xor_ln14503_fu_388_p2;
    end
end
always @ (*) begin
    if (((icmp_ln14501_fu_400_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln14501_reg_686 == 1'd0))) begin
        ap_phi_mux_icmp_ln1450239_phi_fu_244_p4 = icmp_ln14502_reg_681;
    end else begin
        ap_phi_mux_icmp_ln1450239_phi_fu_244_p4 = icmp_ln1450239_reg_240;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln14501_reg_686 == 1'd0))) begin
        ap_phi_mux_icmp_ln1450338_phi_fu_256_p4 = xor_ln14503_reg_676;
    end else begin
        ap_phi_mux_icmp_ln1450338_phi_fu_256_p4 = icmp_ln1450338_reg_252;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v11265_1_ce0_local = 1'b1;
    end else begin
        v11265_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v11265_1_we0_local = 1'b1;
    end else begin
        v11265_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v11265_ce0_local = 1'b1;
    end else begin
        v11265_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v11265_we0_local = 1'b1;
    end else begin
        v11265_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13705_0_ce0_local = 1'b1;
    end else begin
        v13705_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13705_1_ce0_local = 1'b1;
    end else begin
        v13705_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13705_2_ce0_local = 1'b1;
    end else begin
        v13705_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13705_3_ce0_local = 1'b1;
    end else begin
        v13705_3_ce0_local = 1'b0;
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
assign add_ln14501_1_fu_374_p2 = (indvar_flatten1233_fu_118 + 13'd1);
assign add_ln14501_fu_429_p2 = (v1124834_fu_122 + 5'd1);
assign add_ln14502_1_fu_360_p2 = (indvar_flatten35_fu_126 + 11'd1);
assign add_ln14502_fu_322_p2 = (select_ln14501_fu_300_p3 + 6'd1);
assign add_ln14506_1_fu_566_p2 = (sub_ln14504_fu_550_p2 + zext_ln14506_4_fu_562_p1);
assign add_ln14506_2_fu_484_p2 = (zext_ln14506_fu_468_p1 + zext_ln14506_1_fu_480_p1);
assign add_ln14506_fu_517_p2 = (add_ln14506_2_fu_484_p2 + zext_ln14506_2_fu_513_p1);
assign add_ln14508_fu_493_p2 = (tmp_93_fu_447_p3 + zext_ln14508_fu_490_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_366_fu_455_p2 = (v11248_fu_435_p3 + rem4);
assign empty_367_fu_499_p2 = v11249_reg_664 << 6'd1;
assign empty_368_fu_508_p2 = (tmp_s + p_cast_i_fu_504_p1);
assign icmp_ln14501_fu_400_p2 = ((indvar_flatten1233_fu_118 == 13'd8191) ? 1'b1 : 1'b0);
assign icmp_ln14502_fu_394_p2 = ((select_ln14502_1_fu_366_p3 == 11'd512) ? 1'b1 : 1'b0);
assign lshr_ln52_fu_556_p3 = {{empty_103}, {lshr_ln_reg_670_pp0_iter2_reg}};
assign or_ln14501_fu_316_p2 = (ap_phi_mux_icmp_ln1450338_phi_fu_256_p4 | ap_phi_mux_icmp_ln1450239_phi_fu_244_p4);
assign p_cast_i_fu_504_p1 = empty_367_fu_499_p2;
assign select_ln14501_1_fu_308_p3 = ((ap_phi_mux_icmp_ln1450239_phi_fu_244_p4[0:0] == 1'b1) ? 6'd0 : v1125037_fu_134);
assign select_ln14501_fu_300_p3 = ((ap_phi_mux_icmp_ln1450239_phi_fu_244_p4[0:0] == 1'b1) ? 6'd0 : v1124936_fu_130);
assign select_ln14502_1_fu_366_p3 = ((ap_phi_mux_icmp_ln1450239_phi_fu_244_p4[0:0] == 1'b1) ? 11'd1 : add_ln14502_1_fu_360_p2);
assign select_ln14506_fu_592_p3 = ((empty[0:0] == 1'b1) ? v13705_1_q0 : v13705_0_q0);
assign select_ln14508_fu_600_p3 = ((empty[0:0] == 1'b1) ? v13705_3_q0 : v13705_2_q0);
assign sub_ln14504_fu_550_p2 = (tmp_437_fu_539_p3 - zext_ln14506_3_fu_546_p1);
assign tmp_434_fu_460_p3 = {{empty_366_fu_455_p2}, {9'd0}};
assign tmp_435_fu_472_p3 = {{empty_366_fu_455_p2}, {7'd0}};
assign tmp_436_fu_532_p3 = {{add_ln14506_reg_695}, {4'd0}};
assign tmp_437_fu_539_p3 = {{trunc_ln14506_reg_700}, {6'd0}};
assign tmp_438_fu_380_p3 = v11250_fu_354_p2[32'd5];
assign tmp_93_fu_447_p3 = {{trunc_ln14502_fu_443_p1}, {5'd0}};
assign tmp_94_fu_580_p3 = {{add_ln14508_reg_690_pp0_iter3_reg}, {lshr_ln_reg_670_pp0_iter3_reg}};
assign trunc_ln14502_fu_443_p1 = v11248_fu_435_p3[3:0];
assign trunc_ln14506_fu_523_p1 = add_ln14506_fu_517_p2[13:0];
assign v11248_fu_435_p3 = ((icmp_ln1450239_reg_240[0:0] == 1'b1) ? add_ln14501_fu_429_p2 : v1124834_fu_122);
assign v11249_fu_336_p3 = ((or_ln14501_fu_316_p2[0:0] == 1'b1) ? select_ln14501_fu_300_p3 : add_ln14502_fu_322_p2);
assign v11250_fu_354_p2 = (v11250_mid2_fu_328_p3 + 6'd2);
assign v11250_mid2_fu_328_p3 = ((or_ln14501_fu_316_p2[0:0] == 1'b1) ? select_ln14501_1_fu_308_p3 : 6'd0);
assign v11265_1_address0 = zext_ln14508_1_fu_586_p1;
assign v11265_1_ce0 = v11265_1_ce0_local;
assign v11265_1_d0 = select_ln14506_fu_592_p3;
assign v11265_1_we0 = v11265_1_we0_local;
assign v11265_address0 = zext_ln14508_1_fu_586_p1;
assign v11265_ce0 = v11265_ce0_local;
assign v11265_d0 = select_ln14508_fu_600_p3;
assign v11265_we0 = v11265_we0_local;
assign v13705_0_address0 = zext_ln14506_5_fu_572_p1;
assign v13705_0_ce0 = v13705_0_ce0_local;
assign v13705_1_address0 = zext_ln14506_5_fu_572_p1;
assign v13705_1_ce0 = v13705_1_ce0_local;
assign v13705_2_address0 = zext_ln14506_5_fu_572_p1;
assign v13705_2_ce0 = v13705_2_ce0_local;
assign v13705_3_address0 = zext_ln14506_5_fu_572_p1;
assign v13705_3_ce0 = v13705_3_ce0_local;
assign xor_ln14503_fu_388_p2 = (tmp_438_fu_380_p3 ^ 1'd1);
assign zext_ln14506_1_fu_480_p1 = tmp_435_fu_472_p3;
assign zext_ln14506_2_fu_513_p1 = empty_368_fu_508_p2;
assign zext_ln14506_3_fu_546_p1 = tmp_436_fu_532_p3;
assign zext_ln14506_4_fu_562_p1 = lshr_ln52_fu_556_p3;
assign zext_ln14506_5_fu_572_p1 = add_ln14506_1_fu_566_p2;
assign zext_ln14506_fu_468_p1 = tmp_434_fu_460_p3;
assign zext_ln14508_1_fu_586_p1 = tmp_94_fu_580_p3;
assign zext_ln14508_fu_490_p1 = v11249_reg_664;
endmodule 