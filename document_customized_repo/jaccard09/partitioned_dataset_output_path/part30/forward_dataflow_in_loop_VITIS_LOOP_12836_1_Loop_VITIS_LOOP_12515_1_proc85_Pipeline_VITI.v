
module forward_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,p_udiv35_cast,v10096_address0,v10096_ce0,v10096_we0,v10096_d0,v10096_1_address0,v10096_1_ce0,v10096_1_we0,v10096_1_d0,v10096_2_address0,v10096_2_ce0,v10096_2_we0,v10096_2_d0,v10096_3_address0,v10096_3_ce0,v10096_3_we0,v10096_3_d0,mul_i19,shl_ln,zext_ln12549_1,zext_ln12549,v16150_0_0_address0,v16150_0_0_ce0,v16150_0_0_q0,v16150_1_0_address0,v16150_1_0_ce0,v16150_1_0_q0,v16150_0_1_address0,v16150_0_1_ce0,v16150_0_1_q0,v16150_1_1_address0,v16150_1_1_ce0,v16150_1_1_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [6:0] mul_i;
input  [5:0] p_udiv35_cast;
output  [7:0] v10096_address0;
output   v10096_ce0;
output   v10096_we0;
output  [7:0] v10096_d0;
output  [7:0] v10096_1_address0;
output   v10096_1_ce0;
output   v10096_1_we0;
output  [7:0] v10096_1_d0;
output  [7:0] v10096_2_address0;
output   v10096_2_ce0;
output   v10096_2_we0;
output  [7:0] v10096_2_d0;
output  [7:0] v10096_3_address0;
output   v10096_3_ce0;
output   v10096_3_we0;
output  [7:0] v10096_3_d0;
input  [6:0] mul_i19;
input  [5:0] shl_ln;
input  [1:0] zext_ln12549_1;
input  [1:0] zext_ln12549;
output  [15:0] v16150_0_0_address0;
output   v16150_0_0_ce0;
input  [7:0] v16150_0_0_q0;
output  [15:0] v16150_1_0_address0;
output   v16150_1_0_ce0;
input  [7:0] v16150_1_0_q0;
output  [15:0] v16150_0_1_address0;
output   v16150_0_1_ce0;
input  [7:0] v16150_0_1_q0;
output  [15:0] v16150_1_1_address0;
output   v16150_1_1_ce0;
input  [7:0] v16150_1_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln12515_fu_307_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1251648_reg_264;
wire    ap_block_pp0_stage0_11001;
wire   [15:0] zext_ln12549_cast_fu_275_p1;
reg   [15:0] zext_ln12549_cast_reg_764;
wire   [13:0] zext_ln12549_1_cast_fu_279_p1;
reg   [13:0] zext_ln12549_1_cast_reg_772;
reg   [0:0] icmp_ln12515_reg_780;
reg   [0:0] icmp_ln12515_reg_780_pp0_iter1_reg;
wire   [7:0] add_ln12525_fu_424_p2;
reg   [7:0] add_ln12525_reg_784;
reg   [7:0] add_ln12525_reg_784_pp0_iter2_reg;
wire   [13:0] add_ln12519_1_fu_468_p2;
reg   [13:0] add_ln12519_1_reg_789;
wire   [13:0] add_ln12523_fu_501_p2;
reg   [13:0] add_ln12523_reg_795;
wire   [13:0] add_ln12521_fu_544_p2;
reg   [13:0] add_ln12521_reg_801;
wire   [13:0] add_ln12525_1_fu_577_p2;
reg   [13:0] add_ln12525_1_reg_807;
wire   [0:0] xor_ln12516_fu_596_p2;
reg   [0:0] xor_ln12516_reg_813;
reg   [0:0] ap_phi_mux_icmp_ln1251648_phi_fu_267_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln12519_2_fu_633_p1;
wire   [63:0] zext_ln12523_2_fu_659_p1;
wire   [63:0] zext_ln12521_2_fu_685_p1;
wire   [63:0] zext_ln12525_4_fu_711_p1;
wire   [63:0] zext_ln12525_1_fu_716_p1;
reg   [7:0] indvar_flatten45_fu_108;
wire   [7:0] add_ln12515_1_fu_301_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten45_load;
reg   [5:0] v994646_fu_112;
wire   [5:0] v9946_fu_338_p3;
reg   [5:0] v994747_fu_116;
wire   [5:0] v9947_fu_582_p2;
reg    v16150_0_0_ce0_local;
reg    v16150_0_1_ce0_local;
reg    v16150_1_0_ce0_local;
reg    v16150_1_1_ce0_local;
reg    v10096_3_we0_local;
reg    v10096_3_ce0_local;
reg    v10096_2_we0_local;
reg    v10096_2_ce0_local;
reg    v10096_1_we0_local;
reg    v10096_1_ce0_local;
reg    v10096_we0_local;
reg    v10096_ce0_local;
wire   [5:0] add_ln12515_fu_324_p2;
wire   [4:0] lshr_ln_fu_350_p4;
wire   [3:0] lshr_ln_cast_fu_360_p4;
wire   [6:0] zext_ln12515_fu_346_p1;
wire   [5:0] zext_ln12515_1_fu_370_p1;
wire   [6:0] empty_fu_382_p2;
wire   [5:0] select_ln12515_fu_330_p3;
wire   [4:0] lshr_ln72_fu_406_p4;
wire   [7:0] tmp_s_fu_374_p3;
wire   [7:0] zext_ln12525_fu_420_p1;
wire   [6:0] zext_ln12516_fu_402_p1;
wire   [5:0] zext_ln12516_1_fu_416_p1;
wire   [5:0] empty_455_fu_387_p2;
wire   [5:0] add_ln12519_fu_435_p2;
wire   [11:0] tmp_134_fu_440_p3;
wire   [13:0] p_shl34_fu_452_p4;
wire   [13:0] zext_ln12519_fu_448_p1;
wire   [13:0] sub_ln12519_fu_462_p2;
wire   [5:0] tmp_133_fu_392_p4;
wire   [11:0] tmp_135_fu_473_p3;
wire   [13:0] p_shl32_fu_485_p4;
wire   [13:0] zext_ln12523_fu_481_p1;
wire   [13:0] sub_ln12523_fu_495_p2;
wire   [6:0] add_ln12518_fu_430_p2;
wire   [5:0] lshr_ln73_fu_506_p4;
wire   [11:0] tmp_136_fu_516_p3;
wire   [13:0] p_shl30_fu_528_p4;
wire   [13:0] zext_ln12521_fu_524_p1;
wire   [13:0] sub_ln12521_fu_538_p2;
wire   [11:0] tmp_137_fu_549_p3;
wire   [13:0] p_shl28_fu_561_p4;
wire   [13:0] zext_ln12525_2_fu_557_p1;
wire   [13:0] sub_ln12525_fu_571_p2;
wire   [0:0] tmp_fu_588_p3;
wire   [15:0] p_shl33_fu_615_p3;
wire   [15:0] zext_ln12519_1_fu_612_p1;
wire   [15:0] sub_ln12519_1_fu_622_p2;
wire   [15:0] add_ln12519_2_fu_628_p2;
wire   [15:0] p_shl31_fu_641_p3;
wire   [15:0] zext_ln12523_1_fu_638_p1;
wire   [15:0] sub_ln12523_1_fu_648_p2;
wire   [15:0] add_ln12523_1_fu_654_p2;
wire   [15:0] p_shl29_fu_667_p3;
wire   [15:0] zext_ln12521_1_fu_664_p1;
wire   [15:0] sub_ln12521_1_fu_674_p2;
wire   [15:0] add_ln12521_1_fu_680_p2;
wire   [15:0] p_shl_fu_693_p3;
wire   [15:0] zext_ln12525_3_fu_690_p1;
wire   [15:0] sub_ln12525_1_fu_700_p2;
wire   [15:0] add_ln12525_2_fu_706_p2;
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
#0 indvar_flatten45_fu_108 = 8'd0;
#0 v994646_fu_112 = 6'd0;
#0 v994747_fu_116 = 6'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln12515_reg_780_pp0_iter1_reg == 1'd0))) begin
        icmp_ln1251648_reg_264 <= xor_ln12516_reg_813;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1251648_reg_264 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten45_fu_108 <= add_ln12515_1_fu_301_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten45_fu_108 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v994646_fu_112 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v994646_fu_112 <= v9946_fu_338_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v994747_fu_116 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v994747_fu_116 <= v9947_fu_582_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln12519_1_reg_789 <= add_ln12519_1_fu_468_p2;
        add_ln12521_reg_801 <= add_ln12521_fu_544_p2;
        add_ln12523_reg_795 <= add_ln12523_fu_501_p2;
        add_ln12525_1_reg_807 <= add_ln12525_1_fu_577_p2;
        add_ln12525_reg_784 <= add_ln12525_fu_424_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln12515_reg_780 <= icmp_ln12515_fu_307_p2;
        icmp_ln12515_reg_780_pp0_iter1_reg <= icmp_ln12515_reg_780;
        zext_ln12549_1_cast_reg_772[1 : 0] <= zext_ln12549_1_cast_fu_279_p1[1 : 0];
        zext_ln12549_cast_reg_764[1 : 0] <= zext_ln12549_cast_fu_275_p1[1 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln12525_reg_784_pp0_iter2_reg <= add_ln12525_reg_784;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xor_ln12516_reg_813 <= xor_ln12516_fu_596_p2;
    end
end
always @ (*) begin
    if (((icmp_ln12515_fu_307_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln12515_reg_780_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln1251648_phi_fu_267_p4 = xor_ln12516_reg_813;
    end else begin
        ap_phi_mux_icmp_ln1251648_phi_fu_267_p4 = icmp_ln1251648_reg_264;
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
        ap_sig_allocacmp_indvar_flatten45_load = indvar_flatten45_fu_108;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v10096_1_ce0_local = 1'b1;
    end else begin
        v10096_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v10096_1_we0_local = 1'b1;
    end else begin
        v10096_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v10096_2_ce0_local = 1'b1;
    end else begin
        v10096_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v10096_2_we0_local = 1'b1;
    end else begin
        v10096_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v10096_3_ce0_local = 1'b1;
    end else begin
        v10096_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v10096_3_we0_local = 1'b1;
    end else begin
        v10096_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v10096_ce0_local = 1'b1;
    end else begin
        v10096_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v10096_we0_local = 1'b1;
    end else begin
        v10096_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16150_0_0_ce0_local = 1'b1;
    end else begin
        v16150_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16150_0_1_ce0_local = 1'b1;
    end else begin
        v16150_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16150_1_0_ce0_local = 1'b1;
    end else begin
        v16150_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16150_1_1_ce0_local = 1'b1;
    end else begin
        v16150_1_1_ce0_local = 1'b0;
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
assign add_ln12515_1_fu_301_p2 = (ap_sig_allocacmp_indvar_flatten45_load + 8'd1);
assign add_ln12515_fu_324_p2 = (v994646_fu_112 + 6'd2);
assign add_ln12518_fu_430_p2 = (mul_i19 + zext_ln12516_fu_402_p1);
assign add_ln12519_1_fu_468_p2 = (sub_ln12519_fu_462_p2 + zext_ln12549_1_cast_reg_772);
assign add_ln12519_2_fu_628_p2 = (sub_ln12519_1_fu_622_p2 + zext_ln12549_cast_reg_764);
assign add_ln12519_fu_435_p2 = (zext_ln12516_1_fu_416_p1 + shl_ln);
assign add_ln12521_1_fu_680_p2 = (sub_ln12521_1_fu_674_p2 + zext_ln12549_cast_reg_764);
assign add_ln12521_fu_544_p2 = (sub_ln12521_fu_538_p2 + zext_ln12549_1_cast_reg_772);
assign add_ln12523_1_fu_654_p2 = (sub_ln12523_1_fu_648_p2 + zext_ln12549_cast_reg_764);
assign add_ln12523_fu_501_p2 = (sub_ln12523_fu_495_p2 + zext_ln12549_1_cast_reg_772);
assign add_ln12525_1_fu_577_p2 = (sub_ln12525_fu_571_p2 + zext_ln12549_1_cast_reg_772);
assign add_ln12525_2_fu_706_p2 = (sub_ln12525_1_fu_700_p2 + zext_ln12549_cast_reg_764);
assign add_ln12525_fu_424_p2 = (tmp_s_fu_374_p3 + zext_ln12525_fu_420_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_455_fu_387_p2 = (zext_ln12515_1_fu_370_p1 + p_udiv35_cast);
assign empty_fu_382_p2 = (mul_i + zext_ln12515_fu_346_p1);
assign icmp_ln12515_fu_307_p2 = ((ap_sig_allocacmp_indvar_flatten45_load == 8'd255) ? 1'b1 : 1'b0);
assign lshr_ln72_fu_406_p4 = {{select_ln12515_fu_330_p3[5:1]}};
assign lshr_ln73_fu_506_p4 = {{add_ln12518_fu_430_p2[6:1]}};
assign lshr_ln_cast_fu_360_p4 = {{v9946_fu_338_p3[4:1]}};
assign lshr_ln_fu_350_p4 = {{v9946_fu_338_p3[5:1]}};
assign p_shl28_fu_561_p4 = {{{tmp_133_fu_392_p4}, {lshr_ln73_fu_506_p4}}, {2'd0}};
assign p_shl29_fu_667_p3 = {{add_ln12521_reg_801}, {2'd0}};
assign p_shl30_fu_528_p4 = {{{empty_455_fu_387_p2}, {lshr_ln73_fu_506_p4}}, {2'd0}};
assign p_shl31_fu_641_p3 = {{add_ln12523_reg_795}, {2'd0}};
assign p_shl32_fu_485_p4 = {{{tmp_133_fu_392_p4}, {add_ln12519_fu_435_p2}}, {2'd0}};
assign p_shl33_fu_615_p3 = {{add_ln12519_1_reg_789}, {2'd0}};
assign p_shl34_fu_452_p4 = {{{empty_455_fu_387_p2}, {add_ln12519_fu_435_p2}}, {2'd0}};
assign p_shl_fu_693_p3 = {{add_ln12525_1_reg_807}, {2'd0}};
assign select_ln12515_fu_330_p3 = ((ap_phi_mux_icmp_ln1251648_phi_fu_267_p4[0:0] == 1'b1) ? v994747_fu_116 : 6'd0);
assign sub_ln12519_1_fu_622_p2 = (p_shl33_fu_615_p3 - zext_ln12519_1_fu_612_p1);
assign sub_ln12519_fu_462_p2 = (p_shl34_fu_452_p4 - zext_ln12519_fu_448_p1);
assign sub_ln12521_1_fu_674_p2 = (p_shl29_fu_667_p3 - zext_ln12521_1_fu_664_p1);
assign sub_ln12521_fu_538_p2 = (p_shl30_fu_528_p4 - zext_ln12521_fu_524_p1);
assign sub_ln12523_1_fu_648_p2 = (p_shl31_fu_641_p3 - zext_ln12523_1_fu_638_p1);
assign sub_ln12523_fu_495_p2 = (p_shl32_fu_485_p4 - zext_ln12523_fu_481_p1);
assign sub_ln12525_1_fu_700_p2 = (p_shl_fu_693_p3 - zext_ln12525_3_fu_690_p1);
assign sub_ln12525_fu_571_p2 = (p_shl28_fu_561_p4 - zext_ln12525_2_fu_557_p1);
assign tmp_133_fu_392_p4 = {{empty_fu_382_p2[6:1]}};
assign tmp_134_fu_440_p3 = {{empty_455_fu_387_p2}, {add_ln12519_fu_435_p2}};
assign tmp_135_fu_473_p3 = {{tmp_133_fu_392_p4}, {add_ln12519_fu_435_p2}};
assign tmp_136_fu_516_p3 = {{empty_455_fu_387_p2}, {lshr_ln73_fu_506_p4}};
assign tmp_137_fu_549_p3 = {{tmp_133_fu_392_p4}, {lshr_ln73_fu_506_p4}};
assign tmp_fu_588_p3 = v9947_fu_582_p2[32'd5];
assign tmp_s_fu_374_p3 = {{lshr_ln_cast_fu_360_p4}, {4'd0}};
assign v10096_1_address0 = zext_ln12525_1_fu_716_p1;
assign v10096_1_ce0 = v10096_1_ce0_local;
assign v10096_1_d0 = v16150_1_0_q0;
assign v10096_1_we0 = v10096_1_we0_local;
assign v10096_2_address0 = zext_ln12525_1_fu_716_p1;
assign v10096_2_ce0 = v10096_2_ce0_local;
assign v10096_2_d0 = v16150_0_1_q0;
assign v10096_2_we0 = v10096_2_we0_local;
assign v10096_3_address0 = zext_ln12525_1_fu_716_p1;
assign v10096_3_ce0 = v10096_3_ce0_local;
assign v10096_3_d0 = v16150_0_0_q0;
assign v10096_3_we0 = v10096_3_we0_local;
assign v10096_address0 = zext_ln12525_1_fu_716_p1;
assign v10096_ce0 = v10096_ce0_local;
assign v10096_d0 = v16150_1_1_q0;
assign v10096_we0 = v10096_we0_local;
assign v16150_0_0_address0 = zext_ln12519_2_fu_633_p1;
assign v16150_0_0_ce0 = v16150_0_0_ce0_local;
assign v16150_0_1_address0 = zext_ln12521_2_fu_685_p1;
assign v16150_0_1_ce0 = v16150_0_1_ce0_local;
assign v16150_1_0_address0 = zext_ln12523_2_fu_659_p1;
assign v16150_1_0_ce0 = v16150_1_0_ce0_local;
assign v16150_1_1_address0 = zext_ln12525_4_fu_711_p1;
assign v16150_1_1_ce0 = v16150_1_1_ce0_local;
assign v9946_fu_338_p3 = ((ap_phi_mux_icmp_ln1251648_phi_fu_267_p4[0:0] == 1'b1) ? v994646_fu_112 : add_ln12515_fu_324_p2);
assign v9947_fu_582_p2 = (select_ln12515_fu_330_p3 + 6'd2);
assign xor_ln12516_fu_596_p2 = (tmp_fu_588_p3 ^ 1'd1);
assign zext_ln12515_1_fu_370_p1 = lshr_ln_fu_350_p4;
assign zext_ln12515_fu_346_p1 = v9946_fu_338_p3;
assign zext_ln12516_1_fu_416_p1 = lshr_ln72_fu_406_p4;
assign zext_ln12516_fu_402_p1 = select_ln12515_fu_330_p3;
assign zext_ln12519_1_fu_612_p1 = add_ln12519_1_reg_789;
assign zext_ln12519_2_fu_633_p1 = add_ln12519_2_fu_628_p2;
assign zext_ln12519_fu_448_p1 = tmp_134_fu_440_p3;
assign zext_ln12521_1_fu_664_p1 = add_ln12521_reg_801;
assign zext_ln12521_2_fu_685_p1 = add_ln12521_1_fu_680_p2;
assign zext_ln12521_fu_524_p1 = tmp_136_fu_516_p3;
assign zext_ln12523_1_fu_638_p1 = add_ln12523_reg_795;
assign zext_ln12523_2_fu_659_p1 = add_ln12523_1_fu_654_p2;
assign zext_ln12523_fu_481_p1 = tmp_135_fu_473_p3;
assign zext_ln12525_1_fu_716_p1 = add_ln12525_reg_784_pp0_iter2_reg;
assign zext_ln12525_2_fu_557_p1 = tmp_137_fu_549_p3;
assign zext_ln12525_3_fu_690_p1 = add_ln12525_1_reg_807;
assign zext_ln12525_4_fu_711_p1 = add_ln12525_2_fu_706_p2;
assign zext_ln12525_fu_420_p1 = lshr_ln72_fu_406_p4;
assign zext_ln12549_1_cast_fu_279_p1 = zext_ln12549_1;
assign zext_ln12549_cast_fu_275_p1 = zext_ln12549;
always @ (posedge ap_clk) begin
    zext_ln12549_cast_reg_764[15:2] <= 14'b00000000000000;
    zext_ln12549_1_cast_reg_772[13:2] <= 12'b000000000000;
end
endmodule 
