module forward_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,rem4,tmp_6,v12817_address0,v12817_ce0,v12817_we0,v12817_d0,v12817_1_address0,v12817_1_ce0,v12817_1_we0,v12817_1_d0,urem_ln16561,v13699_0_address0,v13699_0_ce0,v13699_0_q0,v13699_1_address0,v13699_1_ce0,v13699_1_q0,v13699_2_address0,v13699_2_ce0,v13699_2_q0,v13699_3_address0,v13699_3_ce0,v13699_3_q0,empty); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [3:0] rem4;
input  [10:0] tmp_6;
output  [11:0] v12817_address0;
output   v12817_ce0;
output   v12817_we0;
output  [7:0] v12817_d0;
output  [11:0] v12817_1_address0;
output   v12817_1_ce0;
output   v12817_1_we0;
output  [7:0] v12817_1_d0;
input  [2:0] urem_ln16561;
output  [20:0] v13699_0_address0;
output   v13699_0_ce0;
input  [7:0] v13699_0_q0;
output  [20:0] v13699_1_address0;
output   v13699_1_ce0;
input  [7:0] v13699_1_q0;
output  [20:0] v13699_2_address0;
output   v13699_2_ce0;
input  [7:0] v13699_2_q0;
output  [20:0] v13699_3_address0;
output   v13699_3_ce0;
input  [7:0] v13699_3_q0;
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
wire   [0:0] icmp_ln16532_fu_402_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1653339_reg_242;
reg   [0:0] icmp_ln1653438_reg_254;
wire    ap_block_pp0_stage0_11001;
wire   [5:0] v12801_fu_338_p3;
reg   [5:0] v12801_reg_666;
reg   [3:0] lshr_ln_reg_672;
reg   [3:0] lshr_ln_reg_672_pp0_iter2_reg;
reg   [3:0] lshr_ln_reg_672_pp0_iter3_reg;
wire   [0:0] xor_ln16534_fu_390_p2;
reg   [0:0] xor_ln16534_reg_678;
wire   [0:0] icmp_ln16533_fu_396_p2;
reg   [0:0] icmp_ln16533_reg_683;
reg   [0:0] icmp_ln16532_reg_688;
wire   [7:0] add_ln16539_fu_495_p2;
reg   [7:0] add_ln16539_reg_692;
reg   [7:0] add_ln16539_reg_692_pp0_iter3_reg;
wire   [14:0] add_ln16537_fu_519_p2;
reg   [14:0] add_ln16537_reg_697;
wire   [13:0] trunc_ln16537_fu_525_p1;
reg   [13:0] trunc_ln16537_reg_702;
reg   [0:0] ap_phi_mux_icmp_ln1653339_phi_fu_246_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1653438_phi_fu_258_p4;
wire   [63:0] zext_ln16537_5_fu_574_p1;
wire   [63:0] zext_ln16539_1_fu_588_p1;
reg   [11:0] indvar_flatten1233_fu_120;
wire   [11:0] add_ln16532_1_fu_376_p2;
reg   [3:0] v1280034_fu_124;
wire   [3:0] v12800_fu_437_p3;
reg   [10:0] indvar_flatten35_fu_128;
wire   [10:0] select_ln16533_1_fu_368_p3;
reg   [5:0] v1280136_fu_132;
reg   [5:0] v1280237_fu_136;
wire   [5:0] v12802_fu_356_p2;
reg    v13699_0_ce0_local;
reg    v13699_1_ce0_local;
reg    v13699_2_ce0_local;
reg    v13699_3_ce0_local;
reg    v12817_1_we0_local;
wire   [7:0] select_ln16537_fu_594_p3;
reg    v12817_1_ce0_local;
reg    v12817_we0_local;
wire   [7:0] select_ln16539_fu_602_p3;
reg    v12817_ce0_local;
wire   [5:0] select_ln16532_fu_302_p3;
wire   [0:0] or_ln16532_fu_318_p2;
wire   [5:0] select_ln16532_1_fu_310_p3;
wire   [5:0] add_ln16533_fu_324_p2;
wire   [5:0] v12802_mid2_fu_330_p3;
wire   [10:0] add_ln16533_1_fu_362_p2;
wire   [0:0] tmp_364_fu_382_p3;
wire   [3:0] add_ln16532_fu_431_p2;
wire   [2:0] trunc_ln16533_fu_445_p1;
wire   [3:0] empty_339_fu_457_p2;
wire   [13:0] tmp_360_fu_462_p3;
wire   [11:0] tmp_361_fu_474_p3;
wire   [14:0] zext_ln16537_fu_470_p1;
wire   [14:0] zext_ln16537_1_fu_482_p1;
wire   [7:0] tmp_s_fu_449_p3;
wire   [7:0] zext_ln16539_fu_492_p1;
wire   [5:0] empty_340_fu_501_p2;
wire   [10:0] p_cast_i_fu_506_p1;
wire   [10:0] empty_341_fu_510_p2;
wire   [14:0] add_ln16537_2_fu_486_p2;
wire   [14:0] zext_ln16537_2_fu_515_p1;
wire   [19:0] tmp_362_fu_534_p3;
wire   [20:0] tmp_363_fu_541_p3;
wire   [20:0] zext_ln16537_3_fu_548_p1;
wire   [6:0] lshr_ln40_fu_558_p3;
wire   [20:0] sub_ln16535_fu_552_p2;
wire   [20:0] zext_ln16537_4_fu_564_p1;
wire   [20:0] add_ln16537_1_fu_568_p2;
wire   [11:0] tmp_70_fu_582_p3;
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
#0 indvar_flatten1233_fu_120 = 12'd0;
#0 v1280034_fu_124 = 4'd0;
#0 indvar_flatten35_fu_128 = 11'd0;
#0 v1280136_fu_132 = 6'd0;
#0 v1280237_fu_136 = 6'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln16532_reg_688 == 1'd0))) begin
        icmp_ln1653339_reg_242 <= icmp_ln16533_reg_683;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1653339_reg_242 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln16532_reg_688 == 1'd0))) begin
        icmp_ln1653438_reg_254 <= xor_ln16534_reg_678;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1653438_reg_254 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1233_fu_120 <= 12'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten1233_fu_120 <= add_ln16532_1_fu_376_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten35_fu_128 <= 11'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten35_fu_128 <= select_ln16533_1_fu_368_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v1280034_fu_124 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            v1280034_fu_124 <= v12800_fu_437_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1280136_fu_132 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1280136_fu_132 <= v12801_fu_338_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1280237_fu_136 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1280237_fu_136 <= v12802_fu_356_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln16537_reg_697 <= add_ln16537_fu_519_p2;
        add_ln16539_reg_692 <= add_ln16539_fu_495_p2;
        add_ln16539_reg_692_pp0_iter3_reg <= add_ln16539_reg_692;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        lshr_ln_reg_672_pp0_iter2_reg <= lshr_ln_reg_672;
        lshr_ln_reg_672_pp0_iter3_reg <= lshr_ln_reg_672_pp0_iter2_reg;
        trunc_ln16537_reg_702 <= trunc_ln16537_fu_525_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        icmp_ln16532_reg_688 <= icmp_ln16532_fu_402_p2;
        lshr_ln_reg_672 <= {{v12802_mid2_fu_330_p3[4:1]}};
        v12801_reg_666 <= v12801_fu_338_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln16533_reg_683 <= icmp_ln16533_fu_396_p2;
        xor_ln16534_reg_678 <= xor_ln16534_fu_390_p2;
    end
end
always @ (*) begin
    if (((icmp_ln16532_fu_402_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln16532_reg_688 == 1'd0))) begin
        ap_phi_mux_icmp_ln1653339_phi_fu_246_p4 = icmp_ln16533_reg_683;
    end else begin
        ap_phi_mux_icmp_ln1653339_phi_fu_246_p4 = icmp_ln1653339_reg_242;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln16532_reg_688 == 1'd0))) begin
        ap_phi_mux_icmp_ln1653438_phi_fu_258_p4 = xor_ln16534_reg_678;
    end else begin
        ap_phi_mux_icmp_ln1653438_phi_fu_258_p4 = icmp_ln1653438_reg_254;
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
        v12817_1_ce0_local = 1'b1;
    end else begin
        v12817_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v12817_1_we0_local = 1'b1;
    end else begin
        v12817_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v12817_ce0_local = 1'b1;
    end else begin
        v12817_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v12817_we0_local = 1'b1;
    end else begin
        v12817_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13699_0_ce0_local = 1'b1;
    end else begin
        v13699_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13699_1_ce0_local = 1'b1;
    end else begin
        v13699_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13699_2_ce0_local = 1'b1;
    end else begin
        v13699_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13699_3_ce0_local = 1'b1;
    end else begin
        v13699_3_ce0_local = 1'b0;
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
assign add_ln16532_1_fu_376_p2 = (indvar_flatten1233_fu_120 + 12'd1);
assign add_ln16532_fu_431_p2 = (v1280034_fu_124 + 4'd1);
assign add_ln16533_1_fu_362_p2 = (indvar_flatten35_fu_128 + 11'd1);
assign add_ln16533_fu_324_p2 = (select_ln16532_fu_302_p3 + 6'd1);
assign add_ln16537_1_fu_568_p2 = (sub_ln16535_fu_552_p2 + zext_ln16537_4_fu_564_p1);
assign add_ln16537_2_fu_486_p2 = (zext_ln16537_fu_470_p1 + zext_ln16537_1_fu_482_p1);
assign add_ln16537_fu_519_p2 = (add_ln16537_2_fu_486_p2 + zext_ln16537_2_fu_515_p1);
assign add_ln16539_fu_495_p2 = (tmp_s_fu_449_p3 + zext_ln16539_fu_492_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_339_fu_457_p2 = (v12800_fu_437_p3 + rem4);
assign empty_340_fu_501_p2 = v12801_reg_666 << 6'd1;
assign empty_341_fu_510_p2 = (tmp_6 + p_cast_i_fu_506_p1);
assign icmp_ln16532_fu_402_p2 = ((indvar_flatten1233_fu_120 == 12'd4095) ? 1'b1 : 1'b0);
assign icmp_ln16533_fu_396_p2 = ((select_ln16533_1_fu_368_p3 == 11'd512) ? 1'b1 : 1'b0);
assign lshr_ln40_fu_558_p3 = {{urem_ln16561}, {lshr_ln_reg_672_pp0_iter2_reg}};
assign or_ln16532_fu_318_p2 = (ap_phi_mux_icmp_ln1653438_phi_fu_258_p4 | ap_phi_mux_icmp_ln1653339_phi_fu_246_p4);
assign p_cast_i_fu_506_p1 = empty_340_fu_501_p2;
assign select_ln16532_1_fu_310_p3 = ((ap_phi_mux_icmp_ln1653339_phi_fu_246_p4[0:0] == 1'b1) ? 6'd0 : v1280237_fu_136);
assign select_ln16532_fu_302_p3 = ((ap_phi_mux_icmp_ln1653339_phi_fu_246_p4[0:0] == 1'b1) ? 6'd0 : v1280136_fu_132);
assign select_ln16533_1_fu_368_p3 = ((ap_phi_mux_icmp_ln1653339_phi_fu_246_p4[0:0] == 1'b1) ? 11'd1 : add_ln16533_1_fu_362_p2);
assign select_ln16537_fu_594_p3 = ((empty[0:0] == 1'b1) ? v13699_1_q0 : v13699_0_q0);
assign select_ln16539_fu_602_p3 = ((empty[0:0] == 1'b1) ? v13699_3_q0 : v13699_2_q0);
assign sub_ln16535_fu_552_p2 = (tmp_363_fu_541_p3 - zext_ln16537_3_fu_548_p1);
assign tmp_360_fu_462_p3 = {{empty_339_fu_457_p2}, {10'd0}};
assign tmp_361_fu_474_p3 = {{empty_339_fu_457_p2}, {8'd0}};
assign tmp_362_fu_534_p3 = {{add_ln16537_reg_697}, {5'd0}};
assign tmp_363_fu_541_p3 = {{trunc_ln16537_reg_702}, {7'd0}};
assign tmp_364_fu_382_p3 = v12802_fu_356_p2[32'd5];
assign tmp_70_fu_582_p3 = {{add_ln16539_reg_692_pp0_iter3_reg}, {lshr_ln_reg_672_pp0_iter3_reg}};
assign tmp_s_fu_449_p3 = {{trunc_ln16533_fu_445_p1}, {5'd0}};
assign trunc_ln16533_fu_445_p1 = v12800_fu_437_p3[2:0];
assign trunc_ln16537_fu_525_p1 = add_ln16537_fu_519_p2[13:0];
assign v12800_fu_437_p3 = ((icmp_ln1653339_reg_242[0:0] == 1'b1) ? add_ln16532_fu_431_p2 : v1280034_fu_124);
assign v12801_fu_338_p3 = ((or_ln16532_fu_318_p2[0:0] == 1'b1) ? select_ln16532_fu_302_p3 : add_ln16533_fu_324_p2);
assign v12802_fu_356_p2 = (v12802_mid2_fu_330_p3 + 6'd2);
assign v12802_mid2_fu_330_p3 = ((or_ln16532_fu_318_p2[0:0] == 1'b1) ? select_ln16532_1_fu_310_p3 : 6'd0);
assign v12817_1_address0 = zext_ln16539_1_fu_588_p1;
assign v12817_1_ce0 = v12817_1_ce0_local;
assign v12817_1_d0 = select_ln16537_fu_594_p3;
assign v12817_1_we0 = v12817_1_we0_local;
assign v12817_address0 = zext_ln16539_1_fu_588_p1;
assign v12817_ce0 = v12817_ce0_local;
assign v12817_d0 = select_ln16539_fu_602_p3;
assign v12817_we0 = v12817_we0_local;
assign v13699_0_address0 = zext_ln16537_5_fu_574_p1;
assign v13699_0_ce0 = v13699_0_ce0_local;
assign v13699_1_address0 = zext_ln16537_5_fu_574_p1;
assign v13699_1_ce0 = v13699_1_ce0_local;
assign v13699_2_address0 = zext_ln16537_5_fu_574_p1;
assign v13699_2_ce0 = v13699_2_ce0_local;
assign v13699_3_address0 = zext_ln16537_5_fu_574_p1;
assign v13699_3_ce0 = v13699_3_ce0_local;
assign xor_ln16534_fu_390_p2 = (tmp_364_fu_382_p3 ^ 1'd1);
assign zext_ln16537_1_fu_482_p1 = tmp_361_fu_474_p3;
assign zext_ln16537_2_fu_515_p1 = empty_341_fu_510_p2;
assign zext_ln16537_3_fu_548_p1 = tmp_362_fu_534_p3;
assign zext_ln16537_4_fu_564_p1 = lshr_ln40_fu_558_p3;
assign zext_ln16537_5_fu_574_p1 = add_ln16537_1_fu_568_p2;
assign zext_ln16537_fu_470_p1 = tmp_360_fu_462_p3;
assign zext_ln16539_1_fu_588_p1 = tmp_70_fu_582_p3;
assign zext_ln16539_fu_492_p1 = v12801_reg_666;
endmodule 