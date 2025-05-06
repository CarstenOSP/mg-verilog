
module forward_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v12360_address0,v12360_ce0,v12360_q0,v12362_address0,v12362_ce0,v12362_we0,v12362_d0,v12362_1_address0,v12362_1_ce0,v12362_1_we0,v12362_1_d0,v12361_1_address0,v12361_1_ce0,v12361_1_q0,v12359_1_address0,v12359_1_ce0,v12359_1_q0,v12361_address0,v12361_ce0,v12361_q0,v12359_address0,v12359_ce0,v12359_q0,brmerge_i);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] v12360_address0;
output   v12360_ce0;
input  [7:0] v12360_q0;
output  [11:0] v12362_address0;
output   v12362_ce0;
output   v12362_we0;
output  [7:0] v12362_d0;
output  [11:0] v12362_1_address0;
output   v12362_1_ce0;
output   v12362_1_we0;
output  [7:0] v12362_1_d0;
output  [11:0] v12361_1_address0;
output   v12361_1_ce0;
input  [7:0] v12361_1_q0;
output  [11:0] v12359_1_address0;
output   v12359_1_ce0;
input  [7:0] v12359_1_q0;
output  [11:0] v12361_address0;
output   v12361_ce0;
input  [7:0] v12361_q0;
output  [11:0] v12359_address0;
output   v12359_ce0;
input  [7:0] v12359_q0;
input  [0:0] brmerge_i;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln15533_fu_417_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1553445_reg_205;
reg   [0:0] icmp_ln1553544_reg_216;
wire   [0:0] brmerge_i_read_reg_578;
wire    ap_block_pp0_stage0_11001;
wire   [5:0] v12294_fu_293_p3;
reg   [5:0] v12294_reg_584;
wire   [9:0] add_ln15559_fu_359_p2;
reg   [9:0] add_ln15559_reg_589;
wire   [8:0] trunc_ln15559_fu_365_p1;
reg   [8:0] trunc_ln15559_reg_594;
reg   [2:0] lshr_ln_reg_599;
wire   [0:0] icmp_ln15535_fu_405_p2;
reg   [0:0] icmp_ln15535_reg_604;
wire   [0:0] icmp_ln15534_fu_411_p2;
reg   [0:0] icmp_ln15534_reg_609;
reg   [0:0] icmp_ln15533_reg_614;
wire   [63:0] zext_ln15559_4_fu_477_p1;
reg   [63:0] zext_ln15559_4_reg_623;
reg   [63:0] zext_ln15559_4_reg_623_pp0_iter3_reg;
reg   [63:0] zext_ln15559_4_reg_623_pp0_iter4_reg;
reg   [63:0] zext_ln15559_4_reg_623_pp0_iter5_reg;
reg   [0:0] ap_phi_mux_icmp_ln1553445_phi_fu_209_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1553544_phi_fu_220_p4;
wire   [63:0] zext_ln15533_fu_448_p1;
reg   [11:0] indvar_flatten1239_fu_88;
wire   [11:0] add_ln15533_1_fu_399_p2;
reg   [5:0] v1229440_fu_92;
reg   [6:0] indvar_flatten41_fu_96;
wire   [6:0] select_ln15534_1_fu_391_p3;
reg   [3:0] v1229542_fu_100;
wire   [3:0] v12295_fu_321_p3;
reg   [3:0] v1229643_fu_104;
wire   [3:0] v12296_fu_379_p2;
reg    v12360_ce0_local;
reg    v12361_1_ce0_local;
reg    v12361_ce0_local;
reg    v12359_1_ce0_local;
reg    v12359_ce0_local;
reg    v12362_1_we0_local;
wire   [7:0] select_ln15548_fu_496_p3;
reg    v12362_1_ce0_local;
reg    v12362_we0_local;
wire   [7:0] select_ln15559_fu_516_p3;
reg    v12362_ce0_local;
wire   [0:0] xor_ln15533_fu_281_p2;
wire   [5:0] add_ln15533_fu_267_p2;
wire   [3:0] select_ln15533_fu_273_p3;
wire   [0:0] and_ln15533_fu_287_p2;
wire   [0:0] empty_fu_307_p2;
wire   [3:0] add_ln15534_fu_301_p2;
wire   [6:0] tmp_fu_337_p3;
wire   [9:0] p_shl12_fu_329_p3;
wire   [9:0] zext_ln15559_fu_345_p1;
wire   [9:0] sub_ln15559_fu_349_p2;
wire   [9:0] zext_ln15559_1_fu_355_p1;
wire   [3:0] v12296_mid2_fu_313_p3;
wire   [6:0] add_ln15534_1_fu_385_p2;
wire   [11:0] tmp_343_fu_452_p3;
wire   [11:0] zext_ln15559_2_fu_459_p1;
wire   [11:0] sub_ln15536_fu_462_p2;
wire   [11:0] zext_ln15559_3_fu_468_p1;
wire   [11:0] add_ln15559_1_fu_471_p2;
wire  signed [7:0] v12305_fu_483_p0;
wire   [7:0] grp_fu_523_p3;
wire   [0:0] v12305_fu_483_p2;
wire  signed [7:0] select_ln15548_fu_496_p1;
wire   [7:0] select_ln15548_1_fu_488_p3;
wire  signed [7:0] v12315_fu_503_p0;
wire   [7:0] grp_fu_533_p3;
wire   [0:0] v12315_fu_503_p2;
wire  signed [7:0] select_ln15559_fu_516_p1;
wire   [7:0] select_ln15559_1_fu_508_p3;
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
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 indvar_flatten1239_fu_88 = 12'd0;
#0 v1229440_fu_92 = 6'd0;
#0 indvar_flatten41_fu_96 = 7'd0;
#0 v1229542_fu_100 = 4'd0;
#0 v1229643_fu_104 = 4'd0;
#0 ap_done_reg = 1'b0;
end
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U3588(.clk(ap_clk),.reset(ap_rst),.din0(v12361_1_q0),.din1(v12360_q0),.din2(v12359_1_q0),.ce(1'b1),.dout(grp_fu_523_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U3589(.clk(ap_clk),.reset(ap_rst),.din0(v12361_q0),.din1(v12360_q0),.din2(v12359_q0),.ce(1'b1),.dout(grp_fu_533_p3));
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln15533_reg_614 == 1'd0))) begin
        icmp_ln1553445_reg_205 <= icmp_ln15534_reg_609;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1553445_reg_205 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln15533_reg_614 == 1'd0))) begin
        icmp_ln1553544_reg_216 <= icmp_ln15535_reg_604;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1553544_reg_216 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1239_fu_88 <= 12'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten1239_fu_88 <= add_ln15533_1_fu_399_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten41_fu_96 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten41_fu_96 <= select_ln15534_1_fu_391_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1229440_fu_92 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1229440_fu_92 <= v12294_fu_293_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1229542_fu_100 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1229542_fu_100 <= v12295_fu_321_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1229643_fu_104 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1229643_fu_104 <= v12296_fu_379_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln15559_reg_589 <= add_ln15559_fu_359_p2;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        icmp_ln15533_reg_614 <= icmp_ln15533_fu_417_p2;
        lshr_ln_reg_599 <= {{v12296_mid2_fu_313_p3[3:1]}};
        trunc_ln15559_reg_594 <= trunc_ln15559_fu_365_p1;
        v12294_reg_584 <= v12294_fu_293_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        zext_ln15559_4_reg_623[11 : 0] <= zext_ln15559_4_fu_477_p1[11 : 0];
        zext_ln15559_4_reg_623_pp0_iter3_reg[11 : 0] <= zext_ln15559_4_reg_623[11 : 0];
        zext_ln15559_4_reg_623_pp0_iter4_reg[11 : 0] <= zext_ln15559_4_reg_623_pp0_iter3_reg[11 : 0];
        zext_ln15559_4_reg_623_pp0_iter5_reg[11 : 0] <= zext_ln15559_4_reg_623_pp0_iter4_reg[11 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln15534_reg_609 <= icmp_ln15534_fu_411_p2;
        icmp_ln15535_reg_604 <= icmp_ln15535_fu_405_p2;
    end
end
always @ (*) begin
    if (((icmp_ln15533_fu_417_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
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
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln15533_reg_614 == 1'd0))) begin
        ap_phi_mux_icmp_ln1553445_phi_fu_209_p4 = icmp_ln15534_reg_609;
    end else begin
        ap_phi_mux_icmp_ln1553445_phi_fu_209_p4 = icmp_ln1553445_reg_205;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln15533_reg_614 == 1'd0))) begin
        ap_phi_mux_icmp_ln1553544_phi_fu_220_p4 = icmp_ln15535_reg_604;
    end else begin
        ap_phi_mux_icmp_ln1553544_phi_fu_220_p4 = icmp_ln1553544_reg_216;
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
        v12359_1_ce0_local = 1'b1;
    end else begin
        v12359_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v12359_ce0_local = 1'b1;
    end else begin
        v12359_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12360_ce0_local = 1'b1;
    end else begin
        v12360_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12361_1_ce0_local = 1'b1;
    end else begin
        v12361_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12361_ce0_local = 1'b1;
    end else begin
        v12361_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v12362_1_ce0_local = 1'b1;
    end else begin
        v12362_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v12362_1_we0_local = 1'b1;
    end else begin
        v12362_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v12362_ce0_local = 1'b1;
    end else begin
        v12362_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v12362_we0_local = 1'b1;
    end else begin
        v12362_we0_local = 1'b0;
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
assign add_ln15533_1_fu_399_p2 = (indvar_flatten1239_fu_88 + 12'd1);
assign add_ln15533_fu_267_p2 = (v1229440_fu_92 + 6'd1);
assign add_ln15534_1_fu_385_p2 = (indvar_flatten41_fu_96 + 7'd1);
assign add_ln15534_fu_301_p2 = (select_ln15533_fu_273_p3 + 4'd1);
assign add_ln15559_1_fu_471_p2 = (sub_ln15536_fu_462_p2 + zext_ln15559_3_fu_468_p1);
assign add_ln15559_fu_359_p2 = (sub_ln15559_fu_349_p2 + zext_ln15559_1_fu_355_p1);
assign and_ln15533_fu_287_p2 = (xor_ln15533_fu_281_p2 & ap_phi_mux_icmp_ln1553544_phi_fu_220_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign brmerge_i_read_reg_578 = brmerge_i;
assign empty_fu_307_p2 = (ap_phi_mux_icmp_ln1553445_phi_fu_209_p4 | and_ln15533_fu_287_p2);
assign icmp_ln15533_fu_417_p2 = ((indvar_flatten1239_fu_88 == 12'd3135) ? 1'b1 : 1'b0);
assign icmp_ln15534_fu_411_p2 = ((select_ln15534_1_fu_391_p3 == 7'd98) ? 1'b1 : 1'b0);
assign icmp_ln15535_fu_405_p2 = ((v12296_fu_379_p2 == 4'd14) ? 1'b1 : 1'b0);
assign p_shl12_fu_329_p3 = {{v12294_fu_293_p3}, {4'd0}};
assign select_ln15533_fu_273_p3 = ((ap_phi_mux_icmp_ln1553445_phi_fu_209_p4[0:0] == 1'b1) ? 4'd0 : v1229542_fu_100);
assign select_ln15534_1_fu_391_p3 = ((ap_phi_mux_icmp_ln1553445_phi_fu_209_p4[0:0] == 1'b1) ? 7'd1 : add_ln15534_1_fu_385_p2);
assign select_ln15548_1_fu_488_p3 = ((v12305_fu_483_p2[0:0] == 1'b1) ? 8'd127 : 8'd126);
assign select_ln15548_fu_496_p1 = grp_fu_523_p3;
assign select_ln15548_fu_496_p3 = ((brmerge_i[0:0] == 1'b1) ? select_ln15548_fu_496_p1 : select_ln15548_1_fu_488_p3);
assign select_ln15559_1_fu_508_p3 = ((v12315_fu_503_p2[0:0] == 1'b1) ? 8'd127 : 8'd126);
assign select_ln15559_fu_516_p1 = grp_fu_533_p3;
assign select_ln15559_fu_516_p3 = ((brmerge_i[0:0] == 1'b1) ? select_ln15559_fu_516_p1 : select_ln15559_1_fu_508_p3);
assign sub_ln15536_fu_462_p2 = (tmp_343_fu_452_p3 - zext_ln15559_2_fu_459_p1);
assign sub_ln15559_fu_349_p2 = (p_shl12_fu_329_p3 - zext_ln15559_fu_345_p1);
assign tmp_343_fu_452_p3 = {{trunc_ln15559_reg_594}, {3'd0}};
assign tmp_fu_337_p3 = {{v12294_fu_293_p3}, {1'd0}};
assign trunc_ln15559_fu_365_p1 = add_ln15559_fu_359_p2[8:0];
assign v12294_fu_293_p3 = ((ap_phi_mux_icmp_ln1553445_phi_fu_209_p4[0:0] == 1'b1) ? add_ln15533_fu_267_p2 : v1229440_fu_92);
assign v12295_fu_321_p3 = ((and_ln15533_fu_287_p2[0:0] == 1'b1) ? add_ln15534_fu_301_p2 : select_ln15533_fu_273_p3);
assign v12296_fu_379_p2 = (v12296_mid2_fu_313_p3 + 4'd2);
assign v12296_mid2_fu_313_p3 = ((empty_fu_307_p2[0:0] == 1'b1) ? 4'd0 : v1229643_fu_104);
assign v12305_fu_483_p0 = grp_fu_523_p3;
assign v12305_fu_483_p2 = ((v12305_fu_483_p0 == 8'd127) ? 1'b1 : 1'b0);
assign v12315_fu_503_p0 = grp_fu_533_p3;
assign v12315_fu_503_p2 = ((v12315_fu_503_p0 == 8'd127) ? 1'b1 : 1'b0);
assign v12359_1_address0 = zext_ln15559_4_reg_623_pp0_iter3_reg;
assign v12359_1_ce0 = v12359_1_ce0_local;
assign v12359_address0 = zext_ln15559_4_reg_623_pp0_iter3_reg;
assign v12359_ce0 = v12359_ce0_local;
assign v12360_address0 = zext_ln15533_fu_448_p1;
assign v12360_ce0 = v12360_ce0_local;
assign v12361_1_address0 = zext_ln15559_4_fu_477_p1;
assign v12361_1_ce0 = v12361_1_ce0_local;
assign v12361_address0 = zext_ln15559_4_fu_477_p1;
assign v12361_ce0 = v12361_ce0_local;
assign v12362_1_address0 = zext_ln15559_4_reg_623_pp0_iter5_reg;
assign v12362_1_ce0 = v12362_1_ce0_local;
assign v12362_1_d0 = select_ln15548_fu_496_p3;
assign v12362_1_we0 = v12362_1_we0_local;
assign v12362_address0 = zext_ln15559_4_reg_623_pp0_iter5_reg;
assign v12362_ce0 = v12362_ce0_local;
assign v12362_d0 = select_ln15559_fu_516_p3;
assign v12362_we0 = v12362_we0_local;
assign xor_ln15533_fu_281_p2 = (ap_phi_mux_icmp_ln1553445_phi_fu_209_p4 ^ 1'd1);
assign zext_ln15533_fu_448_p1 = v12294_reg_584;
assign zext_ln15559_1_fu_355_p1 = v12295_fu_321_p3;
assign zext_ln15559_2_fu_459_p1 = add_ln15559_reg_589;
assign zext_ln15559_3_fu_468_p1 = lshr_ln_reg_599;
assign zext_ln15559_4_fu_477_p1 = add_ln15559_1_fu_471_p2;
assign zext_ln15559_fu_345_p1 = tmp_fu_337_p3;
always @ (posedge ap_clk) begin
    zext_ln15559_4_reg_623[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln15559_4_reg_623_pp0_iter3_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln15559_4_reg_623_pp0_iter4_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln15559_4_reg_623_pp0_iter5_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
end
endmodule 
