
module SgdLR_sw_SgdLR_sw_Pipeline_label_341 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v3_7_address0,v3_7_ce0,v3_7_we0,v3_7_d0,v3_6_address0,v3_6_ce0,v3_6_we0,v3_6_d0,v3_5_address0,v3_5_ce0,v3_5_we0,v3_5_d0,v3_4_address0,v3_4_ce0,v3_4_we0,v3_4_d0,v3_3_address0,v3_3_ce0,v3_3_we0,v3_3_d0,v3_2_address0,v3_2_ce0,v3_2_we0,v3_2_d0,v3_1_address0,v3_1_ce0,v3_1_we0,v3_1_d0,v3_address0,v3_ce0,v3_we0,v3_d0,tmp_234,v0_address0,v0_ce0,v0_q0,v0_address1,v0_ce1,v0_q1,v22_15,grp_fu_4578_p_din0,grp_fu_4578_p_din1,grp_fu_4578_p_dout0,grp_fu_4578_p_ce,grp_fu_4582_p_din0,grp_fu_4582_p_din1,grp_fu_4582_p_dout0,grp_fu_4582_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] v3_7_address0;
output   v3_7_ce0;
output   v3_7_we0;
output  [31:0] v3_7_d0;
output  [6:0] v3_6_address0;
output   v3_6_ce0;
output   v3_6_we0;
output  [31:0] v3_6_d0;
output  [6:0] v3_5_address0;
output   v3_5_ce0;
output   v3_5_we0;
output  [31:0] v3_5_d0;
output  [6:0] v3_4_address0;
output   v3_4_ce0;
output   v3_4_we0;
output  [31:0] v3_4_d0;
output  [6:0] v3_3_address0;
output   v3_3_ce0;
output   v3_3_we0;
output  [31:0] v3_3_d0;
output  [6:0] v3_2_address0;
output   v3_2_ce0;
output   v3_2_we0;
output  [31:0] v3_2_d0;
output  [6:0] v3_1_address0;
output   v3_1_ce0;
output   v3_1_we0;
output  [31:0] v3_1_d0;
output  [6:0] v3_address0;
output   v3_ce0;
output   v3_we0;
output  [31:0] v3_d0;
input  [10:0] tmp_234;
output  [22:0] v0_address0;
output   v0_ce0;
input  [31:0] v0_q0;
output  [22:0] v0_address1;
output   v0_ce1;
input  [31:0] v0_q1;
input  [31:0] v22_15;
output  [31:0] grp_fu_4578_p_din0;
output  [31:0] grp_fu_4578_p_din1;
input  [31:0] grp_fu_4578_p_dout0;
output   grp_fu_4578_p_ce;
output  [31:0] grp_fu_4582_p_din0;
output  [31:0] grp_fu_4582_p_din1;
input  [31:0] grp_fu_4582_p_dout0;
output   grp_fu_4582_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_458;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_249;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_253;
reg   [31:0] reg_257;
reg   [31:0] reg_265;
reg   [10:0] v19_8_reg_451;
wire   [0:0] tmp_fu_281_p3;
wire   [0:0] icmp_ln53_fu_335_p2;
reg   [0:0] icmp_ln53_reg_472;
reg   [0:0] icmp_ln53_reg_472_pp0_iter1_reg;
reg   [0:0] icmp_ln53_reg_472_pp0_iter2_reg;
reg   [0:0] icmp_ln53_reg_472_pp0_iter3_reg;
reg   [6:0] lshr_ln48_s_reg_476;
reg   [6:0] lshr_ln48_s_reg_476_pp0_iter1_reg;
reg   [6:0] lshr_ln48_s_reg_476_pp0_iter2_reg;
wire   [31:0] v23_fu_401_p1;
wire   [31:0] v23_22_fu_406_p1;
wire   [31:0] v23_23_fu_411_p1;
wire   [31:0] v23_24_fu_416_p1;
reg   [6:0] v3_2_addr_reg_511;
reg   [6:0] v3_6_addr_reg_516;
reg   [6:0] v3_3_addr_reg_521;
reg   [6:0] v3_7_addr_reg_526;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln51_fu_303_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln51_22_fu_330_p1;
wire   [63:0] zext_ln51_23_fu_370_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln51_24_fu_386_p1;
wire   [63:0] zext_ln48_fu_421_p1;
reg   [10:0] v19_fu_84;
wire   [10:0] add_ln47_fu_391_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v19_8;
reg    v0_ce1_local;
reg   [22:0] v0_address1_local;
reg    v0_ce0_local;
reg   [22:0] v0_address0_local;
reg    v3_4_we0_local;
reg    v3_4_ce0_local;
reg    v3_5_we0_local;
reg    v3_5_ce0_local;
reg    v3_we0_local;
reg    v3_ce0_local;
reg    v3_1_we0_local;
reg    v3_1_ce0_local;
reg    v3_6_we0_local;
reg    v3_6_ce0_local;
reg    v3_7_we0_local;
reg    v3_7_ce0_local;
reg    v3_2_we0_local;
reg    v3_2_ce0_local;
reg    v3_3_we0_local;
reg    v3_3_ce0_local;
reg   [31:0] grp_fu_241_p1;
reg   [31:0] grp_fu_245_p1;
wire   [22:0] add_ln51_s_fu_293_p4;
wire   [8:0] tmp_s_fu_308_p4;
wire   [22:0] add_ln51_18_fu_318_p5;
wire   [2:0] trunc_ln47_fu_289_p1;
wire   [7:0] tmp_28_fu_350_p4;
wire   [22:0] add_ln51_19_fu_359_p5;
wire   [22:0] add_ln51_20_fu_375_p5;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v19_fu_84 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_fu_84 <= 11'd0;
    end else if (((tmp_reg_458 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v19_fu_84 <= add_ln47_fu_391_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln48_s_reg_476 <= {{v19_8_reg_451[9:3]}};
        lshr_ln48_s_reg_476_pp0_iter1_reg <= lshr_ln48_s_reg_476;
        lshr_ln48_s_reg_476_pp0_iter2_reg <= lshr_ln48_s_reg_476_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln53_reg_472 <= icmp_ln53_fu_335_p2;
        icmp_ln53_reg_472_pp0_iter1_reg <= icmp_ln53_reg_472;
        icmp_ln53_reg_472_pp0_iter2_reg <= icmp_ln53_reg_472_pp0_iter1_reg;
        icmp_ln53_reg_472_pp0_iter3_reg <= icmp_ln53_reg_472_pp0_iter2_reg;
        tmp_reg_458 <= ap_sig_allocacmp_v19_8[32'd10];
        v19_8_reg_451 <= ap_sig_allocacmp_v19_8;
        v3_2_addr_reg_511 <= zext_ln48_fu_421_p1;
        v3_3_addr_reg_521 <= zext_ln48_fu_421_p1;
        v3_6_addr_reg_516 <= zext_ln48_fu_421_p1;
        v3_7_addr_reg_526 <= zext_ln48_fu_421_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_249 <= v0_q1;
        reg_253 <= v0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_257 <= grp_fu_4578_p_dout0;
        reg_265 <= grp_fu_4582_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_458 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v19_8 = 11'd0;
    end else begin
        ap_sig_allocacmp_v19_8 = v19_fu_84;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_241_p1 = v23_23_fu_411_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_241_p1 = v23_fu_401_p1;
        end else begin
            grp_fu_241_p1 = 'bx;
        end
    end else begin
        grp_fu_241_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_245_p1 = v23_24_fu_416_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_245_p1 = v23_22_fu_406_p1;
        end else begin
            grp_fu_245_p1 = 'bx;
        end
    end else begin
        grp_fu_245_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_address0_local = zext_ln51_24_fu_386_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_address0_local = zext_ln51_22_fu_330_p1;
        end else begin
            v0_address0_local = 'bx;
        end
    end else begin
        v0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_address1_local = zext_ln51_23_fu_370_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_address1_local = zext_ln51_fu_303_p1;
        end else begin
            v0_address1_local = 'bx;
        end
    end else begin
        v0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_ce0_local = 1'b1;
    end else begin
        v0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_ce1_local = 1'b1;
    end else begin
        v0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_1_ce0_local = 1'b1;
    end else begin
        v3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln53_reg_472_pp0_iter2_reg == 1'd1))) begin
        v3_1_we0_local = 1'b1;
    end else begin
        v3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_2_ce0_local = 1'b1;
    end else begin
        v3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln53_reg_472_pp0_iter3_reg == 1'd1))) begin
        v3_2_we0_local = 1'b1;
    end else begin
        v3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_3_ce0_local = 1'b1;
    end else begin
        v3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln53_reg_472_pp0_iter3_reg == 1'd1))) begin
        v3_3_we0_local = 1'b1;
    end else begin
        v3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_4_ce0_local = 1'b1;
    end else begin
        v3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln53_reg_472_pp0_iter2_reg == 1'd0))) begin
        v3_4_we0_local = 1'b1;
    end else begin
        v3_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_5_ce0_local = 1'b1;
    end else begin
        v3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln53_reg_472_pp0_iter2_reg == 1'd0))) begin
        v3_5_we0_local = 1'b1;
    end else begin
        v3_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_6_ce0_local = 1'b1;
    end else begin
        v3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln53_reg_472_pp0_iter3_reg == 1'd0))) begin
        v3_6_we0_local = 1'b1;
    end else begin
        v3_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_7_ce0_local = 1'b1;
    end else begin
        v3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln53_reg_472_pp0_iter3_reg == 1'd0))) begin
        v3_7_we0_local = 1'b1;
    end else begin
        v3_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln53_reg_472_pp0_iter2_reg == 1'd1))) begin
        v3_we0_local = 1'b1;
    end else begin
        v3_we0_local = 1'b0;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln47_fu_391_p2 = (v19_8_reg_451 + 11'd4);
assign add_ln51_18_fu_318_p5 = {{{{tmp_234}, {2'd2}}, {tmp_s_fu_308_p4}}, {1'd1}};
assign add_ln51_19_fu_359_p5 = {{{{tmp_234}, {2'd2}}, {tmp_28_fu_350_p4}}, {2'd2}};
assign add_ln51_20_fu_375_p5 = {{{{tmp_234}, {2'd2}}, {tmp_28_fu_350_p4}}, {2'd3}};
assign add_ln51_s_fu_293_p4 = {{{tmp_234}, {1'd1}}, {ap_sig_allocacmp_v19_8}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign grp_fu_4578_p_ce = 1'b1;
assign grp_fu_4578_p_din0 = v22_15;
assign grp_fu_4578_p_din1 = grp_fu_241_p1;
assign grp_fu_4582_p_ce = 1'b1;
assign grp_fu_4582_p_din0 = v22_15;
assign grp_fu_4582_p_din1 = grp_fu_245_p1;
assign icmp_ln53_fu_335_p2 = ((trunc_ln47_fu_289_p1 == 3'd0) ? 1'b1 : 1'b0);
assign tmp_28_fu_350_p4 = {{v19_8_reg_451[9:2]}};
assign tmp_fu_281_p3 = ap_sig_allocacmp_v19_8[32'd10];
assign tmp_s_fu_308_p4 = {{ap_sig_allocacmp_v19_8[9:1]}};
assign trunc_ln47_fu_289_p1 = ap_sig_allocacmp_v19_8[2:0];
assign v0_address0 = v0_address0_local;
assign v0_address1 = v0_address1_local;
assign v0_ce0 = v0_ce0_local;
assign v0_ce1 = v0_ce1_local;
assign v23_22_fu_406_p1 = reg_253;
assign v23_23_fu_411_p1 = reg_249;
assign v23_24_fu_416_p1 = reg_253;
assign v23_fu_401_p1 = reg_249;
assign v3_1_address0 = zext_ln48_fu_421_p1;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_1_d0 = reg_265;
assign v3_1_we0 = v3_1_we0_local;
assign v3_2_address0 = v3_2_addr_reg_511;
assign v3_2_ce0 = v3_2_ce0_local;
assign v3_2_d0 = reg_257;
assign v3_2_we0 = v3_2_we0_local;
assign v3_3_address0 = v3_3_addr_reg_521;
assign v3_3_ce0 = v3_3_ce0_local;
assign v3_3_d0 = reg_265;
assign v3_3_we0 = v3_3_we0_local;
assign v3_4_address0 = zext_ln48_fu_421_p1;
assign v3_4_ce0 = v3_4_ce0_local;
assign v3_4_d0 = reg_257;
assign v3_4_we0 = v3_4_we0_local;
assign v3_5_address0 = zext_ln48_fu_421_p1;
assign v3_5_ce0 = v3_5_ce0_local;
assign v3_5_d0 = reg_265;
assign v3_5_we0 = v3_5_we0_local;
assign v3_6_address0 = v3_6_addr_reg_516;
assign v3_6_ce0 = v3_6_ce0_local;
assign v3_6_d0 = reg_257;
assign v3_6_we0 = v3_6_we0_local;
assign v3_7_address0 = v3_7_addr_reg_526;
assign v3_7_ce0 = v3_7_ce0_local;
assign v3_7_d0 = reg_265;
assign v3_7_we0 = v3_7_we0_local;
assign v3_address0 = zext_ln48_fu_421_p1;
assign v3_ce0 = v3_ce0_local;
assign v3_d0 = reg_257;
assign v3_we0 = v3_we0_local;
assign zext_ln48_fu_421_p1 = lshr_ln48_s_reg_476_pp0_iter2_reg;
assign zext_ln51_22_fu_330_p1 = add_ln51_18_fu_318_p5;
assign zext_ln51_23_fu_370_p1 = add_ln51_19_fu_359_p5;
assign zext_ln51_24_fu_386_p1 = add_ln51_20_fu_375_p5;
assign zext_ln51_fu_303_p1 = add_ln51_s_fu_293_p4;
endmodule 
