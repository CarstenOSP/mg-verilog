
module ellpack (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,nzval_address0,nzval_ce0,nzval_q0,nzval_address1,nzval_ce1,nzval_q1,cols_address0,cols_ce0,cols_q0,cols_address1,cols_ce1,cols_q1,vec_address0,vec_ce0,vec_q0,vec_address1,vec_ce1,vec_q1,out_r_address0,out_r_ce0,out_r_we0,out_r_d0,out_r_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 16'd1;
parameter    ap_ST_fsm_pp0_stage1 = 16'd2;
parameter    ap_ST_fsm_pp0_stage10 = 16'd4;
parameter    ap_ST_fsm_pp0_stage2 = 16'd8;
parameter    ap_ST_fsm_pp0_stage3 = 16'd16;
parameter    ap_ST_fsm_pp0_stage4 = 16'd32;
parameter    ap_ST_fsm_pp0_stage5 = 16'd64;
parameter    ap_ST_fsm_pp0_stage6 = 16'd128;
parameter    ap_ST_fsm_pp0_stage7 = 16'd256;
parameter    ap_ST_fsm_pp0_stage8 = 16'd512;
parameter    ap_ST_fsm_pp0_stage9 = 16'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 16'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 16'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 16'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 16'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] nzval_address0;
output   nzval_ce0;
input  [63:0] nzval_q0;
output  [12:0] nzval_address1;
output   nzval_ce1;
input  [63:0] nzval_q1;
output  [12:0] cols_address0;
output   cols_ce0;
input  [31:0] cols_q0;
output  [12:0] cols_address1;
output   cols_ce1;
input  [31:0] cols_q1;
output  [8:0] vec_address0;
output   vec_ce0;
input  [63:0] vec_q0;
output  [8:0] vec_address1;
output   vec_ce1;
input  [63:0] vec_q1;
output  [8:0] out_r_address0;
output   out_r_ce0;
output   out_r_we0;
output  [63:0] out_r_d0;
input  [63:0] out_r_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [0:0] icmp_ln13_reg_476;
reg    ap_condition_exit_pp0_iter0_stage15;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln157_reg_178;
wire    ap_block_pp0_stage0_11001;
reg   [8:0] out_r_addr_reg_465;
reg   [8:0] out_r_addr_reg_465_pp0_iter1_reg;
wire   [12:0] empty_fu_269_p2;
reg   [12:0] empty_reg_470;
wire   [0:0] icmp_ln13_fu_281_p2;
reg   [0:0] icmp_ln13_reg_476_pp0_iter1_reg;
wire   [3:0] select_ln10_fu_305_p3;
reg   [3:0] select_ln10_reg_480;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] first_iter_0_fu_313_p2;
reg   [0:0] first_iter_0_reg_485;
reg   [63:0] out_r_load_reg_489;
wire   [63:0] grp_fu_193_p2;
reg   [63:0] Si_reg_514;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] nzval_load_reg_519;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] nzval_load_1_reg_529;
reg   [63:0] vec_load_reg_539;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] vec_load_1_reg_544;
wire   [63:0] bitcast_ln16_fu_385_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] bitcast_ln16_1_fu_389_p1;
wire   [63:0] bitcast_ln16_2_fu_393_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] bitcast_ln16_3_fu_397_p1;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] Si_1_reg_574;
wire   [0:0] icmp_ln15_fu_410_p2;
reg   [0:0] icmp_ln15_reg_579;
wire    ap_block_pp0_stage15_11001;
wire   [63:0] grp_fu_189_p2;
reg   [63:0] sum_2_reg_584;
wire   [63:0] bitcast_ln19_fu_421_p1;
reg   [63:0] bitcast_ln19_reg_589;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage11_subdone;
reg   [0:0] ap_phi_mux_icmp_ln157_phi_fu_181_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln13_fu_234_p1;
wire   [63:0] zext_ln16_fu_328_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln16_2_fu_361_p1;
wire   [63:0] zext_ln16_1_fu_375_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln16_3_fu_380_p1;
reg   [11:0] indvar_flatten3_fu_70;
wire   [11:0] add_ln13_1_fu_239_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten3_load;
reg   [8:0] i4_fu_74;
wire   [8:0] i_fu_226_p3;
reg   [8:0] ap_sig_allocacmp_i4_load;
reg   [3:0] j5_fu_78;
wire   [3:0] j_fu_405_p2;
reg   [8:0] add_ln138_fu_82;
wire   [8:0] add_ln13_fu_275_p2;
reg   [8:0] ap_sig_allocacmp_add_ln138_load;
reg   [63:0] sum_16_fu_86;
wire   [63:0] sum_fu_367_p1;
wire    ap_block_pp0_stage11;
reg    out_r_ce0_local;
reg   [8:0] out_r_address0_local;
reg    out_r_we0_local;
reg    nzval_ce1_local;
reg    nzval_ce0_local;
reg    cols_ce1_local;
reg    cols_ce0_local;
reg    vec_ce1_local;
reg    vec_ce0_local;
reg   [63:0] grp_fu_189_p0;
reg   [63:0] grp_fu_189_p1;
wire    ap_block_pp0_stage3;
reg   [63:0] grp_fu_193_p0;
reg   [63:0] grp_fu_193_p1;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire   [11:0] tmp_1_fu_245_p3;
wire   [9:0] tmp_2_fu_257_p3;
wire   [12:0] p_shl_fu_253_p1;
wire   [12:0] p_shl9_fu_265_p1;
wire   [12:0] zext_ln15_fu_319_p1;
wire   [12:0] add_ln16_fu_323_p2;
wire   [2:0] tmp_fu_334_p4;
wire   [3:0] or_ln_fu_344_p3;
wire   [12:0] zext_ln14_fu_352_p1;
wire   [12:0] add_ln16_1_fu_356_p2;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage15;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage11;
reg    ap_idle_pp0_0to0;
reg   [15:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage8_11001;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage12_11001;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage13_11001;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage14_11001;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_284;
reg    ap_condition_594;
reg    ap_condition_601;
reg    ap_condition_605;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten3_fu_70 = 12'd0;
#0 i4_fu_74 = 9'd0;
#0 j5_fu_78 = 4'd0;
#0 add_ln138_fu_82 = 9'd0;
#0 sum_16_fu_86 = 64'd0;
#0 ap_done_reg = 1'b0;
end
ellpack_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_189_p0),.din1(grp_fu_189_p1),.ce(1'b1),.dout(grp_fu_189_p2));
ellpack_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_193_p0),.din1(grp_fu_193_p1),.ce(1'b1),.dout(grp_fu_193_p2));
ellpack_flow_control_loop_pipe flow_control_loop_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage15),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(1'b1));
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
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_284)) begin
        add_ln138_fu_82 <= add_ln13_fu_275_p2;
    end
end
always @ (posedge ap_clk) begin
if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage11)))) begin
    ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
    ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_284)) begin
    i4_fu_74 <= i_fu_226_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
    if ((1'b1 == ap_condition_601)) begin
        icmp_ln157_reg_178 <= icmp_ln15_reg_579;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
        icmp_ln157_reg_178 <= 1'd1;
    end
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_284)) begin
    indvar_flatten3_fu_70 <= add_ln13_1_fu_239_p2;
end
end
always @ (posedge ap_clk) begin
if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
    if ((1'b1 == ap_condition_605)) begin
        j5_fu_78 <= 4'd0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        j5_fu_78 <= j_fu_405_p2;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (first_iter_0_reg_485 == 1'd1))) begin
        sum_16_fu_86 <= sum_fu_367_p1;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        sum_16_fu_86 <= grp_fu_189_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        Si_1_reg_574 <= grp_fu_193_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        Si_reg_514 <= grp_fu_193_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        bitcast_ln19_reg_589 <= bitcast_ln19_fu_421_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_470[12 : 1] <= empty_fu_269_p2[12 : 1];
        icmp_ln13_reg_476 <= icmp_ln13_fu_281_p2;
        icmp_ln13_reg_476_pp0_iter1_reg <= icmp_ln13_reg_476;
        out_r_addr_reg_465 <= zext_ln13_fu_234_p1;
        out_r_addr_reg_465_pp0_iter1_reg <= out_r_addr_reg_465;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        first_iter_0_reg_485 <= first_iter_0_fu_313_p2;
        select_ln10_reg_480 <= select_ln10_fu_305_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        icmp_ln15_reg_579 <= icmp_ln15_fu_410_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        nzval_load_1_reg_529 <= nzval_q0;
        nzval_load_reg_519 <= nzval_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        out_r_load_reg_489 <= out_r_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sum_2_reg_584 <= grp_fu_189_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        vec_load_1_reg_544 <= vec_q0;
        vec_load_reg_539 <= vec_q1;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_476 == 1'd1) & (1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (icmp_ln13_reg_476_pp0_iter1_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter1_stage11 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage11 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_594)) begin
            ap_phi_mux_icmp_ln157_phi_fu_181_p4 = icmp_ln15_reg_579;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln157_phi_fu_181_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln157_phi_fu_181_p4 = icmp_ln15_reg_579;
        end
    end else begin
        ap_phi_mux_icmp_ln157_phi_fu_181_p4 = icmp_ln15_reg_579;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_add_ln138_load = 9'd1;
    end else begin
        ap_sig_allocacmp_add_ln138_load = add_ln138_fu_82;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i4_load = 9'd0;
    end else begin
        ap_sig_allocacmp_i4_load = i4_fu_74;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten3_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten3_load = indvar_flatten3_fu_70;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        cols_ce0_local = 1'b1;
    end else begin
        cols_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        cols_ce1_local = 1'b1;
    end else begin
        cols_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_189_p0 = sum_2_reg_584;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_189_p0 = sum_16_fu_86;
    end else begin
        grp_fu_189_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_189_p1 = Si_1_reg_574;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_189_p1 = Si_reg_514;
    end else begin
        grp_fu_189_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_193_p0 = bitcast_ln16_2_fu_393_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_193_p0 = bitcast_ln16_fu_385_p1;
        end else begin
            grp_fu_193_p0 = 'bx;
        end
    end else begin
        grp_fu_193_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_193_p1 = bitcast_ln16_3_fu_397_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_193_p1 = bitcast_ln16_1_fu_389_p1;
        end else begin
            grp_fu_193_p1 = 'bx;
        end
    end else begin
        grp_fu_193_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        nzval_ce0_local = 1'b1;
    end else begin
        nzval_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        nzval_ce1_local = 1'b1;
    end else begin
        nzval_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        out_r_address0_local = out_r_addr_reg_465_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_r_address0_local = zext_ln13_fu_234_p1;
    end else begin
        out_r_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        out_r_ce0_local = 1'b1;
    end else begin
        out_r_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln15_reg_579 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        out_r_we0_local = 1'b1;
    end else begin
        out_r_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        vec_ce0_local = 1'b1;
    end else begin
        vec_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        vec_ce1_local = 1'b1;
    end else begin
        vec_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage11))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln13_1_fu_239_p2 = (ap_sig_allocacmp_indvar_flatten3_load + 12'd1);
assign add_ln13_fu_275_p2 = (i_fu_226_p3 + 9'd1);
assign add_ln16_1_fu_356_p2 = (zext_ln14_fu_352_p1 + empty_reg_470);
assign add_ln16_fu_323_p2 = (zext_ln15_fu_319_p1 + empty_reg_470);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd6];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_284 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_594 = ((icmp_ln13_reg_476 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_601 = ((icmp_ln13_reg_476 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_605 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage15;
assign ap_ready = ap_ready_sig;
assign bitcast_ln16_1_fu_389_p1 = vec_load_reg_539;
assign bitcast_ln16_2_fu_393_p1 = nzval_load_1_reg_529;
assign bitcast_ln16_3_fu_397_p1 = vec_load_1_reg_544;
assign bitcast_ln16_fu_385_p1 = nzval_load_reg_519;
assign bitcast_ln19_fu_421_p1 = grp_fu_189_p2;
assign cols_address0 = zext_ln16_2_fu_361_p1;
assign cols_address1 = zext_ln16_fu_328_p1;
assign cols_ce0 = cols_ce0_local;
assign cols_ce1 = cols_ce1_local;
assign empty_fu_269_p2 = (p_shl_fu_253_p1 + p_shl9_fu_265_p1);
assign first_iter_0_fu_313_p2 = ((select_ln10_fu_305_p3 == 4'd0) ? 1'b1 : 1'b0);
assign i_fu_226_p3 = ((ap_phi_mux_icmp_ln157_phi_fu_181_p4[0:0] == 1'b1) ? ap_sig_allocacmp_i4_load : ap_sig_allocacmp_add_ln138_load);
assign icmp_ln13_fu_281_p2 = ((ap_sig_allocacmp_indvar_flatten3_load == 12'd2469) ? 1'b1 : 1'b0);
assign icmp_ln15_fu_410_p2 = ((j_fu_405_p2 < 4'd10) ? 1'b1 : 1'b0);
assign j_fu_405_p2 = (select_ln10_reg_480 + 4'd2);
assign nzval_address0 = zext_ln16_2_fu_361_p1;
assign nzval_address1 = zext_ln16_fu_328_p1;
assign nzval_ce0 = nzval_ce0_local;
assign nzval_ce1 = nzval_ce1_local;
assign or_ln_fu_344_p3 = {{tmp_fu_334_p4}, {1'd1}};
assign out_r_address0 = out_r_address0_local;
assign out_r_ce0 = out_r_ce0_local;
assign out_r_d0 = bitcast_ln19_reg_589;
assign out_r_we0 = out_r_we0_local;
assign p_shl9_fu_265_p1 = tmp_2_fu_257_p3;
assign p_shl_fu_253_p1 = tmp_1_fu_245_p3;
assign select_ln10_fu_305_p3 = ((icmp_ln157_reg_178[0:0] == 1'b1) ? j5_fu_78 : 4'd0);
assign sum_fu_367_p1 = out_r_load_reg_489;
assign tmp_1_fu_245_p3 = {{i_fu_226_p3}, {3'd0}};
assign tmp_2_fu_257_p3 = {{i_fu_226_p3}, {1'd0}};
assign tmp_fu_334_p4 = {{select_ln10_fu_305_p3[3:1]}};
assign vec_address0 = zext_ln16_3_fu_380_p1;
assign vec_address1 = zext_ln16_1_fu_375_p1;
assign vec_ce0 = vec_ce0_local;
assign vec_ce1 = vec_ce1_local;
assign zext_ln13_fu_234_p1 = i_fu_226_p3;
assign zext_ln14_fu_352_p1 = or_ln_fu_344_p3;
assign zext_ln15_fu_319_p1 = select_ln10_fu_305_p3;
assign zext_ln16_1_fu_375_p1 = cols_q1;
assign zext_ln16_2_fu_361_p1 = add_ln16_1_fu_356_p2;
assign zext_ln16_3_fu_380_p1 = cols_q0;
assign zext_ln16_fu_328_p1 = add_ln16_fu_323_p2;
always @ (posedge ap_clk) begin
    empty_reg_470[0] <= 1'b0;
end
endmodule 
