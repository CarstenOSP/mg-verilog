module SgdLR_sw_SgdLR_sw_Pipeline_label_43 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v2_1_address0,v2_1_ce0,v2_1_we0,v2_1_d0,v2_1_q0,v2_1_address1,v2_1_ce1,v2_1_we1,v2_1_d1,v2_1_q1,v2_0_address0,v2_0_ce0,v2_0_we0,v2_0_d0,v2_0_q0,v2_0_address1,v2_0_ce1,v2_0_we1,v2_0_d1,v2_0_q1,v3_address0,v3_ce0,v3_q0,v3_address1,v3_ce1,v3_q1,grp_fu_422_p_din0,grp_fu_422_p_din1,grp_fu_422_p_opcode,grp_fu_422_p_dout0,grp_fu_422_p_ce,grp_fu_921_p_din0,grp_fu_921_p_din1,grp_fu_921_p_opcode,grp_fu_921_p_dout0,grp_fu_921_p_ce,grp_fu_913_p_din0,grp_fu_913_p_din1,grp_fu_913_p_dout0,grp_fu_913_p_ce,grp_fu_917_p_din0,grp_fu_917_p_din1,grp_fu_917_p_dout0,grp_fu_917_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] v2_1_address0;
output   v2_1_ce0;
output   v2_1_we0;
output  [31:0] v2_1_d0;
input  [31:0] v2_1_q0;
output  [8:0] v2_1_address1;
output   v2_1_ce1;
output   v2_1_we1;
output  [31:0] v2_1_d1;
input  [31:0] v2_1_q1;
output  [8:0] v2_0_address0;
output   v2_0_ce0;
output   v2_0_we0;
output  [31:0] v2_0_d0;
input  [31:0] v2_0_q0;
output  [8:0] v2_0_address1;
output   v2_0_ce1;
output   v2_0_we1;
output  [31:0] v2_0_d1;
input  [31:0] v2_0_q1;
output  [9:0] v3_address0;
output   v3_ce0;
input  [31:0] v3_q0;
output  [9:0] v3_address1;
output   v3_ce1;
input  [31:0] v3_q1;
output  [31:0] grp_fu_422_p_din0;
output  [31:0] grp_fu_422_p_din1;
output  [0:0] grp_fu_422_p_opcode;
input  [31:0] grp_fu_422_p_dout0;
output   grp_fu_422_p_ce;
output  [31:0] grp_fu_921_p_din0;
output  [31:0] grp_fu_921_p_din1;
output  [1:0] grp_fu_921_p_opcode;
input  [31:0] grp_fu_921_p_dout0;
output   grp_fu_921_p_ce;
output  [31:0] grp_fu_913_p_din0;
output  [31:0] grp_fu_913_p_din1;
input  [31:0] grp_fu_913_p_dout0;
output   grp_fu_913_p_ce;
output  [31:0] grp_fu_917_p_din0;
output  [31:0] grp_fu_917_p_din1;
input  [31:0] grp_fu_917_p_dout0;
output   grp_fu_917_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_reg_559;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_255;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_259;
reg   [31:0] reg_263;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_267;
reg   [10:0] v25_1_reg_552;
wire   [0:0] tmp_fu_279_p3;
wire   [8:0] lshr_ln55_1_fu_292_p4;
reg   [8:0] lshr_ln55_1_reg_563;
reg   [31:0] v26_reg_578;
reg   [31:0] v26_1_reg_583;
wire   [7:0] tmp_s_fu_326_p4;
reg   [7:0] tmp_s_reg_588;
reg   [6:0] tmp_1_reg_603;
reg   [0:0] tmp_2_reg_613;
reg   [31:0] v26_2_reg_619;
reg   [31:0] v26_3_reg_624;
reg   [31:0] v26_4_reg_639;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] v26_5_reg_644;
reg   [8:0] v2_0_addr_reg_659;
reg   [8:0] v2_0_addr_reg_659_pp0_iter2_reg;
reg   [8:0] v2_0_addr_reg_659_pp0_iter3_reg;
reg   [8:0] v2_1_addr_reg_664;
reg   [8:0] v2_1_addr_reg_664_pp0_iter2_reg;
reg   [8:0] v2_1_addr_reg_664_pp0_iter3_reg;
reg   [8:0] v2_0_addr_1_reg_669;
reg   [8:0] v2_0_addr_1_reg_669_pp0_iter2_reg;
reg   [8:0] v2_0_addr_1_reg_669_pp0_iter3_reg;
reg   [8:0] v2_1_addr_1_reg_674;
reg   [8:0] v2_1_addr_1_reg_674_pp0_iter2_reg;
reg   [8:0] v2_1_addr_1_reg_674_pp0_iter3_reg;
reg   [31:0] v26_6_reg_679;
reg   [31:0] v26_7_reg_684;
reg   [31:0] v27_reg_689;
reg   [31:0] v27_1_reg_694;
reg   [31:0] v2_0_load_1_reg_699;
reg   [31:0] v2_1_load_1_reg_704;
reg   [8:0] v2_0_addr_2_reg_709;
reg   [8:0] v2_0_addr_2_reg_709_pp0_iter2_reg;
reg   [8:0] v2_0_addr_2_reg_709_pp0_iter3_reg;
reg   [8:0] v2_1_addr_2_reg_714;
reg   [8:0] v2_1_addr_2_reg_714_pp0_iter2_reg;
reg   [8:0] v2_1_addr_2_reg_714_pp0_iter3_reg;
reg   [8:0] v2_0_addr_3_reg_719;
reg   [8:0] v2_0_addr_3_reg_719_pp0_iter2_reg;
reg   [8:0] v2_0_addr_3_reg_719_pp0_iter3_reg;
reg   [8:0] v2_0_addr_3_reg_719_pp0_iter4_reg;
reg   [8:0] v2_1_addr_3_reg_724;
reg   [8:0] v2_1_addr_3_reg_724_pp0_iter2_reg;
reg   [8:0] v2_1_addr_3_reg_724_pp0_iter3_reg;
reg   [8:0] v2_1_addr_3_reg_724_pp0_iter4_reg;
wire   [31:0] v28_fu_473_p1;
wire   [31:0] v28_1_fu_478_p1;
reg   [31:0] v27_2_reg_739;
reg   [31:0] v27_3_reg_744;
reg   [31:0] v2_0_load_3_reg_749;
reg   [31:0] v2_1_load_3_reg_754;
wire   [31:0] v28_2_fu_483_p1;
wire   [31:0] v28_3_fu_487_p1;
reg   [31:0] v27_4_reg_769;
reg   [31:0] v27_5_reg_774;
wire   [31:0] v28_4_fu_491_p1;
wire   [31:0] v28_5_fu_496_p1;
reg   [31:0] v27_6_reg_789;
reg   [31:0] v27_7_reg_794;
wire   [31:0] v28_6_fu_501_p1;
wire   [31:0] v28_7_fu_505_p1;
reg   [31:0] v29_2_reg_809;
reg   [31:0] v29_3_reg_814;
reg   [31:0] v29_6_reg_819;
reg   [31:0] v29_7_reg_824;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln55_fu_287_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln56_fu_310_p1;
wire   [63:0] zext_ln56_1_fu_343_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln56_3_fu_356_p1;
wire   [63:0] zext_ln56_4_fu_384_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln56_6_fu_399_p1;
wire   [63:0] zext_ln56_7_fu_411_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln56_9_fu_423_p1;
wire   [63:0] zext_ln55_1_fu_428_p1;
wire   [63:0] zext_ln56_2_fu_440_p1;
wire   [63:0] zext_ln56_5_fu_454_p1;
wire   [63:0] zext_ln56_8_fu_467_p1;
reg   [10:0] v25_fu_78;
wire   [10:0] add_ln55_fu_315_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v25_1;
reg    v3_ce1_local;
reg   [9:0] v3_address1_local;
reg    v3_ce0_local;
reg   [9:0] v3_address0_local;
reg    v2_0_ce1_local;
reg   [8:0] v2_0_address1_local;
reg    v2_0_ce0_local;
reg   [8:0] v2_0_address0_local;
reg    v2_0_we1_local;
reg   [31:0] v2_0_d1_local;
wire   [31:0] bitcast_ln60_fu_509_p1;
reg    v2_0_we0_local;
reg   [31:0] v2_0_d0_local;
wire   [31:0] bitcast_ln60_2_fu_519_p1;
wire   [31:0] bitcast_ln60_4_fu_527_p1;
wire   [31:0] bitcast_ln60_6_fu_537_p1;
reg    v2_1_ce1_local;
reg   [8:0] v2_1_address1_local;
reg    v2_1_ce0_local;
reg   [8:0] v2_1_address0_local;
reg    v2_1_we1_local;
reg   [31:0] v2_1_d1_local;
wire   [31:0] bitcast_ln60_1_fu_514_p1;
reg    v2_1_we0_local;
reg   [31:0] v2_1_d0_local;
wire   [31:0] bitcast_ln60_3_fu_523_p1;
wire   [31:0] bitcast_ln60_5_fu_532_p1;
wire   [31:0] bitcast_ln60_7_fu_541_p1;
reg   [31:0] grp_fu_237_p0;
reg   [31:0] grp_fu_237_p1;
reg   [31:0] grp_fu_241_p0;
reg   [31:0] grp_fu_241_p1;
reg   [31:0] grp_fu_245_p0;
reg   [31:0] grp_fu_250_p0;
wire   [9:0] or_ln55_7_fu_302_p3;
wire   [9:0] or_ln55_8_fu_335_p3;
wire   [9:0] or_ln55_9_fu_348_p3;
wire   [9:0] or_ln55_s_fu_377_p3;
wire   [9:0] or_ln55_1_fu_389_p5;
wire   [9:0] or_ln55_2_fu_404_p3;
wire   [9:0] or_ln55_3_fu_416_p3;
wire   [8:0] or_ln56_3_fu_433_p3;
wire   [8:0] or_ln56_4_fu_446_p4;
wire   [8:0] or_ln56_5_fu_460_p3;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v25_fu_78 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_279_p3 == 1'd0))) begin
            v25_fu_78 <= add_ln55_fu_315_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v25_fu_78 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln55_1_reg_563 <= {{ap_sig_allocacmp_v25_1[9:1]}};
        tmp_reg_559 <= ap_sig_allocacmp_v25_1[32'd10];
        v25_1_reg_552 <= ap_sig_allocacmp_v25_1;
        v2_0_addr_1_reg_669[8 : 1] <= zext_ln56_2_fu_440_p1[8 : 1];
        v2_0_addr_1_reg_669_pp0_iter2_reg[8 : 1] <= v2_0_addr_1_reg_669[8 : 1];
        v2_0_addr_1_reg_669_pp0_iter3_reg[8 : 1] <= v2_0_addr_1_reg_669_pp0_iter2_reg[8 : 1];
        v2_0_addr_reg_659 <= zext_ln55_1_fu_428_p1;
        v2_0_addr_reg_659_pp0_iter2_reg <= v2_0_addr_reg_659;
        v2_0_addr_reg_659_pp0_iter3_reg <= v2_0_addr_reg_659_pp0_iter2_reg;
        v2_1_addr_1_reg_674[8 : 1] <= zext_ln56_2_fu_440_p1[8 : 1];
        v2_1_addr_1_reg_674_pp0_iter2_reg[8 : 1] <= v2_1_addr_1_reg_674[8 : 1];
        v2_1_addr_1_reg_674_pp0_iter3_reg[8 : 1] <= v2_1_addr_1_reg_674_pp0_iter2_reg[8 : 1];
        v2_1_addr_reg_664 <= zext_ln55_1_fu_428_p1;
        v2_1_addr_reg_664_pp0_iter2_reg <= v2_1_addr_reg_664;
        v2_1_addr_reg_664_pp0_iter3_reg <= v2_1_addr_reg_664_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_255 <= v2_0_q1;
        reg_259 <= v2_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_263 <= grp_fu_422_p_dout0;
        reg_267 <= grp_fu_921_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_1_reg_603 <= {{v25_1_reg_552[9:3]}};
        tmp_2_reg_613 <= v25_1_reg_552[32'd1];
        tmp_s_reg_588 <= {{v25_1_reg_552[9:2]}};
        v2_0_addr_2_reg_709[0] <= zext_ln56_5_fu_454_p1[0];
v2_0_addr_2_reg_709[8 : 2] <= zext_ln56_5_fu_454_p1[8 : 2];
        v2_0_addr_2_reg_709_pp0_iter2_reg[0] <= v2_0_addr_2_reg_709[0];
v2_0_addr_2_reg_709_pp0_iter2_reg[8 : 2] <= v2_0_addr_2_reg_709[8 : 2];
        v2_0_addr_2_reg_709_pp0_iter3_reg[0] <= v2_0_addr_2_reg_709_pp0_iter2_reg[0];
v2_0_addr_2_reg_709_pp0_iter3_reg[8 : 2] <= v2_0_addr_2_reg_709_pp0_iter2_reg[8 : 2];
        v2_0_addr_3_reg_719[8 : 2] <= zext_ln56_8_fu_467_p1[8 : 2];
        v2_0_addr_3_reg_719_pp0_iter2_reg[8 : 2] <= v2_0_addr_3_reg_719[8 : 2];
        v2_0_addr_3_reg_719_pp0_iter3_reg[8 : 2] <= v2_0_addr_3_reg_719_pp0_iter2_reg[8 : 2];
        v2_0_addr_3_reg_719_pp0_iter4_reg[8 : 2] <= v2_0_addr_3_reg_719_pp0_iter3_reg[8 : 2];
        v2_1_addr_2_reg_714[0] <= zext_ln56_5_fu_454_p1[0];
v2_1_addr_2_reg_714[8 : 2] <= zext_ln56_5_fu_454_p1[8 : 2];
        v2_1_addr_2_reg_714_pp0_iter2_reg[0] <= v2_1_addr_2_reg_714[0];
v2_1_addr_2_reg_714_pp0_iter2_reg[8 : 2] <= v2_1_addr_2_reg_714[8 : 2];
        v2_1_addr_2_reg_714_pp0_iter3_reg[0] <= v2_1_addr_2_reg_714_pp0_iter2_reg[0];
v2_1_addr_2_reg_714_pp0_iter3_reg[8 : 2] <= v2_1_addr_2_reg_714_pp0_iter2_reg[8 : 2];
        v2_1_addr_3_reg_724[8 : 2] <= zext_ln56_8_fu_467_p1[8 : 2];
        v2_1_addr_3_reg_724_pp0_iter2_reg[8 : 2] <= v2_1_addr_3_reg_724[8 : 2];
        v2_1_addr_3_reg_724_pp0_iter3_reg[8 : 2] <= v2_1_addr_3_reg_724_pp0_iter2_reg[8 : 2];
        v2_1_addr_3_reg_724_pp0_iter4_reg[8 : 2] <= v2_1_addr_3_reg_724_pp0_iter3_reg[8 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v26_1_reg_583 <= v3_q0;
        v26_reg_578 <= v3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v26_2_reg_619 <= v3_q1;
        v26_3_reg_624 <= v3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v26_4_reg_639 <= v3_q1;
        v26_5_reg_644 <= v3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v26_6_reg_679 <= v3_q1;
        v26_7_reg_684 <= v3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v27_1_reg_694 <= grp_fu_917_p_dout0;
        v27_reg_689 <= grp_fu_913_p_dout0;
        v2_0_load_1_reg_699 <= v2_0_q0;
        v2_1_load_1_reg_704 <= v2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v27_2_reg_739 <= grp_fu_913_p_dout0;
        v27_3_reg_744 <= grp_fu_917_p_dout0;
        v2_0_load_3_reg_749 <= v2_0_q0;
        v2_1_load_3_reg_754 <= v2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v27_4_reg_769 <= grp_fu_913_p_dout0;
        v27_5_reg_774 <= grp_fu_917_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v27_6_reg_789 <= grp_fu_913_p_dout0;
        v27_7_reg_794 <= grp_fu_917_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v29_2_reg_809 <= grp_fu_422_p_dout0;
        v29_3_reg_814 <= grp_fu_921_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v29_6_reg_819 <= grp_fu_422_p_dout0;
        v29_7_reg_824 <= grp_fu_921_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_559 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v25_1 = 11'd0;
    end else begin
        ap_sig_allocacmp_v25_1 = v25_fu_78;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_237_p0 = v28_6_fu_501_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_237_p0 = v28_4_fu_491_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_237_p0 = v28_2_fu_483_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_237_p0 = v28_fu_473_p1;
    end else begin
        grp_fu_237_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_237_p1 = v27_6_reg_789;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_237_p1 = v27_4_reg_769;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_237_p1 = v27_2_reg_739;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_237_p1 = v27_reg_689;
    end else begin
        grp_fu_237_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_241_p0 = v28_7_fu_505_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_241_p0 = v28_5_fu_496_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_241_p0 = v28_3_fu_487_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_241_p0 = v28_1_fu_478_p1;
    end else begin
        grp_fu_241_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_241_p1 = v27_7_reg_794;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_241_p1 = v27_5_reg_774;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_241_p1 = v27_3_reg_744;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_241_p1 = v27_1_reg_694;
    end else begin
        grp_fu_241_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_245_p0 = v26_6_reg_679;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_245_p0 = v26_4_reg_639;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_245_p0 = v26_2_reg_619;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_245_p0 = v26_reg_578;
    end else begin
        grp_fu_245_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_250_p0 = v26_7_reg_684;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_250_p0 = v26_5_reg_644;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_250_p0 = v26_3_reg_624;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_250_p0 = v26_1_reg_583;
    end else begin
        grp_fu_250_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_0_address0_local = v2_0_addr_3_reg_719_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_0_address0_local = v2_0_addr_1_reg_669_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_0_address0_local = zext_ln56_8_fu_467_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_0_address0_local = zext_ln56_2_fu_440_p1;
    end else begin
        v2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_0_address1_local = v2_0_addr_2_reg_709_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_0_address1_local = v2_0_addr_reg_659_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_0_address1_local = zext_ln56_5_fu_454_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_0_address1_local = zext_ln55_1_fu_428_p1;
    end else begin
        v2_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v2_0_ce0_local = 1'b1;
    end else begin
        v2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v2_0_ce1_local = 1'b1;
    end else begin
        v2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_0_d0_local = bitcast_ln60_6_fu_537_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_0_d0_local = bitcast_ln60_2_fu_519_p1;
    end else begin
        v2_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v2_0_d1_local = bitcast_ln60_4_fu_527_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v2_0_d1_local = bitcast_ln60_fu_509_p1;
        end else begin
            v2_0_d1_local = 'bx;
        end
    end else begin
        v2_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_0_we0_local = 1'b1;
    end else begin
        v2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_0_we1_local = 1'b1;
    end else begin
        v2_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_1_address0_local = v2_1_addr_3_reg_724_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_1_address0_local = v2_1_addr_1_reg_674_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_1_address0_local = zext_ln56_8_fu_467_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_1_address0_local = zext_ln56_2_fu_440_p1;
    end else begin
        v2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_1_address1_local = v2_1_addr_2_reg_714_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_1_address1_local = v2_1_addr_reg_664_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_1_address1_local = zext_ln56_5_fu_454_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_1_address1_local = zext_ln55_1_fu_428_p1;
    end else begin
        v2_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v2_1_ce0_local = 1'b1;
    end else begin
        v2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v2_1_ce1_local = 1'b1;
    end else begin
        v2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_1_d0_local = bitcast_ln60_7_fu_541_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_1_d0_local = bitcast_ln60_3_fu_523_p1;
    end else begin
        v2_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v2_1_d1_local = bitcast_ln60_5_fu_532_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v2_1_d1_local = bitcast_ln60_1_fu_514_p1;
        end else begin
            v2_1_d1_local = 'bx;
        end
    end else begin
        v2_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_1_we0_local = 1'b1;
    end else begin
        v2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_1_we1_local = 1'b1;
    end else begin
        v2_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v3_address0_local = zext_ln56_9_fu_423_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v3_address0_local = zext_ln56_6_fu_399_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_address0_local = zext_ln56_3_fu_356_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_address0_local = zext_ln56_fu_310_p1;
        end else begin
            v3_address0_local = 'bx;
        end
    end else begin
        v3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v3_address1_local = zext_ln56_7_fu_411_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v3_address1_local = zext_ln56_4_fu_384_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_address1_local = zext_ln56_1_fu_343_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_address1_local = zext_ln55_fu_287_p1;
        end else begin
            v3_address1_local = 'bx;
        end
    end else begin
        v3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_ce1_local = 1'b1;
    end else begin
        v3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln55_fu_315_p2 = (ap_sig_allocacmp_v25_1 + 11'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign bitcast_ln60_1_fu_514_p1 = reg_267;
assign bitcast_ln60_2_fu_519_p1 = v29_2_reg_809;
assign bitcast_ln60_3_fu_523_p1 = v29_3_reg_814;
assign bitcast_ln60_4_fu_527_p1 = reg_263;
assign bitcast_ln60_5_fu_532_p1 = reg_267;
assign bitcast_ln60_6_fu_537_p1 = v29_6_reg_819;
assign bitcast_ln60_7_fu_541_p1 = v29_7_reg_824;
assign bitcast_ln60_fu_509_p1 = reg_263;
assign grp_fu_422_p_ce = 1'b1;
assign grp_fu_422_p_din0 = grp_fu_237_p0;
assign grp_fu_422_p_din1 = grp_fu_237_p1;
assign grp_fu_422_p_opcode = 2'd0;
assign grp_fu_913_p_ce = 1'b1;
assign grp_fu_913_p_din0 = grp_fu_245_p0;
assign grp_fu_913_p_din1 = 32'd3345637376;
assign grp_fu_917_p_ce = 1'b1;
assign grp_fu_917_p_din0 = grp_fu_250_p0;
assign grp_fu_917_p_din1 = 32'd3345637376;
assign grp_fu_921_p_ce = 1'b1;
assign grp_fu_921_p_din0 = grp_fu_241_p0;
assign grp_fu_921_p_din1 = grp_fu_241_p1;
assign grp_fu_921_p_opcode = 2'd0;
assign lshr_ln55_1_fu_292_p4 = {{ap_sig_allocacmp_v25_1[9:1]}};
assign or_ln55_1_fu_389_p5 = {{{{tmp_1_reg_603}, {1'd1}}, {tmp_2_reg_613}}, {1'd1}};
assign or_ln55_2_fu_404_p3 = {{tmp_1_reg_603}, {3'd6}};
assign or_ln55_3_fu_416_p3 = {{tmp_1_reg_603}, {3'd7}};
assign or_ln55_7_fu_302_p3 = {{lshr_ln55_1_fu_292_p4}, {1'd1}};
assign or_ln55_8_fu_335_p3 = {{tmp_s_fu_326_p4}, {2'd2}};
assign or_ln55_9_fu_348_p3 = {{tmp_s_fu_326_p4}, {2'd3}};
assign or_ln55_s_fu_377_p3 = {{tmp_1_reg_603}, {3'd4}};
assign or_ln56_3_fu_433_p3 = {{tmp_s_reg_588}, {1'd1}};
assign or_ln56_4_fu_446_p4 = {{{tmp_1_reg_603}, {1'd1}}, {tmp_2_reg_613}};
assign or_ln56_5_fu_460_p3 = {{tmp_1_reg_603}, {2'd3}};
assign tmp_fu_279_p3 = ap_sig_allocacmp_v25_1[32'd10];
assign tmp_s_fu_326_p4 = {{v25_1_reg_552[9:2]}};
assign v28_1_fu_478_p1 = reg_259;
assign v28_2_fu_483_p1 = v2_0_load_1_reg_699;
assign v28_3_fu_487_p1 = v2_1_load_1_reg_704;
assign v28_4_fu_491_p1 = reg_255;
assign v28_5_fu_496_p1 = reg_259;
assign v28_6_fu_501_p1 = v2_0_load_3_reg_749;
assign v28_7_fu_505_p1 = v2_1_load_3_reg_754;
assign v28_fu_473_p1 = reg_255;
assign v2_0_address0 = v2_0_address0_local;
assign v2_0_address1 = v2_0_address1_local;
assign v2_0_ce0 = v2_0_ce0_local;
assign v2_0_ce1 = v2_0_ce1_local;
assign v2_0_d0 = v2_0_d0_local;
assign v2_0_d1 = v2_0_d1_local;
assign v2_0_we0 = v2_0_we0_local;
assign v2_0_we1 = v2_0_we1_local;
assign v2_1_address0 = v2_1_address0_local;
assign v2_1_address1 = v2_1_address1_local;
assign v2_1_ce0 = v2_1_ce0_local;
assign v2_1_ce1 = v2_1_ce1_local;
assign v2_1_d0 = v2_1_d0_local;
assign v2_1_d1 = v2_1_d1_local;
assign v2_1_we0 = v2_1_we0_local;
assign v2_1_we1 = v2_1_we1_local;
assign v3_address0 = v3_address0_local;
assign v3_address1 = v3_address1_local;
assign v3_ce0 = v3_ce0_local;
assign v3_ce1 = v3_ce1_local;
assign zext_ln55_1_fu_428_p1 = lshr_ln55_1_reg_563;
assign zext_ln55_fu_287_p1 = ap_sig_allocacmp_v25_1;
assign zext_ln56_1_fu_343_p1 = or_ln55_8_fu_335_p3;
assign zext_ln56_2_fu_440_p1 = or_ln56_3_fu_433_p3;
assign zext_ln56_3_fu_356_p1 = or_ln55_9_fu_348_p3;
assign zext_ln56_4_fu_384_p1 = or_ln55_s_fu_377_p3;
assign zext_ln56_5_fu_454_p1 = or_ln56_4_fu_446_p4;
assign zext_ln56_6_fu_399_p1 = or_ln55_1_fu_389_p5;
assign zext_ln56_7_fu_411_p1 = or_ln55_2_fu_404_p3;
assign zext_ln56_8_fu_467_p1 = or_ln56_5_fu_460_p3;
assign zext_ln56_9_fu_423_p1 = or_ln55_3_fu_416_p3;
assign zext_ln56_fu_310_p1 = or_ln55_7_fu_302_p3;
always @ (posedge ap_clk) begin
    v2_0_addr_1_reg_669[0] <= 1'b1;
    v2_0_addr_1_reg_669_pp0_iter2_reg[0] <= 1'b1;
    v2_0_addr_1_reg_669_pp0_iter3_reg[0] <= 1'b1;
    v2_1_addr_1_reg_674[0] <= 1'b1;
    v2_1_addr_1_reg_674_pp0_iter2_reg[0] <= 1'b1;
    v2_1_addr_1_reg_674_pp0_iter3_reg[0] <= 1'b1;
    v2_0_addr_2_reg_709[1] <= 1'b1;
    v2_0_addr_2_reg_709_pp0_iter2_reg[1] <= 1'b1;
    v2_0_addr_2_reg_709_pp0_iter3_reg[1] <= 1'b1;
    v2_1_addr_2_reg_714[1] <= 1'b1;
    v2_1_addr_2_reg_714_pp0_iter2_reg[1] <= 1'b1;
    v2_1_addr_2_reg_714_pp0_iter3_reg[1] <= 1'b1;
    v2_0_addr_3_reg_719[1:0] <= 2'b11;
    v2_0_addr_3_reg_719_pp0_iter2_reg[1:0] <= 2'b11;
    v2_0_addr_3_reg_719_pp0_iter3_reg[1:0] <= 2'b11;
    v2_0_addr_3_reg_719_pp0_iter4_reg[1:0] <= 2'b11;
    v2_1_addr_3_reg_724[1:0] <= 2'b11;
    v2_1_addr_3_reg_724_pp0_iter2_reg[1:0] <= 2'b11;
    v2_1_addr_3_reg_724_pp0_iter3_reg[1:0] <= 2'b11;
    v2_1_addr_3_reg_724_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 