
module forward_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v13700_0_address0,v13700_0_ce0,v13700_0_we0,v13700_0_d0,v13700_1_address0,v13700_1_ce0,v13700_1_we0,v13700_1_d0,rem4,mul9_i,v12818_1_address0,v12818_1_ce0,v12818_1_q0,v12818_address0,v12818_ce0,v12818_q0,mul13_i);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [19:0] v13700_0_address0;
output   v13700_0_ce0;
output   v13700_0_we0;
output  [7:0] v13700_0_d0;
output  [19:0] v13700_1_address0;
output   v13700_1_ce0;
output   v13700_1_we0;
output  [7:0] v13700_1_d0;
input  [3:0] rem4;
input  [9:0] mul9_i;
output  [11:0] v12818_1_address0;
output   v12818_1_ce0;
input  [7:0] v12818_1_q0;
output  [11:0] v12818_address0;
output   v12818_ce0;
input  [7:0] v12818_q0;
input  [7:0] mul13_i;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln16446_fu_435_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1644742_reg_204;
reg   [0:0] icmp_ln1644841_reg_215;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] empty_fu_336_p2;
reg   [3:0] empty_reg_609;
wire   [7:0] add_ln16447_2_fu_345_p2;
reg   [7:0] add_ln16447_2_reg_615;
wire   [9:0] empty_344_fu_355_p2;
reg   [9:0] empty_344_reg_620;
reg   [3:0] lshr_ln_reg_625;
reg   [6:0] lshr_ln42_reg_630;
wire   [0:0] xor_ln16448_fu_423_p2;
reg   [0:0] xor_ln16448_reg_635;
wire   [0:0] icmp_ln16447_fu_429_p2;
reg   [0:0] icmp_ln16447_reg_640;
reg   [0:0] icmp_ln16446_reg_645;
wire   [19:0] add_ln16453_1_fu_548_p2;
reg   [19:0] add_ln16453_1_reg_659;
reg   [0:0] ap_phi_mux_icmp_ln1644742_phi_fu_208_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1644841_phi_fu_219_p4;
wire   [63:0] zext_ln16450_1_fu_539_p1;
wire   [63:0] zext_ln16453_5_fu_554_p1;
reg   [11:0] indvar_flatten1236_fu_112;
wire   [11:0] add_ln16446_1_fu_409_p2;
reg   [3:0] v1276637_fu_116;
wire   [3:0] v12766_fu_294_p3;
reg   [10:0] indvar_flatten38_fu_120;
wire   [10:0] select_ln16447_1_fu_401_p3;
reg   [5:0] v1276739_fu_124;
wire   [5:0] v12767_fu_320_p3;
reg   [5:0] v1276840_fu_128;
wire   [5:0] v12768_fu_389_p2;
reg    v12818_1_ce0_local;
reg    v12818_ce0_local;
reg    v13700_0_we0_local;
reg    v13700_0_ce0_local;
reg    v13700_1_we0_local;
reg    v13700_1_ce0_local;
wire   [3:0] add_ln16446_fu_266_p2;
wire   [5:0] select_ln16446_fu_272_p3;
wire   [0:0] or_ln16446_fu_288_p2;
wire   [5:0] select_ln16446_1_fu_280_p3;
wire   [5:0] add_ln16447_fu_306_p2;
wire   [2:0] trunc_ln16447_fu_302_p1;
wire   [7:0] tmp_s_fu_328_p3;
wire   [7:0] zext_ln16450_fu_341_p1;
wire   [9:0] zext_ln16447_fu_351_p1;
wire   [5:0] v12768_mid2_fu_312_p3;
wire   [7:0] zext_ln16448_fu_360_p1;
wire   [7:0] add_ln16451_fu_374_p2;
wire   [10:0] add_ln16447_1_fu_395_p2;
wire   [0:0] tmp_375_fu_415_p3;
wire   [12:0] tmp_fu_466_p3;
wire   [10:0] tmp_372_fu_477_p3;
wire   [13:0] zext_ln16453_fu_473_p1;
wire   [13:0] zext_ln16453_1_fu_484_p1;
wire   [13:0] add_ln16453_2_fu_488_p2;
wire   [13:0] zext_ln16453_2_fu_494_p1;
wire   [13:0] add_ln16453_fu_497_p2;
wire   [12:0] trunc_ln16453_fu_503_p1;
wire   [18:0] tmp_373_fu_507_p3;
wire   [19:0] tmp_374_fu_515_p3;
wire   [19:0] zext_ln16453_3_fu_523_p1;
wire   [11:0] tmp_72_fu_533_p3;
wire   [19:0] sub_ln16448_fu_527_p2;
wire   [19:0] zext_ln16453_4_fu_545_p1;
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
#0 indvar_flatten1236_fu_112 = 12'd0;
#0 v1276637_fu_116 = 4'd0;
#0 indvar_flatten38_fu_120 = 11'd0;
#0 v1276739_fu_124 = 6'd0;
#0 v1276840_fu_128 = 6'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln16446_reg_645 == 1'd0))) begin
        icmp_ln1644742_reg_204 <= icmp_ln16447_reg_640;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1644742_reg_204 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln16446_reg_645 == 1'd0))) begin
        icmp_ln1644841_reg_215 <= xor_ln16448_reg_635;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1644841_reg_215 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1236_fu_112 <= 12'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten1236_fu_112 <= add_ln16446_1_fu_409_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten38_fu_120 <= 11'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten38_fu_120 <= select_ln16447_1_fu_401_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1276637_fu_116 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1276637_fu_116 <= v12766_fu_294_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1276739_fu_124 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1276739_fu_124 <= v12767_fu_320_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1276840_fu_128 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1276840_fu_128 <= v12768_fu_389_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln16447_2_reg_615 <= add_ln16447_2_fu_345_p2;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        empty_344_reg_620 <= empty_344_fu_355_p2;
        empty_reg_609 <= empty_fu_336_p2;
        icmp_ln16446_reg_645 <= icmp_ln16446_fu_435_p2;
        lshr_ln42_reg_630 <= {{add_ln16451_fu_374_p2[7:1]}};
        lshr_ln_reg_625 <= {{v12768_mid2_fu_312_p3[4:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln16453_1_reg_659 <= add_ln16453_1_fu_548_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln16447_reg_640 <= icmp_ln16447_fu_429_p2;
        xor_ln16448_reg_635 <= xor_ln16448_fu_423_p2;
    end
end
always @ (*) begin
    if (((icmp_ln16446_fu_435_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln16446_reg_645 == 1'd0))) begin
        ap_phi_mux_icmp_ln1644742_phi_fu_208_p4 = icmp_ln16447_reg_640;
    end else begin
        ap_phi_mux_icmp_ln1644742_phi_fu_208_p4 = icmp_ln1644742_reg_204;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln16446_reg_645 == 1'd0))) begin
        ap_phi_mux_icmp_ln1644841_phi_fu_219_p4 = xor_ln16448_reg_635;
    end else begin
        ap_phi_mux_icmp_ln1644841_phi_fu_219_p4 = icmp_ln1644841_reg_215;
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
        v12818_1_ce0_local = 1'b1;
    end else begin
        v12818_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12818_ce0_local = 1'b1;
    end else begin
        v12818_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13700_0_ce0_local = 1'b1;
    end else begin
        v13700_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13700_0_we0_local = 1'b1;
    end else begin
        v13700_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13700_1_ce0_local = 1'b1;
    end else begin
        v13700_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13700_1_we0_local = 1'b1;
    end else begin
        v13700_1_we0_local = 1'b0;
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
assign add_ln16446_1_fu_409_p2 = (indvar_flatten1236_fu_112 + 12'd1);
assign add_ln16446_fu_266_p2 = (v1276637_fu_116 + 4'd1);
assign add_ln16447_1_fu_395_p2 = (indvar_flatten38_fu_120 + 11'd1);
assign add_ln16447_2_fu_345_p2 = (tmp_s_fu_328_p3 + zext_ln16450_fu_341_p1);
assign add_ln16447_fu_306_p2 = (select_ln16446_fu_272_p3 + 6'd1);
assign add_ln16451_fu_374_p2 = (mul13_i + zext_ln16448_fu_360_p1);
assign add_ln16453_1_fu_548_p2 = (sub_ln16448_fu_527_p2 + zext_ln16453_4_fu_545_p1);
assign add_ln16453_2_fu_488_p2 = (zext_ln16453_fu_473_p1 + zext_ln16453_1_fu_484_p1);
assign add_ln16453_fu_497_p2 = (add_ln16453_2_fu_488_p2 + zext_ln16453_2_fu_494_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_344_fu_355_p2 = (mul9_i + zext_ln16447_fu_351_p1);
assign empty_fu_336_p2 = (v12766_fu_294_p3 + rem4);
assign icmp_ln16446_fu_435_p2 = ((indvar_flatten1236_fu_112 == 12'd4095) ? 1'b1 : 1'b0);
assign icmp_ln16447_fu_429_p2 = ((select_ln16447_1_fu_401_p3 == 11'd512) ? 1'b1 : 1'b0);
assign or_ln16446_fu_288_p2 = (ap_phi_mux_icmp_ln1644841_phi_fu_219_p4 | ap_phi_mux_icmp_ln1644742_phi_fu_208_p4);
assign select_ln16446_1_fu_280_p3 = ((ap_phi_mux_icmp_ln1644742_phi_fu_208_p4[0:0] == 1'b1) ? 6'd0 : v1276840_fu_128);
assign select_ln16446_fu_272_p3 = ((ap_phi_mux_icmp_ln1644742_phi_fu_208_p4[0:0] == 1'b1) ? 6'd0 : v1276739_fu_124);
assign select_ln16447_1_fu_401_p3 = ((ap_phi_mux_icmp_ln1644742_phi_fu_208_p4[0:0] == 1'b1) ? 11'd1 : add_ln16447_1_fu_395_p2);
assign sub_ln16448_fu_527_p2 = (tmp_374_fu_515_p3 - zext_ln16453_3_fu_523_p1);
assign tmp_372_fu_477_p3 = {{empty_reg_609}, {7'd0}};
assign tmp_373_fu_507_p3 = {{add_ln16453_fu_497_p2}, {5'd0}};
assign tmp_374_fu_515_p3 = {{trunc_ln16453_fu_503_p1}, {7'd0}};
assign tmp_375_fu_415_p3 = v12768_fu_389_p2[32'd5];
assign tmp_72_fu_533_p3 = {{add_ln16447_2_reg_615}, {lshr_ln_reg_625}};
assign tmp_fu_466_p3 = {{empty_reg_609}, {9'd0}};
assign tmp_s_fu_328_p3 = {{trunc_ln16447_fu_302_p1}, {5'd0}};
assign trunc_ln16447_fu_302_p1 = v12766_fu_294_p3[2:0];
assign trunc_ln16453_fu_503_p1 = add_ln16453_fu_497_p2[12:0];
assign v12766_fu_294_p3 = ((ap_phi_mux_icmp_ln1644742_phi_fu_208_p4[0:0] == 1'b1) ? add_ln16446_fu_266_p2 : v1276637_fu_116);
assign v12767_fu_320_p3 = ((or_ln16446_fu_288_p2[0:0] == 1'b1) ? select_ln16446_fu_272_p3 : add_ln16447_fu_306_p2);
assign v12768_fu_389_p2 = (v12768_mid2_fu_312_p3 + 6'd2);
assign v12768_mid2_fu_312_p3 = ((or_ln16446_fu_288_p2[0:0] == 1'b1) ? select_ln16446_1_fu_280_p3 : 6'd0);
assign v12818_1_address0 = zext_ln16450_1_fu_539_p1;
assign v12818_1_ce0 = v12818_1_ce0_local;
assign v12818_address0 = zext_ln16450_1_fu_539_p1;
assign v12818_ce0 = v12818_ce0_local;
assign v13700_0_address0 = zext_ln16453_5_fu_554_p1;
assign v13700_0_ce0 = v13700_0_ce0_local;
assign v13700_0_d0 = v12818_1_q0;
assign v13700_0_we0 = v13700_0_we0_local;
assign v13700_1_address0 = zext_ln16453_5_fu_554_p1;
assign v13700_1_ce0 = v13700_1_ce0_local;
assign v13700_1_d0 = v12818_q0;
assign v13700_1_we0 = v13700_1_we0_local;
assign xor_ln16448_fu_423_p2 = (tmp_375_fu_415_p3 ^ 1'd1);
assign zext_ln16447_fu_351_p1 = v12767_fu_320_p3;
assign zext_ln16448_fu_360_p1 = v12768_mid2_fu_312_p3;
assign zext_ln16450_1_fu_539_p1 = tmp_72_fu_533_p3;
assign zext_ln16450_fu_341_p1 = v12767_fu_320_p3;
assign zext_ln16453_1_fu_484_p1 = tmp_372_fu_477_p3;
assign zext_ln16453_2_fu_494_p1 = empty_344_reg_620;
assign zext_ln16453_3_fu_523_p1 = tmp_373_fu_507_p3;
assign zext_ln16453_4_fu_545_p1 = lshr_ln42_reg_630;
assign zext_ln16453_5_fu_554_p1 = add_ln16453_1_reg_659;
assign zext_ln16453_fu_473_p1 = tmp_fu_466_p3;
endmodule 
