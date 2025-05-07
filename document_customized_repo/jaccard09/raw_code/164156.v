module forward_dataflow_in_loop_VITIS_LOOP_18263_1_Loop_VITIS_LOOP_18068_1_proc70 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v15443_1_1_address0,v15443_1_1_ce0,v15443_1_1_we0,v15443_1_1_d0,v15443_1_0_address0,v15443_1_0_ce0,v15443_1_0_we0,v15443_1_0_d0,v15443_0_1_address0,v15443_0_1_ce0,v15443_0_1_we0,v15443_0_1_d0,v15443_0_0_address0,v15443_0_0_ce0,v15443_0_0_we0,v15443_0_0_d0,p_read,v14175_3_address0,v14175_3_ce0,v14175_3_q0,v14175_2_address0,v14175_2_ce0,v14175_2_q0,v14175_1_address0,v14175_1_ce0,v14175_1_q0,v14175_address0,v14175_ce0,v14175_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [16:0] v15443_1_1_address0;
output   v15443_1_1_ce0;
output   v15443_1_1_we0;
output  [7:0] v15443_1_1_d0;
output  [16:0] v15443_1_0_address0;
output   v15443_1_0_ce0;
output   v15443_1_0_we0;
output  [7:0] v15443_1_0_d0;
output  [16:0] v15443_0_1_address0;
output   v15443_0_1_ce0;
output   v15443_0_1_we0;
output  [7:0] v15443_0_1_d0;
output  [16:0] v15443_0_0_address0;
output   v15443_0_0_ce0;
output   v15443_0_0_we0;
output  [7:0] v15443_0_0_d0;
input  [3:0] p_read;
output  [12:0] v14175_3_address0;
output   v14175_3_ce0;
input  [7:0] v14175_3_q0;
output  [12:0] v14175_2_address0;
output   v14175_2_ce0;
input  [7:0] v14175_2_q0;
output  [12:0] v14175_1_address0;
output   v14175_1_ce0;
input  [7:0] v14175_1_q0;
output  [12:0] v14175_address0;
output   v14175_ce0;
input  [7:0] v14175_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln18068_fu_586_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [4:0] p_udiv4_cast_cast_cast_cast_fu_312_p3;
reg   [4:0] p_udiv4_cast_cast_cast_cast_reg_851;
wire   [4:0] p_udiv6_cast_cast_cast_cast_fu_332_p3;
reg   [4:0] p_udiv6_cast_cast_cast_cast_reg_856;
reg   [4:0] p_udiv6_cast_cast_cast_cast_reg_856_pp0_iter1_reg;
wire   [6:0] empty_276_fu_468_p2;
reg   [6:0] empty_276_reg_861;
wire   [3:0] lshr_ln_fu_478_p4;
reg   [3:0] lshr_ln_reg_867;
wire   [9:0] add_ln18072_fu_492_p2;
reg   [9:0] add_ln18072_reg_872;
wire   [8:0] trunc_ln18072_fu_498_p1;
reg   [8:0] trunc_ln18072_reg_877;
reg   [4:0] lshr_ln39_reg_882;
reg   [3:0] lshr_ln18070_1_reg_887;
reg   [3:0] lshr_ln18070_1_reg_887_pp0_iter1_reg;
reg   [4:0] lshr_ln40_reg_893;
reg   [4:0] lshr_ln40_reg_893_pp0_iter1_reg;
wire   [0:0] icmp_ln18070_fu_574_p2;
reg   [0:0] icmp_ln18070_reg_898;
wire   [0:0] icmp_ln18069_fu_580_p2;
reg   [0:0] icmp_ln18069_reg_903;
reg   [0:0] icmp_ln18068_reg_908;
wire   [11:0] add_ln18075_fu_677_p2;
reg   [11:0] add_ln18075_reg_912;
wire   [11:0] add_ln18079_fu_686_p2;
reg   [11:0] add_ln18079_reg_918;
reg   [0:0] ap_phi_mux_icmp_ln1806975_phi_fu_261_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1807074_phi_fu_271_p4;
wire   [63:0] zext_ln18072_4_fu_701_p1;
wire   [63:0] zext_ln18077_1_fu_775_p1;
wire   [63:0] zext_ln18073_fu_786_p1;
wire   [63:0] zext_ln18079_4_fu_800_p1;
wire   [63:0] zext_ln18075_2_fu_811_p1;
reg   [12:0] indvar_flatten1269_fu_124;
wire   [12:0] add_ln18068_1_fu_568_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten1269_load;
reg   [5:0] v1407070_fu_128;
wire   [5:0] v14070_fu_408_p3;
reg   [5:0] ap_sig_allocacmp_v1407070_load;
reg   [7:0] indvar_flatten71_fu_132;
wire   [7:0] select_ln18069_1_fu_560_p3;
reg   [7:0] ap_sig_allocacmp_indvar_flatten71_load;
reg   [4:0] v1407172_fu_136;
wire   [4:0] v14071_fu_430_p3;
reg   [4:0] ap_sig_allocacmp_v1407172_load;
reg   [4:0] v1407273_fu_140;
wire   [4:0] v14072_fu_548_p2;
reg   [4:0] ap_sig_allocacmp_v1407273_load;
reg    v14175_3_ce0_local;
reg    v14175_2_ce0_local;
reg    v14175_1_ce0_local;
reg    v14175_ce0_local;
reg    v15443_0_0_we0_local;
reg    v15443_0_0_ce0_local;
reg    v15443_0_1_we0_local;
reg    v15443_0_1_ce0_local;
reg    v15443_1_0_we0_local;
reg    v15443_1_0_ce0_local;
reg    v15443_1_1_we0_local;
reg    v15443_1_1_ce0_local;
wire   [1:0] tmp_fu_278_p4;
wire   [0:0] tmp_221_fu_296_p3;
wire   [0:0] empty_fu_320_p1;
wire   [5:0] add_ln18068_fu_380_p2;
wire   [4:0] select_ln18068_fu_386_p3;
wire   [0:0] or_ln18068_fu_402_p2;
wire   [4:0] select_ln18068_1_fu_394_p3;
wire   [4:0] add_ln18069_fu_416_p2;
wire   [6:0] tmp_222_fu_450_p3;
wire   [9:0] p_shl113_fu_442_p3;
wire   [9:0] zext_ln18072_fu_458_p1;
wire   [6:0] mul_i_fu_288_p3;
wire   [6:0] zext_ln18068_fu_438_p1;
wire   [9:0] sub_ln18072_fu_462_p2;
wire   [9:0] zext_ln18072_1_fu_488_p1;
wire   [5:0] zext_ln18228_cast_cast_cast_cast_fu_304_p3;
wire   [5:0] zext_ln18069_fu_474_p1;
wire   [5:0] empty_277_fu_502_p2;
wire   [4:0] v14072_mid2_fu_422_p3;
wire   [5:0] zext_ln18228_5_cast_cast_cast_cast_fu_324_p3;
wire   [5:0] zext_ln18070_fu_518_p1;
wire   [5:0] add_ln18073_fu_532_p2;
wire   [7:0] add_ln18069_1_fu_554_p2;
wire   [8:0] tmp_223_fu_624_p3;
wire   [11:0] p_shl111_fu_617_p3;
wire   [11:0] zext_ln18079_fu_631_p1;
wire   [10:0] tmp_224_fu_644_p3;
wire   [12:0] tmp_225_fu_651_p3;
wire   [12:0] zext_ln18072_2_fu_658_p1;
wire   [4:0] zext_ln18069_1_fu_641_p1;
wire   [4:0] empty_278_fu_668_p2;
wire   [11:0] sub_ln18079_fu_635_p2;
wire   [11:0] zext_ln18075_fu_673_p1;
wire   [11:0] zext_ln18079_1_fu_683_p1;
wire   [12:0] sub_ln18072_1_fu_662_p2;
wire   [12:0] zext_ln18072_3_fu_692_p1;
wire   [12:0] add_ln18072_1_fu_695_p2;
wire   [13:0] tmp_226_fu_716_p3;
wire   [16:0] p_shl107_fu_709_p3;
wire   [16:0] zext_ln18075_1_fu_723_p1;
wire   [13:0] tmp_227_fu_740_p3;
wire   [16:0] p_shl_fu_733_p3;
wire   [16:0] zext_ln18079_2_fu_747_p1;
wire   [4:0] zext_ln18070_1_fu_757_p1;
wire   [4:0] add_ln18073_1_fu_760_p2;
wire   [16:0] sub_ln18079_1_fu_751_p2;
wire   [16:0] zext_ln18077_fu_765_p1;
wire   [16:0] add_ln18077_fu_769_p2;
wire   [16:0] sub_ln18075_fu_727_p2;
wire   [16:0] add_ln18073_2_fu_780_p2;
wire   [16:0] zext_ln18079_3_fu_791_p1;
wire   [16:0] add_ln18079_1_fu_794_p2;
wire   [16:0] add_ln18075_1_fu_805_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_582;
reg    ap_condition_146;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1269_fu_124 = 13'd0;
#0 v1407070_fu_128 = 6'd0;
#0 indvar_flatten71_fu_132 = 8'd0;
#0 v1407172_fu_136 = 5'd0;
#0 v1407273_fu_140 = 5'd0;
end
forward_flow_control_loop_delay_pipe flow_control_loop_delay_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(ap_continue),.ap_loop_exit_ready_delayed(ap_loop_exit_ready_delayed));
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_146)) begin
        indvar_flatten1269_fu_124 <= add_ln18068_1_fu_568_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_146)) begin
    indvar_flatten71_fu_132 <= select_ln18069_1_fu_560_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_146)) begin
    v1407070_fu_128 <= v14070_fu_408_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_146)) begin
    v1407172_fu_136 <= v14071_fu_430_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_146)) begin
    v1407273_fu_140 <= v14072_fu_548_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln18072_reg_872 <= add_ln18072_fu_492_p2;
        add_ln18075_reg_912 <= add_ln18075_fu_677_p2;
        add_ln18079_reg_918 <= add_ln18079_fu_686_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        empty_276_reg_861 <= empty_276_fu_468_p2;
        icmp_ln18068_reg_908 <= icmp_ln18068_fu_586_p2;
        lshr_ln18070_1_reg_887 <= {{v14072_mid2_fu_422_p3[4:1]}};
        lshr_ln18070_1_reg_887_pp0_iter1_reg <= lshr_ln18070_1_reg_887;
        lshr_ln39_reg_882 <= {{empty_277_fu_502_p2[5:1]}};
        lshr_ln40_reg_893 <= {{add_ln18073_fu_532_p2[5:1]}};
        lshr_ln40_reg_893_pp0_iter1_reg <= lshr_ln40_reg_893;
        lshr_ln_reg_867 <= {{v14071_fu_430_p3[4:1]}};
        p_udiv4_cast_cast_cast_cast_reg_851[3 : 1] <= p_udiv4_cast_cast_cast_cast_fu_312_p3[3 : 1];
        p_udiv6_cast_cast_cast_cast_reg_856[3 : 1] <= p_udiv6_cast_cast_cast_cast_fu_332_p3[3 : 1];
        p_udiv6_cast_cast_cast_cast_reg_856_pp0_iter1_reg[3 : 1] <= p_udiv6_cast_cast_cast_cast_reg_856[3 : 1];
        trunc_ln18072_reg_877 <= trunc_ln18072_fu_498_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln18069_reg_903 <= icmp_ln18069_fu_580_p2;
        icmp_ln18070_reg_898 <= icmp_ln18070_fu_574_p2;
    end
end
always @ (*) begin
    if (((icmp_ln18068_fu_586_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_582)) begin
            ap_phi_mux_icmp_ln1806975_phi_fu_261_p4 = icmp_ln18069_reg_903;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1806975_phi_fu_261_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1806975_phi_fu_261_p4 = icmp_ln18069_reg_903;
        end
    end else begin
        ap_phi_mux_icmp_ln1806975_phi_fu_261_p4 = icmp_ln18069_reg_903;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_582)) begin
            ap_phi_mux_icmp_ln1807074_phi_fu_271_p4 = icmp_ln18070_reg_898;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1807074_phi_fu_271_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln1807074_phi_fu_271_p4 = icmp_ln18070_reg_898;
        end
    end else begin
        ap_phi_mux_icmp_ln1807074_phi_fu_271_p4 = icmp_ln18070_reg_898;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten1269_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1269_load = indvar_flatten1269_fu_124;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten71_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten71_load = indvar_flatten71_fu_132;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1407070_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v1407070_load = v1407070_fu_128;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1407172_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v1407172_load = v1407172_fu_136;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1407273_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v1407273_load = v1407273_fu_140;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v14175_1_ce0_local = 1'b1;
    end else begin
        v14175_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v14175_2_ce0_local = 1'b1;
    end else begin
        v14175_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v14175_3_ce0_local = 1'b1;
    end else begin
        v14175_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v14175_ce0_local = 1'b1;
    end else begin
        v14175_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15443_0_0_ce0_local = 1'b1;
    end else begin
        v15443_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15443_0_0_we0_local = 1'b1;
    end else begin
        v15443_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15443_0_1_ce0_local = 1'b1;
    end else begin
        v15443_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15443_0_1_we0_local = 1'b1;
    end else begin
        v15443_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15443_1_0_ce0_local = 1'b1;
    end else begin
        v15443_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15443_1_0_we0_local = 1'b1;
    end else begin
        v15443_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15443_1_1_ce0_local = 1'b1;
    end else begin
        v15443_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15443_1_1_we0_local = 1'b1;
    end else begin
        v15443_1_1_we0_local = 1'b0;
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
assign add_ln18068_1_fu_568_p2 = (ap_sig_allocacmp_indvar_flatten1269_load + 13'd1);
assign add_ln18068_fu_380_p2 = (ap_sig_allocacmp_v1407070_load + 6'd1);
assign add_ln18069_1_fu_554_p2 = (ap_sig_allocacmp_indvar_flatten71_load + 8'd1);
assign add_ln18069_fu_416_p2 = (select_ln18068_fu_386_p3 + 5'd2);
assign add_ln18072_1_fu_695_p2 = (sub_ln18072_1_fu_662_p2 + zext_ln18072_3_fu_692_p1);
assign add_ln18072_fu_492_p2 = (sub_ln18072_fu_462_p2 + zext_ln18072_1_fu_488_p1);
assign add_ln18073_1_fu_760_p2 = (zext_ln18070_1_fu_757_p1 + p_udiv6_cast_cast_cast_cast_reg_856_pp0_iter1_reg);
assign add_ln18073_2_fu_780_p2 = (sub_ln18075_fu_727_p2 + zext_ln18077_fu_765_p1);
assign add_ln18073_fu_532_p2 = (zext_ln18228_5_cast_cast_cast_cast_fu_324_p3 + zext_ln18070_fu_518_p1);
assign add_ln18075_1_fu_805_p2 = (sub_ln18075_fu_727_p2 + zext_ln18079_3_fu_791_p1);
assign add_ln18075_fu_677_p2 = (sub_ln18079_fu_635_p2 + zext_ln18075_fu_673_p1);
assign add_ln18077_fu_769_p2 = (sub_ln18079_1_fu_751_p2 + zext_ln18077_fu_765_p1);
assign add_ln18079_1_fu_794_p2 = (sub_ln18079_1_fu_751_p2 + zext_ln18079_3_fu_791_p1);
assign add_ln18079_fu_686_p2 = (sub_ln18079_fu_635_p2 + zext_ln18079_1_fu_683_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end
always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_done_reg == 1'b1);
end
always @ (*) begin
    ap_condition_146 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_582 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln18068_reg_908 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_276_fu_468_p2 = (mul_i_fu_288_p3 + zext_ln18068_fu_438_p1);
assign empty_277_fu_502_p2 = (zext_ln18228_cast_cast_cast_cast_fu_304_p3 + zext_ln18069_fu_474_p1);
assign empty_278_fu_668_p2 = (zext_ln18069_1_fu_641_p1 + p_udiv4_cast_cast_cast_cast_reg_851);
assign empty_fu_320_p1 = p_read[0:0];
assign icmp_ln18068_fu_586_p2 = ((ap_sig_allocacmp_indvar_flatten1269_load == 13'd6271) ? 1'b1 : 1'b0);
assign icmp_ln18069_fu_580_p2 = ((select_ln18069_1_fu_560_p3 == 8'd196) ? 1'b1 : 1'b0);
assign icmp_ln18070_fu_574_p2 = ((v14072_fu_548_p2 < 5'd28) ? 1'b1 : 1'b0);
assign lshr_ln_fu_478_p4 = {{v14071_fu_430_p3[4:1]}};
assign mul_i_fu_288_p3 = {{tmp_fu_278_p4}, {5'd0}};
assign or_ln18068_fu_402_p2 = (ap_phi_mux_icmp_ln1807074_phi_fu_271_p4 | ap_phi_mux_icmp_ln1806975_phi_fu_261_p4);
assign p_shl107_fu_709_p3 = {{add_ln18075_reg_912}, {5'd0}};
assign p_shl111_fu_617_p3 = {{empty_276_reg_861}, {5'd0}};
assign p_shl113_fu_442_p3 = {{v14070_fu_408_p3}, {4'd0}};
assign p_shl_fu_733_p3 = {{add_ln18079_reg_918}, {5'd0}};
assign p_udiv4_cast_cast_cast_cast_fu_312_p3 = ((tmp_221_fu_296_p3[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign p_udiv6_cast_cast_cast_cast_fu_332_p3 = ((empty_fu_320_p1[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign select_ln18068_1_fu_394_p3 = ((ap_phi_mux_icmp_ln1806975_phi_fu_261_p4[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v1407273_load);
assign select_ln18068_fu_386_p3 = ((ap_phi_mux_icmp_ln1806975_phi_fu_261_p4[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v1407172_load);
assign select_ln18069_1_fu_560_p3 = ((ap_phi_mux_icmp_ln1806975_phi_fu_261_p4[0:0] == 1'b1) ? 8'd1 : add_ln18069_1_fu_554_p2);
assign sub_ln18072_1_fu_662_p2 = (tmp_225_fu_651_p3 - zext_ln18072_2_fu_658_p1);
assign sub_ln18072_fu_462_p2 = (p_shl113_fu_442_p3 - zext_ln18072_fu_458_p1);
assign sub_ln18075_fu_727_p2 = (p_shl107_fu_709_p3 - zext_ln18075_1_fu_723_p1);
assign sub_ln18079_1_fu_751_p2 = (p_shl_fu_733_p3 - zext_ln18079_2_fu_747_p1);
assign sub_ln18079_fu_635_p2 = (p_shl111_fu_617_p3 - zext_ln18079_fu_631_p1);
assign tmp_221_fu_296_p3 = p_read[32'd1];
assign tmp_222_fu_450_p3 = {{v14070_fu_408_p3}, {1'd0}};
assign tmp_223_fu_624_p3 = {{empty_276_reg_861}, {2'd0}};
assign tmp_224_fu_644_p3 = {{add_ln18072_reg_872}, {1'd0}};
assign tmp_225_fu_651_p3 = {{trunc_ln18072_reg_877}, {4'd0}};
assign tmp_226_fu_716_p3 = {{add_ln18075_reg_912}, {2'd0}};
assign tmp_227_fu_740_p3 = {{add_ln18079_reg_918}, {2'd0}};
assign tmp_fu_278_p4 = {{p_read[3:2]}};
assign trunc_ln18072_fu_498_p1 = add_ln18072_fu_492_p2[8:0];
assign v14070_fu_408_p3 = ((ap_phi_mux_icmp_ln1806975_phi_fu_261_p4[0:0] == 1'b1) ? add_ln18068_fu_380_p2 : ap_sig_allocacmp_v1407070_load);
assign v14071_fu_430_p3 = ((or_ln18068_fu_402_p2[0:0] == 1'b1) ? select_ln18068_fu_386_p3 : add_ln18069_fu_416_p2);
assign v14072_fu_548_p2 = (v14072_mid2_fu_422_p3 + 5'd2);
assign v14072_mid2_fu_422_p3 = ((or_ln18068_fu_402_p2[0:0] == 1'b1) ? select_ln18068_1_fu_394_p3 : 5'd0);
assign v14175_1_address0 = zext_ln18072_4_fu_701_p1;
assign v14175_1_ce0 = v14175_1_ce0_local;
assign v14175_2_address0 = zext_ln18072_4_fu_701_p1;
assign v14175_2_ce0 = v14175_2_ce0_local;
assign v14175_3_address0 = zext_ln18072_4_fu_701_p1;
assign v14175_3_ce0 = v14175_3_ce0_local;
assign v14175_address0 = zext_ln18072_4_fu_701_p1;
assign v14175_ce0 = v14175_ce0_local;
assign v15443_0_0_address0 = zext_ln18073_fu_786_p1;
assign v15443_0_0_ce0 = v15443_0_0_ce0_local;
assign v15443_0_0_d0 = v14175_3_q0;
assign v15443_0_0_we0 = v15443_0_0_we0_local;
assign v15443_0_1_address0 = zext_ln18075_2_fu_811_p1;
assign v15443_0_1_ce0 = v15443_0_1_ce0_local;
assign v15443_0_1_d0 = v14175_2_q0;
assign v15443_0_1_we0 = v15443_0_1_we0_local;
assign v15443_1_0_address0 = zext_ln18077_1_fu_775_p1;
assign v15443_1_0_ce0 = v15443_1_0_ce0_local;
assign v15443_1_0_d0 = v14175_1_q0;
assign v15443_1_0_we0 = v15443_1_0_we0_local;
assign v15443_1_1_address0 = zext_ln18079_4_fu_800_p1;
assign v15443_1_1_ce0 = v15443_1_1_ce0_local;
assign v15443_1_1_d0 = v14175_q0;
assign v15443_1_1_we0 = v15443_1_1_we0_local;
assign zext_ln18068_fu_438_p1 = v14070_fu_408_p3;
assign zext_ln18069_1_fu_641_p1 = lshr_ln_reg_867;
assign zext_ln18069_fu_474_p1 = v14071_fu_430_p3;
assign zext_ln18070_1_fu_757_p1 = lshr_ln18070_1_reg_887_pp0_iter1_reg;
assign zext_ln18070_fu_518_p1 = v14072_mid2_fu_422_p3;
assign zext_ln18072_1_fu_488_p1 = lshr_ln_fu_478_p4;
assign zext_ln18072_2_fu_658_p1 = tmp_224_fu_644_p3;
assign zext_ln18072_3_fu_692_p1 = lshr_ln18070_1_reg_887;
assign zext_ln18072_4_fu_701_p1 = add_ln18072_1_fu_695_p2;
assign zext_ln18072_fu_458_p1 = tmp_222_fu_450_p3;
assign zext_ln18073_fu_786_p1 = add_ln18073_2_fu_780_p2;
assign zext_ln18075_1_fu_723_p1 = tmp_226_fu_716_p3;
assign zext_ln18075_2_fu_811_p1 = add_ln18075_1_fu_805_p2;
assign zext_ln18075_fu_673_p1 = empty_278_fu_668_p2;
assign zext_ln18077_1_fu_775_p1 = add_ln18077_fu_769_p2;
assign zext_ln18077_fu_765_p1 = add_ln18073_1_fu_760_p2;
assign zext_ln18079_1_fu_683_p1 = lshr_ln39_reg_882;
assign zext_ln18079_2_fu_747_p1 = tmp_227_fu_740_p3;
assign zext_ln18079_3_fu_791_p1 = lshr_ln40_reg_893_pp0_iter1_reg;
assign zext_ln18079_4_fu_800_p1 = add_ln18079_1_fu_794_p2;
assign zext_ln18079_fu_631_p1 = tmp_223_fu_624_p3;
assign zext_ln18228_5_cast_cast_cast_cast_fu_324_p3 = ((empty_fu_320_p1[0:0] == 1'b1) ? 6'd28 : 6'd0);
assign zext_ln18228_cast_cast_cast_cast_fu_304_p3 = ((tmp_221_fu_296_p3[0:0] == 1'b1) ? 6'd28 : 6'd0);
always @ (posedge ap_clk) begin
    p_udiv4_cast_cast_cast_cast_reg_851[0] <= 1'b0;
    p_udiv4_cast_cast_cast_cast_reg_851[4] <= 1'b0;
    p_udiv6_cast_cast_cast_cast_reg_856[0] <= 1'b0;
    p_udiv6_cast_cast_cast_cast_reg_856[4] <= 1'b0;
    p_udiv6_cast_cast_cast_cast_reg_856_pp0_iter1_reg[0] <= 1'b0;
    p_udiv6_cast_cast_cast_cast_reg_856_pp0_iter1_reg[4] <= 1'b0;
end
endmodule 