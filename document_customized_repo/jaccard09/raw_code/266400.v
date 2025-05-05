module backprop_backprop_Pipeline_label_10_label_11 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v18_2_load_1,v18_load_1,v18_1_load_1,v2_0_address0,v2_0_ce0,v2_0_q0,v2_1_address0,v2_1_ce0,v2_1_q0,v19_address0,v19_ce0,v19_q0,v19_1_address0,v19_1_ce0,v19_1_q0,v18_11_out_i,v18_11_out_o,v18_11_out_o_ap_vld,v18_10_out_i,v18_10_out_o,v18_10_out_o_ap_vld,v18_9_out_i,v18_9_out_o,v18_9_out_o_ap_vld,grp_fu_15342_p_din0,grp_fu_15342_p_din1,grp_fu_15342_p_opcode,grp_fu_15342_p_dout0,grp_fu_15342_p_ce,grp_fu_6657_p_din0,grp_fu_6657_p_din1,grp_fu_6657_p_dout0,grp_fu_6657_p_ce); 
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
input  [63:0] v18_2_load_1;
input  [63:0] v18_load_1;
input  [63:0] v18_1_load_1;
output  [6:0] v2_0_address0;
output   v2_0_ce0;
input  [63:0] v2_0_q0;
output  [6:0] v2_1_address0;
output   v2_1_ce0;
input  [63:0] v2_1_q0;
output  [4:0] v19_address0;
output   v19_ce0;
input  [63:0] v19_q0;
output  [4:0] v19_1_address0;
output   v19_1_ce0;
input  [63:0] v19_1_q0;
input  [63:0] v18_11_out_i;
output  [63:0] v18_11_out_o;
output   v18_11_out_o_ap_vld;
input  [63:0] v18_10_out_i;
output  [63:0] v18_10_out_o;
output   v18_10_out_o_ap_vld;
input  [63:0] v18_9_out_i;
output  [63:0] v18_9_out_o;
output   v18_9_out_o_ap_vld;
output  [63:0] grp_fu_15342_p_din0;
output  [63:0] grp_fu_15342_p_din1;
output  [0:0] grp_fu_15342_p_opcode;
input  [63:0] grp_fu_15342_p_dout0;
output   grp_fu_15342_p_ce;
output  [63:0] grp_fu_6657_p_din0;
output  [63:0] grp_fu_6657_p_din1;
input  [63:0] grp_fu_6657_p_dout0;
output   grp_fu_6657_p_ce;
reg ap_idle;
reg[63:0] v18_11_out_o;
reg v18_11_out_o_ap_vld;
reg[63:0] v18_10_out_o;
reg v18_10_out_o_ap_vld;
reg[63:0] v18_9_out_o;
reg v18_9_out_o_ap_vld;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [0:0] icmp_ln122_reg_622;
reg    ap_condition_exit_pp0_iter0_stage15;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln122_fu_260_p2;
reg   [0:0] icmp_ln122_reg_622_pp0_iter1_reg;
wire   [0:0] tmp_fu_278_p3;
reg   [0:0] tmp_reg_626;
reg   [0:0] tmp_reg_626_pp0_iter1_reg;
wire   [6:0] select_ln122_fu_286_p3;
reg   [6:0] select_ln122_reg_634;
wire   [1:0] select_ln122_5_fu_300_p3;
reg   [1:0] select_ln122_5_reg_640;
reg   [1:0] select_ln122_5_reg_640_pp0_iter1_reg;
reg   [1:0] select_ln122_5_reg_640_pp0_iter2_reg;
wire   [4:0] lshr_ln5_fu_308_p4;
reg   [4:0] lshr_ln5_reg_646;
wire   [7:0] add_ln125_fu_344_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln125_fu_362_p2;
reg   [0:0] icmp_ln125_reg_666;
reg   [63:0] v64_reg_671;
reg   [63:0] v64_1_reg_676;
wire   [7:0] add_ln125_1_fu_368_p4;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [0:0] icmp_ln125_1_fu_388_p2;
reg   [0:0] icmp_ln125_1_reg_686;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire   [63:0] select_ln125_fu_400_p3;
reg   [63:0] select_ln125_reg_701;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire   [63:0] v63_fu_413_p1;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire   [63:0] select_ln125_1_fu_417_p3;
reg   [63:0] select_ln125_1_reg_721;
wire   [63:0] v63_1_fu_424_p1;
wire    ap_block_pp0_stage15_11001;
reg   [0:0] tmp_489_reg_731;
reg   [0:0] tmp_489_reg_731_pp0_iter1_reg;
reg   [63:0] v65_reg_735;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] select_ln122_1_fu_470_p3;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] v65_1_reg_745;
reg   [63:0] v67_2_reg_750;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage4_subdone;
wire   [63:0] zext_ln124_1_fu_318_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln125_fu_394_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln125_1_fu_407_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] select_ln122_2_fu_478_p3;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_loop_init;
wire   [63:0] select_ln122_3_fu_485_p3;
wire   [63:0] select_ln122_4_fu_492_p3;
reg   [63:0] v66_fu_82;
reg   [6:0] v62_fu_86;
wire   [6:0] add_ln124_fu_428_p2;
reg   [6:0] ap_sig_allocacmp_v62_load;
reg   [1:0] v61_fu_90;
reg   [1:0] ap_sig_allocacmp_v61_load;
reg   [63:0] v18_fu_94;
reg   [63:0] v18_4_fu_98;
reg   [63:0] v18_5_fu_102;
reg   [6:0] indvar_flatten_fu_106;
wire   [6:0] add_ln122_fu_266_p2;
reg   [6:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v19_ce0_local;
reg    v19_1_ce0_local;
reg    v2_0_ce0_local;
reg   [6:0] v2_0_address0_local;
reg    v2_1_ce0_local;
reg   [6:0] v2_1_address0_local;
reg   [63:0] grp_fu_196_p0;
reg   [63:0] grp_fu_196_p1;
reg   [63:0] grp_fu_200_p0;
reg   [63:0] grp_fu_200_p1;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage15;
wire   [1:0] add_ln122_1_fu_294_p2;
wire    ap_block_pp0_stage1;
wire   [7:0] zext_ln124_fu_341_p1;
wire   [7:0] tmp_s_fu_334_p3;
wire   [7:0] add_ln125_2_fu_356_p2;
wire    ap_block_pp0_stage2;
wire   [7:0] add_ln125_3_fu_382_p2;
wire   [7:0] grp_fu_350_p2;
wire   [7:0] grp_fu_376_p2;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage13_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage4;
reg    ap_idle_pp0_0to0;
reg   [15:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
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
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v66_fu_82 = 64'd0;
#0 v62_fu_86 = 7'd0;
#0 v61_fu_90 = 2'd0;
#0 v18_fu_94 = 64'd0;
#0 v18_4_fu_98 = 64'd0;
#0 v18_5_fu_102 = 64'd0;
#0 indvar_flatten_fu_106 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_urem_8ns_8ns_8_12_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
urem_8ns_8ns_8_12_1_U118(.clk(ap_clk),.reset(ap_rst),.din0(add_ln125_fu_344_p2),.din1(8'd96),.ce(1'b1),.dout(grp_fu_350_p2));
backprop_urem_8ns_8ns_8_12_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
urem_8ns_8ns_8_12_1_U119(.clk(ap_clk),.reset(ap_rst),.din0(add_ln125_1_fu_368_p4),.din1(8'd96),.ce(1'b1),.dout(grp_fu_376_p2));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage15),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage15)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage4))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln122_fu_260_p2 == 1'd0))) begin
            indvar_flatten_fu_106 <= add_ln122_fu_266_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_106 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_4_fu_98 <= v18_load_1;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v18_4_fu_98 <= select_ln122_3_fu_485_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_5_fu_102 <= v18_2_load_1;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v18_5_fu_102 <= select_ln122_2_fu_478_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_fu_94 <= v18_1_load_1;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v18_fu_94 <= select_ln122_4_fu_492_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln122_fu_260_p2 == 1'd0))) begin
            v61_fu_90 <= select_ln122_5_fu_300_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v61_fu_90 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v62_fu_86 <= 7'd0;
    end else if (((icmp_ln122_reg_622 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v62_fu_86 <= add_ln124_fu_428_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v66_fu_82 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v66_fu_82 <= grp_fu_15342_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln122_reg_622 <= icmp_ln122_fu_260_p2;
        icmp_ln122_reg_622_pp0_iter1_reg <= icmp_ln122_reg_622;
        lshr_ln5_reg_646 <= {{select_ln122_fu_286_p3[5:1]}};
        select_ln122_5_reg_640 <= select_ln122_5_fu_300_p3;
        select_ln122_5_reg_640_pp0_iter1_reg <= select_ln122_5_reg_640;
        select_ln122_5_reg_640_pp0_iter2_reg <= select_ln122_5_reg_640_pp0_iter1_reg;
        select_ln122_reg_634 <= select_ln122_fu_286_p3;
        tmp_reg_626 <= ap_sig_allocacmp_v62_load[32'd6];
        tmp_reg_626_pp0_iter1_reg <= tmp_reg_626;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln125_1_reg_686 <= icmp_ln125_1_fu_388_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln125_reg_666 <= icmp_ln125_fu_362_p2;
        v64_1_reg_676 <= v19_1_q0;
        v64_reg_671 <= v19_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        select_ln125_1_reg_721 <= select_ln125_1_fu_417_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        select_ln125_reg_701 <= select_ln125_fu_400_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        tmp_489_reg_731 <= add_ln124_fu_428_p2[32'd6];
        tmp_489_reg_731_pp0_iter1_reg <= tmp_489_reg_731;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v65_1_reg_745 <= grp_fu_6657_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v65_reg_735 <= grp_fu_6657_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        v67_2_reg_750 <= grp_fu_15342_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln122_reg_622 == 1'd1) & (1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln122_reg_622_pp0_iter1_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter1_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
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
        ap_sig_allocacmp_indvar_flatten_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_106;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v61_load = 2'd0;
    end else begin
        ap_sig_allocacmp_v61_load = v61_fu_90;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v62_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v62_load = v62_fu_86;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_196_p0 = v67_2_reg_750;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_196_p0 = select_ln122_1_fu_470_p3;
        end else begin
            grp_fu_196_p0 = 'bx;
        end
    end else begin
        grp_fu_196_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_196_p1 = v65_1_reg_745;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_196_p1 = v65_reg_735;
        end else begin
            grp_fu_196_p1 = 'bx;
        end
    end else begin
        grp_fu_196_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_200_p0 = v63_1_fu_424_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_200_p0 = v63_fu_413_p1;
        end else begin
            grp_fu_200_p0 = 'bx;
        end
    end else begin
        grp_fu_200_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_200_p1 = v64_1_reg_676;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_200_p1 = v64_reg_671;
        end else begin
            grp_fu_200_p1 = 'bx;
        end
    end else begin
        grp_fu_200_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_10_out_o = 'bx;
    end else if (((~(select_ln122_5_reg_640_pp0_iter1_reg == 2'd0) & ~(select_ln122_5_reg_640_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_489_reg_731 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_489_reg_731 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln122_5_reg_640_pp0_iter1_reg == 2'd1)))) begin
        v18_10_out_o = select_ln122_3_fu_485_p3;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (tmp_489_reg_731_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (select_ln122_5_reg_640_pp0_iter2_reg == 2'd0))) begin
        v18_10_out_o = grp_fu_15342_p_dout0;
    end else begin
        v18_10_out_o = v18_10_out_i;
    end
end
always @ (*) begin
    if (((~(select_ln122_5_reg_640_pp0_iter1_reg == 2'd0) & ~(select_ln122_5_reg_640_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_489_reg_731 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_489_reg_731 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln122_5_reg_640_pp0_iter1_reg == 2'd1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (tmp_489_reg_731_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (select_ln122_5_reg_640_pp0_iter2_reg == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v18_10_out_o_ap_vld = 1'b1;
    end else begin
        v18_10_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_11_out_o = 'bx;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_489_reg_731 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln122_5_reg_640_pp0_iter1_reg == 2'd0)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_489_reg_731 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln122_5_reg_640_pp0_iter1_reg == 2'd1)))) begin
        v18_11_out_o = select_ln122_2_fu_478_p3;
    end else if ((~(select_ln122_5_reg_640_pp0_iter2_reg == 2'd1) & ~(select_ln122_5_reg_640_pp0_iter2_reg == 2'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (tmp_489_reg_731_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v18_11_out_o = grp_fu_15342_p_dout0;
    end else begin
        v18_11_out_o = v18_11_out_i;
    end
end
always @ (*) begin
    if (((~(select_ln122_5_reg_640_pp0_iter2_reg == 2'd1) & ~(select_ln122_5_reg_640_pp0_iter2_reg == 2'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (tmp_489_reg_731_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_489_reg_731 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln122_5_reg_640_pp0_iter1_reg == 2'd0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_489_reg_731 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln122_5_reg_640_pp0_iter1_reg == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v18_11_out_o_ap_vld = 1'b1;
    end else begin
        v18_11_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_9_out_o = 'bx;
    end else if (((~(select_ln122_5_reg_640_pp0_iter1_reg == 2'd0) & ~(select_ln122_5_reg_640_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_489_reg_731 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_489_reg_731 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln122_5_reg_640_pp0_iter1_reg == 2'd0)))) begin
        v18_9_out_o = select_ln122_4_fu_492_p3;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (tmp_489_reg_731_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (select_ln122_5_reg_640_pp0_iter2_reg == 2'd1))) begin
        v18_9_out_o = grp_fu_15342_p_dout0;
    end else begin
        v18_9_out_o = v18_9_out_i;
    end
end
always @ (*) begin
    if (((~(select_ln122_5_reg_640_pp0_iter1_reg == 2'd0) & ~(select_ln122_5_reg_640_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_489_reg_731 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_489_reg_731 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln122_5_reg_640_pp0_iter1_reg == 2'd0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (tmp_489_reg_731_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (select_ln122_5_reg_640_pp0_iter2_reg == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v18_9_out_o_ap_vld = 1'b1;
    end else begin
        v18_9_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_1_ce0_local = 1'b1;
    end else begin
        v19_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_ce0_local = 1'b1;
    end else begin
        v19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v2_0_address0_local = zext_ln125_1_fu_407_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            v2_0_address0_local = zext_ln125_fu_394_p1;
        end else begin
            v2_0_address0_local = 'bx;
        end
    end else begin
        v2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        v2_0_ce0_local = 1'b1;
    end else begin
        v2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v2_1_address0_local = zext_ln125_1_fu_407_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            v2_1_address0_local = zext_ln125_fu_394_p1;
        end else begin
            v2_1_address0_local = 'bx;
        end
    end else begin
        v2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        v2_1_ce0_local = 1'b1;
    end else begin
        v2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage4))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
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
assign add_ln122_1_fu_294_p2 = (ap_sig_allocacmp_v61_load + 2'd1);
assign add_ln122_fu_266_p2 = (ap_sig_allocacmp_indvar_flatten_load + 7'd1);
assign add_ln124_fu_428_p2 = (select_ln122_reg_634 + 7'd2);
assign add_ln125_1_fu_368_p4 = {{{select_ln122_5_reg_640}, {lshr_ln5_reg_646}}, {1'd1}};
assign add_ln125_2_fu_356_p2 = ($signed(add_ln125_fu_344_p2) + $signed(8'd160));
assign add_ln125_3_fu_382_p2 = ($signed(add_ln125_1_fu_368_p4) + $signed(8'd160));
assign add_ln125_fu_344_p2 = (zext_ln124_fu_341_p1 + tmp_s_fu_334_p3);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage15;
assign ap_ready = ap_ready_sig;
assign grp_fu_15342_p_ce = 1'b1;
assign grp_fu_15342_p_din0 = grp_fu_196_p0;
assign grp_fu_15342_p_din1 = grp_fu_196_p1;
assign grp_fu_15342_p_opcode = 2'd0;
assign grp_fu_6657_p_ce = 1'b1;
assign grp_fu_6657_p_din0 = grp_fu_200_p0;
assign grp_fu_6657_p_din1 = grp_fu_200_p1;
assign icmp_ln122_fu_260_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 7'd96) ? 1'b1 : 1'b0);
assign icmp_ln125_1_fu_388_p2 = ((add_ln125_3_fu_382_p2 < 8'd96) ? 1'b1 : 1'b0);
assign icmp_ln125_fu_362_p2 = ((add_ln125_2_fu_356_p2 < 8'd96) ? 1'b1 : 1'b0);
assign lshr_ln5_fu_308_p4 = {{select_ln122_fu_286_p3[5:1]}};
assign select_ln122_1_fu_470_p3 = ((tmp_reg_626_pp0_iter1_reg[0:0] == 1'b1) ? 64'd0 : v66_fu_82);
assign select_ln122_2_fu_478_p3 = ((tmp_reg_626_pp0_iter1_reg[0:0] == 1'b1) ? v18_11_out_i : v18_5_fu_102);
assign select_ln122_3_fu_485_p3 = ((tmp_reg_626_pp0_iter1_reg[0:0] == 1'b1) ? v18_10_out_i : v18_4_fu_98);
assign select_ln122_4_fu_492_p3 = ((tmp_reg_626_pp0_iter1_reg[0:0] == 1'b1) ? v18_9_out_i : v18_fu_94);
assign select_ln122_5_fu_300_p3 = ((tmp_fu_278_p3[0:0] == 1'b1) ? add_ln122_1_fu_294_p2 : ap_sig_allocacmp_v61_load);
assign select_ln122_fu_286_p3 = ((tmp_fu_278_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_v62_load);
assign select_ln125_1_fu_417_p3 = ((icmp_ln125_1_reg_686[0:0] == 1'b1) ? v2_1_q0 : v2_0_q0);
assign select_ln125_fu_400_p3 = ((icmp_ln125_reg_666[0:0] == 1'b1) ? v2_1_q0 : v2_0_q0);
assign tmp_fu_278_p3 = ap_sig_allocacmp_v62_load[32'd6];
assign tmp_s_fu_334_p3 = {{select_ln122_5_reg_640}, {6'd0}};
assign v19_1_address0 = zext_ln124_1_fu_318_p1;
assign v19_1_ce0 = v19_1_ce0_local;
assign v19_address0 = zext_ln124_1_fu_318_p1;
assign v19_ce0 = v19_ce0_local;
assign v2_0_address0 = v2_0_address0_local;
assign v2_0_ce0 = v2_0_ce0_local;
assign v2_1_address0 = v2_1_address0_local;
assign v2_1_ce0 = v2_1_ce0_local;
assign v63_1_fu_424_p1 = select_ln125_1_reg_721;
assign v63_fu_413_p1 = select_ln125_reg_701;
assign zext_ln124_1_fu_318_p1 = lshr_ln5_fu_308_p4;
assign zext_ln124_fu_341_p1 = select_ln122_reg_634;
assign zext_ln125_1_fu_407_p1 = grp_fu_376_p2;
assign zext_ln125_fu_394_p1 = grp_fu_350_p2;
endmodule 