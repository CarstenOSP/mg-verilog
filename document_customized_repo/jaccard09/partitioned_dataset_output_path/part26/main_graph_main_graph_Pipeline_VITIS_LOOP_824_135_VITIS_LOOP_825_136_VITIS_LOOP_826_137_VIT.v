
module main_graph_main_graph_Pipeline_VITIS_LOOP_824_135_VITIS_LOOP_825_136_VITIS_LOOP_826_137_VIT (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v69_address1,v69_ce1,v69_we1,v69_d1,v13_Addr_A,v13_EN_A,v13_WEN_A,v13_Din_A,v13_Dout_A,v70_address0,v70_ce0,v70_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] v69_address1;
output   v69_ce1;
output   v69_we1;
output  [7:0] v69_d1;
output  [31:0] v13_Addr_A;
output   v13_EN_A;
output  [0:0] v13_WEN_A;
output  [7:0] v13_Din_A;
input  [7:0] v13_Dout_A;
output  [11:0] v70_address0;
output   v70_ce0;
input  [6:0] v70_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln824_fu_207_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln824_reg_631;
wire   [0:0] icmp_ln825_fu_219_p2;
reg   [0:0] icmp_ln825_reg_635;
reg   [0:0] icmp_ln825_reg_635_pp0_iter2_reg;
wire   [0:0] empty_fu_294_p2;
reg   [0:0] empty_reg_645;
wire   [0:0] icmp_ln828_mid2781_fu_316_p2;
reg   [0:0] icmp_ln828_mid2781_reg_650;
wire   [2:0] select_ln825_fu_322_p3;
reg   [2:0] select_ln825_reg_655;
wire   [0:0] empty_60_fu_336_p2;
reg   [0:0] empty_60_reg_661;
reg   [0:0] empty_60_reg_661_pp0_iter3_reg;
reg   [0:0] empty_60_reg_661_pp0_iter4_reg;
reg   [0:0] empty_60_reg_661_pp0_iter5_reg;
wire   [8:0] v389_mid2_fu_341_p3;
reg   [8:0] v389_mid2_reg_666;
wire   [7:0] empty_61_fu_349_p1;
reg   [7:0] empty_61_reg_671;
wire   [0:0] icmp_ln828_1_fu_359_p2;
reg   [0:0] icmp_ln828_1_reg_676;
reg   [0:0] icmp_ln828_1_reg_676_pp0_iter3_reg;
reg   [0:0] icmp_ln828_1_reg_676_pp0_iter4_reg;
reg   [0:0] icmp_ln828_1_reg_676_pp0_iter5_reg;
reg   [0:0] icmp_ln828_1_reg_676_pp0_iter6_reg;
wire   [12:0] add_ln827_1_fu_481_p2;
reg   [12:0] add_ln827_1_reg_680;
reg   [12:0] add_ln827_1_reg_680_pp0_iter4_reg;
reg   [12:0] add_ln827_1_reg_680_pp0_iter5_reg;
reg   [12:0] add_ln827_1_reg_680_pp0_iter6_reg;
reg    ap_condition_exit_pp0_iter2_stage0;
wire   [63:0] zext_ln830_1_fu_496_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln829_1_fu_528_p1;
wire   [63:0] zext_ln827_4_fu_557_p1;
reg   [7:0] v392_fu_86;
wire   [7:0] grp_fu_565_p3;
reg   [7:0] ap_sig_allocacmp_v392_load;
wire    ap_loop_init;
reg   [8:0] v389_fu_90;
wire   [8:0] add_ln828_fu_353_p2;
reg   [2:0] v388_fu_94;
wire   [2:0] select_ln826_fu_430_p3;
reg   [11:0] indvar_flatten768_fu_98;
wire   [11:0] select_ln826_1_fu_371_p3;
reg   [2:0] v387_fu_102;
reg   [13:0] indvar_flatten782_fu_106;
wire   [13:0] select_ln825_1_fu_231_p3;
reg   [9:0] v386_fu_110;
wire   [9:0] select_ln824_1_fu_406_p3;
reg   [21:0] indvar_flatten806_fu_114;
wire   [21:0] add_ln824_1_fu_213_p2;
reg    v70_ce0_local;
reg    v13_EN_A_local;
wire   [31:0] v13_Addr_A_orig;
reg    v69_we1_local;
reg    v69_ce1_local;
wire   [13:0] add_ln825_1_fu_225_p2;
wire   [0:0] icmp_ln826_fu_276_p2;
wire   [0:0] xor_ln824_fu_265_p2;
wire   [2:0] select_ln824_fu_258_p3;
wire   [0:0] and_ln824_1_fu_282_p2;
wire   [0:0] exitcond_flatten770_not_fu_299_p2;
wire   [0:0] icmp_ln828_fu_270_p2;
wire   [0:0] and_ln824_fu_310_p2;
wire   [0:0] not_exitcond_flatten770_mid2805_fu_305_p2;
wire   [2:0] add_ln825_fu_288_p2;
wire   [0:0] empty_59_fu_330_p2;
wire   [11:0] add_ln826_1_fu_365_p2;
wire   [9:0] add_ln824_fu_400_p2;
wire   [2:0] v388_mid2775_fu_417_p3;
wire   [2:0] add_ln826_fu_424_p2;
wire   [8:0] trunc_ln825_fu_413_p1;
wire   [10:0] tmp_5_fu_445_p3;
wire   [10:0] zext_ln827_1_fu_456_p1;
wire   [10:0] add_ln827_fu_459_p2;
wire   [12:0] tmp_fu_465_p3;
wire   [12:0] zext_ln827_3_fu_477_p1;
wire   [16:0] tmp_s_fu_437_p3;
wire   [16:0] zext_ln830_fu_487_p1;
wire   [16:0] add_ln830_fu_490_p2;
wire   [9:0] tmp_6_fu_501_p3;
wire   [9:0] zext_ln827_fu_453_p1;
wire   [9:0] add_ln829_fu_508_p2;
wire   [11:0] tmp_19_fu_514_p3;
wire   [11:0] zext_ln827_2_fu_473_p1;
wire   [11:0] add_ln829_1_fu_522_p2;
wire   [6:0] grp_fu_565_p1;
wire   [7:0] grp_fu_565_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] grp_fu_565_p10;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 v392_fu_86 = 8'd0;
#0 v389_fu_90 = 9'd0;
#0 v388_fu_94 = 3'd0;
#0 indvar_flatten768_fu_98 = 12'd0;
#0 v387_fu_102 = 3'd0;
#0 indvar_flatten782_fu_106 = 14'd0;
#0 v386_fu_110 = 10'd0;
#0 indvar_flatten806_fu_114 = 22'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U333(.clk(ap_clk),.reset(ap_rst),.din0(v13_Dout_A),.din1(grp_fu_565_p1),.din2(grp_fu_565_p2),.ce(1'b1),.dout(grp_fu_565_p3));
main_graph_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter2_stage0)) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            indvar_flatten768_fu_98 <= 12'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln824_reg_631 == 1'd0))) begin
            indvar_flatten768_fu_98 <= select_ln826_1_fu_371_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten782_fu_106 <= 14'd0;
        end else if (((icmp_ln824_fu_207_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten782_fu_106 <= select_ln825_1_fu_231_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten806_fu_114 <= 22'd0;
        end else if (((icmp_ln824_fu_207_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten806_fu_114 <= add_ln824_1_fu_213_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v386_fu_110 <= 10'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v386_fu_110 <= select_ln824_1_fu_406_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v387_fu_102 <= 3'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln824_reg_631 == 1'd0))) begin
            v387_fu_102 <= select_ln825_fu_322_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v388_fu_94 <= 3'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v388_fu_94 <= select_ln826_fu_430_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v389_fu_90 <= 9'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln824_reg_631 == 1'd0))) begin
            v389_fu_90 <= add_ln828_fu_353_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v392_fu_86 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter7 == 1'b1)) begin
            v392_fu_86 <= grp_fu_565_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln827_1_reg_680 <= add_ln827_1_fu_481_p2;
        add_ln827_1_reg_680_pp0_iter4_reg <= add_ln827_1_reg_680;
        add_ln827_1_reg_680_pp0_iter5_reg <= add_ln827_1_reg_680_pp0_iter4_reg;
        add_ln827_1_reg_680_pp0_iter6_reg <= add_ln827_1_reg_680_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        empty_60_reg_661 <= empty_60_fu_336_p2;
        empty_60_reg_661_pp0_iter3_reg <= empty_60_reg_661;
        empty_60_reg_661_pp0_iter4_reg <= empty_60_reg_661_pp0_iter3_reg;
        empty_60_reg_661_pp0_iter5_reg <= empty_60_reg_661_pp0_iter4_reg;
        empty_61_reg_671 <= empty_61_fu_349_p1;
        empty_reg_645 <= empty_fu_294_p2;
        icmp_ln825_reg_635_pp0_iter2_reg <= icmp_ln825_reg_635;
        icmp_ln828_1_reg_676 <= icmp_ln828_1_fu_359_p2;
        icmp_ln828_1_reg_676_pp0_iter3_reg <= icmp_ln828_1_reg_676;
        icmp_ln828_1_reg_676_pp0_iter4_reg <= icmp_ln828_1_reg_676_pp0_iter3_reg;
        icmp_ln828_1_reg_676_pp0_iter5_reg <= icmp_ln828_1_reg_676_pp0_iter4_reg;
        icmp_ln828_1_reg_676_pp0_iter6_reg <= icmp_ln828_1_reg_676_pp0_iter5_reg;
        icmp_ln828_mid2781_reg_650 <= icmp_ln828_mid2781_fu_316_p2;
        select_ln825_reg_655 <= select_ln825_fu_322_p3;
        v389_mid2_reg_666 <= v389_mid2_fu_341_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        icmp_ln824_reg_631 <= icmp_ln824_fu_207_p2;
        icmp_ln825_reg_635 <= icmp_ln825_fu_219_p2;
    end
end
always @ (*) begin
    if (((icmp_ln824_fu_207_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln824_reg_631 == 1'd1))) begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        ap_sig_allocacmp_v392_load = grp_fu_565_p3;
    end else begin
        ap_sig_allocacmp_v392_load = v392_fu_86;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13_EN_A_local = 1'b1;
    end else begin
        v13_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v69_ce1_local = 1'b1;
    end else begin
        v69_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (icmp_ln828_1_reg_676_pp0_iter6_reg == 1'd1))) begin
        v69_we1_local = 1'b1;
    end else begin
        v69_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v70_ce0_local = 1'b1;
    end else begin
        v70_ce0_local = 1'b0;
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
assign add_ln824_1_fu_213_p2 = (indvar_flatten806_fu_114 + 22'd1);
assign add_ln824_fu_400_p2 = (v386_fu_110 + 10'd1);
assign add_ln825_1_fu_225_p2 = (indvar_flatten782_fu_106 + 14'd1);
assign add_ln825_fu_288_p2 = (select_ln824_fu_258_p3 + 3'd1);
assign add_ln826_1_fu_365_p2 = (indvar_flatten768_fu_98 + 12'd1);
assign add_ln826_fu_424_p2 = (v388_mid2775_fu_417_p3 + 3'd1);
assign add_ln827_1_fu_481_p2 = (tmp_fu_465_p3 + zext_ln827_3_fu_477_p1);
assign add_ln827_fu_459_p2 = (tmp_5_fu_445_p3 + zext_ln827_1_fu_456_p1);
assign add_ln828_fu_353_p2 = (v389_mid2_fu_341_p3 + 9'd1);
assign add_ln829_1_fu_522_p2 = (tmp_19_fu_514_p3 + zext_ln827_2_fu_473_p1);
assign add_ln829_fu_508_p2 = (tmp_6_fu_501_p3 + zext_ln827_fu_453_p1);
assign add_ln830_fu_490_p2 = (tmp_s_fu_437_p3 + zext_ln830_fu_487_p1);
assign and_ln824_1_fu_282_p2 = (xor_ln824_fu_265_p2 & icmp_ln826_fu_276_p2);
assign and_ln824_fu_310_p2 = (xor_ln824_fu_265_p2 & icmp_ln828_fu_270_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_59_fu_330_p2 = (icmp_ln828_mid2781_fu_316_p2 | and_ln824_1_fu_282_p2);
assign empty_60_fu_336_p2 = (icmp_ln825_reg_635 | empty_59_fu_330_p2);
assign empty_61_fu_349_p1 = v389_mid2_fu_341_p3[7:0];
assign empty_fu_294_p2 = (icmp_ln825_reg_635 | and_ln824_1_fu_282_p2);
assign exitcond_flatten770_not_fu_299_p2 = (icmp_ln826_fu_276_p2 ^ 1'd1);
assign grp_fu_565_p1 = grp_fu_565_p10;
assign grp_fu_565_p10 = v70_q0;
assign grp_fu_565_p2 = ((empty_60_reg_661_pp0_iter5_reg[0:0] == 1'b1) ? 8'd0 : ap_sig_allocacmp_v392_load);
assign icmp_ln824_fu_207_p2 = ((indvar_flatten806_fu_114 == 22'd2097152) ? 1'b1 : 1'b0);
assign icmp_ln825_fu_219_p2 = ((indvar_flatten782_fu_106 == 14'd4096) ? 1'b1 : 1'b0);
assign icmp_ln826_fu_276_p2 = ((indvar_flatten768_fu_98 == 12'd1024) ? 1'b1 : 1'b0);
assign icmp_ln828_1_fu_359_p2 = ((add_ln828_fu_353_p2 == 9'd256) ? 1'b1 : 1'b0);
assign icmp_ln828_fu_270_p2 = ((v389_fu_90 == 9'd256) ? 1'b1 : 1'b0);
assign icmp_ln828_mid2781_fu_316_p2 = (not_exitcond_flatten770_mid2805_fu_305_p2 & and_ln824_fu_310_p2);
assign not_exitcond_flatten770_mid2805_fu_305_p2 = (icmp_ln825_reg_635 | exitcond_flatten770_not_fu_299_p2);
assign select_ln824_1_fu_406_p3 = ((icmp_ln825_reg_635_pp0_iter2_reg[0:0] == 1'b1) ? add_ln824_fu_400_p2 : v386_fu_110);
assign select_ln824_fu_258_p3 = ((icmp_ln825_reg_635[0:0] == 1'b1) ? 3'd0 : v387_fu_102);
assign select_ln825_1_fu_231_p3 = ((icmp_ln825_fu_219_p2[0:0] == 1'b1) ? 14'd1 : add_ln825_1_fu_225_p2);
assign select_ln825_fu_322_p3 = ((and_ln824_1_fu_282_p2[0:0] == 1'b1) ? add_ln825_fu_288_p2 : select_ln824_fu_258_p3);
assign select_ln826_1_fu_371_p3 = ((empty_fu_294_p2[0:0] == 1'b1) ? 12'd1 : add_ln826_1_fu_365_p2);
assign select_ln826_fu_430_p3 = ((icmp_ln828_mid2781_reg_650[0:0] == 1'b1) ? add_ln826_fu_424_p2 : v388_mid2775_fu_417_p3);
assign tmp_19_fu_514_p3 = {{add_ln829_fu_508_p2}, {2'd0}};
assign tmp_5_fu_445_p3 = {{trunc_ln825_fu_413_p1}, {2'd0}};
assign tmp_6_fu_501_p3 = {{empty_61_reg_671}, {2'd0}};
assign tmp_fu_465_p3 = {{add_ln827_fu_459_p2}, {2'd0}};
assign tmp_s_fu_437_p3 = {{trunc_ln825_fu_413_p1}, {8'd0}};
assign trunc_ln825_fu_413_p1 = select_ln824_1_fu_406_p3[8:0];
assign v13_Addr_A = v13_Addr_A_orig << 32'd0;
assign v13_Addr_A_orig = zext_ln830_1_fu_496_p1;
assign v13_Din_A = 8'd0;
assign v13_EN_A = v13_EN_A_local;
assign v13_WEN_A = 1'd0;
assign v388_mid2775_fu_417_p3 = ((empty_reg_645[0:0] == 1'b1) ? 3'd0 : v388_fu_94);
assign v389_mid2_fu_341_p3 = ((empty_60_fu_336_p2[0:0] == 1'b1) ? 9'd0 : v389_fu_90);
assign v69_address1 = zext_ln827_4_fu_557_p1;
assign v69_ce1 = v69_ce1_local;
assign v69_d1 = grp_fu_565_p3;
assign v69_we1 = v69_we1_local;
assign v70_address0 = zext_ln829_1_fu_528_p1;
assign v70_ce0 = v70_ce0_local;
assign xor_ln824_fu_265_p2 = (icmp_ln825_reg_635 ^ 1'd1);
assign zext_ln827_1_fu_456_p1 = select_ln825_reg_655;
assign zext_ln827_2_fu_473_p1 = select_ln826_fu_430_p3;
assign zext_ln827_3_fu_477_p1 = select_ln826_fu_430_p3;
assign zext_ln827_4_fu_557_p1 = add_ln827_1_reg_680_pp0_iter6_reg;
assign zext_ln827_fu_453_p1 = select_ln825_reg_655;
assign zext_ln829_1_fu_528_p1 = add_ln829_1_fu_522_p2;
assign zext_ln830_1_fu_496_p1 = add_ln830_fu_490_p2;
assign zext_ln830_fu_487_p1 = v389_mid2_reg_666;
endmodule 
