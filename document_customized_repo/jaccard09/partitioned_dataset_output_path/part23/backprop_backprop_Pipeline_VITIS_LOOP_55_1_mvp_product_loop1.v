
module backprop_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,activations3_2_load,activations3_load,activations3_1_load,weights3_0_address0,weights3_0_ce0,weights3_0_q0,weights3_2_address0,weights3_2_ce0,weights3_2_q0,activations2_address0,activations2_ce0,activations2_q0,activations2_2_address0,activations2_2_ce0,activations2_2_q0,weights3_1_address0,weights3_1_ce0,weights3_1_q0,weights3_3_address0,weights3_3_ce0,weights3_3_q0,activations2_1_address0,activations2_1_ce0,activations2_1_q0,activations2_3_address0,activations2_3_ce0,activations2_3_q0,activations3_10_out_i,activations3_10_out_o,activations3_10_out_o_ap_vld,activations3_9_out_i,activations3_9_out_o,activations3_9_out_o_ap_vld,activations3_8_out_i,activations3_8_out_o,activations3_8_out_o_ap_vld,grp_fu_3491_p_din0,grp_fu_3491_p_din1,grp_fu_3491_p_opcode,grp_fu_3491_p_dout0,grp_fu_3491_p_ce,grp_fu_2070_p_din0,grp_fu_2070_p_din1,grp_fu_2070_p_dout0,grp_fu_2070_p_ce);  
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
input  [63:0] activations3_2_load;
input  [63:0] activations3_load;
input  [63:0] activations3_1_load;
output  [5:0] weights3_0_address0;
output   weights3_0_ce0;
input  [63:0] weights3_0_q0;
output  [5:0] weights3_2_address0;
output   weights3_2_ce0;
input  [63:0] weights3_2_q0;
output  [3:0] activations2_address0;
output   activations2_ce0;
input  [63:0] activations2_q0;
output  [3:0] activations2_2_address0;
output   activations2_2_ce0;
input  [63:0] activations2_2_q0;
output  [5:0] weights3_1_address0;
output   weights3_1_ce0;
input  [63:0] weights3_1_q0;
output  [5:0] weights3_3_address0;
output   weights3_3_ce0;
input  [63:0] weights3_3_q0;
output  [3:0] activations2_1_address0;
output   activations2_1_ce0;
input  [63:0] activations2_1_q0;
output  [3:0] activations2_3_address0;
output   activations2_3_ce0;
input  [63:0] activations2_3_q0;
input  [63:0] activations3_10_out_i;
output  [63:0] activations3_10_out_o;
output   activations3_10_out_o_ap_vld;
input  [63:0] activations3_9_out_i;
output  [63:0] activations3_9_out_o;
output   activations3_9_out_o_ap_vld;
input  [63:0] activations3_8_out_i;
output  [63:0] activations3_8_out_o;
output   activations3_8_out_o_ap_vld;
output  [63:0] grp_fu_3491_p_din0;
output  [63:0] grp_fu_3491_p_din1;
output  [0:0] grp_fu_3491_p_opcode;
input  [63:0] grp_fu_3491_p_dout0;
output   grp_fu_3491_p_ce;
output  [63:0] grp_fu_2070_p_din0;
output  [63:0] grp_fu_2070_p_din1;
input  [63:0] grp_fu_2070_p_dout0;
output   grp_fu_2070_p_ce;
reg ap_idle;
reg[63:0] activations3_10_out_o;
reg activations3_10_out_o_ap_vld;
reg[63:0] activations3_9_out_o;
reg activations3_9_out_o_ap_vld;
reg[63:0] activations3_8_out_o;
reg activations3_8_out_o_ap_vld;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_subdone;
reg   [0:0] icmp_ln55_reg_626;
reg    ap_condition_exit_pp0_iter0_stage9;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln55_fu_296_p2;
wire   [0:0] tmp_fu_311_p3;
reg   [0:0] tmp_reg_630;
wire   [6:0] select_ln54_fu_319_p3;
reg   [6:0] select_ln54_reg_639;
wire   [3:0] lshr_ln6_fu_331_p4;
reg   [3:0] lshr_ln6_reg_644;
wire   [0:0] icmp_ln58_1_fu_349_p2;
reg   [0:0] icmp_ln58_1_reg_649;
wire   [1:0] select_ln55_3_fu_369_p3;
reg   [1:0] select_ln55_3_reg_677;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [1:0] select_ln55_3_reg_677_pp0_iter1_reg;
wire   [63:0] select_ln58_1_fu_391_p3;
reg   [63:0] select_ln58_1_reg_691;
wire   [63:0] select_ln58_3_fu_398_p3;
reg   [63:0] select_ln58_3_reg_706;
wire   [63:0] select_ln58_fu_410_p3;
reg   [63:0] select_ln58_reg_711;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] select_ln58_2_fu_417_p3;
reg   [63:0] select_ln58_2_reg_716;
wire   [63:0] bitcast_ln58_fu_424_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] bitcast_ln58_1_fu_428_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] mul8_i1_reg_731;
wire    ap_block_pp0_stage9_11001;
wire   [63:0] select_ln54_1_fu_435_p3;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] mul8_1_i1_reg_741;
wire   [0:0] tmp_15_fu_490_p3;
reg   [0:0] tmp_15_reg_746;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] add11_i1_reg_750;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln54_fu_341_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln58_fu_383_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] select_ln55_fu_464_p3;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage15;
wire    ap_loop_init;
wire   [63:0] select_ln55_1_fu_471_p3;
wire   [63:0] select_ln55_2_fu_478_p3;
reg   [63:0] add114_i77_fu_82;
wire    ap_block_pp0_stage10;
reg   [6:0] i_fu_86;
wire   [6:0] add_ln57_fu_485_p2;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [1:0] j_1_fu_90;
reg   [63:0] activations3_fu_94;
reg   [63:0] activations3_1_fu_98;
reg   [63:0] activations3_2_fu_102;
reg   [6:0] indvar_flatten_fu_106;
wire   [6:0] add_ln55_fu_302_p2;
reg   [6:0] ap_sig_allocacmp_indvar_flatten_load;
reg    activations2_ce0_local;
reg    activations2_2_ce0_local;
reg    activations2_1_ce0_local;
reg    activations2_3_ce0_local;
reg    weights3_0_ce0_local;
reg    weights3_2_ce0_local;
reg    weights3_1_ce0_local;
reg    weights3_3_ce0_local;
reg   [63:0] grp_fu_232_p0;
reg   [63:0] grp_fu_232_p1;
wire    ap_block_pp0_stage2;
reg   [63:0] grp_fu_236_p0;
reg   [63:0] grp_fu_236_p1;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
wire   [1:0] trunc_ln57_fu_327_p1;
wire   [1:0] add_ln55_1_fu_363_p2;
wire   [5:0] or_ln_fu_376_p3;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage2_00001;
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
#0 add114_i77_fu_82 = 64'd0;
#0 i_fu_86 = 7'd0;
#0 j_1_fu_90 = 2'd0;
#0 activations3_fu_94 = 64'd0;
#0 activations3_1_fu_98 = 64'd0;
#0 activations3_2_fu_102 = 64'd0;
#0 indvar_flatten_fu_106 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage9),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        activations3_1_fu_98 <= activations3_load;
    end else if (((icmp_ln55_reg_626 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        activations3_1_fu_98 <= select_ln55_1_fu_471_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_2_fu_102 <= activations3_2_load;
    end else if (((icmp_ln55_reg_626 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        activations3_2_fu_102 <= select_ln55_fu_464_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_fu_94 <= activations3_1_load;
    end else if (((icmp_ln55_reg_626 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        activations3_fu_94 <= select_ln55_2_fu_478_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add114_i77_fu_82 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add114_i77_fu_82 <= grp_fu_3491_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_86 <= 7'd0;
    end else if (((icmp_ln55_reg_626 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        i_fu_86 <= add_ln57_fu_485_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln55_fu_296_p2 == 1'd0))) begin
            indvar_flatten_fu_106 <= add_ln55_fu_302_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_106 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_1_fu_90 <= 2'd0;
    end else if (((icmp_ln55_reg_626 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_1_fu_90 <= select_ln55_3_fu_369_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add11_i1_reg_750 <= grp_fu_3491_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln55_reg_626 <= icmp_ln55_fu_296_p2;
        icmp_ln58_1_reg_649 <= icmp_ln58_1_fu_349_p2;
        lshr_ln6_reg_644 <= {{select_ln54_fu_319_p3[5:2]}};
        select_ln54_reg_639 <= select_ln54_fu_319_p3;
        tmp_reg_630 <= ap_sig_allocacmp_i_load[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mul8_1_i1_reg_741 <= grp_fu_2070_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul8_i1_reg_731 <= grp_fu_2070_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        select_ln55_3_reg_677 <= select_ln55_3_fu_369_p3;
        select_ln55_3_reg_677_pp0_iter1_reg <= select_ln55_3_reg_677;
        select_ln58_1_reg_691 <= select_ln58_1_fu_391_p3;
        select_ln58_3_reg_706 <= select_ln58_3_fu_398_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln58_2_reg_716 <= select_ln58_2_fu_417_p3;
        select_ln58_reg_711 <= select_ln58_fu_410_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        tmp_15_reg_746 <= add_ln57_fu_485_p2[32'd6];
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
        activations2_2_ce0_local = 1'b1;
    end else begin
        activations2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_3_ce0_local = 1'b1;
    end else begin
        activations2_3_ce0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_10_out_o = 'bx;
    end else if ((((icmp_ln55_reg_626 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_15_fu_490_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (select_ln55_3_reg_677 == 2'd0)) | ((icmp_ln55_reg_626 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_15_fu_490_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (select_ln55_3_reg_677 == 2'd1)))) begin
        activations3_10_out_o = select_ln55_fu_464_p3;
    end else if ((~(select_ln55_3_reg_677_pp0_iter1_reg == 2'd1) & ~(select_ln55_3_reg_677_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_15_reg_746 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        activations3_10_out_o = grp_fu_3491_p_dout0;
    end else begin
        activations3_10_out_o = activations3_10_out_i;
    end
end
always @ (*) begin
    if (((~(select_ln55_3_reg_677_pp0_iter1_reg == 2'd1) & ~(select_ln55_3_reg_677_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_15_reg_746 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((icmp_ln55_reg_626 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_15_fu_490_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (select_ln55_3_reg_677 == 2'd0)) | ((icmp_ln55_reg_626 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_15_fu_490_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (select_ln55_3_reg_677 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        activations3_10_out_o_ap_vld = 1'b1;
    end else begin
        activations3_10_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_8_out_o = 'bx;
    end else if (((~(select_ln55_3_reg_677 == 2'd0) & ~(select_ln55_3_reg_677 == 2'd1) & (icmp_ln55_reg_626 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_15_fu_490_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((icmp_ln55_reg_626 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_15_fu_490_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (select_ln55_3_reg_677 == 2'd0)))) begin
        activations3_8_out_o = select_ln55_2_fu_478_p3;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_15_reg_746 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (select_ln55_3_reg_677_pp0_iter1_reg == 2'd1))) begin
        activations3_8_out_o = grp_fu_3491_p_dout0;
    end else begin
        activations3_8_out_o = activations3_8_out_i;
    end
end
always @ (*) begin
    if (((~(select_ln55_3_reg_677 == 2'd0) & ~(select_ln55_3_reg_677 == 2'd1) & (icmp_ln55_reg_626 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_15_fu_490_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((icmp_ln55_reg_626 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_15_fu_490_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (select_ln55_3_reg_677 == 2'd0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_15_reg_746 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (select_ln55_3_reg_677_pp0_iter1_reg == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        activations3_8_out_o_ap_vld = 1'b1;
    end else begin
        activations3_8_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_9_out_o = 'bx;
    end else if (((~(select_ln55_3_reg_677 == 2'd0) & ~(select_ln55_3_reg_677 == 2'd1) & (icmp_ln55_reg_626 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_15_fu_490_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((icmp_ln55_reg_626 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_15_fu_490_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (select_ln55_3_reg_677 == 2'd1)))) begin
        activations3_9_out_o = select_ln55_1_fu_471_p3;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_15_reg_746 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (select_ln55_3_reg_677_pp0_iter1_reg == 2'd0))) begin
        activations3_9_out_o = grp_fu_3491_p_dout0;
    end else begin
        activations3_9_out_o = activations3_9_out_i;
    end
end
always @ (*) begin
    if (((~(select_ln55_3_reg_677 == 2'd0) & ~(select_ln55_3_reg_677 == 2'd1) & (icmp_ln55_reg_626 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_15_fu_490_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((icmp_ln55_reg_626 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_15_fu_490_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (select_ln55_3_reg_677 == 2'd1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_15_reg_746 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (select_ln55_3_reg_677_pp0_iter1_reg == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        activations3_9_out_o_ap_vld = 1'b1;
    end else begin
        activations3_9_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln55_reg_626 == 1'd1) & (1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
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
        ap_sig_allocacmp_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_86;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_106;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_232_p0 = add11_i1_reg_750;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_232_p0 = select_ln54_1_fu_435_p3;
    end else begin
        grp_fu_232_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_232_p1 = mul8_1_i1_reg_741;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_232_p1 = mul8_i1_reg_731;
    end else begin
        grp_fu_232_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_236_p0 = bitcast_ln58_1_fu_428_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_236_p0 = bitcast_ln58_fu_424_p1;
        end else begin
            grp_fu_236_p0 = 'bx;
        end
    end else begin
        grp_fu_236_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_236_p1 = select_ln58_3_reg_706;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_236_p1 = select_ln58_1_reg_691;
        end else begin
            grp_fu_236_p1 = 'bx;
        end
    end else begin
        grp_fu_236_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_0_ce0_local = 1'b1;
    end else begin
        weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_1_ce0_local = 1'b1;
    end else begin
        weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_2_ce0_local = 1'b1;
    end else begin
        weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_3_ce0_local = 1'b1;
    end else begin
        weights3_3_ce0_local = 1'b0;
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
assign activations2_1_address0 = zext_ln54_fu_341_p1;
assign activations2_1_ce0 = activations2_1_ce0_local;
assign activations2_2_address0 = zext_ln54_fu_341_p1;
assign activations2_2_ce0 = activations2_2_ce0_local;
assign activations2_3_address0 = zext_ln54_fu_341_p1;
assign activations2_3_ce0 = activations2_3_ce0_local;
assign activations2_address0 = zext_ln54_fu_341_p1;
assign activations2_ce0 = activations2_ce0_local;
assign add_ln55_1_fu_363_p2 = (j_1_fu_90 + 2'd1);
assign add_ln55_fu_302_p2 = (ap_sig_allocacmp_indvar_flatten_load + 7'd1);
assign add_ln57_fu_485_p2 = (select_ln54_reg_639 + 7'd2);
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
assign ap_block_pp0_stage10_00001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage9;
assign ap_ready = ap_ready_sig;
assign bitcast_ln58_1_fu_428_p1 = select_ln58_2_reg_716;
assign bitcast_ln58_fu_424_p1 = select_ln58_reg_711;
assign grp_fu_2070_p_ce = 1'b1;
assign grp_fu_2070_p_din0 = grp_fu_236_p0;
assign grp_fu_2070_p_din1 = grp_fu_236_p1;
assign grp_fu_3491_p_ce = 1'b1;
assign grp_fu_3491_p_din0 = grp_fu_232_p0;
assign grp_fu_3491_p_din1 = grp_fu_232_p1;
assign grp_fu_3491_p_opcode = 2'd0;
assign icmp_ln55_fu_296_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 7'd96) ? 1'b1 : 1'b0);
assign icmp_ln58_1_fu_349_p2 = ((trunc_ln57_fu_327_p1 != 2'd0) ? 1'b1 : 1'b0);
assign lshr_ln6_fu_331_p4 = {{select_ln54_fu_319_p3[5:2]}};
assign or_ln_fu_376_p3 = {{select_ln55_3_fu_369_p3}, {lshr_ln6_reg_644}};
assign select_ln54_1_fu_435_p3 = ((tmp_reg_630[0:0] == 1'b1) ? 64'd0 : add114_i77_fu_82);
assign select_ln54_fu_319_p3 = ((tmp_fu_311_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_i_load);
assign select_ln55_1_fu_471_p3 = ((tmp_reg_630[0:0] == 1'b1) ? activations3_9_out_i : activations3_1_fu_98);
assign select_ln55_2_fu_478_p3 = ((tmp_reg_630[0:0] == 1'b1) ? activations3_8_out_i : activations3_fu_94);
assign select_ln55_3_fu_369_p3 = ((tmp_reg_630[0:0] == 1'b1) ? add_ln55_1_fu_363_p2 : j_1_fu_90);
assign select_ln55_fu_464_p3 = ((tmp_reg_630[0:0] == 1'b1) ? activations3_10_out_i : activations3_2_fu_102);
assign select_ln58_1_fu_391_p3 = ((icmp_ln58_1_reg_649[0:0] == 1'b1) ? activations2_2_q0 : activations2_q0);
assign select_ln58_2_fu_417_p3 = ((icmp_ln58_1_reg_649[0:0] == 1'b1) ? weights3_3_q0 : weights3_1_q0);
assign select_ln58_3_fu_398_p3 = ((icmp_ln58_1_reg_649[0:0] == 1'b1) ? activations2_3_q0 : activations2_1_q0);
assign select_ln58_fu_410_p3 = ((icmp_ln58_1_reg_649[0:0] == 1'b1) ? weights3_2_q0 : weights3_0_q0);
assign tmp_15_fu_490_p3 = add_ln57_fu_485_p2[32'd6];
assign tmp_fu_311_p3 = ap_sig_allocacmp_i_load[32'd6];
assign trunc_ln57_fu_327_p1 = select_ln54_fu_319_p3[1:0];
assign weights3_0_address0 = zext_ln58_fu_383_p1;
assign weights3_0_ce0 = weights3_0_ce0_local;
assign weights3_1_address0 = zext_ln58_fu_383_p1;
assign weights3_1_ce0 = weights3_1_ce0_local;
assign weights3_2_address0 = zext_ln58_fu_383_p1;
assign weights3_2_ce0 = weights3_2_ce0_local;
assign weights3_3_address0 = zext_ln58_fu_383_p1;
assign weights3_3_ce0 = weights3_3_ce0_local;
assign zext_ln54_fu_341_p1 = lshr_ln6_fu_331_p4;
assign zext_ln58_fu_383_p1 = or_ln_fu_376_p3;
endmodule 
