module forward_dataflow_in_loop_VITIS_LOOP_5199_1_Loop_VITIS_LOOP_5164_1_proc151_Pipeline_VITIS (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,p_udiv36_cast,empty_99,select_ln5205,v3630_address0,v3630_ce0,v3630_we0,v3630_d0,v3630_1_address0,v3630_1_ce0,v3630_1_we0,v3630_1_d0,v3630_2_address0,v3630_2_ce0,v3630_2_we0,v3630_2_d0,v3630_3_address0,v3630_3_ce0,v3630_3_we0,v3630_3_d0,empty_100,empty,v9248_0_address0,v9248_0_ce0,v9248_0_q0,v9248_1_address0,v9248_1_ce0,v9248_1_q0,v9248_2_address0,v9248_2_ce0,v9248_2_q0,v9248_3_address0,v9248_3_ce0,v9248_3_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] mul_i;
input  [5:0] p_udiv36_cast;
input  [1:0] empty_99;
input  [3:0] select_ln5205;
output  [8:0] v3630_address0;
output   v3630_ce0;
output   v3630_we0;
output  [7:0] v3630_d0;
output  [8:0] v3630_1_address0;
output   v3630_1_ce0;
output   v3630_1_we0;
output  [7:0] v3630_1_d0;
output  [8:0] v3630_2_address0;
output   v3630_2_ce0;
output   v3630_2_we0;
output  [7:0] v3630_2_d0;
output  [8:0] v3630_3_address0;
output   v3630_3_ce0;
output   v3630_3_we0;
output  [7:0] v3630_3_d0;
input  [0:0] empty_100;
input  [1:0] empty;
output  [13:0] v9248_0_address0;
output   v9248_0_ce0;
input  [7:0] v9248_0_q0;
output  [13:0] v9248_1_address0;
output   v9248_1_ce0;
input  [7:0] v9248_1_q0;
output  [13:0] v9248_2_address0;
output   v9248_2_ce0;
input  [7:0] v9248_2_q0;
output  [13:0] v9248_3_address0;
output   v9248_3_ce0;
input  [7:0] v9248_3_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln5164_fu_492_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] p_cast3_fu_310_p1;
reg   [3:0] p_cast3_reg_841;
wire  signed [4:0] select_ln5205_cast_fu_314_p1;
reg  signed [4:0] select_ln5205_cast_reg_846;
wire   [3:0] p_cast2_fu_318_p1;
reg   [3:0] p_cast2_reg_851;
wire   [2:0] v3610_mid2_fu_408_p3;
reg   [2:0] v3610_mid2_reg_856;
wire   [2:0] v3609_fu_416_p3;
reg   [2:0] v3609_reg_862;
reg   [3:0] lshr_ln_reg_868;
reg   [5:0] tmp_254_reg_875;
wire   [0:0] icmp_ln5166_fu_480_p2;
reg   [0:0] icmp_ln5166_reg_881;
wire   [0:0] icmp_ln5165_fu_486_p2;
reg   [0:0] icmp_ln5165_reg_886;
reg   [0:0] icmp_ln5164_reg_891;
wire   [8:0] add_ln5175_1_fu_732_p2;
reg   [8:0] add_ln5175_1_reg_895;
reg   [8:0] add_ln5175_1_reg_895_pp0_iter2_reg;
wire   [13:0] add_ln5169_1_fu_767_p2;
reg   [13:0] add_ln5169_1_reg_900;
wire   [13:0] add_ln5171_1_fu_773_p2;
reg   [13:0] add_ln5171_1_reg_905;
reg   [0:0] ap_phi_mux_icmp_ln516554_phi_fu_293_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln516653_phi_fu_303_p4;
wire   [63:0] zext_ln5169_1_fu_779_p1;
wire   [63:0] zext_ln5171_1_fu_783_p1;
wire   [63:0] zext_ln5175_4_fu_789_p1;
reg   [8:0] indvar_flatten1248_fu_126;
wire   [8:0] add_ln5164_1_fu_474_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten1248_load;
reg   [5:0] v360849_fu_130;
wire   [5:0] v3608_fu_388_p3;
reg   [5:0] ap_sig_allocacmp_v360849_load;
reg   [5:0] indvar_flatten50_fu_134;
wire   [5:0] select_ln5165_1_fu_466_p3;
reg   [5:0] ap_sig_allocacmp_indvar_flatten50_load;
reg   [2:0] v360951_fu_138;
reg   [2:0] ap_sig_allocacmp_v360951_load;
reg   [2:0] v361052_fu_142;
wire   [2:0] v3610_fu_454_p2;
reg   [2:0] ap_sig_allocacmp_v361052_load;
reg    v9248_0_ce0_local;
reg    v9248_1_ce0_local;
reg    v9248_2_ce0_local;
reg    v9248_3_ce0_local;
reg    v3630_3_we0_local;
reg    v3630_3_ce0_local;
reg    v3630_2_we0_local;
reg    v3630_2_ce0_local;
reg    v3630_1_we0_local;
reg    v3630_1_ce0_local;
reg    v3630_we0_local;
reg    v3630_ce0_local;
wire   [0:0] xor_ln5164_fu_376_p2;
wire   [5:0] add_ln5164_fu_362_p2;
wire   [2:0] select_ln5164_fu_368_p3;
wire   [0:0] and_ln5164_fu_382_p2;
wire   [0:0] empty_312_fu_402_p2;
wire   [2:0] add_ln5165_fu_396_p2;
wire   [7:0] zext_ln5164_fu_424_p1;
wire   [7:0] empty_313_fu_438_p2;
wire   [5:0] add_ln5165_1_fu_460_p2;
wire   [6:0] p_shl45_fu_529_p3;
wire   [6:0] zext_ln5175_fu_526_p1;
wire   [5:0] zext_ln5164_1_fu_523_p1;
wire   [5:0] empty_314_fu_542_p2;
wire   [6:0] tmp_253_fu_555_p3;
wire   [9:0] p_shl43_fu_547_p3;
wire   [9:0] zext_ln5169_fu_563_p1;
wire   [9:0] sub_ln5169_fu_567_p2;
wire   [6:0] tmp_255_fu_584_p3;
wire   [9:0] p_shl41_fu_577_p3;
wire   [9:0] zext_ln5171_fu_591_p1;
wire   [9:0] sub_ln5171_fu_595_p2;
wire   [6:0] sub_ln5175_fu_536_p2;
wire   [6:0] zext_ln5175_1_fu_605_p1;
wire   [6:0] add_ln5175_fu_608_p2;
wire   [5:0] trunc_ln5175_fu_614_p1;
wire   [8:0] tmp_256_fu_618_p3;
wire   [8:0] zext_ln5175_2_fu_626_p1;
wire   [3:0] zext_ln5165_1_fu_636_p1;
wire   [3:0] tmp_fu_639_p2;
wire   [4:0] tmp_cast_fu_644_p1;
wire   [4:0] empty_315_fu_648_p2;
wire   [10:0] mul_ln5169_cast_fu_573_p1;
wire  signed [10:0] sext_ln5169_fu_653_p1;
wire   [10:0] add_ln5169_fu_657_p2;
wire   [9:0] trunc_ln5169_fu_663_p1;
wire   [11:0] tmp_257_fu_675_p3;
wire   [13:0] p_shl_fu_667_p3;
wire  signed [13:0] sext_ln5171_fu_683_p1;
wire   [10:0] zext_ln5165_fu_601_p1;
wire   [10:0] add_ln5171_fu_693_p2;
wire   [9:0] trunc_ln5171_fu_699_p1;
wire   [11:0] tmp_258_fu_711_p3;
wire   [13:0] p_shl47_fu_703_p3;
wire  signed [13:0] sext_ln5166_fu_719_p1;
wire   [8:0] sub_ln5165_fu_630_p2;
wire   [8:0] zext_ln5175_3_fu_729_p1;
wire   [3:0] zext_ln5166_fu_738_p1;
wire   [3:0] add_ln5168_fu_748_p2;
wire   [4:0] zext_ln5168_fu_753_p1;
wire   [4:0] select_ln5168_fu_741_p3;
wire   [4:0] add_ln5168_1_fu_757_p2;
wire   [13:0] sub_ln5171_1_fu_687_p2;
wire  signed [13:0] sext_ln5169_1_fu_763_p1;
wire   [13:0] sub_ln5166_fu_723_p2;
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
reg    ap_condition_562;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 indvar_flatten1248_fu_126 = 9'd0;
#0 v360849_fu_130 = 6'd0;
#0 indvar_flatten50_fu_134 = 6'd0;
#0 v360951_fu_138 = 3'd0;
#0 v361052_fu_142 = 3'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten1248_fu_126 <= add_ln5164_1_fu_474_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1248_fu_126 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten50_fu_134 <= select_ln5165_1_fu_466_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten50_fu_134 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v360849_fu_130 <= v3608_fu_388_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v360849_fu_130 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v360951_fu_138 <= v3609_fu_416_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v360951_fu_138 <= 3'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v361052_fu_142 <= v3610_fu_454_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v361052_fu_142 <= 3'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln5169_1_reg_900 <= add_ln5169_1_fu_767_p2;
        add_ln5171_1_reg_905 <= add_ln5171_1_fu_773_p2;
        add_ln5175_1_reg_895 <= add_ln5175_1_fu_732_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln5164_reg_891 <= icmp_ln5164_fu_492_p2;
        lshr_ln_reg_868 <= {{v3608_fu_388_p3[5:2]}};
        p_cast2_reg_851[1 : 0] <= p_cast2_fu_318_p1[1 : 0];
        p_cast3_reg_841[1 : 0] <= p_cast3_fu_310_p1[1 : 0];
        select_ln5205_cast_reg_846 <= select_ln5205_cast_fu_314_p1;
        tmp_254_reg_875 <= {{empty_313_fu_438_p2[7:2]}};
        v3609_reg_862 <= v3609_fu_416_p3;
        v3610_mid2_reg_856 <= v3610_mid2_fu_408_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln5175_1_reg_895_pp0_iter2_reg <= add_ln5175_1_reg_895;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln5165_reg_886 <= icmp_ln5165_fu_486_p2;
        icmp_ln5166_reg_881 <= icmp_ln5166_fu_480_p2;
    end
end
always @ (*) begin
    if (((icmp_ln5164_fu_492_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_562)) begin
            ap_phi_mux_icmp_ln516554_phi_fu_293_p4 = icmp_ln5165_reg_886;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln516554_phi_fu_293_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln516554_phi_fu_293_p4 = icmp_ln5165_reg_886;
        end
    end else begin
        ap_phi_mux_icmp_ln516554_phi_fu_293_p4 = icmp_ln5165_reg_886;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_562)) begin
            ap_phi_mux_icmp_ln516653_phi_fu_303_p4 = icmp_ln5166_reg_881;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln516653_phi_fu_303_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln516653_phi_fu_303_p4 = icmp_ln5166_reg_881;
        end
    end else begin
        ap_phi_mux_icmp_ln516653_phi_fu_303_p4 = icmp_ln5166_reg_881;
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
        ap_sig_allocacmp_indvar_flatten1248_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1248_load = indvar_flatten1248_fu_126;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten50_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten50_load = indvar_flatten50_fu_134;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v360849_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v360849_load = v360849_fu_130;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v360951_load = 3'd0;
    end else begin
        ap_sig_allocacmp_v360951_load = v360951_fu_138;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v361052_load = 3'd0;
    end else begin
        ap_sig_allocacmp_v361052_load = v361052_fu_142;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3630_1_ce0_local = 1'b1;
    end else begin
        v3630_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3630_1_we0_local = 1'b1;
    end else begin
        v3630_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3630_2_ce0_local = 1'b1;
    end else begin
        v3630_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3630_2_we0_local = 1'b1;
    end else begin
        v3630_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3630_3_ce0_local = 1'b1;
    end else begin
        v3630_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3630_3_we0_local = 1'b1;
    end else begin
        v3630_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3630_ce0_local = 1'b1;
    end else begin
        v3630_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3630_we0_local = 1'b1;
    end else begin
        v3630_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9248_0_ce0_local = 1'b1;
    end else begin
        v9248_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9248_1_ce0_local = 1'b1;
    end else begin
        v9248_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9248_2_ce0_local = 1'b1;
    end else begin
        v9248_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9248_3_ce0_local = 1'b1;
    end else begin
        v9248_3_ce0_local = 1'b0;
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
assign add_ln5164_1_fu_474_p2 = (ap_sig_allocacmp_indvar_flatten1248_load + 9'd1);
assign add_ln5164_fu_362_p2 = (ap_sig_allocacmp_v360849_load + 6'd4);
assign add_ln5165_1_fu_460_p2 = (ap_sig_allocacmp_indvar_flatten50_load + 6'd1);
assign add_ln5165_fu_396_p2 = (select_ln5164_fu_368_p3 + 3'd1);
assign add_ln5168_1_fu_757_p2 = (zext_ln5168_fu_753_p1 + select_ln5168_fu_741_p3);
assign add_ln5168_fu_748_p2 = (p_cast3_reg_841 + zext_ln5166_fu_738_p1);
assign add_ln5169_1_fu_767_p2 = ($signed(sub_ln5171_1_fu_687_p2) + $signed(sext_ln5169_1_fu_763_p1));
assign add_ln5169_fu_657_p2 = ($signed(mul_ln5169_cast_fu_573_p1) + $signed(sext_ln5169_fu_653_p1));
assign add_ln5171_1_fu_773_p2 = ($signed(sub_ln5166_fu_723_p2) + $signed(sext_ln5169_1_fu_763_p1));
assign add_ln5171_fu_693_p2 = ($signed(zext_ln5165_fu_601_p1) + $signed(sext_ln5169_fu_653_p1));
assign add_ln5175_1_fu_732_p2 = (sub_ln5165_fu_630_p2 + zext_ln5175_3_fu_729_p1);
assign add_ln5175_fu_608_p2 = (sub_ln5175_fu_536_p2 + zext_ln5175_1_fu_605_p1);
assign and_ln5164_fu_382_p2 = (xor_ln5164_fu_376_p2 & ap_phi_mux_icmp_ln516653_phi_fu_303_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_562 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln5164_reg_891 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_312_fu_402_p2 = (ap_phi_mux_icmp_ln516554_phi_fu_293_p4 | and_ln5164_fu_382_p2);
assign empty_313_fu_438_p2 = (mul_i + zext_ln5164_fu_424_p1);
assign empty_314_fu_542_p2 = (zext_ln5164_1_fu_523_p1 + p_udiv36_cast);
assign empty_315_fu_648_p2 = ($signed(tmp_cast_fu_644_p1) + $signed(select_ln5205_cast_reg_846));
assign icmp_ln5164_fu_492_p2 = ((ap_sig_allocacmp_indvar_flatten1248_load == 9'd391) ? 1'b1 : 1'b0);
assign icmp_ln5165_fu_486_p2 = ((select_ln5165_1_fu_466_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln5166_fu_480_p2 = ((v3610_fu_454_p2 == 3'd7) ? 1'b1 : 1'b0);
assign mul_ln5169_cast_fu_573_p1 = sub_ln5169_fu_567_p2;
assign p_cast2_fu_318_p1 = empty_99;
assign p_cast3_fu_310_p1 = empty;
assign p_shl41_fu_577_p3 = {{tmp_254_reg_875}, {4'd0}};
assign p_shl43_fu_547_p3 = {{empty_314_fu_542_p2}, {4'd0}};
assign p_shl45_fu_529_p3 = {{lshr_ln_reg_868}, {3'd0}};
assign p_shl47_fu_703_p3 = {{trunc_ln5171_fu_699_p1}, {4'd0}};
assign p_shl_fu_667_p3 = {{trunc_ln5169_fu_663_p1}, {4'd0}};
assign select_ln5164_fu_368_p3 = ((ap_phi_mux_icmp_ln516554_phi_fu_293_p4[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_v360951_load);
assign select_ln5165_1_fu_466_p3 = ((ap_phi_mux_icmp_ln516554_phi_fu_293_p4[0:0] == 1'b1) ? 6'd1 : add_ln5165_1_fu_460_p2);
assign select_ln5168_fu_741_p3 = ((empty_100[0:0] == 1'b1) ? 5'd6 : 5'd31);
assign select_ln5205_cast_fu_314_p1 = $signed(select_ln5205);
assign sext_ln5166_fu_719_p1 = $signed(tmp_258_fu_711_p3);
assign sext_ln5169_1_fu_763_p1 = $signed(add_ln5168_1_fu_757_p2);
assign sext_ln5169_fu_653_p1 = $signed(empty_315_fu_648_p2);
assign sext_ln5171_fu_683_p1 = $signed(tmp_257_fu_675_p3);
assign sub_ln5165_fu_630_p2 = (tmp_256_fu_618_p3 - zext_ln5175_2_fu_626_p1);
assign sub_ln5166_fu_723_p2 = ($signed(p_shl47_fu_703_p3) - $signed(sext_ln5166_fu_719_p1));
assign sub_ln5169_fu_567_p2 = (p_shl43_fu_547_p3 - zext_ln5169_fu_563_p1);
assign sub_ln5171_1_fu_687_p2 = ($signed(p_shl_fu_667_p3) - $signed(sext_ln5171_fu_683_p1));
assign sub_ln5171_fu_595_p2 = (p_shl41_fu_577_p3 - zext_ln5171_fu_591_p1);
assign sub_ln5175_fu_536_p2 = (p_shl45_fu_529_p3 - zext_ln5175_fu_526_p1);
assign tmp_253_fu_555_p3 = {{empty_314_fu_542_p2}, {1'd0}};
assign tmp_255_fu_584_p3 = {{tmp_254_reg_875}, {1'd0}};
assign tmp_256_fu_618_p3 = {{trunc_ln5175_fu_614_p1}, {3'd0}};
assign tmp_257_fu_675_p3 = {{add_ln5169_fu_657_p2}, {1'd0}};
assign tmp_258_fu_711_p3 = {{add_ln5171_fu_693_p2}, {1'd0}};
assign tmp_cast_fu_644_p1 = tmp_fu_639_p2;
assign tmp_fu_639_p2 = (p_cast2_reg_851 + zext_ln5165_1_fu_636_p1);
assign trunc_ln5169_fu_663_p1 = add_ln5169_fu_657_p2[9:0];
assign trunc_ln5171_fu_699_p1 = add_ln5171_fu_693_p2[9:0];
assign trunc_ln5175_fu_614_p1 = add_ln5175_fu_608_p2[5:0];
assign v3608_fu_388_p3 = ((ap_phi_mux_icmp_ln516554_phi_fu_293_p4[0:0] == 1'b1) ? add_ln5164_fu_362_p2 : ap_sig_allocacmp_v360849_load);
assign v3609_fu_416_p3 = ((and_ln5164_fu_382_p2[0:0] == 1'b1) ? add_ln5165_fu_396_p2 : select_ln5164_fu_368_p3);
assign v3610_fu_454_p2 = (v3610_mid2_fu_408_p3 + 3'd1);
assign v3610_mid2_fu_408_p3 = ((empty_312_fu_402_p2[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_v361052_load);
assign v3630_1_address0 = zext_ln5175_4_fu_789_p1;
assign v3630_1_ce0 = v3630_1_ce0_local;
assign v3630_1_d0 = v9248_2_q0;
assign v3630_1_we0 = v3630_1_we0_local;
assign v3630_2_address0 = zext_ln5175_4_fu_789_p1;
assign v3630_2_ce0 = v3630_2_ce0_local;
assign v3630_2_d0 = v9248_1_q0;
assign v3630_2_we0 = v3630_2_we0_local;
assign v3630_3_address0 = zext_ln5175_4_fu_789_p1;
assign v3630_3_ce0 = v3630_3_ce0_local;
assign v3630_3_d0 = v9248_0_q0;
assign v3630_3_we0 = v3630_3_we0_local;
assign v3630_address0 = zext_ln5175_4_fu_789_p1;
assign v3630_ce0 = v3630_ce0_local;
assign v3630_d0 = v9248_3_q0;
assign v3630_we0 = v3630_we0_local;
assign v9248_0_address0 = zext_ln5169_1_fu_779_p1;
assign v9248_0_ce0 = v9248_0_ce0_local;
assign v9248_1_address0 = zext_ln5171_1_fu_783_p1;
assign v9248_1_ce0 = v9248_1_ce0_local;
assign v9248_2_address0 = zext_ln5171_1_fu_783_p1;
assign v9248_2_ce0 = v9248_2_ce0_local;
assign v9248_3_address0 = zext_ln5171_1_fu_783_p1;
assign v9248_3_ce0 = v9248_3_ce0_local;
assign xor_ln5164_fu_376_p2 = (ap_phi_mux_icmp_ln516554_phi_fu_293_p4 ^ 1'd1);
assign zext_ln5164_1_fu_523_p1 = lshr_ln_reg_868;
assign zext_ln5164_fu_424_p1 = v3608_fu_388_p3;
assign zext_ln5165_1_fu_636_p1 = v3609_reg_862;
assign zext_ln5165_fu_601_p1 = sub_ln5171_fu_595_p2;
assign zext_ln5166_fu_738_p1 = v3610_mid2_reg_856;
assign zext_ln5168_fu_753_p1 = add_ln5168_fu_748_p2;
assign zext_ln5169_1_fu_779_p1 = add_ln5169_1_reg_900;
assign zext_ln5169_fu_563_p1 = tmp_253_fu_555_p3;
assign zext_ln5171_1_fu_783_p1 = add_ln5171_1_reg_905;
assign zext_ln5171_fu_591_p1 = tmp_255_fu_584_p3;
assign zext_ln5175_1_fu_605_p1 = v3609_reg_862;
assign zext_ln5175_2_fu_626_p1 = add_ln5175_fu_608_p2;
assign zext_ln5175_3_fu_729_p1 = v3610_mid2_reg_856;
assign zext_ln5175_4_fu_789_p1 = add_ln5175_1_reg_895_pp0_iter2_reg;
assign zext_ln5175_fu_526_p1 = lshr_ln_reg_868;
always @ (posedge ap_clk) begin
    p_cast3_reg_841[3:2] <= 2'b00;
    p_cast2_reg_851[3:2] <= 2'b00;
end
endmodule 