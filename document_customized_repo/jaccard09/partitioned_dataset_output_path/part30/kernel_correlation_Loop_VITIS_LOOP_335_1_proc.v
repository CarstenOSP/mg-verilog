
module kernel_correlation_Loop_VITIS_LOOP_335_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v213_address0,v213_ce0,v213_we0,v213_d0,v213_address1,v213_ce1,v213_q1,v210_address0,v210_ce0,v210_q0,v206);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [7:0] v213_address0;
output   v213_ce0;
output   v213_we0;
output  [31:0] v213_d0;
output  [7:0] v213_address1;
output   v213_ce1;
input  [31:0] v213_q1;
output  [15:0] v210_address0;
output   v210_ce0;
input  [31:0] v210_q0;
input  [31:0] v206;
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
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_enable_reg_pp0_iter17;
reg    ap_enable_reg_pp0_iter18;
reg    ap_enable_reg_pp0_iter19;
reg    ap_enable_reg_pp0_iter20;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln335_fu_198_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
reg   [31:0] v206_read_reg_317;
reg   [31:0] v206_read_reg_317_pp0_iter1_reg;
reg   [31:0] v206_read_reg_317_pp0_iter2_reg;
reg   [31:0] v206_read_reg_317_pp0_iter3_reg;
reg   [31:0] v206_read_reg_317_pp0_iter4_reg;
reg   [31:0] v206_read_reg_317_pp0_iter5_reg;
reg   [31:0] v206_read_reg_317_pp0_iter6_reg;
reg   [31:0] v206_read_reg_317_pp0_iter7_reg;
wire   [7:0] select_ln335_fu_160_p3;
reg   [7:0] select_ln335_reg_322;
wire   [8:0] v196_fu_168_p3;
reg   [8:0] v196_reg_328;
wire   [7:0] trunc_ln340_fu_176_p1;
reg   [7:0] trunc_ln340_reg_335;
wire   [0:0] icmp_ln336_fu_192_p2;
reg   [0:0] icmp_ln336_reg_340;
reg   [0:0] icmp_ln335_reg_345;
wire   [0:0] cmp5_i_fu_243_p2;
reg   [0:0] cmp5_i_reg_349;
wire   [0:0] cmp11_i_fu_248_p2;
reg   [0:0] cmp11_i_reg_354;
reg   [0:0] cmp11_i_reg_354_pp0_iter2_reg;
reg   [0:0] cmp11_i_reg_354_pp0_iter3_reg;
reg   [0:0] cmp11_i_reg_354_pp0_iter4_reg;
reg   [0:0] cmp11_i_reg_354_pp0_iter5_reg;
reg   [0:0] cmp11_i_reg_354_pp0_iter6_reg;
reg   [0:0] cmp11_i_reg_354_pp0_iter7_reg;
reg   [0:0] cmp11_i_reg_354_pp0_iter8_reg;
reg   [0:0] cmp11_i_reg_354_pp0_iter9_reg;
reg   [0:0] cmp11_i_reg_354_pp0_iter10_reg;
reg   [0:0] cmp11_i_reg_354_pp0_iter11_reg;
reg   [0:0] cmp11_i_reg_354_pp0_iter12_reg;
reg   [0:0] cmp11_i_reg_354_pp0_iter13_reg;
reg   [0:0] cmp11_i_reg_354_pp0_iter14_reg;
reg   [0:0] cmp11_i_reg_354_pp0_iter15_reg;
reg   [0:0] cmp11_i_reg_354_pp0_iter16_reg;
reg   [0:0] cmp11_i_reg_354_pp0_iter17_reg;
reg   [0:0] cmp11_i_reg_354_pp0_iter18_reg;
reg   [0:0] cmp11_i_reg_354_pp0_iter19_reg;
reg   [7:0] v213_addr_reg_364;
reg   [7:0] v213_addr_reg_364_pp0_iter2_reg;
reg   [7:0] v213_addr_reg_364_pp0_iter3_reg;
reg   [7:0] v213_addr_reg_364_pp0_iter4_reg;
reg   [7:0] v213_addr_reg_364_pp0_iter5_reg;
reg   [7:0] v213_addr_reg_364_pp0_iter6_reg;
reg   [7:0] v213_addr_reg_364_pp0_iter7_reg;
reg   [7:0] v213_addr_reg_364_pp0_iter8_reg;
reg   [7:0] v213_addr_reg_364_pp0_iter9_reg;
reg   [7:0] v213_addr_reg_364_pp0_iter10_reg;
reg   [7:0] v213_addr_reg_364_pp0_iter11_reg;
reg   [7:0] v213_addr_reg_364_pp0_iter12_reg;
reg   [7:0] v213_addr_reg_364_pp0_iter13_reg;
reg   [7:0] v213_addr_reg_364_pp0_iter14_reg;
reg   [7:0] v213_addr_reg_364_pp0_iter15_reg;
reg   [7:0] v213_addr_reg_364_pp0_iter16_reg;
reg   [7:0] v213_addr_reg_364_pp0_iter17_reg;
reg   [7:0] v213_addr_reg_364_pp0_iter18_reg;
reg   [7:0] v213_addr_reg_364_pp0_iter19_reg;
wire   [31:0] v199_fu_275_p3;
reg   [31:0] v199_reg_370;
reg   [31:0] v199_reg_370_pp0_iter3_reg;
reg   [31:0] v199_reg_370_pp0_iter4_reg;
reg   [31:0] v199_reg_370_pp0_iter5_reg;
reg   [31:0] v199_reg_370_pp0_iter6_reg;
reg   [31:0] v199_reg_370_pp0_iter7_reg;
reg   [31:0] v199_reg_370_pp0_iter8_reg;
reg   [31:0] v199_reg_370_pp0_iter9_reg;
reg   [31:0] v199_reg_370_pp0_iter10_reg;
reg   [31:0] v199_reg_370_pp0_iter11_reg;
reg   [31:0] v199_reg_370_pp0_iter12_reg;
reg   [31:0] v199_reg_370_pp0_iter13_reg;
reg   [31:0] v199_reg_370_pp0_iter14_reg;
reg   [31:0] v199_reg_370_pp0_iter15_reg;
reg   [31:0] v199_reg_370_pp0_iter16_reg;
reg   [31:0] v199_reg_370_pp0_iter17_reg;
reg   [31:0] v199_reg_370_pp0_iter18_reg;
reg   [31:0] v199_reg_370_pp0_iter19_reg;
reg   [31:0] v210_load_reg_376;
wire   [31:0] grp_fu_122_p2;
reg   [31:0] v201_reg_386;
wire   [31:0] grp_fu_126_p2;
reg   [31:0] v202_reg_391;
reg   [0:0] ap_phi_mux_icmp_ln33612_phi_fu_115_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln340_2_fu_266_p1;
wire   [63:0] zext_ln336_fu_253_p1;
reg   [15:0] indvar_flatten9_fu_64;
wire   [15:0] add_ln335_1_fu_186_p2;
reg   [15:0] ap_sig_allocacmp_indvar_flatten9_load;
reg   [8:0] v19610_fu_68;
reg   [8:0] ap_sig_allocacmp_v19610_load;
reg   [7:0] v19711_fu_72;
wire   [7:0] v197_fu_180_p2;
reg   [7:0] ap_sig_allocacmp_v19711_load;
reg    v213_ce1_local;
reg    v213_we0_local;
wire   [31:0] bitcast_ln344_fu_291_p1;
reg    v213_ce0_local;
reg    v210_ce0_local;
wire   [31:0] grp_fu_122_p1;
wire   [8:0] add_ln335_fu_154_p2;
wire   [12:0] tmp_fu_219_p3;
wire   [15:0] tmp_1_fu_226_p3;
wire   [15:0] zext_ln340_fu_233_p1;
wire   [15:0] sub_ln340_fu_237_p2;
wire   [15:0] zext_ln340_1_fu_257_p1;
wire   [15:0] add_ln340_fu_260_p2;
wire   [31:0] v198_fu_271_p1;
wire   [31:0] v203_fu_286_p3;
reg    grp_fu_122_ce;
reg    grp_fu_126_ce;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg    ap_loop_exit_ready_pp0_iter15_reg;
reg    ap_loop_exit_ready_pp0_iter16_reg;
reg    ap_loop_exit_ready_pp0_iter17_reg;
reg    ap_loop_exit_ready_pp0_iter18_reg;
reg    ap_loop_exit_ready_pp0_iter19_reg;
reg    ap_loop_exit_ready_pp0_iter20_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_530;
reg    ap_condition_165;
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
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 ap_enable_reg_pp0_iter18 = 1'b0;
#0 ap_enable_reg_pp0_iter19 = 1'b0;
#0 ap_enable_reg_pp0_iter20 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten9_fu_64 = 16'd0;
#0 v19610_fu_68 = 9'd0;
#0 v19711_fu_72 = 8'd0;
end
kernel_correlation_fadd_32ns_32ns_32_5_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(v199_reg_370),.din1(grp_fu_122_p1),.ce(grp_fu_122_ce),.dout(grp_fu_122_p2));
kernel_correlation_fdiv_32ns_32ns_32_12_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fdiv_32ns_32ns_32_12_no_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(v201_reg_386),.din1(v206_read_reg_317_pp0_iter7_reg),.ce(grp_fu_126_ce),.dout(grp_fu_126_p2));
kernel_correlation_flow_control_loop_delay_pipe flow_control_loop_delay_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(ap_continue),.ap_loop_exit_ready_delayed(ap_loop_exit_ready_delayed));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter20_reg == 1'b1))) begin
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
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter18 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter19 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter19 <= ap_enable_reg_pp0_iter18;
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
        ap_enable_reg_pp0_iter20 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter20 <= ap_enable_reg_pp0_iter19;
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter19_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter20_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter20_reg <= ap_loop_exit_ready_pp0_iter19_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_165)) begin
        indvar_flatten9_fu_64 <= add_ln335_1_fu_186_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_165)) begin
    v19610_fu_68 <= v196_fu_168_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_165)) begin
    v19711_fu_72 <= v197_fu_180_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        cmp11_i_reg_354 <= cmp11_i_fu_248_p2;
        cmp5_i_reg_349 <= cmp5_i_fu_243_p2;
        icmp_ln335_reg_345 <= icmp_ln335_fu_198_p2;
        select_ln335_reg_322 <= select_ln335_fu_160_p3;
        trunc_ln340_reg_335 <= trunc_ln340_fu_176_p1;
        v196_reg_328 <= v196_fu_168_p3;
        v206_read_reg_317 <= v206;
        v206_read_reg_317_pp0_iter1_reg <= v206_read_reg_317;
        v213_addr_reg_364 <= zext_ln336_fu_253_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
        ap_loop_exit_ready_pp0_iter17_reg <= ap_loop_exit_ready_pp0_iter16_reg;
        ap_loop_exit_ready_pp0_iter18_reg <= ap_loop_exit_ready_pp0_iter17_reg;
        ap_loop_exit_ready_pp0_iter19_reg <= ap_loop_exit_ready_pp0_iter18_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        cmp11_i_reg_354_pp0_iter10_reg <= cmp11_i_reg_354_pp0_iter9_reg;
        cmp11_i_reg_354_pp0_iter11_reg <= cmp11_i_reg_354_pp0_iter10_reg;
        cmp11_i_reg_354_pp0_iter12_reg <= cmp11_i_reg_354_pp0_iter11_reg;
        cmp11_i_reg_354_pp0_iter13_reg <= cmp11_i_reg_354_pp0_iter12_reg;
        cmp11_i_reg_354_pp0_iter14_reg <= cmp11_i_reg_354_pp0_iter13_reg;
        cmp11_i_reg_354_pp0_iter15_reg <= cmp11_i_reg_354_pp0_iter14_reg;
        cmp11_i_reg_354_pp0_iter16_reg <= cmp11_i_reg_354_pp0_iter15_reg;
        cmp11_i_reg_354_pp0_iter17_reg <= cmp11_i_reg_354_pp0_iter16_reg;
        cmp11_i_reg_354_pp0_iter18_reg <= cmp11_i_reg_354_pp0_iter17_reg;
        cmp11_i_reg_354_pp0_iter19_reg <= cmp11_i_reg_354_pp0_iter18_reg;
        cmp11_i_reg_354_pp0_iter2_reg <= cmp11_i_reg_354;
        cmp11_i_reg_354_pp0_iter3_reg <= cmp11_i_reg_354_pp0_iter2_reg;
        cmp11_i_reg_354_pp0_iter4_reg <= cmp11_i_reg_354_pp0_iter3_reg;
        cmp11_i_reg_354_pp0_iter5_reg <= cmp11_i_reg_354_pp0_iter4_reg;
        cmp11_i_reg_354_pp0_iter6_reg <= cmp11_i_reg_354_pp0_iter5_reg;
        cmp11_i_reg_354_pp0_iter7_reg <= cmp11_i_reg_354_pp0_iter6_reg;
        cmp11_i_reg_354_pp0_iter8_reg <= cmp11_i_reg_354_pp0_iter7_reg;
        cmp11_i_reg_354_pp0_iter9_reg <= cmp11_i_reg_354_pp0_iter8_reg;
        v199_reg_370 <= v199_fu_275_p3;
        v199_reg_370_pp0_iter10_reg <= v199_reg_370_pp0_iter9_reg;
        v199_reg_370_pp0_iter11_reg <= v199_reg_370_pp0_iter10_reg;
        v199_reg_370_pp0_iter12_reg <= v199_reg_370_pp0_iter11_reg;
        v199_reg_370_pp0_iter13_reg <= v199_reg_370_pp0_iter12_reg;
        v199_reg_370_pp0_iter14_reg <= v199_reg_370_pp0_iter13_reg;
        v199_reg_370_pp0_iter15_reg <= v199_reg_370_pp0_iter14_reg;
        v199_reg_370_pp0_iter16_reg <= v199_reg_370_pp0_iter15_reg;
        v199_reg_370_pp0_iter17_reg <= v199_reg_370_pp0_iter16_reg;
        v199_reg_370_pp0_iter18_reg <= v199_reg_370_pp0_iter17_reg;
        v199_reg_370_pp0_iter19_reg <= v199_reg_370_pp0_iter18_reg;
        v199_reg_370_pp0_iter3_reg <= v199_reg_370;
        v199_reg_370_pp0_iter4_reg <= v199_reg_370_pp0_iter3_reg;
        v199_reg_370_pp0_iter5_reg <= v199_reg_370_pp0_iter4_reg;
        v199_reg_370_pp0_iter6_reg <= v199_reg_370_pp0_iter5_reg;
        v199_reg_370_pp0_iter7_reg <= v199_reg_370_pp0_iter6_reg;
        v199_reg_370_pp0_iter8_reg <= v199_reg_370_pp0_iter7_reg;
        v199_reg_370_pp0_iter9_reg <= v199_reg_370_pp0_iter8_reg;
        v201_reg_386 <= grp_fu_122_p2;
        v202_reg_391 <= grp_fu_126_p2;
        v206_read_reg_317_pp0_iter2_reg <= v206_read_reg_317_pp0_iter1_reg;
        v206_read_reg_317_pp0_iter3_reg <= v206_read_reg_317_pp0_iter2_reg;
        v206_read_reg_317_pp0_iter4_reg <= v206_read_reg_317_pp0_iter3_reg;
        v206_read_reg_317_pp0_iter5_reg <= v206_read_reg_317_pp0_iter4_reg;
        v206_read_reg_317_pp0_iter6_reg <= v206_read_reg_317_pp0_iter5_reg;
        v206_read_reg_317_pp0_iter7_reg <= v206_read_reg_317_pp0_iter6_reg;
        v210_load_reg_376 <= v210_q0;
        v213_addr_reg_364_pp0_iter10_reg <= v213_addr_reg_364_pp0_iter9_reg;
        v213_addr_reg_364_pp0_iter11_reg <= v213_addr_reg_364_pp0_iter10_reg;
        v213_addr_reg_364_pp0_iter12_reg <= v213_addr_reg_364_pp0_iter11_reg;
        v213_addr_reg_364_pp0_iter13_reg <= v213_addr_reg_364_pp0_iter12_reg;
        v213_addr_reg_364_pp0_iter14_reg <= v213_addr_reg_364_pp0_iter13_reg;
        v213_addr_reg_364_pp0_iter15_reg <= v213_addr_reg_364_pp0_iter14_reg;
        v213_addr_reg_364_pp0_iter16_reg <= v213_addr_reg_364_pp0_iter15_reg;
        v213_addr_reg_364_pp0_iter17_reg <= v213_addr_reg_364_pp0_iter16_reg;
        v213_addr_reg_364_pp0_iter18_reg <= v213_addr_reg_364_pp0_iter17_reg;
        v213_addr_reg_364_pp0_iter19_reg <= v213_addr_reg_364_pp0_iter18_reg;
        v213_addr_reg_364_pp0_iter2_reg <= v213_addr_reg_364;
        v213_addr_reg_364_pp0_iter3_reg <= v213_addr_reg_364_pp0_iter2_reg;
        v213_addr_reg_364_pp0_iter4_reg <= v213_addr_reg_364_pp0_iter3_reg;
        v213_addr_reg_364_pp0_iter5_reg <= v213_addr_reg_364_pp0_iter4_reg;
        v213_addr_reg_364_pp0_iter6_reg <= v213_addr_reg_364_pp0_iter5_reg;
        v213_addr_reg_364_pp0_iter7_reg <= v213_addr_reg_364_pp0_iter6_reg;
        v213_addr_reg_364_pp0_iter8_reg <= v213_addr_reg_364_pp0_iter7_reg;
        v213_addr_reg_364_pp0_iter9_reg <= v213_addr_reg_364_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln336_reg_340 <= icmp_ln336_fu_192_p2;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln335_fu_198_p2 == 1'd1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter20_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_530)) begin
            ap_phi_mux_icmp_ln33612_phi_fu_115_p4 = icmp_ln336_reg_340;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln33612_phi_fu_115_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln33612_phi_fu_115_p4 = icmp_ln336_reg_340;
        end
    end else begin
        ap_phi_mux_icmp_ln33612_phi_fu_115_p4 = icmp_ln336_reg_340;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten9_load = 16'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten9_load = indvar_flatten9_fu_64;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v19610_load = 9'd0;
    end else begin
        ap_sig_allocacmp_v19610_load = v19610_fu_68;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v19711_load = 8'd0;
    end else begin
        ap_sig_allocacmp_v19711_load = v19711_fu_72;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_122_ce = 1'b1;
    end else begin
        grp_fu_122_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_126_ce = 1'b1;
    end else begin
        grp_fu_126_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v210_ce0_local = 1'b1;
    end else begin
        v210_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter20 == 1'b1))) begin
        v213_ce0_local = 1'b1;
    end else begin
        v213_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v213_ce1_local = 1'b1;
    end else begin
        v213_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter20 == 1'b1))) begin
        v213_we0_local = 1'b1;
    end else begin
        v213_we0_local = 1'b0;
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
assign add_ln335_1_fu_186_p2 = (ap_sig_allocacmp_indvar_flatten9_load + 16'd1);
assign add_ln335_fu_154_p2 = (ap_sig_allocacmp_v19610_load + 9'd1);
assign add_ln340_fu_260_p2 = (sub_ln340_fu_237_p2 + zext_ln340_1_fu_257_p1);
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
    ap_condition_165 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_530 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln335_reg_345 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln344_fu_291_p1 = v203_fu_286_p3;
assign cmp11_i_fu_248_p2 = ((v196_reg_328 == 9'd259) ? 1'b1 : 1'b0);
assign cmp5_i_fu_243_p2 = ((v196_reg_328 == 9'd0) ? 1'b1 : 1'b0);
assign grp_fu_122_p1 = v210_load_reg_376;
assign icmp_ln335_fu_198_p2 = ((ap_sig_allocacmp_indvar_flatten9_load == 16'd62399) ? 1'b1 : 1'b0);
assign icmp_ln336_fu_192_p2 = ((v197_fu_180_p2 == 8'd240) ? 1'b1 : 1'b0);
assign select_ln335_fu_160_p3 = ((ap_phi_mux_icmp_ln33612_phi_fu_115_p4[0:0] == 1'b1) ? 8'd0 : ap_sig_allocacmp_v19711_load);
assign sub_ln340_fu_237_p2 = (tmp_1_fu_226_p3 - zext_ln340_fu_233_p1);
assign tmp_1_fu_226_p3 = {{trunc_ln340_reg_335}, {8'd0}};
assign tmp_fu_219_p3 = {{v196_reg_328}, {4'd0}};
assign trunc_ln340_fu_176_p1 = v196_fu_168_p3[7:0];
assign v196_fu_168_p3 = ((ap_phi_mux_icmp_ln33612_phi_fu_115_p4[0:0] == 1'b1) ? add_ln335_fu_154_p2 : ap_sig_allocacmp_v19610_load);
assign v197_fu_180_p2 = (select_ln335_fu_160_p3 + 8'd1);
assign v198_fu_271_p1 = v213_q1;
assign v199_fu_275_p3 = ((cmp5_i_reg_349[0:0] == 1'b1) ? 32'd0 : v198_fu_271_p1);
assign v203_fu_286_p3 = ((cmp11_i_reg_354_pp0_iter19_reg[0:0] == 1'b1) ? v202_reg_391 : v199_reg_370_pp0_iter19_reg);
assign v210_address0 = zext_ln340_2_fu_266_p1;
assign v210_ce0 = v210_ce0_local;
assign v213_address0 = v213_addr_reg_364_pp0_iter19_reg;
assign v213_address1 = zext_ln336_fu_253_p1;
assign v213_ce0 = v213_ce0_local;
assign v213_ce1 = v213_ce1_local;
assign v213_d0 = bitcast_ln344_fu_291_p1;
assign v213_we0 = v213_we0_local;
assign zext_ln336_fu_253_p1 = select_ln335_reg_322;
assign zext_ln340_1_fu_257_p1 = select_ln335_reg_322;
assign zext_ln340_2_fu_266_p1 = add_ln340_fu_260_p2;
assign zext_ln340_fu_233_p1 = tmp_fu_219_p3;
endmodule 
