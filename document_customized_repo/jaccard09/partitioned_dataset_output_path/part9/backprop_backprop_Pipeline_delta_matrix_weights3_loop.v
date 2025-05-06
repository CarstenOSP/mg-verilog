
module backprop_backprop_Pipeline_delta_matrix_weights3_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights3_1_address0,delta_weights3_1_ce0,delta_weights3_1_we0,delta_weights3_1_d0,delta_weights3_1_address1,delta_weights3_1_ce1,delta_weights3_1_we1,delta_weights3_1_d1,delta_weights3_address0,delta_weights3_ce0,delta_weights3_we0,delta_weights3_d0,delta_weights3_address1,delta_weights3_ce1,delta_weights3_we1,delta_weights3_d1,activations2_address0,activations2_ce0,activations2_q0,activations2_address1,activations2_ce1,activations2_q1,p_reload86,p_reload85,p_reload,activations2_1_address0,activations2_1_ce0,activations2_1_q0,activations2_1_address1,activations2_1_ce1,activations2_1_q1);  
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] delta_weights3_1_address0;
output   delta_weights3_1_ce0;
output   delta_weights3_1_we0;
output  [63:0] delta_weights3_1_d0;
output  [6:0] delta_weights3_1_address1;
output   delta_weights3_1_ce1;
output   delta_weights3_1_we1;
output  [63:0] delta_weights3_1_d1;
output  [6:0] delta_weights3_address0;
output   delta_weights3_ce0;
output   delta_weights3_we0;
output  [63:0] delta_weights3_d0;
output  [6:0] delta_weights3_address1;
output   delta_weights3_ce1;
output   delta_weights3_we1;
output  [63:0] delta_weights3_d1;
output  [4:0] activations2_address0;
output   activations2_ce0;
input  [63:0] activations2_q0;
output  [4:0] activations2_address1;
output   activations2_ce1;
input  [63:0] activations2_q1;
input  [63:0] p_reload86;
input  [63:0] p_reload85;
input  [63:0] p_reload;
output  [4:0] activations2_1_address0;
output   activations2_1_ce0;
input  [63:0] activations2_1_q0;
output  [4:0] activations2_1_address1;
output   activations2_1_ce1;
input  [63:0] activations2_1_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] tmp_reg_601;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] grp_fu_270_p2;
reg   [63:0] reg_286;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] grp_fu_274_p2;
reg   [63:0] reg_291;
wire   [63:0] grp_fu_278_p2;
reg   [63:0] reg_296;
wire   [63:0] grp_fu_282_p2;
reg   [63:0] reg_301;
reg   [6:0] i_8_reg_595;
wire   [5:0] lshr_ln_fu_322_p4;
reg   [5:0] lshr_ln_reg_605;
reg   [5:0] lshr_ln_reg_605_pp0_iter1_reg;
reg   [5:0] lshr_ln_reg_605_pp0_iter2_reg;
reg   [63:0] activations2_load_reg_630;
reg   [63:0] activations2_1_load_reg_637;
reg   [63:0] activations2_load_1_reg_644;
reg   [63:0] activations2_1_load_1_reg_651;
reg   [4:0] tmp_13_reg_658;
reg   [4:0] tmp_13_reg_658_pp0_iter1_reg;
reg   [4:0] tmp_13_reg_658_pp0_iter2_reg;
wire   [6:0] sub_ln75_fu_391_p2;
reg   [6:0] sub_ln75_reg_665;
wire   [7:0] empty_fu_444_p2;
reg   [7:0] empty_reg_671;
wire   [6:0] lshr_ln1_fu_450_p4;
reg   [6:0] lshr_ln1_reg_678;
reg   [6:0] lshr_ln75_2_reg_683;
reg   [6:0] lshr_ln75_3_reg_689;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln72_fu_332_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] p_cast_fu_356_p1;
wire   [63:0] zext_ln75_fu_397_p1;
wire   [63:0] zext_ln75_1_fu_421_p1;
wire   [63:0] zext_ln75_2_fu_460_p1;
wire   [63:0] zext_ln75_3_fu_480_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln75_4_fu_490_p1;
wire   [63:0] zext_ln75_5_fu_500_p1;
wire   [63:0] zext_ln75_6_fu_541_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln75_7_fu_546_p1;
wire   [63:0] zext_ln75_8_fu_550_p1;
wire   [63:0] zext_ln75_9_fu_559_p1;
reg   [6:0] i_fu_84;
wire   [6:0] add_ln73_fu_371_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_8;
reg    activations2_ce1_local;
reg    activations2_ce0_local;
reg    activations2_1_ce1_local;
reg    activations2_1_ce0_local;
reg    delta_weights3_we1_local;
reg    delta_weights3_ce1_local;
reg   [6:0] delta_weights3_address1_local;
reg    delta_weights3_we0_local;
reg    delta_weights3_ce0_local;
reg   [6:0] delta_weights3_address0_local;
reg    delta_weights3_1_we1_local;
reg    delta_weights3_1_ce1_local;
reg   [6:0] delta_weights3_1_address1_local;
reg    delta_weights3_1_we0_local;
reg    delta_weights3_1_ce0_local;
reg   [6:0] delta_weights3_1_address0_local;
reg   [63:0] grp_fu_270_p0;
reg   [63:0] grp_fu_270_p1;
reg   [63:0] grp_fu_274_p0;
reg   [63:0] grp_fu_274_p1;
reg   [63:0] grp_fu_278_p0;
reg   [63:0] grp_fu_278_p1;
reg   [63:0] grp_fu_282_p0;
reg   [63:0] grp_fu_282_p1;
wire   [3:0] tmp_27_fu_338_p4;
wire   [4:0] tmp_28_fu_348_p3;
wire   [6:0] p_shl4_fu_384_p3;
wire   [6:0] zext_ln72_1_fu_381_p1;
wire   [5:0] tmp_s_fu_403_p4;
wire   [6:0] or_ln_fu_413_p3;
wire   [5:0] or_ln1_fu_426_p3;
wire   [7:0] p_shl_fu_437_p3;
wire   [7:0] or_ln73_cast_fu_433_p1;
wire   [7:0] add_ln75_fu_465_p2;
wire   [6:0] lshr_ln75_1_fu_470_p4;
wire   [6:0] add_ln75_1_fu_485_p2;
wire   [6:0] add_ln75_2_fu_495_p2;
wire   [7:0] empty_43_fu_506_p2;
wire   [7:0] add_ln75_4_fu_521_p2;
wire   [6:0] add_ln75_3_fu_536_p2;
wire   [6:0] add_ln75_5_fu_554_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [2:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_84 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U162(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_270_p0),.din1(grp_fu_270_p1),.ce(1'b1),.dout(grp_fu_270_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U163(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_274_p0),.din1(grp_fu_274_p1),.ce(1'b1),.dout(grp_fu_274_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U164(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_278_p0),.din1(grp_fu_278_p1),.ce(1'b1),.dout(grp_fu_278_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U165(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_282_p0),.din1(grp_fu_282_p1),.ce(1'b1),.dout(grp_fu_282_p2));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_84 <= 7'd0;
    end else if (((tmp_reg_601 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_fu_84 <= add_ln73_fu_371_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        activations2_1_load_1_reg_651 <= activations2_1_q0;
        activations2_1_load_reg_637 <= activations2_1_q1;
        activations2_load_1_reg_644 <= activations2_q0;
        activations2_load_reg_630 <= activations2_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        tmp_13_reg_658 <= {{i_8_reg_595[5:1]}};
        tmp_13_reg_658_pp0_iter1_reg <= tmp_13_reg_658;
        tmp_13_reg_658_pp0_iter2_reg <= tmp_13_reg_658_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_671[7 : 1] <= empty_fu_444_p2[7 : 1];
        i_8_reg_595 <= ap_sig_allocacmp_i_8;
        lshr_ln1_reg_678 <= {{empty_fu_444_p2[7:1]}};
        lshr_ln_reg_605 <= {{ap_sig_allocacmp_i_8[6:1]}};
        lshr_ln_reg_605_pp0_iter1_reg <= lshr_ln_reg_605;
        lshr_ln_reg_605_pp0_iter2_reg <= lshr_ln_reg_605_pp0_iter1_reg;
        sub_ln75_reg_665 <= sub_ln75_fu_391_p2;
        tmp_reg_601 <= ap_sig_allocacmp_i_8[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln75_2_reg_683 <= {{empty_43_fu_506_p2[7:1]}};
        lshr_ln75_3_reg_689 <= {{add_ln75_4_fu_521_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_286 <= grp_fu_270_p2;
        reg_291 <= grp_fu_274_p2;
        reg_296 <= grp_fu_278_p2;
        reg_301 <= grp_fu_282_p2;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_1_ce0_local = 1'b1;
    end else begin
        activations2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_1_ce1_local = 1'b1;
    end else begin
        activations2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_ce0_local = 1'b1;
    end else begin
        activations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_ce1_local = 1'b1;
    end else begin
        activations2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_601 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_8 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_8 = i_fu_84;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            delta_weights3_1_address0_local = zext_ln75_9_fu_559_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights3_1_address0_local = zext_ln75_5_fu_500_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights3_1_address0_local = zext_ln75_2_fu_460_p1;
        end else begin
            delta_weights3_1_address0_local = 'bx;
        end
    end else begin
        delta_weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            delta_weights3_1_address1_local = zext_ln75_7_fu_546_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights3_1_address1_local = zext_ln75_4_fu_490_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights3_1_address1_local = zext_ln75_fu_397_p1;
        end else begin
            delta_weights3_1_address1_local = 'bx;
        end
    end else begin
        delta_weights3_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        delta_weights3_1_ce0_local = 1'b1;
    end else begin
        delta_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        delta_weights3_1_ce1_local = 1'b1;
    end else begin
        delta_weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        delta_weights3_1_we0_local = 1'b1;
    end else begin
        delta_weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        delta_weights3_1_we1_local = 1'b1;
    end else begin
        delta_weights3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            delta_weights3_address0_local = zext_ln75_8_fu_550_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights3_address0_local = zext_ln75_5_fu_500_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights3_address0_local = zext_ln75_1_fu_421_p1;
        end else begin
            delta_weights3_address0_local = 'bx;
        end
    end else begin
        delta_weights3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            delta_weights3_address1_local = zext_ln75_6_fu_541_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights3_address1_local = zext_ln75_3_fu_480_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights3_address1_local = zext_ln75_fu_397_p1;
        end else begin
            delta_weights3_address1_local = 'bx;
        end
    end else begin
        delta_weights3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        delta_weights3_ce0_local = 1'b1;
    end else begin
        delta_weights3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        delta_weights3_ce1_local = 1'b1;
    end else begin
        delta_weights3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        delta_weights3_we0_local = 1'b1;
    end else begin
        delta_weights3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        delta_weights3_we1_local = 1'b1;
    end else begin
        delta_weights3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_270_p0 = activations2_load_1_reg_644;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_270_p0 = activations2_1_load_reg_637;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_270_p0 = activations2_load_reg_630;
    end else begin
        grp_fu_270_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_270_p1 = p_reload;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_270_p1 = p_reload85;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_270_p1 = p_reload86;
    end else begin
        grp_fu_270_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_274_p0 = activations2_1_load_1_reg_651;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_274_p0 = activations2_1_load_reg_637;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_274_p0 = activations2_load_reg_630;
    end else begin
        grp_fu_274_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_274_p1 = p_reload86;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_274_p1 = p_reload;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_274_p1 = p_reload85;
    end else begin
        grp_fu_274_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_278_p0 = activations2_1_load_1_reg_651;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_278_p0 = activations2_load_1_reg_644;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_278_p0 = activations2_load_reg_630;
    end else begin
        grp_fu_278_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_278_p1 = p_reload85;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_278_p1 = p_reload86;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_278_p1 = p_reload;
    end else begin
        grp_fu_278_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_282_p0 = activations2_1_load_1_reg_651;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_282_p0 = activations2_load_1_reg_644;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_282_p0 = activations2_1_load_reg_637;
    end else begin
        grp_fu_282_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_282_p1 = p_reload;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_282_p1 = p_reload85;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_282_p1 = p_reload86;
    end else begin
        grp_fu_282_p1 = 'bx;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign activations2_1_address0 = p_cast_fu_356_p1;
assign activations2_1_address1 = zext_ln72_fu_332_p1;
assign activations2_1_ce0 = activations2_1_ce0_local;
assign activations2_1_ce1 = activations2_1_ce1_local;
assign activations2_address0 = p_cast_fu_356_p1;
assign activations2_address1 = zext_ln72_fu_332_p1;
assign activations2_ce0 = activations2_ce0_local;
assign activations2_ce1 = activations2_ce1_local;
assign add_ln73_fu_371_p2 = (i_8_reg_595 + 7'd4);
assign add_ln75_1_fu_485_p2 = (lshr_ln1_reg_678 + 7'd1);
assign add_ln75_2_fu_495_p2 = (sub_ln75_reg_665 + 7'd3);
assign add_ln75_3_fu_536_p2 = (sub_ln75_reg_665 + 7'd4);
assign add_ln75_4_fu_521_p2 = (empty_reg_671 + 8'd7);
assign add_ln75_5_fu_554_p2 = (lshr_ln75_2_reg_683 + 7'd1);
assign add_ln75_fu_465_p2 = (empty_reg_671 + 8'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign delta_weights3_1_address0 = delta_weights3_1_address0_local;
assign delta_weights3_1_address1 = delta_weights3_1_address1_local;
assign delta_weights3_1_ce0 = delta_weights3_1_ce0_local;
assign delta_weights3_1_ce1 = delta_weights3_1_ce1_local;
assign delta_weights3_1_d0 = reg_301;
assign delta_weights3_1_d1 = reg_291;
assign delta_weights3_1_we0 = delta_weights3_1_we0_local;
assign delta_weights3_1_we1 = delta_weights3_1_we1_local;
assign delta_weights3_address0 = delta_weights3_address0_local;
assign delta_weights3_address1 = delta_weights3_address1_local;
assign delta_weights3_ce0 = delta_weights3_ce0_local;
assign delta_weights3_ce1 = delta_weights3_ce1_local;
assign delta_weights3_d0 = reg_296;
assign delta_weights3_d1 = reg_286;
assign delta_weights3_we0 = delta_weights3_we0_local;
assign delta_weights3_we1 = delta_weights3_we1_local;
assign empty_43_fu_506_p2 = (empty_reg_671 + 8'd6);
assign empty_fu_444_p2 = (p_shl_fu_437_p3 - or_ln73_cast_fu_433_p1);
assign lshr_ln1_fu_450_p4 = {{empty_fu_444_p2[7:1]}};
assign lshr_ln75_1_fu_470_p4 = {{add_ln75_fu_465_p2[7:1]}};
assign lshr_ln_fu_322_p4 = {{ap_sig_allocacmp_i_8[6:1]}};
assign or_ln1_fu_426_p3 = {{tmp_13_reg_658_pp0_iter2_reg}, {1'd1}};
assign or_ln73_cast_fu_433_p1 = or_ln1_fu_426_p3;
assign or_ln_fu_413_p3 = {{tmp_s_fu_403_p4}, {1'd1}};
assign p_cast_fu_356_p1 = tmp_28_fu_348_p3;
assign p_shl4_fu_384_p3 = {{tmp_13_reg_658_pp0_iter2_reg}, {2'd0}};
assign p_shl_fu_437_p3 = {{tmp_13_reg_658_pp0_iter2_reg}, {3'd4}};
assign sub_ln75_fu_391_p2 = (p_shl4_fu_384_p3 - zext_ln72_1_fu_381_p1);
assign tmp_27_fu_338_p4 = {{ap_sig_allocacmp_i_8[5:2]}};
assign tmp_28_fu_348_p3 = {{tmp_27_fu_338_p4}, {1'd1}};
assign tmp_s_fu_403_p4 = {{sub_ln75_fu_391_p2[6:1]}};
assign zext_ln72_1_fu_381_p1 = lshr_ln_reg_605_pp0_iter2_reg;
assign zext_ln72_fu_332_p1 = lshr_ln_fu_322_p4;
assign zext_ln75_1_fu_421_p1 = or_ln_fu_413_p3;
assign zext_ln75_2_fu_460_p1 = lshr_ln1_fu_450_p4;
assign zext_ln75_3_fu_480_p1 = lshr_ln75_1_fu_470_p4;
assign zext_ln75_4_fu_490_p1 = add_ln75_1_fu_485_p2;
assign zext_ln75_5_fu_500_p1 = add_ln75_2_fu_495_p2;
assign zext_ln75_6_fu_541_p1 = add_ln75_3_fu_536_p2;
assign zext_ln75_7_fu_546_p1 = lshr_ln75_2_reg_683;
assign zext_ln75_8_fu_550_p1 = lshr_ln75_3_reg_689;
assign zext_ln75_9_fu_559_p1 = add_ln75_5_fu_554_p2;
assign zext_ln75_fu_397_p1 = sub_ln75_fu_391_p2;
always @ (posedge ap_clk) begin
    empty_reg_671[0] <= 1'b1;
end
endmodule 
