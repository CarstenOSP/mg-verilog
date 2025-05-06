
module gemm (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,m1_address0,m1_ce0,m1_q0,m2_address0,m2_ce0,m2_q0,m2_address1,m2_ce1,m2_q1,prod_address0,prod_ce0,prod_we0,prod_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 16'd1;
parameter    ap_ST_fsm_pp0_stage1 = 16'd2;
parameter    ap_ST_fsm_pp0_stage2 = 16'd4;
parameter    ap_ST_fsm_pp0_stage3 = 16'd8;
parameter    ap_ST_fsm_pp0_stage4 = 16'd16;
parameter    ap_ST_fsm_pp0_stage5 = 16'd32;
parameter    ap_ST_fsm_pp0_stage6 = 16'd64;
parameter    ap_ST_fsm_pp0_stage7 = 16'd128;
parameter    ap_ST_fsm_pp0_stage8 = 16'd256;
parameter    ap_ST_fsm_pp0_stage9 = 16'd512;
parameter    ap_ST_fsm_pp0_stage10 = 16'd1024;
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
output  [11:0] m1_address0;
output   m1_ce0;
input  [63:0] m1_q0;
output  [11:0] m2_address0;
output   m2_ce0;
input  [63:0] m2_q0;
output  [11:0] m2_address1;
output   m2_ce1;
input  [63:0] m2_q1;
output  [11:0] prod_address0;
output   prod_ce0;
output   prod_we0;
output  [63:0] prod_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
wire   [0:0] icmp_ln8_fu_491_p2;
reg    ap_condition_exit_pp0_iter0_stage15;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln923_reg_164;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] or_ln4_fu_256_p2;
reg   [0:0] or_ln4_reg_569;
wire   [6:0] k_mid2_fu_276_p3;
reg   [6:0] k_mid2_reg_574;
wire   [6:0] j_fu_284_p3;
reg   [6:0] j_reg_580;
wire   [5:0] empty_fu_292_p1;
reg   [5:0] empty_reg_587;
wire   [4:0] tmp_fu_296_p4;
reg   [4:0] tmp_reg_592;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] m1_load_1_reg_613;
wire   [0:0] tmp_1_fu_395_p3;
reg   [0:0] tmp_1_reg_623;
reg   [0:0] tmp_1_reg_623_pp0_iter1_reg;
wire   [0:0] xor_ln12_fu_403_p2;
reg   [0:0] xor_ln12_reg_627;
wire   [11:0] add_ln17_fu_409_p2;
reg   [11:0] add_ln17_reg_632;
reg   [11:0] add_ln17_reg_632_pp0_iter1_reg;
reg   [63:0] m1_load_reg_637;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] m2_load_reg_642;
reg   [63:0] m2_load_1_reg_647;
wire   [63:0] bitcast_ln14_fu_424_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] bitcast_ln14_1_fu_428_p1;
wire   [63:0] bitcast_ln14_2_fu_432_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] bitcast_ln14_3_fu_436_p1;
wire   [63:0] grp_fu_189_p2;
reg   [63:0] mult_reg_672;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [63:0] sum_mid2_fu_451_p3;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] mult_1_reg_682;
wire   [0:0] icmp_ln9_fu_485_p2;
reg   [0:0] icmp_ln9_reg_687;
wire    ap_block_pp0_stage15_11001;
reg   [0:0] icmp_ln8_reg_692;
wire   [63:0] grp_fu_185_p2;
reg   [63:0] sum_1_reg_696;
wire   [63:0] bitcast_ln17_fu_511_p1;
reg   [63:0] bitcast_ln17_reg_701;
reg   [11:0] prod_addr_reg_706;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage10_subdone;
reg   [0:0] ap_phi_mux_icmp_ln923_phi_fu_167_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1222_phi_fu_178_p4;
wire   [63:0] zext_ln14_2_fu_316_p1;
wire   [63:0] zext_ln14_fu_356_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_1_fu_367_p1;
wire   [63:0] zext_ln14_3_fu_385_p1;
wire   [63:0] zext_ln17_fu_507_p1;
wire    ap_block_pp0_stage9;
reg   [16:0] indvar_flatten1316_fu_78;
wire   [16:0] add_ln8_1_fu_465_p2;
wire    ap_block_pp0_stage15;
reg   [6:0] i17_fu_82;
wire   [6:0] i_fu_262_p3;
reg   [6:0] ap_sig_allocacmp_i17_load;
reg   [12:0] indvar_flatten18_fu_86;
wire   [12:0] select_ln9_1_fu_477_p3;
reg   [6:0] j19_fu_90;
reg   [6:0] ap_sig_allocacmp_j19_load;
reg   [6:0] k20_fu_94;
wire   [6:0] k_fu_390_p2;
reg   [6:0] ap_sig_allocacmp_k20_load;
reg   [63:0] sum21_fu_98;
wire    ap_block_pp0_stage10;
reg   [6:0] add_ln824_fu_102;
wire   [6:0] add_ln8_fu_321_p2;
reg   [6:0] ap_sig_allocacmp_add_ln824_load;
reg    m1_ce0_local;
reg   [11:0] m1_address0_local;
reg    m2_ce1_local;
reg    m2_ce0_local;
reg    prod_we0_local;
reg    prod_ce0_local;
reg   [63:0] grp_fu_185_p0;
reg   [63:0] grp_fu_185_p1;
wire    ap_block_pp0_stage2;
reg   [63:0] grp_fu_189_p0;
reg   [63:0] grp_fu_189_p1;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
wire   [6:0] select_ln4_fu_240_p3;
wire   [6:0] select_ln4_1_fu_248_p3;
wire   [6:0] add_ln9_fu_270_p2;
wire   [11:0] add_ln14_2_fu_306_p4;
wire   [11:0] zext_ln12_fu_347_p1;
wire   [11:0] tmp_3_fu_337_p3;
wire   [11:0] add_ln14_fu_350_p2;
wire   [11:0] add_ln14_1_fu_361_p3;
wire   [11:0] or_ln_fu_372_p3;
wire   [11:0] zext_ln9_fu_344_p1;
wire   [11:0] add_ln14_3_fu_379_p2;
wire   [63:0] select_ln4_2_fu_443_p3;
wire   [12:0] add_ln9_1_fu_471_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage10;
reg    ap_idle_pp0_0to0;
reg   [15:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage5_11001;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage8_11001;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage11_11001;
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
reg    ap_condition_268;
reg    ap_condition_622;
reg    ap_condition_629;
reg    ap_condition_633;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten1316_fu_78 = 17'd0;
#0 i17_fu_82 = 7'd0;
#0 indvar_flatten18_fu_86 = 13'd0;
#0 j19_fu_90 = 7'd0;
#0 k20_fu_94 = 7'd0;
#0 sum21_fu_98 = 64'd0;
#0 add_ln824_fu_102 = 7'd0;
#0 ap_done_reg = 1'b0;
end
gemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_185_p0),.din1(grp_fu_185_p1),.ce(1'b1),.dout(grp_fu_185_p2));
gemm_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_189_p0),.din1(grp_fu_189_p1),.ce(1'b1),.dout(grp_fu_189_p2));
gemm_flow_control_loop_pipe flow_control_loop_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage15),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(1'b1));
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
        end else if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
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
        if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_268)) begin
        add_ln824_fu_102 <= add_ln8_fu_321_p2;
    end
end
always @ (posedge ap_clk) begin
if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage10)))) begin
    ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
    ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_268)) begin
    i17_fu_82 <= i_fu_262_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
    if ((1'b1 == ap_condition_629)) begin
        icmp_ln923_reg_164 <= icmp_ln9_reg_687;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
        icmp_ln923_reg_164 <= 1'd0;
    end
end
end
always @ (posedge ap_clk) begin
if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
    if ((1'b1 == ap_condition_633)) begin
        indvar_flatten1316_fu_78 <= 17'd0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        indvar_flatten1316_fu_78 <= add_ln8_1_fu_465_p2;
    end
end
end
always @ (posedge ap_clk) begin
if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
    if ((1'b1 == ap_condition_633)) begin
        indvar_flatten18_fu_86 <= 13'd0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        indvar_flatten18_fu_86 <= select_ln9_1_fu_477_p3;
    end
end
end
always @ (posedge ap_clk) begin
if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
    if ((1'b1 == ap_condition_633)) begin
        j19_fu_90 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j19_fu_90 <= j_reg_580;
    end
end
end
always @ (posedge ap_clk) begin
if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
    if ((1'b1 == ap_condition_633)) begin
        k20_fu_94 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        k20_fu_94 <= k_fu_390_p2;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    sum21_fu_98 <= 64'd0;
end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
    sum21_fu_98 <= grp_fu_185_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln17_reg_632 <= add_ln17_fu_409_p2;
        add_ln17_reg_632_pp0_iter1_reg <= add_ln17_reg_632;
        tmp_1_reg_623 <= k_fu_390_p2[32'd6];
        tmp_1_reg_623_pp0_iter1_reg <= tmp_1_reg_623;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bitcast_ln17_reg_701 <= bitcast_ln17_fu_511_p1;
        prod_addr_reg_706 <= zext_ln17_fu_507_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_587 <= empty_fu_292_p1;
        j_reg_580 <= j_fu_284_p3;
        k_mid2_reg_574 <= k_mid2_fu_276_p3;
        or_ln4_reg_569 <= or_ln4_fu_256_p2;
        tmp_reg_592 <= {{k_mid2_fu_276_p3[5:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        icmp_ln8_reg_692 <= icmp_ln8_fu_491_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        icmp_ln9_reg_687 <= icmp_ln9_fu_485_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_load_1_reg_613 <= m1_q0;
        xor_ln12_reg_627 <= xor_ln12_fu_403_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        m1_load_reg_637 <= m1_q0;
        m2_load_1_reg_647 <= m2_q0;
        m2_load_reg_642 <= m2_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mult_1_reg_682 <= grp_fu_189_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mult_reg_672 <= grp_fu_189_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sum_1_reg_696 <= grp_fu_185_p2;
    end
end
always @ (*) begin
    if (((icmp_ln8_fu_491_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln8_reg_692 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_condition_exit_pp0_iter1_stage10 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage10 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
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
        if ((1'b1 == ap_condition_622)) begin
            ap_phi_mux_icmp_ln1222_phi_fu_178_p4 = xor_ln12_reg_627;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1222_phi_fu_178_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln1222_phi_fu_178_p4 = xor_ln12_reg_627;
        end
    end else begin
        ap_phi_mux_icmp_ln1222_phi_fu_178_p4 = xor_ln12_reg_627;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_622)) begin
            ap_phi_mux_icmp_ln923_phi_fu_167_p4 = icmp_ln9_reg_687;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln923_phi_fu_167_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln923_phi_fu_167_p4 = icmp_ln9_reg_687;
        end
    end else begin
        ap_phi_mux_icmp_ln923_phi_fu_167_p4 = icmp_ln9_reg_687;
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
        ap_sig_allocacmp_add_ln824_load = 7'd1;
    end else begin
        ap_sig_allocacmp_add_ln824_load = add_ln824_fu_102;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i17_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i17_load = i17_fu_82;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j19_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j19_load = j19_fu_90;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k20_load = 7'd0;
    end else begin
        ap_sig_allocacmp_k20_load = k20_fu_94;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_185_p0 = sum_1_reg_696;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_185_p0 = sum_mid2_fu_451_p3;
    end else begin
        grp_fu_185_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_185_p1 = mult_1_reg_682;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_185_p1 = mult_reg_672;
    end else begin
        grp_fu_185_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_189_p0 = bitcast_ln14_2_fu_432_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_189_p0 = bitcast_ln14_fu_424_p1;
        end else begin
            grp_fu_189_p0 = 'bx;
        end
    end else begin
        grp_fu_189_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_189_p1 = bitcast_ln14_3_fu_436_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_189_p1 = bitcast_ln14_1_fu_428_p1;
        end else begin
            grp_fu_189_p1 = 'bx;
        end
    end else begin
        grp_fu_189_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m1_address0_local = zext_ln14_fu_356_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            m1_address0_local = zext_ln14_2_fu_316_p1;
        end else begin
            m1_address0_local = 'bx;
        end
    end else begin
        m1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        m1_ce0_local = 1'b1;
    end else begin
        m1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m2_ce0_local = 1'b1;
    end else begin
        m2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m2_ce1_local = 1'b1;
    end else begin
        m2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        prod_ce0_local = 1'b1;
    end else begin
        prod_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (tmp_1_reg_623_pp0_iter1_reg == 1'd1))) begin
        prod_we0_local = 1'b1;
    end else begin
        prod_we0_local = 1'b0;
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
        ap_ST_fsm_pp0_stage10 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage10))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
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
assign add_ln14_1_fu_361_p3 = {{tmp_reg_592}, {j_reg_580}};
assign add_ln14_2_fu_306_p4 = {{{empty_fu_292_p1}, {tmp_fu_296_p4}}, {1'd1}};
assign add_ln14_3_fu_379_p2 = (or_ln_fu_372_p3 + zext_ln9_fu_344_p1);
assign add_ln14_fu_350_p2 = (zext_ln12_fu_347_p1 + tmp_3_fu_337_p3);
assign add_ln17_fu_409_p2 = (zext_ln9_fu_344_p1 + tmp_3_fu_337_p3);
assign add_ln8_1_fu_465_p2 = (indvar_flatten1316_fu_78 + 17'd1);
assign add_ln8_fu_321_p2 = (i_fu_262_p3 + 7'd1);
assign add_ln9_1_fu_471_p2 = (indvar_flatten18_fu_86 + 13'd1);
assign add_ln9_fu_270_p2 = (select_ln4_fu_240_p3 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_268 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_622 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln8_reg_692 == 1'd0));
end
always @ (*) begin
    ap_condition_629 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln8_reg_692 == 1'd0));
end
always @ (*) begin
    ap_condition_633 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage15;
assign ap_ready = ap_ready_sig;
assign bitcast_ln14_1_fu_428_p1 = m2_load_reg_642;
assign bitcast_ln14_2_fu_432_p1 = m1_load_1_reg_613;
assign bitcast_ln14_3_fu_436_p1 = m2_load_1_reg_647;
assign bitcast_ln14_fu_424_p1 = m1_load_reg_637;
assign bitcast_ln17_fu_511_p1 = grp_fu_185_p2;
assign empty_fu_292_p1 = i_fu_262_p3[5:0];
assign i_fu_262_p3 = ((ap_phi_mux_icmp_ln923_phi_fu_167_p4[0:0] == 1'b1) ? ap_sig_allocacmp_add_ln824_load : ap_sig_allocacmp_i17_load);
assign icmp_ln8_fu_491_p2 = ((indvar_flatten1316_fu_78 == 17'd131071) ? 1'b1 : 1'b0);
assign icmp_ln9_fu_485_p2 = ((select_ln9_1_fu_477_p3 == 13'd2048) ? 1'b1 : 1'b0);
assign j_fu_284_p3 = ((or_ln4_fu_256_p2[0:0] == 1'b1) ? select_ln4_fu_240_p3 : add_ln9_fu_270_p2);
assign k_fu_390_p2 = (k_mid2_reg_574 + 7'd2);
assign k_mid2_fu_276_p3 = ((or_ln4_fu_256_p2[0:0] == 1'b1) ? select_ln4_1_fu_248_p3 : 7'd0);
assign m1_address0 = m1_address0_local;
assign m1_ce0 = m1_ce0_local;
assign m2_address0 = zext_ln14_3_fu_385_p1;
assign m2_address1 = zext_ln14_1_fu_367_p1;
assign m2_ce0 = m2_ce0_local;
assign m2_ce1 = m2_ce1_local;
assign or_ln4_fu_256_p2 = (ap_phi_mux_icmp_ln923_phi_fu_167_p4 | ap_phi_mux_icmp_ln1222_phi_fu_178_p4);
assign or_ln_fu_372_p3 = {{tmp_reg_592}, {7'd64}};
assign prod_address0 = prod_addr_reg_706;
assign prod_ce0 = prod_ce0_local;
assign prod_d0 = bitcast_ln17_reg_701;
assign prod_we0 = prod_we0_local;
assign select_ln4_1_fu_248_p3 = ((ap_phi_mux_icmp_ln923_phi_fu_167_p4[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_k20_load);
assign select_ln4_2_fu_443_p3 = ((icmp_ln923_reg_164[0:0] == 1'b1) ? 64'd0 : sum21_fu_98);
assign select_ln4_fu_240_p3 = ((ap_phi_mux_icmp_ln923_phi_fu_167_p4[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j19_load);
assign select_ln9_1_fu_477_p3 = ((icmp_ln923_reg_164[0:0] == 1'b1) ? 13'd1 : add_ln9_1_fu_471_p2);
assign sum_mid2_fu_451_p3 = ((or_ln4_reg_569[0:0] == 1'b1) ? select_ln4_2_fu_443_p3 : 64'd0);
assign tmp_1_fu_395_p3 = k_fu_390_p2[32'd6];
assign tmp_3_fu_337_p3 = {{empty_reg_587}, {6'd0}};
assign tmp_fu_296_p4 = {{k_mid2_fu_276_p3[5:1]}};
assign xor_ln12_fu_403_p2 = (tmp_1_fu_395_p3 ^ 1'd1);
assign zext_ln12_fu_347_p1 = k_mid2_reg_574;
assign zext_ln14_1_fu_367_p1 = add_ln14_1_fu_361_p3;
assign zext_ln14_2_fu_316_p1 = add_ln14_2_fu_306_p4;
assign zext_ln14_3_fu_385_p1 = add_ln14_3_fu_379_p2;
assign zext_ln14_fu_356_p1 = add_ln14_fu_350_p2;
assign zext_ln17_fu_507_p1 = add_ln17_reg_632_pp0_iter1_reg;
assign zext_ln9_fu_344_p1 = j_reg_580;
endmodule 
