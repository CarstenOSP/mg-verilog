
module forward_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v152_i_address0,v152_i_ce0,v152_i_q0,mul_i26_i_i,v151_1_i_address0,v151_1_i_ce0,v151_1_i_q0,v151_i_address0,v151_i_ce0,v151_i_q0,v150_1_i_address0,v150_1_i_ce0,v150_1_i_q0,v153_1_i_address0,v153_1_i_ce0,v153_1_i_we0,v153_1_i_d0,v153_1_i_address1,v153_1_i_ce1,v153_1_i_q1,v150_i_address0,v150_i_ce0,v150_i_q0,v153_i_address0,v153_i_ce0,v153_i_we0,v153_i_d0,v153_i_address1,v153_i_ce1,v153_i_q1,v149_1_i_address0,v149_1_i_ce0,v149_1_i_q0,v149_i_address0,v149_i_ce0,v149_i_q0,v148_1_i_address0,v148_1_i_ce0,v148_1_i_we0,v148_1_i_d0,v148_i_address0,v148_i_ce0,v148_i_we0,v148_i_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] v152_i_address0;
output   v152_i_ce0;
input  [7:0] v152_i_q0;
input  [11:0] mul_i26_i_i;
output  [8:0] v151_1_i_address0;
output   v151_1_i_ce0;
input  [7:0] v151_1_i_q0;
output  [8:0] v151_i_address0;
output   v151_i_ce0;
input  [7:0] v151_i_q0;
output  [3:0] v150_1_i_address0;
output   v150_1_i_ce0;
input  [7:0] v150_1_i_q0;
output  [3:0] v153_1_i_address0;
output   v153_1_i_ce0;
output   v153_1_i_we0;
output  [7:0] v153_1_i_d0;
output  [3:0] v153_1_i_address1;
output   v153_1_i_ce1;
input  [7:0] v153_1_i_q1;
output  [3:0] v150_i_address0;
output   v150_i_ce0;
input  [7:0] v150_i_q0;
output  [3:0] v153_i_address0;
output   v153_i_ce0;
output   v153_i_we0;
output  [7:0] v153_i_d0;
output  [3:0] v153_i_address1;
output   v153_i_ce1;
input  [7:0] v153_i_q1;
output  [3:0] v149_1_i_address0;
output   v149_1_i_ce0;
input  [7:0] v149_1_i_q0;
output  [3:0] v149_i_address0;
output   v149_i_ce0;
input  [7:0] v149_i_q0;
output  [3:0] v148_1_i_address0;
output   v148_1_i_ce0;
output   v148_1_i_we0;
output  [7:0] v148_1_i_d0;
output  [3:0] v148_i_address0;
output   v148_i_ce0;
output   v148_i_we0;
output  [7:0] v148_i_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln236_fu_386_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] cmp13_i_i_i_fu_314_p2;
reg   [0:0] cmp13_i_i_i_reg_512;
reg   [0:0] cmp13_i_i_i_reg_512_pp0_iter1_reg;
reg   [0:0] cmp13_i_i_i_reg_512_pp0_iter2_reg;
wire   [0:0] cmp27_i_i_i_fu_330_p2;
reg   [0:0] cmp27_i_i_i_reg_518;
reg   [0:0] cmp27_i_i_i_reg_518_pp0_iter1_reg;
reg   [0:0] cmp27_i_i_i_reg_518_pp0_iter2_reg;
reg   [0:0] cmp27_i_i_i_reg_518_pp0_iter3_reg;
reg   [0:0] cmp27_i_i_i_reg_518_pp0_iter4_reg;
wire   [3:0] lshr_ln_fu_336_p4;
reg   [3:0] lshr_ln_reg_522;
reg   [3:0] lshr_ln_reg_522_pp0_iter1_reg;
wire   [0:0] xor_ln238_fu_380_p2;
reg   [0:0] xor_ln238_reg_537;
reg   [0:0] icmp_ln236_reg_542;
wire   [63:0] zext_ln240_fu_407_p1;
reg   [63:0] zext_ln240_reg_562;
reg   [63:0] zext_ln240_reg_562_pp0_iter3_reg;
reg   [63:0] zext_ln240_reg_562_pp0_iter4_reg;
reg   [3:0] v153_1_i_addr_reg_575;
reg   [3:0] v153_1_i_addr_reg_575_pp0_iter3_reg;
reg   [3:0] v153_i_addr_reg_586;
reg   [3:0] v153_i_addr_reg_586_pp0_iter3_reg;
wire   [7:0] select_ln257_fu_439_p3;
reg   [7:0] select_ln257_reg_612;
wire   [7:0] v111_1_fu_458_p3;
reg   [7:0] v111_1_reg_617;
reg   [0:0] ap_phi_mux_icmp_ln23866_phi_fu_252_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln236_fu_309_p1;
wire   [63:0] zext_ln241_fu_354_p1;
reg   [8:0] indvar_flatten63_fu_80;
wire   [8:0] add_ln236_1_fu_360_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten63_load;
reg   [5:0] v7764_fu_84;
wire   [5:0] v77_fu_297_p3;
reg   [5:0] ap_sig_allocacmp_v7764_load;
reg   [5:0] v7865_fu_88;
wire   [5:0] v78_fu_366_p2;
reg   [5:0] ap_sig_allocacmp_v7865_load;
reg    v152_i_ce0_local;
reg    v151_1_i_ce0_local;
reg    v151_i_ce0_local;
reg    v150_1_i_ce0_local;
reg    v153_1_i_ce1_local;
reg    v153_1_i_we0_local;
wire   [7:0] grp_fu_466_p3;
reg    v153_1_i_ce0_local;
reg    v150_i_ce0_local;
reg    v153_i_ce1_local;
reg    v153_i_we0_local;
wire   [7:0] grp_fu_476_p3;
reg    v153_i_ce0_local;
reg    v149_1_i_ce0_local;
reg    v149_i_ce0_local;
reg    v148_1_i_we0_local;
reg    v148_1_i_ce0_local;
reg    v148_i_we0_local;
reg    v148_i_ce0_local;
wire   [5:0] add_ln236_fu_283_p2;
wire   [4:0] trunc_ln236_fu_305_p1;
wire   [11:0] v77_cast_cast_i_i_fu_320_p1;
wire   [11:0] empty_fu_324_p2;
wire   [5:0] select_ln236_fu_289_p3;
wire   [8:0] tmp_fu_346_p3;
wire   [0:0] tmp_139_fu_372_p3;
wire  signed [7:0] add_ln254_fu_428_p1;
(* use_dsp48 = "no" *) wire   [7:0] add_ln254_fu_428_p2;
wire   [0:0] icmp_ln256_fu_433_p2;
wire  signed [7:0] v109_fu_447_p1;
(* use_dsp48 = "no" *) wire   [7:0] v109_fu_447_p2;
wire   [0:0] v110_fu_452_p2;
wire   [7:0] grp_fu_466_p2;
wire   [7:0] grp_fu_476_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_460;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 indvar_flatten63_fu_80 = 9'd0;
#0 v7764_fu_84 = 6'd0;
#0 v7865_fu_88 = 6'd0;
#0 ap_done_reg = 1'b0;
end
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U16950(.clk(ap_clk),.reset(ap_rst),.din0(v151_1_i_q0),.din1(v152_i_q0),.din2(grp_fu_466_p2),.ce(1'b1),.dout(grp_fu_466_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U16951(.clk(ap_clk),.reset(ap_rst),.din0(v151_i_q0),.din1(v152_i_q0),.din2(grp_fu_476_p2),.ce(1'b1),.dout(grp_fu_476_p3));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten63_fu_80 <= add_ln236_1_fu_360_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten63_fu_80 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v7764_fu_84 <= v77_fu_297_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v7764_fu_84 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v7865_fu_88 <= v78_fu_366_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v7865_fu_88 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        cmp13_i_i_i_reg_512 <= cmp13_i_i_i_fu_314_p2;
        cmp13_i_i_i_reg_512_pp0_iter1_reg <= cmp13_i_i_i_reg_512;
        cmp27_i_i_i_reg_518 <= cmp27_i_i_i_fu_330_p2;
        cmp27_i_i_i_reg_518_pp0_iter1_reg <= cmp27_i_i_i_reg_518;
        icmp_ln236_reg_542 <= icmp_ln236_fu_386_p2;
        lshr_ln_reg_522 <= {{select_ln236_fu_289_p3[4:1]}};
        lshr_ln_reg_522_pp0_iter1_reg <= lshr_ln_reg_522;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        cmp13_i_i_i_reg_512_pp0_iter2_reg <= cmp13_i_i_i_reg_512_pp0_iter1_reg;
        cmp27_i_i_i_reg_518_pp0_iter2_reg <= cmp27_i_i_i_reg_518_pp0_iter1_reg;
        cmp27_i_i_i_reg_518_pp0_iter3_reg <= cmp27_i_i_i_reg_518_pp0_iter2_reg;
        cmp27_i_i_i_reg_518_pp0_iter4_reg <= cmp27_i_i_i_reg_518_pp0_iter3_reg;
        select_ln257_reg_612 <= select_ln257_fu_439_p3;
        v111_1_reg_617 <= v111_1_fu_458_p3;
        v153_1_i_addr_reg_575 <= zext_ln240_fu_407_p1;
        v153_1_i_addr_reg_575_pp0_iter3_reg <= v153_1_i_addr_reg_575;
        v153_i_addr_reg_586 <= zext_ln240_fu_407_p1;
        v153_i_addr_reg_586_pp0_iter3_reg <= v153_i_addr_reg_586;
        zext_ln240_reg_562[3 : 0] <= zext_ln240_fu_407_p1[3 : 0];
        zext_ln240_reg_562_pp0_iter3_reg[3 : 0] <= zext_ln240_reg_562[3 : 0];
        zext_ln240_reg_562_pp0_iter4_reg[3 : 0] <= zext_ln240_reg_562_pp0_iter3_reg[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xor_ln238_reg_537 <= xor_ln238_fu_380_p2;
    end
end
always @ (*) begin
    if (((icmp_ln236_fu_386_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_460)) begin
            ap_phi_mux_icmp_ln23866_phi_fu_252_p4 = xor_ln238_reg_537;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln23866_phi_fu_252_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln23866_phi_fu_252_p4 = xor_ln238_reg_537;
        end
    end else begin
        ap_phi_mux_icmp_ln23866_phi_fu_252_p4 = xor_ln238_reg_537;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten63_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten63_load = indvar_flatten63_fu_80;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v7764_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v7764_load = v7764_fu_84;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v7865_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v7865_load = v7865_fu_88;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v148_1_i_ce0_local = 1'b1;
    end else begin
        v148_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (cmp27_i_i_i_reg_518_pp0_iter4_reg == 1'd1))) begin
        v148_1_i_we0_local = 1'b1;
    end else begin
        v148_1_i_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v148_i_ce0_local = 1'b1;
    end else begin
        v148_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (cmp27_i_i_i_reg_518_pp0_iter4_reg == 1'd1))) begin
        v148_i_we0_local = 1'b1;
    end else begin
        v148_i_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v149_1_i_ce0_local = 1'b1;
    end else begin
        v149_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v149_i_ce0_local = 1'b1;
    end else begin
        v149_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v150_1_i_ce0_local = 1'b1;
    end else begin
        v150_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v150_i_ce0_local = 1'b1;
    end else begin
        v150_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v151_1_i_ce0_local = 1'b1;
    end else begin
        v151_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v151_i_ce0_local = 1'b1;
    end else begin
        v151_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v152_i_ce0_local = 1'b1;
    end else begin
        v152_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v153_1_i_ce0_local = 1'b1;
    end else begin
        v153_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v153_1_i_ce1_local = 1'b1;
    end else begin
        v153_1_i_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v153_1_i_we0_local = 1'b1;
    end else begin
        v153_1_i_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v153_i_ce0_local = 1'b1;
    end else begin
        v153_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v153_i_ce1_local = 1'b1;
    end else begin
        v153_i_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v153_i_we0_local = 1'b1;
    end else begin
        v153_i_we0_local = 1'b0;
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
assign add_ln236_1_fu_360_p2 = (ap_sig_allocacmp_indvar_flatten63_load + 9'd1);
assign add_ln236_fu_283_p2 = (ap_sig_allocacmp_v7764_load + 6'd1);
assign add_ln254_fu_428_p1 = grp_fu_466_p3;
assign add_ln254_fu_428_p2 = ($signed(v149_1_i_q0) + $signed(add_ln254_fu_428_p1));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_460 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln236_reg_542 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign cmp13_i_i_i_fu_314_p2 = ((v77_fu_297_p3 == 6'd0) ? 1'b1 : 1'b0);
assign cmp27_i_i_i_fu_330_p2 = ((empty_fu_324_p2 == 12'd2049) ? 1'b1 : 1'b0);
assign empty_fu_324_p2 = (mul_i26_i_i - v77_cast_cast_i_i_fu_320_p1);
assign grp_fu_466_p2 = ((cmp13_i_i_i_reg_512_pp0_iter2_reg[0:0] == 1'b1) ? v150_1_i_q0 : v153_1_i_q1);
assign grp_fu_476_p2 = ((cmp13_i_i_i_reg_512_pp0_iter2_reg[0:0] == 1'b1) ? v150_i_q0 : v153_i_q1);
assign icmp_ln236_fu_386_p2 = ((ap_sig_allocacmp_indvar_flatten63_load == 9'd511) ? 1'b1 : 1'b0);
assign icmp_ln256_fu_433_p2 = (($signed(add_ln254_fu_428_p2) > $signed(8'd166)) ? 1'b1 : 1'b0);
assign lshr_ln_fu_336_p4 = {{select_ln236_fu_289_p3[4:1]}};
assign select_ln236_fu_289_p3 = ((ap_phi_mux_icmp_ln23866_phi_fu_252_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v7865_load : 6'd0);
assign select_ln257_fu_439_p3 = ((icmp_ln256_fu_433_p2[0:0] == 1'b1) ? add_ln254_fu_428_p2 : 8'd166);
assign tmp_139_fu_372_p3 = v78_fu_366_p2[32'd5];
assign tmp_fu_346_p3 = {{trunc_ln236_fu_305_p1}, {lshr_ln_fu_336_p4}};
assign trunc_ln236_fu_305_p1 = v77_fu_297_p3[4:0];
assign v109_fu_447_p1 = grp_fu_476_p3;
assign v109_fu_447_p2 = ($signed(v149_i_q0) + $signed(v109_fu_447_p1));
assign v110_fu_452_p2 = (($signed(v109_fu_447_p2) > $signed(8'd166)) ? 1'b1 : 1'b0);
assign v111_1_fu_458_p3 = ((v110_fu_452_p2[0:0] == 1'b1) ? v109_fu_447_p2 : 8'd166);
assign v148_1_i_address0 = zext_ln240_reg_562_pp0_iter4_reg;
assign v148_1_i_ce0 = v148_1_i_ce0_local;
assign v148_1_i_d0 = select_ln257_reg_612;
assign v148_1_i_we0 = v148_1_i_we0_local;
assign v148_i_address0 = zext_ln240_reg_562_pp0_iter4_reg;
assign v148_i_ce0 = v148_i_ce0_local;
assign v148_i_d0 = v111_1_reg_617;
assign v148_i_we0 = v148_i_we0_local;
assign v149_1_i_address0 = zext_ln240_reg_562;
assign v149_1_i_ce0 = v149_1_i_ce0_local;
assign v149_i_address0 = zext_ln240_reg_562;
assign v149_i_ce0 = v149_i_ce0_local;
assign v150_1_i_address0 = zext_ln240_fu_407_p1;
assign v150_1_i_ce0 = v150_1_i_ce0_local;
assign v150_i_address0 = zext_ln240_fu_407_p1;
assign v150_i_ce0 = v150_i_ce0_local;
assign v151_1_i_address0 = zext_ln241_fu_354_p1;
assign v151_1_i_ce0 = v151_1_i_ce0_local;
assign v151_i_address0 = zext_ln241_fu_354_p1;
assign v151_i_ce0 = v151_i_ce0_local;
assign v152_i_address0 = zext_ln236_fu_309_p1;
assign v152_i_ce0 = v152_i_ce0_local;
assign v153_1_i_address0 = v153_1_i_addr_reg_575_pp0_iter3_reg;
assign v153_1_i_address1 = zext_ln240_fu_407_p1;
assign v153_1_i_ce0 = v153_1_i_ce0_local;
assign v153_1_i_ce1 = v153_1_i_ce1_local;
assign v153_1_i_d0 = grp_fu_466_p3;
assign v153_1_i_we0 = v153_1_i_we0_local;
assign v153_i_address0 = v153_i_addr_reg_586_pp0_iter3_reg;
assign v153_i_address1 = zext_ln240_fu_407_p1;
assign v153_i_ce0 = v153_i_ce0_local;
assign v153_i_ce1 = v153_i_ce1_local;
assign v153_i_d0 = grp_fu_476_p3;
assign v153_i_we0 = v153_i_we0_local;
assign v77_cast_cast_i_i_fu_320_p1 = trunc_ln236_fu_305_p1;
assign v77_fu_297_p3 = ((ap_phi_mux_icmp_ln23866_phi_fu_252_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v7764_load : add_ln236_fu_283_p2);
assign v78_fu_366_p2 = (select_ln236_fu_289_p3 + 6'd2);
assign xor_ln238_fu_380_p2 = (tmp_139_fu_372_p3 ^ 1'd1);
assign zext_ln236_fu_309_p1 = v77_fu_297_p3;
assign zext_ln240_fu_407_p1 = lshr_ln_reg_522_pp0_iter1_reg;
assign zext_ln241_fu_354_p1 = tmp_fu_346_p3;
always @ (posedge ap_clk) begin
    zext_ln240_reg_562[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln240_reg_562_pp0_iter3_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln240_reg_562_pp0_iter4_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end
endmodule 
