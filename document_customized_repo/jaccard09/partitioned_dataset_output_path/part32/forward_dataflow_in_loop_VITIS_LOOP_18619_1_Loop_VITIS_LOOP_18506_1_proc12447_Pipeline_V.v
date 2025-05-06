
module forward_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v16168_0_address0,v16168_0_ce0,v16168_0_we0,v16168_0_d0,v16168_1_address0,v16168_1_ce0,v16168_1_we0,v16168_1_d0,and_ln,mul9_i66_i,v14383_1_i_address0,v14383_1_i_ce0,v14383_1_i_q0,v14383_i_address0,v14383_i_ce0,v14383_i_q0,mul13_i_i,trunc_ln);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [17:0] v16168_0_address0;
output   v16168_0_ce0;
output   v16168_0_we0;
output  [7:0] v16168_0_d0;
output  [17:0] v16168_1_address0;
output   v16168_1_ce0;
output   v16168_1_we0;
output  [7:0] v16168_1_d0;
input  [4:0] and_ln;
input  [6:0] mul9_i66_i;
output  [12:0] v14383_1_i_address0;
output   v14383_1_i_ce0;
input  [7:0] v14383_1_i_q0;
output  [12:0] v14383_i_address0;
output   v14383_i_ce0;
input  [7:0] v14383_i_q0;
input  [6:0] mul13_i_i;
input  [5:0] trunc_ln;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln18506_fu_446_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1850739_reg_214;
reg   [0:0] icmp_ln1850838_reg_225;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] v14332_fu_326_p3;
reg   [4:0] v14332_reg_674;
wire   [4:0] empty_fu_360_p2;
reg   [4:0] empty_reg_679;
wire   [9:0] add_ln18510_fu_369_p2;
reg   [9:0] add_ln18510_reg_685;
wire   [8:0] trunc_ln18510_fu_375_p1;
reg   [8:0] trunc_ln18510_reg_690;
reg   [3:0] lshr_ln_reg_695;
reg   [3:0] lshr_ln_reg_695_pp0_iter2_reg;
reg   [5:0] lshr_ln41_reg_701;
reg   [5:0] lshr_ln41_reg_701_pp0_iter2_reg;
wire   [0:0] icmp_ln18508_fu_434_p2;
reg   [0:0] icmp_ln18508_reg_706;
wire   [0:0] icmp_ln18507_fu_440_p2;
reg   [0:0] icmp_ln18507_reg_711;
reg   [0:0] icmp_ln18506_reg_716;
wire   [11:0] add_ln18513_fu_537_p2;
reg   [11:0] add_ln18513_reg_720;
reg   [0:0] ap_phi_mux_icmp_ln1850739_phi_fu_218_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1850838_phi_fu_229_p4;
wire   [63:0] zext_ln18510_4_fu_552_p1;
wire   [63:0] zext_ln18511_1_fu_600_p1;
wire   [63:0] zext_ln18513_4_fu_614_p1;
reg   [12:0] indvar_flatten1233_fu_116;
wire   [12:0] add_ln18506_1_fu_428_p2;
reg   [4:0] v1433134_fu_120;
wire   [4:0] v14331_fu_304_p3;
reg   [8:0] indvar_flatten35_fu_124;
wire   [8:0] select_ln18507_1_fu_420_p3;
reg   [4:0] v1433236_fu_128;
reg   [4:0] v1433337_fu_132;
wire   [4:0] v14333_fu_408_p2;
reg    v14383_1_i_ce0_local;
reg    v14383_i_ce0_local;
reg    v16168_0_we0_local;
reg    v16168_0_ce0_local;
reg    v16168_1_we0_local;
reg    v16168_1_ce0_local;
wire   [4:0] add_ln18506_fu_276_p2;
wire   [4:0] select_ln18506_fu_282_p3;
wire   [0:0] or_ln18506_fu_298_p2;
wire   [4:0] select_ln18506_1_fu_290_p3;
wire   [4:0] add_ln18507_fu_312_p2;
wire   [6:0] tmp_fu_342_p3;
wire   [9:0] p_shl28_fu_334_p3;
wire   [9:0] zext_ln18510_fu_350_p1;
wire   [9:0] sub_ln18510_fu_354_p2;
wire   [9:0] zext_ln18510_1_fu_365_p1;
wire   [4:0] v14333_mid2_fu_318_p3;
wire   [6:0] zext_ln18508_fu_379_p1;
wire   [6:0] add_ln18511_fu_393_p2;
wire   [8:0] add_ln18507_1_fu_414_p2;
wire   [8:0] tmp_255_fu_484_p3;
wire   [11:0] p_shl26_fu_477_p3;
wire   [11:0] zext_ln18513_fu_491_p1;
wire   [10:0] tmp_256_fu_501_p3;
wire   [12:0] tmp_257_fu_508_p3;
wire   [12:0] zext_ln18510_2_fu_515_p1;
wire   [6:0] zext_ln18507_fu_525_p1;
wire   [6:0] empty_310_fu_528_p2;
wire   [11:0] sub_ln18513_fu_495_p2;
wire   [11:0] zext_ln18513_1_fu_533_p1;
wire   [12:0] sub_ln18507_fu_519_p2;
wire   [12:0] zext_ln18510_3_fu_543_p1;
wire   [12:0] add_ln18510_1_fu_546_p2;
wire   [14:0] tmp_258_fu_565_p3;
wire   [17:0] p_shl_fu_558_p3;
wire   [17:0] zext_ln18513_2_fu_572_p1;
wire   [5:0] zext_ln18508_1_fu_582_p1;
wire   [5:0] add_ln18511_1_fu_585_p2;
wire   [17:0] sub_ln18513_1_fu_576_p2;
wire   [17:0] zext_ln18511_fu_590_p1;
wire   [17:0] add_ln18511_2_fu_594_p2;
wire   [17:0] zext_ln18513_3_fu_605_p1;
wire   [17:0] add_ln18513_1_fu_608_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
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
#0 indvar_flatten1233_fu_116 = 13'd0;
#0 v1433134_fu_120 = 5'd0;
#0 indvar_flatten35_fu_124 = 9'd0;
#0 v1433236_fu_128 = 5'd0;
#0 v1433337_fu_132 = 5'd0;
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln18506_reg_716 == 1'd0))) begin
        icmp_ln1850739_reg_214 <= icmp_ln18507_reg_711;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1850739_reg_214 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln18506_reg_716 == 1'd0))) begin
        icmp_ln1850838_reg_225 <= icmp_ln18508_reg_706;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1850838_reg_225 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1233_fu_116 <= 13'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten1233_fu_116 <= add_ln18506_1_fu_428_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten35_fu_124 <= 9'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten35_fu_124 <= select_ln18507_1_fu_420_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1433134_fu_120 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1433134_fu_120 <= v14331_fu_304_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1433236_fu_128 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1433236_fu_128 <= v14332_fu_326_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1433337_fu_132 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1433337_fu_132 <= v14333_fu_408_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln18510_reg_685 <= add_ln18510_fu_369_p2;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        empty_reg_679 <= empty_fu_360_p2;
        icmp_ln18506_reg_716 <= icmp_ln18506_fu_446_p2;
        lshr_ln41_reg_701 <= {{add_ln18511_fu_393_p2[6:1]}};
        lshr_ln_reg_695 <= {{v14333_mid2_fu_318_p3[4:1]}};
        trunc_ln18510_reg_690 <= trunc_ln18510_fu_375_p1;
        v14332_reg_674 <= v14332_fu_326_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln18513_reg_720 <= add_ln18513_fu_537_p2;
        lshr_ln41_reg_701_pp0_iter2_reg <= lshr_ln41_reg_701;
        lshr_ln_reg_695_pp0_iter2_reg <= lshr_ln_reg_695;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln18507_reg_711 <= icmp_ln18507_fu_440_p2;
        icmp_ln18508_reg_706 <= icmp_ln18508_fu_434_p2;
    end
end
always @ (*) begin
    if (((icmp_ln18506_fu_446_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln18506_reg_716 == 1'd0))) begin
        ap_phi_mux_icmp_ln1850739_phi_fu_218_p4 = icmp_ln18507_reg_711;
    end else begin
        ap_phi_mux_icmp_ln1850739_phi_fu_218_p4 = icmp_ln1850739_reg_214;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln18506_reg_716 == 1'd0))) begin
        ap_phi_mux_icmp_ln1850838_phi_fu_229_p4 = icmp_ln18508_reg_706;
    end else begin
        ap_phi_mux_icmp_ln1850838_phi_fu_229_p4 = icmp_ln1850838_reg_225;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14383_1_i_ce0_local = 1'b1;
    end else begin
        v14383_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14383_i_ce0_local = 1'b1;
    end else begin
        v14383_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16168_0_ce0_local = 1'b1;
    end else begin
        v16168_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16168_0_we0_local = 1'b1;
    end else begin
        v16168_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16168_1_ce0_local = 1'b1;
    end else begin
        v16168_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16168_1_we0_local = 1'b1;
    end else begin
        v16168_1_we0_local = 1'b0;
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
assign add_ln18506_1_fu_428_p2 = (indvar_flatten1233_fu_116 + 13'd1);
assign add_ln18506_fu_276_p2 = (v1433134_fu_120 + 5'd1);
assign add_ln18507_1_fu_414_p2 = (indvar_flatten35_fu_124 + 9'd1);
assign add_ln18507_fu_312_p2 = (select_ln18506_fu_282_p3 + 5'd1);
assign add_ln18510_1_fu_546_p2 = (sub_ln18507_fu_519_p2 + zext_ln18510_3_fu_543_p1);
assign add_ln18510_fu_369_p2 = (sub_ln18510_fu_354_p2 + zext_ln18510_1_fu_365_p1);
assign add_ln18511_1_fu_585_p2 = (trunc_ln + zext_ln18508_1_fu_582_p1);
assign add_ln18511_2_fu_594_p2 = (sub_ln18513_1_fu_576_p2 + zext_ln18511_fu_590_p1);
assign add_ln18511_fu_393_p2 = (mul13_i_i + zext_ln18508_fu_379_p1);
assign add_ln18513_1_fu_608_p2 = (sub_ln18513_1_fu_576_p2 + zext_ln18513_3_fu_605_p1);
assign add_ln18513_fu_537_p2 = (sub_ln18513_fu_495_p2 + zext_ln18513_1_fu_533_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_310_fu_528_p2 = (mul9_i66_i + zext_ln18507_fu_525_p1);
assign empty_fu_360_p2 = (v14331_fu_304_p3 + and_ln);
assign icmp_ln18506_fu_446_p2 = ((indvar_flatten1233_fu_116 == 13'd6271) ? 1'b1 : 1'b0);
assign icmp_ln18507_fu_440_p2 = ((select_ln18507_1_fu_420_p3 == 9'd392) ? 1'b1 : 1'b0);
assign icmp_ln18508_fu_434_p2 = ((v14333_fu_408_p2 < 5'd28) ? 1'b1 : 1'b0);
assign or_ln18506_fu_298_p2 = (ap_phi_mux_icmp_ln1850838_phi_fu_229_p4 | ap_phi_mux_icmp_ln1850739_phi_fu_218_p4);
assign p_shl26_fu_477_p3 = {{empty_reg_679}, {7'd0}};
assign p_shl28_fu_334_p3 = {{v14331_fu_304_p3}, {5'd0}};
assign p_shl_fu_558_p3 = {{add_ln18513_reg_720}, {6'd0}};
assign select_ln18506_1_fu_290_p3 = ((ap_phi_mux_icmp_ln1850739_phi_fu_218_p4[0:0] == 1'b1) ? 5'd0 : v1433337_fu_132);
assign select_ln18506_fu_282_p3 = ((ap_phi_mux_icmp_ln1850739_phi_fu_218_p4[0:0] == 1'b1) ? 5'd0 : v1433236_fu_128);
assign select_ln18507_1_fu_420_p3 = ((ap_phi_mux_icmp_ln1850739_phi_fu_218_p4[0:0] == 1'b1) ? 9'd1 : add_ln18507_1_fu_414_p2);
assign sub_ln18507_fu_519_p2 = (tmp_257_fu_508_p3 - zext_ln18510_2_fu_515_p1);
assign sub_ln18510_fu_354_p2 = (p_shl28_fu_334_p3 - zext_ln18510_fu_350_p1);
assign sub_ln18513_1_fu_576_p2 = (p_shl_fu_558_p3 - zext_ln18513_2_fu_572_p1);
assign sub_ln18513_fu_495_p2 = (p_shl26_fu_477_p3 - zext_ln18513_fu_491_p1);
assign tmp_255_fu_484_p3 = {{empty_reg_679}, {4'd0}};
assign tmp_256_fu_501_p3 = {{add_ln18510_reg_685}, {1'd0}};
assign tmp_257_fu_508_p3 = {{trunc_ln18510_reg_690}, {4'd0}};
assign tmp_258_fu_565_p3 = {{add_ln18513_reg_720}, {3'd0}};
assign tmp_fu_342_p3 = {{v14331_fu_304_p3}, {2'd0}};
assign trunc_ln18510_fu_375_p1 = add_ln18510_fu_369_p2[8:0];
assign v14331_fu_304_p3 = ((ap_phi_mux_icmp_ln1850739_phi_fu_218_p4[0:0] == 1'b1) ? add_ln18506_fu_276_p2 : v1433134_fu_120);
assign v14332_fu_326_p3 = ((or_ln18506_fu_298_p2[0:0] == 1'b1) ? select_ln18506_fu_282_p3 : add_ln18507_fu_312_p2);
assign v14333_fu_408_p2 = (v14333_mid2_fu_318_p3 + 5'd2);
assign v14333_mid2_fu_318_p3 = ((or_ln18506_fu_298_p2[0:0] == 1'b1) ? select_ln18506_1_fu_290_p3 : 5'd0);
assign v14383_1_i_address0 = zext_ln18510_4_fu_552_p1;
assign v14383_1_i_ce0 = v14383_1_i_ce0_local;
assign v14383_i_address0 = zext_ln18510_4_fu_552_p1;
assign v14383_i_ce0 = v14383_i_ce0_local;
assign v16168_0_address0 = zext_ln18511_1_fu_600_p1;
assign v16168_0_ce0 = v16168_0_ce0_local;
assign v16168_0_d0 = v14383_1_i_q0;
assign v16168_0_we0 = v16168_0_we0_local;
assign v16168_1_address0 = zext_ln18513_4_fu_614_p1;
assign v16168_1_ce0 = v16168_1_ce0_local;
assign v16168_1_d0 = v14383_i_q0;
assign v16168_1_we0 = v16168_1_we0_local;
assign zext_ln18507_fu_525_p1 = v14332_reg_674;
assign zext_ln18508_1_fu_582_p1 = lshr_ln_reg_695_pp0_iter2_reg;
assign zext_ln18508_fu_379_p1 = v14333_mid2_fu_318_p3;
assign zext_ln18510_1_fu_365_p1 = v14332_fu_326_p3;
assign zext_ln18510_2_fu_515_p1 = tmp_256_fu_501_p3;
assign zext_ln18510_3_fu_543_p1 = lshr_ln_reg_695;
assign zext_ln18510_4_fu_552_p1 = add_ln18510_1_fu_546_p2;
assign zext_ln18510_fu_350_p1 = tmp_fu_342_p3;
assign zext_ln18511_1_fu_600_p1 = add_ln18511_2_fu_594_p2;
assign zext_ln18511_fu_590_p1 = add_ln18511_1_fu_585_p2;
assign zext_ln18513_1_fu_533_p1 = empty_310_fu_528_p2;
assign zext_ln18513_2_fu_572_p1 = tmp_258_fu_565_p3;
assign zext_ln18513_3_fu_605_p1 = lshr_ln41_reg_701_pp0_iter2_reg;
assign zext_ln18513_4_fu_614_p1 = add_ln18513_1_fu_608_p2;
assign zext_ln18513_fu_491_p1 = tmp_255_fu_484_p3;
endmodule 
