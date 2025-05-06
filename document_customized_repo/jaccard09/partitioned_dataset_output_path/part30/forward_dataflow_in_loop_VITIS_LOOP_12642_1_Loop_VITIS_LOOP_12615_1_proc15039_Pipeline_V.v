
module forward_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i29_i_i,tmp_4_i,v8018_address0,v8018_ce0,v8018_we0,v8018_d0,v8018_1_address0,v8018_1_ce0,v8018_1_we0,v8018_1_d0,trunc_ln12647_1_i,v9196_0_address0,v9196_0_ce0,v9196_0_q0,v9196_1_address0,v9196_1_ce0,v9196_1_q0,empty,thr_add1_cast8_i_i,v9196_2_address0,v9196_2_ce0,v9196_2_q0,v9196_3_address0,v9196_3_ce0,v9196_3_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [5:0] mul_i29_i_i;
input  [7:0] tmp_4_i;
output  [13:0] v8018_address0;
output   v8018_ce0;
output   v8018_we0;
output  [7:0] v8018_d0;
output  [13:0] v8018_1_address0;
output   v8018_1_ce0;
output   v8018_1_we0;
output  [7:0] v8018_1_d0;
input  [5:0] trunc_ln12647_1_i;
output  [19:0] v9196_0_address0;
output   v9196_0_ce0;
input  [7:0] v9196_0_q0;
output  [19:0] v9196_1_address0;
output   v9196_1_ce0;
input  [7:0] v9196_1_q0;
input  [0:0] empty;
input  [7:0] thr_add1_cast8_i_i;
output  [19:0] v9196_2_address0;
output   v9196_2_ce0;
input  [7:0] v9196_2_q0;
output  [19:0] v9196_3_address0;
output   v9196_3_ce0;
input  [7:0] v9196_3_q0;
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
wire   [0:0] icmp_ln12615_fu_410_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1261639_i_reg_254;
reg   [0:0] icmp_ln1261738_i_reg_266;
wire    ap_block_pp0_stage0_11001;
wire   [8:0] thr_add1_cast8_i_i_cast_fu_277_p1;
reg   [8:0] thr_add1_cast8_i_i_cast_reg_754;
wire   [4:0] v8003_mid2_i_fu_346_p3;
reg   [4:0] v8003_mid2_i_reg_759;
reg   [4:0] v8003_mid2_i_reg_759_pp0_iter2_reg;
wire   [4:0] select_ln12616_fu_354_p3;
reg   [4:0] select_ln12616_reg_764;
reg   [4:0] select_ln12616_reg_764_pp0_iter2_reg;
reg   [3:0] lshr_ln119_i_reg_770;
reg   [3:0] lshr_ln119_i_reg_770_pp0_iter2_reg;
wire   [0:0] icmp_ln12617_fu_398_p2;
reg   [0:0] icmp_ln12617_reg_776;
wire   [0:0] icmp_ln12616_fu_404_p2;
reg   [0:0] icmp_ln12616_reg_781;
reg   [0:0] icmp_ln12615_reg_786;
wire   [5:0] select_ln12615_2_fu_445_p3;
reg   [5:0] select_ln12615_2_reg_790;
wire   [13:0] add_ln12620_fu_504_p2;
reg   [13:0] add_ln12620_reg_796;
wire   [13:0] add_ln12622_1_fu_605_p2;
reg   [13:0] add_ln12622_1_reg_802;
reg   [0:0] ap_phi_mux_icmp_ln1261639_i_phi_fu_258_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1261738_i_phi_fu_270_p4;
wire   [63:0] zext_ln12620_5_fu_629_p1;
wire   [63:0] zext_ln12622_6_fu_671_p1;
wire   [63:0] zext_ln12622_4_fu_677_p1;
reg   [13:0] indvar_flatten1233_i_fu_126;
wire   [13:0] add_ln12615_1_fu_392_p2;
reg   [5:0] v800134_i_fu_130;
reg   [8:0] indvar_flatten35_i_fu_134;
wire   [8:0] select_ln12616_1_fu_384_p3;
reg   [4:0] v800236_i_fu_138;
reg   [4:0] v800337_i_fu_142;
wire   [4:0] add_ln12617_fu_372_p2;
reg    v9196_0_ce0_local;
reg    v9196_1_ce0_local;
reg    v9196_2_ce0_local;
reg    v9196_3_ce0_local;
reg    v8018_1_we0_local;
wire   [7:0] select_ln12620_fu_682_p3;
reg    v8018_1_ce0_local;
reg    v8018_we0_local;
wire   [7:0] select_ln12622_fu_690_p3;
reg    v8018_ce0_local;
wire   [4:0] select_ln12615_fu_318_p3;
wire   [0:0] or_ln12615_fu_334_p2;
wire   [4:0] select_ln12615_1_fu_326_p3;
wire   [4:0] add_ln12616_fu_340_p2;
wire   [8:0] add_ln12616_1_fu_378_p2;
wire   [5:0] add_ln12615_fu_439_p2;
wire   [5:0] empty_373_fu_453_p2;
wire   [10:0] tmp_355_fu_466_p3;
wire   [13:0] p_shl25_fu_458_p3;
wire   [13:0] zext_ln12620_fu_474_p1;
wire   [5:0] tmp_277_i_fu_484_p3;
wire   [7:0] p_cast_i_i_i_fu_491_p1;
wire   [7:0] empty_374_fu_495_p2;
wire   [13:0] sub_ln12620_fu_478_p2;
wire   [13:0] zext_ln12620_1_fu_500_p1;
wire   [7:0] tmp_354_fu_522_p3;
wire   [10:0] p_shl27_fu_515_p3;
wire   [10:0] zext_ln12622_fu_529_p1;
wire   [10:0] sub_ln12622_fu_533_p2;
wire   [10:0] zext_ln12622_1_fu_539_p1;
wire   [10:0] add_ln12622_fu_542_p2;
wire   [9:0] trunc_ln12622_fu_548_p1;
wire   [11:0] tmp_356_fu_552_p3;
wire   [13:0] tmp_357_fu_560_p3;
wire   [13:0] zext_ln12622_2_fu_568_p1;
wire   [16:0] tmp_358_fu_585_p3;
wire   [19:0] p_shl_fu_578_p3;
wire   [19:0] zext_ln12620_2_fu_592_p1;
wire   [13:0] sub_ln12622_1_fu_572_p2;
wire   [13:0] zext_ln12622_3_fu_602_p1;
wire   [5:0] zext_ln12620_3_fu_611_p1;
wire   [5:0] add_ln12620_1_fu_614_p2;
wire   [19:0] sub_ln12620_1_fu_596_p2;
wire   [19:0] zext_ln12620_4_fu_619_p1;
wire   [19:0] add_ln12620_2_fu_623_p2;
wire   [5:0] shl_ln_i_fu_635_p3;
wire   [8:0] zext_ln12621_fu_642_p1;
wire   [8:0] add_ln12621_fu_646_p2;
wire   [6:0] lshr_ln120_i_fu_651_p4;
wire   [19:0] zext_ln12622_5_fu_661_p1;
wire   [19:0] add_ln12622_2_fu_665_p2;
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
#0 indvar_flatten1233_i_fu_126 = 14'd0;
#0 v800134_i_fu_130 = 6'd0;
#0 indvar_flatten35_i_fu_134 = 9'd0;
#0 v800236_i_fu_138 = 5'd0;
#0 v800337_i_fu_142 = 5'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln12615_reg_786 == 1'd0))) begin
        icmp_ln1261639_i_reg_254 <= icmp_ln12616_reg_781;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1261639_i_reg_254 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln12615_reg_786 == 1'd0))) begin
        icmp_ln1261738_i_reg_266 <= icmp_ln12617_reg_776;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1261738_i_reg_266 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1233_i_fu_126 <= 14'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten1233_i_fu_126 <= add_ln12615_1_fu_392_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten35_i_fu_134 <= 9'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten35_i_fu_134 <= select_ln12616_1_fu_384_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v800134_i_fu_130 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            v800134_i_fu_130 <= select_ln12615_2_fu_445_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v800236_i_fu_138 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v800236_i_fu_138 <= select_ln12616_fu_354_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v800337_i_fu_142 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v800337_i_fu_142 <= add_ln12617_fu_372_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln12620_reg_796 <= add_ln12620_fu_504_p2;
        add_ln12622_1_reg_802 <= add_ln12622_1_fu_605_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        lshr_ln119_i_reg_770_pp0_iter2_reg <= lshr_ln119_i_reg_770;
        select_ln12615_2_reg_790 <= select_ln12615_2_fu_445_p3;
        select_ln12616_reg_764_pp0_iter2_reg <= select_ln12616_reg_764;
        v8003_mid2_i_reg_759_pp0_iter2_reg <= v8003_mid2_i_reg_759;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        icmp_ln12615_reg_786 <= icmp_ln12615_fu_410_p2;
        lshr_ln119_i_reg_770 <= {{v8003_mid2_i_fu_346_p3[4:1]}};
        select_ln12616_reg_764 <= select_ln12616_fu_354_p3;
        thr_add1_cast8_i_i_cast_reg_754[7 : 0] <= thr_add1_cast8_i_i_cast_fu_277_p1[7 : 0];
        v8003_mid2_i_reg_759 <= v8003_mid2_i_fu_346_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln12616_reg_781 <= icmp_ln12616_fu_404_p2;
        icmp_ln12617_reg_776 <= icmp_ln12617_fu_398_p2;
    end
end
always @ (*) begin
    if (((icmp_ln12615_fu_410_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln12615_reg_786 == 1'd0))) begin
        ap_phi_mux_icmp_ln1261639_i_phi_fu_258_p4 = icmp_ln12616_reg_781;
    end else begin
        ap_phi_mux_icmp_ln1261639_i_phi_fu_258_p4 = icmp_ln1261639_i_reg_254;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln12615_reg_786 == 1'd0))) begin
        ap_phi_mux_icmp_ln1261738_i_phi_fu_270_p4 = icmp_ln12617_reg_776;
    end else begin
        ap_phi_mux_icmp_ln1261738_i_phi_fu_270_p4 = icmp_ln1261738_i_reg_266;
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
        v8018_1_ce0_local = 1'b1;
    end else begin
        v8018_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v8018_1_we0_local = 1'b1;
    end else begin
        v8018_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v8018_ce0_local = 1'b1;
    end else begin
        v8018_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v8018_we0_local = 1'b1;
    end else begin
        v8018_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v9196_0_ce0_local = 1'b1;
    end else begin
        v9196_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v9196_1_ce0_local = 1'b1;
    end else begin
        v9196_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v9196_2_ce0_local = 1'b1;
    end else begin
        v9196_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v9196_3_ce0_local = 1'b1;
    end else begin
        v9196_3_ce0_local = 1'b0;
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
assign add_ln12615_1_fu_392_p2 = (indvar_flatten1233_i_fu_126 + 14'd1);
assign add_ln12615_fu_439_p2 = (v800134_i_fu_130 + 6'd1);
assign add_ln12616_1_fu_378_p2 = (indvar_flatten35_i_fu_134 + 9'd1);
assign add_ln12616_fu_340_p2 = (select_ln12615_fu_318_p3 + 5'd1);
assign add_ln12617_fu_372_p2 = (v8003_mid2_i_fu_346_p3 + 5'd2);
assign add_ln12620_1_fu_614_p2 = (trunc_ln12647_1_i + zext_ln12620_3_fu_611_p1);
assign add_ln12620_2_fu_623_p2 = (sub_ln12620_1_fu_596_p2 + zext_ln12620_4_fu_619_p1);
assign add_ln12620_fu_504_p2 = (sub_ln12620_fu_478_p2 + zext_ln12620_1_fu_500_p1);
assign add_ln12621_fu_646_p2 = (thr_add1_cast8_i_i_cast_reg_754 + zext_ln12621_fu_642_p1);
assign add_ln12622_1_fu_605_p2 = (sub_ln12622_1_fu_572_p2 + zext_ln12622_3_fu_602_p1);
assign add_ln12622_2_fu_665_p2 = (sub_ln12620_1_fu_596_p2 + zext_ln12622_5_fu_661_p1);
assign add_ln12622_fu_542_p2 = (sub_ln12622_fu_533_p2 + zext_ln12622_1_fu_539_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_373_fu_453_p2 = (select_ln12615_2_fu_445_p3 + mul_i29_i_i);
assign empty_374_fu_495_p2 = (tmp_4_i + p_cast_i_i_i_fu_491_p1);
assign icmp_ln12615_fu_410_p2 = ((indvar_flatten1233_i_fu_126 == 14'd12543) ? 1'b1 : 1'b0);
assign icmp_ln12616_fu_404_p2 = ((select_ln12616_1_fu_384_p3 == 9'd392) ? 1'b1 : 1'b0);
assign icmp_ln12617_fu_398_p2 = ((add_ln12617_fu_372_p2 < 5'd28) ? 1'b1 : 1'b0);
assign lshr_ln120_i_fu_651_p4 = {{add_ln12621_fu_646_p2[8:2]}};
assign or_ln12615_fu_334_p2 = (ap_phi_mux_icmp_ln1261738_i_phi_fu_270_p4 | ap_phi_mux_icmp_ln1261639_i_phi_fu_258_p4);
assign p_cast_i_i_i_fu_491_p1 = tmp_277_i_fu_484_p3;
assign p_shl25_fu_458_p3 = {{empty_373_fu_453_p2}, {8'd0}};
assign p_shl27_fu_515_p3 = {{select_ln12615_2_reg_790}, {5'd0}};
assign p_shl_fu_578_p3 = {{add_ln12620_reg_796}, {6'd0}};
assign select_ln12615_1_fu_326_p3 = ((ap_phi_mux_icmp_ln1261639_i_phi_fu_258_p4[0:0] == 1'b1) ? 5'd0 : v800337_i_fu_142);
assign select_ln12615_2_fu_445_p3 = ((icmp_ln1261639_i_reg_254[0:0] == 1'b1) ? add_ln12615_fu_439_p2 : v800134_i_fu_130);
assign select_ln12615_fu_318_p3 = ((ap_phi_mux_icmp_ln1261639_i_phi_fu_258_p4[0:0] == 1'b1) ? 5'd0 : v800236_i_fu_138);
assign select_ln12616_1_fu_384_p3 = ((ap_phi_mux_icmp_ln1261639_i_phi_fu_258_p4[0:0] == 1'b1) ? 9'd1 : add_ln12616_1_fu_378_p2);
assign select_ln12616_fu_354_p3 = ((or_ln12615_fu_334_p2[0:0] == 1'b1) ? select_ln12615_fu_318_p3 : add_ln12616_fu_340_p2);
assign select_ln12620_fu_682_p3 = ((empty[0:0] == 1'b1) ? v9196_1_q0 : v9196_0_q0);
assign select_ln12622_fu_690_p3 = ((empty[0:0] == 1'b1) ? v9196_3_q0 : v9196_2_q0);
assign shl_ln_i_fu_635_p3 = {{v8003_mid2_i_reg_759_pp0_iter2_reg}, {1'd0}};
assign sub_ln12620_1_fu_596_p2 = (p_shl_fu_578_p3 - zext_ln12620_2_fu_592_p1);
assign sub_ln12620_fu_478_p2 = (p_shl25_fu_458_p3 - zext_ln12620_fu_474_p1);
assign sub_ln12622_1_fu_572_p2 = (tmp_357_fu_560_p3 - zext_ln12622_2_fu_568_p1);
assign sub_ln12622_fu_533_p2 = (p_shl27_fu_515_p3 - zext_ln12622_fu_529_p1);
assign thr_add1_cast8_i_i_cast_fu_277_p1 = thr_add1_cast8_i_i;
assign tmp_277_i_fu_484_p3 = {{select_ln12616_reg_764}, {1'd0}};
assign tmp_354_fu_522_p3 = {{select_ln12615_2_reg_790}, {2'd0}};
assign tmp_355_fu_466_p3 = {{empty_373_fu_453_p2}, {5'd0}};
assign tmp_356_fu_552_p3 = {{add_ln12622_fu_542_p2}, {1'd0}};
assign tmp_357_fu_560_p3 = {{trunc_ln12622_fu_548_p1}, {4'd0}};
assign tmp_358_fu_585_p3 = {{add_ln12620_reg_796}, {3'd0}};
assign trunc_ln12622_fu_548_p1 = add_ln12622_fu_542_p2[9:0];
assign v8003_mid2_i_fu_346_p3 = ((or_ln12615_fu_334_p2[0:0] == 1'b1) ? select_ln12615_1_fu_326_p3 : 5'd0);
assign v8018_1_address0 = zext_ln12622_4_fu_677_p1;
assign v8018_1_ce0 = v8018_1_ce0_local;
assign v8018_1_d0 = select_ln12620_fu_682_p3;
assign v8018_1_we0 = v8018_1_we0_local;
assign v8018_address0 = zext_ln12622_4_fu_677_p1;
assign v8018_ce0 = v8018_ce0_local;
assign v8018_d0 = select_ln12622_fu_690_p3;
assign v8018_we0 = v8018_we0_local;
assign v9196_0_address0 = zext_ln12620_5_fu_629_p1;
assign v9196_0_ce0 = v9196_0_ce0_local;
assign v9196_1_address0 = zext_ln12620_5_fu_629_p1;
assign v9196_1_ce0 = v9196_1_ce0_local;
assign v9196_2_address0 = zext_ln12622_6_fu_671_p1;
assign v9196_2_ce0 = v9196_2_ce0_local;
assign v9196_3_address0 = zext_ln12622_6_fu_671_p1;
assign v9196_3_ce0 = v9196_3_ce0_local;
assign zext_ln12620_1_fu_500_p1 = empty_374_fu_495_p2;
assign zext_ln12620_2_fu_592_p1 = tmp_358_fu_585_p3;
assign zext_ln12620_3_fu_611_p1 = lshr_ln119_i_reg_770_pp0_iter2_reg;
assign zext_ln12620_4_fu_619_p1 = add_ln12620_1_fu_614_p2;
assign zext_ln12620_5_fu_629_p1 = add_ln12620_2_fu_623_p2;
assign zext_ln12620_fu_474_p1 = tmp_355_fu_466_p3;
assign zext_ln12621_fu_642_p1 = shl_ln_i_fu_635_p3;
assign zext_ln12622_1_fu_539_p1 = select_ln12616_reg_764_pp0_iter2_reg;
assign zext_ln12622_2_fu_568_p1 = tmp_356_fu_552_p3;
assign zext_ln12622_3_fu_602_p1 = lshr_ln119_i_reg_770_pp0_iter2_reg;
assign zext_ln12622_4_fu_677_p1 = add_ln12622_1_reg_802;
assign zext_ln12622_5_fu_661_p1 = lshr_ln120_i_fu_651_p4;
assign zext_ln12622_6_fu_671_p1 = add_ln12622_2_fu_665_p2;
assign zext_ln12622_fu_529_p1 = tmp_354_fu_522_p3;
always @ (posedge ap_clk) begin
    thr_add1_cast8_i_i_cast_reg_754[8] <= 1'b0;
end
endmodule 
