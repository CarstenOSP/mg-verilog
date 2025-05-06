
module forward_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_Pipeline_VITI (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,udiv_ln,select_ln15656,v12361_address0,v12361_ce0,v12361_we0,v12361_d0,v12361_1_address0,v12361_1_ce0,v12361_1_we0,v12361_1_d0,zext_ln15623,zext_ln15623_3_cast_cast,v15454_0_address0,v15454_0_ce0,v15454_0_q0,v15454_1_address0,v15454_1_ce0,v15454_1_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] mul_i;
input  [1:0] udiv_ln;
input  [4:0] select_ln15656;
output  [11:0] v12361_address0;
output   v12361_ce0;
output   v12361_we0;
output  [7:0] v12361_d0;
output  [11:0] v12361_1_address0;
output   v12361_1_ce0;
output   v12361_1_we0;
output  [7:0] v12361_1_d0;
input  [1:0] zext_ln15623;
input  [1:0] zext_ln15623_3_cast_cast;
output  [16:0] v15454_0_address0;
output   v15454_0_ce0;
input  [7:0] v15454_0_q0;
output  [16:0] v15454_1_address0;
output   v15454_1_ce0;
input  [7:0] v15454_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln15623_fu_316_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1562439_reg_240;
reg   [0:0] icmp_ln1562538_reg_251;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] zext_ln15623_3_cast_cast_cast_cast_fu_266_p1;
reg   [4:0] zext_ln15623_3_cast_cast_cast_cast_reg_757;
wire   [4:0] zext_ln15623_cast_fu_270_p1;
reg   [4:0] zext_ln15623_cast_reg_762;
wire  signed [5:0] select_ln15656_cast_fu_274_p1;
reg  signed [5:0] select_ln15656_cast_reg_767;
wire   [3:0] udiv_ln_cast_fu_278_p1;
reg   [3:0] udiv_ln_cast_reg_772;
reg   [0:0] icmp_ln15623_reg_777;
reg   [0:0] icmp_ln15623_reg_777_pp0_iter1_reg;
wire   [5:0] v12342_fu_365_p3;
reg   [5:0] v12342_reg_781;
wire   [3:0] v12343_fu_393_p3;
reg   [3:0] v12343_reg_787;
wire   [13:0] add_ln15628_fu_458_p2;
reg   [13:0] add_ln15628_reg_792;
wire   [12:0] trunc_ln15628_fu_464_p1;
reg   [12:0] trunc_ln15628_reg_797;
reg   [2:0] lshr_ln_reg_802;
wire   [4:0] add_ln15627_1_fu_487_p2;
reg   [4:0] add_ln15627_1_reg_807;
wire   [0:0] trunc_ln15627_fu_492_p1;
reg   [0:0] trunc_ln15627_reg_812;
reg   [0:0] trunc_ln15627_reg_812_pp0_iter2_reg;
reg   [3:0] lshr_ln49_reg_818;
wire   [0:0] icmp_ln15625_fu_526_p2;
reg   [0:0] icmp_ln15625_reg_823;
wire   [0:0] icmp_ln15624_fu_532_p2;
reg   [0:0] icmp_ln15624_reg_828;
wire   [11:0] add_ln15630_1_fu_640_p2;
reg   [11:0] add_ln15630_1_reg_833;
reg   [0:0] ap_phi_mux_icmp_ln1562439_phi_fu_244_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1562538_phi_fu_255_p4;
wire   [63:0] zext_ln15630_6_fu_655_p1;
wire   [63:0] zext_ln15628_fu_690_p1;
wire   [63:0] zext_ln15630_4_fu_696_p1;
reg   [11:0] indvar_flatten1233_fu_122;
wire   [11:0] add_ln15623_1_fu_310_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten1233_load;
reg   [5:0] v1234234_fu_126;
reg   [6:0] indvar_flatten35_fu_130;
wire   [6:0] select_ln15624_1_fu_518_p3;
reg   [3:0] v1234336_fu_134;
reg   [3:0] v1234437_fu_138;
wire   [3:0] v12344_fu_506_p2;
reg    v15454_0_ce0_local;
reg   [16:0] v15454_0_address0_local;
reg    v15454_1_ce0_local;
reg   [16:0] v15454_1_address0_local;
reg    v12361_1_we0_local;
wire   [7:0] select_ln15628_fu_701_p3;
reg    v12361_1_ce0_local;
reg    v12361_we0_local;
wire   [7:0] select_ln15630_fu_709_p3;
reg    v12361_ce0_local;
wire  signed [3:0] zext_ln15623_3_cast_cast_cast_fu_262_p1;
wire   [0:0] xor_ln15623_fu_353_p2;
wire   [5:0] add_ln15623_fu_339_p2;
wire   [3:0] select_ln15623_fu_345_p3;
wire   [0:0] and_ln15623_fu_359_p2;
wire   [0:0] empty_fu_379_p2;
wire   [3:0] add_ln15624_fu_373_p2;
wire   [7:0] zext_ln15623_1_fu_401_p1;
wire   [7:0] empty_329_fu_405_p2;
wire   [9:0] tmp_335_fu_418_p3;
wire   [12:0] p_shl30_fu_410_p3;
wire   [12:0] zext_ln15628_1_fu_426_p1;
wire   [12:0] sub_ln15628_fu_430_p2;
wire   [3:0] tmp_fu_440_p2;
wire   [5:0] tmp_cast_fu_445_p1;
wire   [5:0] empty_330_fu_449_p2;
wire   [13:0] zext_ln15624_fu_436_p1;
wire  signed [13:0] sext_ln15628_fu_454_p1;
wire   [3:0] v12344_mid2_fu_385_p3;
wire   [4:0] zext_ln15625_fu_468_p1;
wire   [4:0] add_ln15627_fu_482_p2;
wire   [6:0] add_ln15624_1_fu_512_p2;
wire   [6:0] tmp_334_fu_565_p3;
wire   [9:0] p_shl32_fu_558_p3;
wire   [9:0] zext_ln15630_fu_572_p1;
wire   [9:0] sub_ln15630_fu_576_p2;
wire   [9:0] zext_ln15630_1_fu_582_p1;
wire   [9:0] add_ln15630_fu_585_p2;
wire   [8:0] trunc_ln15630_fu_591_p1;
wire   [11:0] tmp_336_fu_595_p3;
wire   [11:0] zext_ln15630_2_fu_603_p1;
wire   [14:0] tmp_337_fu_620_p3;
wire   [16:0] p_shl34_fu_613_p3;
wire  signed [16:0] sext_ln15625_fu_627_p1;
wire   [11:0] sub_ln15630_1_fu_607_p2;
wire   [11:0] zext_ln15630_3_fu_637_p1;
wire   [16:0] sub_ln15625_fu_631_p2;
wire   [16:0] zext_ln15630_5_fu_646_p1;
wire   [16:0] add_ln15630_2_fu_649_p2;
wire   [5:0] zext_ln15627_fu_661_p1;
wire   [5:0] add_ln15627_2_fu_664_p2;
wire   [4:0] trunc_ln_fu_670_p4;
wire  signed [16:0] sext_ln15628_1_fu_680_p1;
wire   [16:0] add_ln15628_1_fu_684_p2;
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
#0 indvar_flatten1233_fu_122 = 12'd0;
#0 v1234234_fu_126 = 6'd0;
#0 indvar_flatten35_fu_130 = 7'd0;
#0 v1234336_fu_134 = 4'd0;
#0 v1234437_fu_138 = 4'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln15623_reg_777_pp0_iter1_reg == 1'd0))) begin
        icmp_ln1562439_reg_240 <= icmp_ln15624_reg_828;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1562439_reg_240 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln15623_reg_777_pp0_iter1_reg == 1'd0))) begin
        icmp_ln1562538_reg_251 <= icmp_ln15625_reg_823;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1562538_reg_251 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten1233_fu_122 <= add_ln15623_1_fu_310_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1233_fu_122 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten35_fu_130 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten35_fu_130 <= select_ln15624_1_fu_518_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1234234_fu_126 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1234234_fu_126 <= v12342_fu_365_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1234336_fu_134 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1234336_fu_134 <= v12343_fu_393_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1234437_fu_138 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1234437_fu_138 <= v12344_fu_506_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln15627_1_reg_807 <= add_ln15627_1_fu_487_p2;
        add_ln15628_reg_792 <= add_ln15628_fu_458_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln15623_reg_777 <= icmp_ln15623_fu_316_p2;
        icmp_ln15623_reg_777_pp0_iter1_reg <= icmp_ln15623_reg_777;
        lshr_ln49_reg_818 <= {{add_ln15627_1_fu_487_p2[4:1]}};
        lshr_ln_reg_802 <= {{v12344_mid2_fu_385_p3[3:1]}};
        select_ln15656_cast_reg_767 <= select_ln15656_cast_fu_274_p1;
        trunc_ln15627_reg_812 <= trunc_ln15627_fu_492_p1;
        trunc_ln15628_reg_797 <= trunc_ln15628_fu_464_p1;
        udiv_ln_cast_reg_772[1 : 0] <= udiv_ln_cast_fu_278_p1[1 : 0];
        v12342_reg_781 <= v12342_fu_365_p3;
        v12343_reg_787 <= v12343_fu_393_p3;
        zext_ln15623_3_cast_cast_cast_cast_reg_757[3 : 0] <= zext_ln15623_3_cast_cast_cast_cast_fu_266_p1[3 : 0];
        zext_ln15623_cast_reg_762[1 : 0] <= zext_ln15623_cast_fu_270_p1[1 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln15630_1_reg_833 <= add_ln15630_1_fu_640_p2;
        trunc_ln15627_reg_812_pp0_iter2_reg <= trunc_ln15627_reg_812;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln15624_reg_828 <= icmp_ln15624_fu_532_p2;
        icmp_ln15625_reg_823 <= icmp_ln15625_fu_526_p2;
    end
end
always @ (*) begin
    if (((icmp_ln15623_fu_316_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln15623_reg_777_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln1562439_phi_fu_244_p4 = icmp_ln15624_reg_828;
    end else begin
        ap_phi_mux_icmp_ln1562439_phi_fu_244_p4 = icmp_ln1562439_reg_240;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln15623_reg_777_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln1562538_phi_fu_255_p4 = icmp_ln15625_reg_823;
    end else begin
        ap_phi_mux_icmp_ln1562538_phi_fu_255_p4 = icmp_ln1562538_reg_251;
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
        ap_sig_allocacmp_indvar_flatten1233_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1233_load = indvar_flatten1233_fu_122;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v12361_1_ce0_local = 1'b1;
    end else begin
        v12361_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v12361_1_we0_local = 1'b1;
    end else begin
        v12361_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v12361_ce0_local = 1'b1;
    end else begin
        v12361_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v12361_we0_local = 1'b1;
    end else begin
        v12361_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln15627_reg_812 == 1'd0)) begin
            v15454_0_address0_local = zext_ln15630_6_fu_655_p1;
        end else if ((trunc_ln15627_reg_812 == 1'd1)) begin
            v15454_0_address0_local = zext_ln15628_fu_690_p1;
        end else begin
            v15454_0_address0_local = 'bx;
        end
    end else begin
        v15454_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln15627_reg_812 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln15627_reg_812 == 1'd0)))) begin
        v15454_0_ce0_local = 1'b1;
    end else begin
        v15454_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln15627_reg_812 == 1'd1)) begin
            v15454_1_address0_local = zext_ln15630_6_fu_655_p1;
        end else if ((trunc_ln15627_reg_812 == 1'd0)) begin
            v15454_1_address0_local = zext_ln15628_fu_690_p1;
        end else begin
            v15454_1_address0_local = 'bx;
        end
    end else begin
        v15454_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln15627_reg_812 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln15627_reg_812 == 1'd0)))) begin
        v15454_1_ce0_local = 1'b1;
    end else begin
        v15454_1_ce0_local = 1'b0;
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
assign add_ln15623_1_fu_310_p2 = (ap_sig_allocacmp_indvar_flatten1233_load + 12'd1);
assign add_ln15623_fu_339_p2 = (v1234234_fu_126 + 6'd1);
assign add_ln15624_1_fu_512_p2 = (indvar_flatten35_fu_130 + 7'd1);
assign add_ln15624_fu_373_p2 = (select_ln15623_fu_345_p3 + 4'd1);
assign add_ln15627_1_fu_487_p2 = (add_ln15627_fu_482_p2 + zext_ln15623_3_cast_cast_cast_cast_reg_757);
assign add_ln15627_2_fu_664_p2 = ($signed(zext_ln15627_fu_661_p1) + $signed(6'd63));
assign add_ln15627_fu_482_p2 = (zext_ln15623_cast_reg_762 + zext_ln15625_fu_468_p1);
assign add_ln15628_1_fu_684_p2 = ($signed(sub_ln15625_fu_631_p2) + $signed(sext_ln15628_1_fu_680_p1));
assign add_ln15628_fu_458_p2 = ($signed(zext_ln15624_fu_436_p1) + $signed(sext_ln15628_fu_454_p1));
assign add_ln15630_1_fu_640_p2 = (sub_ln15630_1_fu_607_p2 + zext_ln15630_3_fu_637_p1);
assign add_ln15630_2_fu_649_p2 = (sub_ln15625_fu_631_p2 + zext_ln15630_5_fu_646_p1);
assign add_ln15630_fu_585_p2 = (sub_ln15630_fu_576_p2 + zext_ln15630_1_fu_582_p1);
assign and_ln15623_fu_359_p2 = (xor_ln15623_fu_353_p2 & ap_phi_mux_icmp_ln1562538_phi_fu_255_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_329_fu_405_p2 = (mul_i + zext_ln15623_1_fu_401_p1);
assign empty_330_fu_449_p2 = ($signed(tmp_cast_fu_445_p1) + $signed(select_ln15656_cast_reg_767));
assign empty_fu_379_p2 = (ap_phi_mux_icmp_ln1562439_phi_fu_244_p4 | and_ln15623_fu_359_p2);
assign icmp_ln15623_fu_316_p2 = ((ap_sig_allocacmp_indvar_flatten1233_load == 12'd3135) ? 1'b1 : 1'b0);
assign icmp_ln15624_fu_532_p2 = ((select_ln15624_1_fu_518_p3 == 7'd98) ? 1'b1 : 1'b0);
assign icmp_ln15625_fu_526_p2 = ((v12344_fu_506_p2 == 4'd14) ? 1'b1 : 1'b0);
assign p_shl30_fu_410_p3 = {{empty_329_fu_405_p2}, {5'd0}};
assign p_shl32_fu_558_p3 = {{v12342_reg_781}, {4'd0}};
assign p_shl34_fu_613_p3 = {{trunc_ln15628_reg_797}, {4'd0}};
assign select_ln15623_fu_345_p3 = ((ap_phi_mux_icmp_ln1562439_phi_fu_244_p4[0:0] == 1'b1) ? 4'd0 : v1234336_fu_134);
assign select_ln15624_1_fu_518_p3 = ((ap_phi_mux_icmp_ln1562439_phi_fu_244_p4[0:0] == 1'b1) ? 7'd1 : add_ln15624_1_fu_512_p2);
assign select_ln15628_fu_701_p3 = ((trunc_ln15627_reg_812_pp0_iter2_reg[0:0] == 1'b1) ? v15454_0_q0 : v15454_1_q0);
assign select_ln15630_fu_709_p3 = ((trunc_ln15627_reg_812_pp0_iter2_reg[0:0] == 1'b1) ? v15454_1_q0 : v15454_0_q0);
assign select_ln15656_cast_fu_274_p1 = $signed(select_ln15656);
assign sext_ln15625_fu_627_p1 = $signed(tmp_337_fu_620_p3);
assign sext_ln15628_1_fu_680_p1 = $signed(trunc_ln_fu_670_p4);
assign sext_ln15628_fu_454_p1 = $signed(empty_330_fu_449_p2);
assign sub_ln15625_fu_631_p2 = ($signed(p_shl34_fu_613_p3) - $signed(sext_ln15625_fu_627_p1));
assign sub_ln15628_fu_430_p2 = (p_shl30_fu_410_p3 - zext_ln15628_1_fu_426_p1);
assign sub_ln15630_1_fu_607_p2 = (tmp_336_fu_595_p3 - zext_ln15630_2_fu_603_p1);
assign sub_ln15630_fu_576_p2 = (p_shl32_fu_558_p3 - zext_ln15630_fu_572_p1);
assign tmp_334_fu_565_p3 = {{v12342_reg_781}, {1'd0}};
assign tmp_335_fu_418_p3 = {{empty_329_fu_405_p2}, {2'd0}};
assign tmp_336_fu_595_p3 = {{trunc_ln15630_fu_591_p1}, {3'd0}};
assign tmp_337_fu_620_p3 = {{add_ln15628_reg_792}, {1'd0}};
assign tmp_cast_fu_445_p1 = tmp_fu_440_p2;
assign tmp_fu_440_p2 = (udiv_ln_cast_reg_772 + v12343_fu_393_p3);
assign trunc_ln15627_fu_492_p1 = add_ln15627_1_fu_487_p2[0:0];
assign trunc_ln15628_fu_464_p1 = add_ln15628_fu_458_p2[12:0];
assign trunc_ln15630_fu_591_p1 = add_ln15630_fu_585_p2[8:0];
assign trunc_ln_fu_670_p4 = {{add_ln15627_2_fu_664_p2[5:1]}};
assign udiv_ln_cast_fu_278_p1 = udiv_ln;
assign v12342_fu_365_p3 = ((ap_phi_mux_icmp_ln1562439_phi_fu_244_p4[0:0] == 1'b1) ? add_ln15623_fu_339_p2 : v1234234_fu_126);
assign v12343_fu_393_p3 = ((and_ln15623_fu_359_p2[0:0] == 1'b1) ? add_ln15624_fu_373_p2 : select_ln15623_fu_345_p3);
assign v12344_fu_506_p2 = (v12344_mid2_fu_385_p3 + 4'd2);
assign v12344_mid2_fu_385_p3 = ((empty_fu_379_p2[0:0] == 1'b1) ? 4'd0 : v1234437_fu_138);
assign v12361_1_address0 = zext_ln15630_4_fu_696_p1;
assign v12361_1_ce0 = v12361_1_ce0_local;
assign v12361_1_d0 = select_ln15628_fu_701_p3;
assign v12361_1_we0 = v12361_1_we0_local;
assign v12361_address0 = zext_ln15630_4_fu_696_p1;
assign v12361_ce0 = v12361_ce0_local;
assign v12361_d0 = select_ln15630_fu_709_p3;
assign v12361_we0 = v12361_we0_local;
assign v15454_0_address0 = v15454_0_address0_local;
assign v15454_0_ce0 = v15454_0_ce0_local;
assign v15454_1_address0 = v15454_1_address0_local;
assign v15454_1_ce0 = v15454_1_ce0_local;
assign xor_ln15623_fu_353_p2 = (ap_phi_mux_icmp_ln1562439_phi_fu_244_p4 ^ 1'd1);
assign zext_ln15623_1_fu_401_p1 = v12342_fu_365_p3;
assign zext_ln15623_3_cast_cast_cast_cast_fu_266_p1 = $unsigned(zext_ln15623_3_cast_cast_cast_fu_262_p1);
assign zext_ln15623_3_cast_cast_cast_fu_262_p1 = $signed(zext_ln15623_3_cast_cast);
assign zext_ln15623_cast_fu_270_p1 = zext_ln15623;
assign zext_ln15624_fu_436_p1 = sub_ln15628_fu_430_p2;
assign zext_ln15625_fu_468_p1 = v12344_mid2_fu_385_p3;
assign zext_ln15627_fu_661_p1 = add_ln15627_1_reg_807;
assign zext_ln15628_1_fu_426_p1 = tmp_335_fu_418_p3;
assign zext_ln15628_fu_690_p1 = add_ln15628_1_fu_684_p2;
assign zext_ln15630_1_fu_582_p1 = v12343_reg_787;
assign zext_ln15630_2_fu_603_p1 = add_ln15630_fu_585_p2;
assign zext_ln15630_3_fu_637_p1 = lshr_ln_reg_802;
assign zext_ln15630_4_fu_696_p1 = add_ln15630_1_reg_833;
assign zext_ln15630_5_fu_646_p1 = lshr_ln49_reg_818;
assign zext_ln15630_6_fu_655_p1 = add_ln15630_2_fu_649_p2;
assign zext_ln15630_fu_572_p1 = tmp_334_fu_565_p3;
always @ (posedge ap_clk) begin
    zext_ln15623_3_cast_cast_cast_cast_reg_757[4] <= 1'b0;
    zext_ln15623_cast_reg_762[4:2] <= 3'b000;
    udiv_ln_cast_reg_772[3:2] <= 2'b00;
end
endmodule 
