
module ellpack_ellpack_Pipeline_ellpack_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sum,p_udiv5,nzval_0_address0,nzval_0_ce0,nzval_0_q0,cols_0_address0,cols_0_ce0,cols_0_q0,vec_0_address0,vec_0_ce0,vec_0_q0,vec_0_address1,vec_0_ce1,vec_0_q1,vec_1_address0,vec_1_ce0,vec_1_q0,vec_1_address1,vec_1_ce1,vec_1_q1,nzval_1_address0,nzval_1_ce0,nzval_1_q0,cols_1_address0,cols_1_ce0,cols_1_q0,sum_1_out,sum_1_out_ap_vld);  
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
input  [63:0] sum;
input  [11:0] p_udiv5;
output  [11:0] nzval_0_address0;
output   nzval_0_ce0;
input  [63:0] nzval_0_q0;
output  [11:0] cols_0_address0;
output   cols_0_ce0;
input  [31:0] cols_0_q0;
output  [7:0] vec_0_address0;
output   vec_0_ce0;
input  [63:0] vec_0_q0;
output  [7:0] vec_0_address1;
output   vec_0_ce1;
input  [63:0] vec_0_q1;
output  [7:0] vec_1_address0;
output   vec_1_ce0;
input  [63:0] vec_1_q0;
output  [7:0] vec_1_address1;
output   vec_1_ce1;
input  [63:0] vec_1_q1;
output  [11:0] nzval_1_address0;
output   nzval_1_ce0;
input  [63:0] nzval_1_q0;
output  [11:0] cols_1_address0;
output   cols_1_ce0;
input  [31:0] cols_1_q0;
output  [63:0] sum_1_out;
output   sum_1_out_ap_vld;
reg ap_idle;
reg sum_1_out_ap_vld;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_subdone;
reg   [0:0] icmp_ln15_reg_359;
reg    ap_condition_exit_pp0_iter0_stage9;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage0_11001;
reg   [3:0] j_1_reg_354;
wire   [0:0] icmp_ln15_fu_212_p2;
reg   [63:0] nzval_0_load_reg_383;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] trunc_ln16_fu_246_p1;
reg   [0:0] trunc_ln16_reg_388;
reg   [63:0] nzval_1_load_reg_403;
wire   [0:0] trunc_ln16_1_fu_266_p1;
reg   [0:0] trunc_ln16_1_reg_408;
wire   [63:0] select_ln16_fu_286_p3;
reg   [63:0] select_ln16_reg_423;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] select_ln16_1_fu_293_p3;
reg   [63:0] select_ln16_1_reg_428;
wire   [63:0] bitcast_ln16_fu_300_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] bitcast_ln16_1_fu_304_p1;
wire   [63:0] bitcast_ln16_2_fu_308_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] bitcast_ln16_3_fu_312_p1;
wire   [63:0] grp_fu_195_p2;
reg   [63:0] Si_reg_453;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] Si_1_reg_463;
wire   [63:0] grp_fu_191_p2;
reg   [63:0] sum_2_reg_468;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln16_3_fu_238_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln16_fu_260_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln16_1_fu_280_p1;
reg   [63:0] sum_1_fu_62;
wire    ap_block_pp0_stage9;
wire    ap_loop_init;
wire    ap_block_pp0_stage10;
reg   [3:0] j_fu_66;
wire   [3:0] add_ln15_fu_320_p2;
wire    ap_block_pp0_stage15_11001;
reg   [3:0] ap_sig_allocacmp_j_1;
wire    ap_block_pp0_stage9_01001;
reg    nzval_0_ce0_local;
reg    cols_0_ce0_local;
reg    nzval_1_ce0_local;
reg    cols_1_ce0_local;
reg    vec_0_ce1_local;
reg    vec_0_ce0_local;
reg    vec_1_ce1_local;
reg    vec_1_ce0_local;
reg   [63:0] grp_fu_191_p0;
reg   [63:0] grp_fu_191_p1;
wire    ap_block_pp0_stage2;
reg   [63:0] grp_fu_195_p0;
reg   [63:0] grp_fu_195_p1;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
wire   [2:0] lshr_ln1_fu_218_p4;
wire   [11:0] zext_ln16_2_fu_228_p1;
wire   [11:0] add_ln16_fu_232_p2;
wire   [7:0] lshr_ln16_1_fu_250_p4;
wire   [7:0] lshr_ln16_2_fu_270_p4;
wire    ap_block_pp0_stage15;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [15:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 sum_1_fu_62 = 64'd0;
#0 j_fu_66 = 4'd0;
#0 ap_done_reg = 1'b0;
end
ellpack_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_191_p0),.din1(grp_fu_191_p1),.ce(1'b1),.dout(grp_fu_191_p2));
ellpack_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_195_p0),.din1(grp_fu_195_p1),.ce(1'b1),.dout(grp_fu_195_p2));
ellpack_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage9),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage9)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_66 <= 4'd0;
    end else if (((icmp_ln15_reg_359 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        j_fu_66 <= add_ln15_fu_320_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sum_1_fu_62 <= sum;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        sum_1_fu_62 <= grp_fu_191_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        Si_1_reg_463 <= grp_fu_195_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        Si_reg_453 <= grp_fu_195_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln15_reg_359 <= icmp_ln15_fu_212_p2;
        j_1_reg_354 <= ap_sig_allocacmp_j_1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        nzval_0_load_reg_383 <= nzval_0_q0;
        nzval_1_load_reg_403 <= nzval_1_q0;
        trunc_ln16_1_reg_408 <= trunc_ln16_1_fu_266_p1;
        trunc_ln16_reg_388 <= trunc_ln16_fu_246_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln16_1_reg_428 <= select_ln16_1_fu_293_p3;
        select_ln16_reg_423 <= select_ln16_fu_286_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sum_2_reg_468 <= grp_fu_191_p2;
    end
end
always @ (*) begin
    if (((icmp_ln15_reg_359 == 1'd0) & (1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
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
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_1 = 4'd0;
    end else begin
        ap_sig_allocacmp_j_1 = j_fu_66;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cols_0_ce0_local = 1'b1;
    end else begin
        cols_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cols_1_ce0_local = 1'b1;
    end else begin
        cols_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_191_p0 = sum_2_reg_468;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_191_p0 = sum_1_fu_62;
    end else begin
        grp_fu_191_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_191_p1 = Si_1_reg_463;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_191_p1 = Si_reg_453;
    end else begin
        grp_fu_191_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_195_p0 = bitcast_ln16_2_fu_308_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_195_p0 = bitcast_ln16_fu_300_p1;
        end else begin
            grp_fu_195_p0 = 'bx;
        end
    end else begin
        grp_fu_195_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_195_p1 = bitcast_ln16_3_fu_312_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_195_p1 = bitcast_ln16_1_fu_304_p1;
        end else begin
            grp_fu_195_p1 = 'bx;
        end
    end else begin
        grp_fu_195_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        nzval_0_ce0_local = 1'b1;
    end else begin
        nzval_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        nzval_1_ce0_local = 1'b1;
    end else begin
        nzval_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln15_reg_359 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        sum_1_out_ap_vld = 1'b1;
    end else begin
        sum_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        vec_0_ce0_local = 1'b1;
    end else begin
        vec_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        vec_0_ce1_local = 1'b1;
    end else begin
        vec_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        vec_1_ce0_local = 1'b1;
    end else begin
        vec_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        vec_1_ce1_local = 1'b1;
    end else begin
        vec_1_ce1_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage9)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
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
assign add_ln15_fu_320_p2 = (j_1_reg_354 + 4'd2);
assign add_ln16_fu_232_p2 = (zext_ln16_2_fu_228_p1 + p_udiv5);
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
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage9;
assign ap_ready = ap_ready_sig;
assign bitcast_ln16_1_fu_304_p1 = select_ln16_reg_423;
assign bitcast_ln16_2_fu_308_p1 = nzval_1_load_reg_403;
assign bitcast_ln16_3_fu_312_p1 = select_ln16_1_reg_428;
assign bitcast_ln16_fu_300_p1 = nzval_0_load_reg_383;
assign cols_0_address0 = zext_ln16_3_fu_238_p1;
assign cols_0_ce0 = cols_0_ce0_local;
assign cols_1_address0 = zext_ln16_3_fu_238_p1;
assign cols_1_ce0 = cols_1_ce0_local;
assign icmp_ln15_fu_212_p2 = ((ap_sig_allocacmp_j_1 < 4'd10) ? 1'b1 : 1'b0);
assign lshr_ln16_1_fu_250_p4 = {{cols_0_q0[8:1]}};
assign lshr_ln16_2_fu_270_p4 = {{cols_1_q0[8:1]}};
assign lshr_ln1_fu_218_p4 = {{ap_sig_allocacmp_j_1[3:1]}};
assign nzval_0_address0 = zext_ln16_3_fu_238_p1;
assign nzval_0_ce0 = nzval_0_ce0_local;
assign nzval_1_address0 = zext_ln16_3_fu_238_p1;
assign nzval_1_ce0 = nzval_1_ce0_local;
assign select_ln16_1_fu_293_p3 = ((trunc_ln16_1_reg_408[0:0] == 1'b1) ? vec_1_q0 : vec_0_q0);
assign select_ln16_fu_286_p3 = ((trunc_ln16_reg_388[0:0] == 1'b1) ? vec_1_q1 : vec_0_q1);
assign sum_1_out = sum_1_fu_62;
assign trunc_ln16_1_fu_266_p1 = cols_1_q0[0:0];
assign trunc_ln16_fu_246_p1 = cols_0_q0[0:0];
assign vec_0_address0 = zext_ln16_1_fu_280_p1;
assign vec_0_address1 = zext_ln16_fu_260_p1;
assign vec_0_ce0 = vec_0_ce0_local;
assign vec_0_ce1 = vec_0_ce1_local;
assign vec_1_address0 = zext_ln16_1_fu_280_p1;
assign vec_1_address1 = zext_ln16_fu_260_p1;
assign vec_1_ce0 = vec_1_ce0_local;
assign vec_1_ce1 = vec_1_ce1_local;
assign zext_ln16_1_fu_280_p1 = lshr_ln16_2_fu_270_p4;
assign zext_ln16_2_fu_228_p1 = lshr_ln1_fu_218_p4;
assign zext_ln16_3_fu_238_p1 = add_ln16_fu_232_p2;
assign zext_ln16_fu_260_p1 = lshr_ln16_1_fu_250_p4;
endmodule 
