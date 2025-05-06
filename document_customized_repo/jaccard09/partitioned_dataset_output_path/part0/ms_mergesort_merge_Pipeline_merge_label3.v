
module ms_mergesort_merge_Pipeline_merge_label3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,start_r,stop,temp_address0,temp_ce0,temp_q0,temp_address1,temp_ce1,temp_q1,a_address0,a_ce0,a_we0,a_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] start_r;
input  [31:0] stop;
output  [10:0] temp_address0;
output   temp_ce0;
input  [31:0] temp_q0;
output  [10:0] temp_address1;
output   temp_ce1;
input  [31:0] temp_q1;
output  [10:0] a_address0;
output   a_ce0;
output   a_we0;
output  [31:0] a_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln18_3_reg_587;
reg   [0:0] icmp_ln18_2_reg_568;
reg   [0:0] icmp_ln18_1_reg_535;
reg   [0:0] icmp_ln18_reg_507;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] i_4_reg_171;
reg   [31:0] j_3_reg_181;
reg   [31:0] i_6_reg_191;
reg   [31:0] j_5_reg_202;
reg   [31:0] i_8_reg_213;
reg   [31:0] j_7_reg_224;
reg   [31:0] reg_261;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_266;
reg   [31:0] k_1_reg_485;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] i_reg_495;
reg   [31:0] j_1_reg_501;
wire   [0:0] icmp_ln18_fu_295_p2;
wire   [0:0] grp_fu_255_p2;
reg   [0:0] icmp_ln21_reg_521;
wire   [31:0] i_3_fu_310_p2;
reg   [31:0] i_3_reg_525;
wire   [31:0] j_2_fu_315_p2;
reg   [31:0] j_2_reg_530;
wire   [0:0] icmp_ln18_1_fu_324_p2;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [0:0] icmp_ln21_1_reg_549;
wire   [31:0] i_5_fu_338_p2;
reg   [31:0] i_5_reg_553;
wire   [31:0] j_4_fu_344_p2;
reg   [31:0] j_4_reg_558;
wire   [31:0] add_ln18_1_fu_364_p2;
reg   [31:0] add_ln18_1_reg_563;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [0:0] icmp_ln18_2_fu_369_p2;
wire   [31:0] add_ln18_2_fu_384_p2;
reg   [31:0] add_ln18_2_reg_582;
wire   [0:0] icmp_ln18_3_fu_389_p2;
reg   [0:0] icmp_ln21_2_reg_591;
wire   [31:0] i_7_fu_404_p2;
reg   [31:0] i_7_reg_595;
wire   [31:0] j_6_fu_410_p2;
reg   [31:0] j_6_reg_600;
wire    ap_block_pp0_stage7_11001;
reg   [0:0] icmp_ln21_3_reg_615;
reg   [10:0] a_addr_3_reg_619;
wire   [31:0] i_9_fu_434_p2;
reg   [31:0] i_9_reg_624;
wire   [31:0] j_8_fu_440_p2;
reg   [31:0] j_8_reg_629;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_block_pp0_stage1_subdone;
reg   [31:0] ap_phi_mux_i_4_phi_fu_174_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_i_4_reg_171;
reg   [31:0] ap_phi_mux_j_3_phi_fu_184_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_j_3_reg_181;
reg   [31:0] ap_phi_mux_i_6_phi_fu_194_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_i_6_reg_191;
reg   [31:0] ap_phi_mux_j_5_phi_fu_205_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_j_5_reg_202;
reg   [31:0] ap_phi_mux_i_8_phi_fu_216_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_i_8_reg_213;
reg   [31:0] ap_phi_mux_j_7_phi_fu_227_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_j_7_reg_224;
reg   [31:0] ap_phi_mux_i_10_phi_fu_238_p4;
wire   [31:0] ap_phi_reg_pp0_iter1_i_10_reg_235;
reg   [31:0] ap_phi_mux_j_9_phi_fu_248_p4;
wire   [31:0] ap_phi_reg_pp0_iter1_j_9_reg_245;
wire   [63:0] zext_ln19_fu_300_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln20_fu_305_p1;
wire   [63:0] zext_ln18_fu_320_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln19_1_fu_328_p1;
wire   [63:0] zext_ln20_1_fu_333_p1;
wire   [63:0] zext_ln5_fu_359_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln19_2_fu_374_p1;
wire   [63:0] zext_ln20_2_fu_379_p1;
wire   [63:0] zext_ln5_1_fu_416_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln19_3_fu_420_p1;
wire   [63:0] zext_ln20_3_fu_425_p1;
wire   [63:0] zext_ln5_2_fu_430_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] k_fu_38;
wire   [31:0] add_ln18_3_fu_394_p2;
wire    ap_loop_init;
reg   [31:0] i_2_fu_42;
reg   [31:0] ap_sig_allocacmp_i;
reg   [31:0] j_fu_46;
reg   [31:0] ap_sig_allocacmp_j_1;
reg    temp_ce1_local;
reg   [10:0] temp_address1_local;
reg    temp_ce0_local;
reg   [10:0] temp_address0_local;
reg    a_we0_local;
reg   [31:0] a_d0_local;
reg    a_ce0_local;
reg   [10:0] a_address0_local;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage6;
wire   [10:0] trunc_ln18_fu_350_p1;
wire   [10:0] add_ln18_fu_353_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
reg    ap_done_pending_pp0;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_314;
reg    ap_condition_299;
reg    ap_condition_258;
reg    ap_condition_260;
reg    ap_condition_278;
reg    ap_condition_285;
reg    ap_condition_288;
reg    ap_condition_280;
reg    ap_condition_294;
reg    ap_condition_301;
reg    ap_condition_304;
reg    ap_condition_296;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_38 = 32'd0;
#0 i_2_fu_42 = 32'd0;
#0 j_fu_46 = 32'd0;
#0 ap_done_reg = 1'b0;
end
ms_mergesort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage0) | ((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_2_fu_42 <= start_r;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_2_fu_42 <= ap_phi_mux_i_10_phi_fu_238_p4;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_260)) begin
        if (((icmp_ln18_reg_507 == 1'd0) & (icmp_ln21_reg_521 == 1'd0))) begin
            i_4_reg_171 <= i_3_reg_525;
        end else if (((icmp_ln18_reg_507 == 1'd0) & (icmp_ln21_reg_521 == 1'd1))) begin
            i_4_reg_171 <= i_reg_495;
        end else if ((1'b1 == ap_condition_258)) begin
            i_4_reg_171 <= ap_phi_reg_pp0_iter0_i_4_reg_171;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_280)) begin
        if ((1'b1 == ap_condition_288)) begin
            i_6_reg_191 <= i_5_reg_553;
        end else if ((1'b1 == ap_condition_285)) begin
            i_6_reg_191 <= i_4_reg_171;
        end else if ((1'b1 == ap_condition_278)) begin
            i_6_reg_191 <= ap_phi_reg_pp0_iter0_i_6_reg_191;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_296)) begin
        if ((1'b1 == ap_condition_304)) begin
            i_8_reg_213 <= i_7_reg_595;
        end else if ((1'b1 == ap_condition_301)) begin
            i_8_reg_213 <= i_6_reg_191;
        end else if ((1'b1 == ap_condition_294)) begin
            i_8_reg_213 <= ap_phi_reg_pp0_iter0_i_8_reg_213;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_260)) begin
        if (((icmp_ln18_reg_507 == 1'd0) & (icmp_ln21_reg_521 == 1'd0))) begin
            j_3_reg_181 <= j_1_reg_501;
        end else if (((icmp_ln18_reg_507 == 1'd0) & (icmp_ln21_reg_521 == 1'd1))) begin
            j_3_reg_181 <= j_2_reg_530;
        end else if ((1'b1 == ap_condition_258)) begin
            j_3_reg_181 <= ap_phi_reg_pp0_iter0_j_3_reg_181;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_280)) begin
        if ((1'b1 == ap_condition_288)) begin
            j_5_reg_202 <= j_3_reg_181;
        end else if ((1'b1 == ap_condition_285)) begin
            j_5_reg_202 <= j_4_reg_558;
        end else if ((1'b1 == ap_condition_278)) begin
            j_5_reg_202 <= ap_phi_reg_pp0_iter0_j_5_reg_202;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_296)) begin
        if ((1'b1 == ap_condition_304)) begin
            j_7_reg_224 <= j_5_reg_202;
        end else if ((1'b1 == ap_condition_301)) begin
            j_7_reg_224 <= j_6_reg_600;
        end else if ((1'b1 == ap_condition_294)) begin
            j_7_reg_224 <= ap_phi_reg_pp0_iter0_j_7_reg_224;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_46 <= stop;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_46 <= ap_phi_mux_j_9_phi_fu_248_p4;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_38 <= start_r;
    end else if (((icmp_ln18_reg_507 == 1'd0) & (icmp_ln18_1_reg_535 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln18_3_fu_389_p2 == 1'd0) & (icmp_ln18_2_fu_369_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        k_fu_38 <= add_ln18_3_fu_394_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_addr_3_reg_619 <= zext_ln5_2_fu_430_p1;
        i_9_reg_624 <= i_9_fu_434_p2;
        j_8_reg_629 <= j_8_fu_440_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln18_1_reg_563 <= add_ln18_1_fu_364_p2;
        add_ln18_2_reg_582 <= add_ln18_2_fu_384_p2;
        icmp_ln18_2_reg_568 <= icmp_ln18_2_fu_369_p2;
        icmp_ln18_3_reg_587 <= icmp_ln18_3_fu_389_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_3_reg_525 <= i_3_fu_310_p2;
        j_2_reg_530 <= j_2_fu_315_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        i_5_reg_553 <= i_5_fu_338_p2;
        j_4_reg_558 <= j_4_fu_344_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        i_7_reg_595 <= i_7_fu_404_p2;
        j_6_reg_600 <= j_6_fu_410_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_reg_495 <= ap_sig_allocacmp_i;
        icmp_ln18_reg_507 <= icmp_ln18_fu_295_p2;
        j_1_reg_501 <= ap_sig_allocacmp_j_1;
        k_1_reg_485 <= k_fu_38;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        icmp_ln18_1_reg_535 <= icmp_ln18_1_fu_324_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        icmp_ln21_1_reg_549 <= grp_fu_255_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        icmp_ln21_2_reg_591 <= grp_fu_255_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln21_3_reg_615 <= grp_fu_255_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln21_reg_521 <= grp_fu_255_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_261 <= temp_q1;
        reg_266 <= temp_q0;
    end
end
always @ (*) begin
    if ((((icmp_ln18_reg_507 == 1'd0) & (icmp_ln18_1_reg_535 == 1'd1) & (icmp_ln18_2_reg_568 == 1'd0) & (icmp_ln18_3_reg_587 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_615 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln18_reg_507 == 1'd0) & (icmp_ln18_1_reg_535 == 1'd1) & (icmp_ln18_2_reg_568 == 1'd0) & (icmp_ln18_3_reg_587 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_615 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        a_address0_local = a_addr_3_reg_619;
    end else if ((((icmp_ln18_reg_507 == 1'd0) & (icmp_ln18_1_reg_535 == 1'd1) & (icmp_ln18_2_reg_568 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_591 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_507 == 1'd0) & (icmp_ln18_1_reg_535 == 1'd1) & (icmp_ln18_2_reg_568 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_591 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        a_address0_local = zext_ln5_1_fu_416_p1;
    end else if ((((icmp_ln18_reg_507 == 1'd0) & (icmp_ln18_1_reg_535 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln21_1_reg_549 == 1'd0)) | ((icmp_ln18_reg_507 == 1'd0) & (icmp_ln18_1_reg_535 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln21_1_reg_549 == 1'd1)))) begin
        a_address0_local = zext_ln5_fu_359_p1;
    end else if ((((icmp_ln18_reg_507 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln21_reg_521 == 1'd0)) | ((icmp_ln18_reg_507 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln21_reg_521 == 1'd1)))) begin
        a_address0_local = zext_ln18_fu_320_p1;
    end else begin
        a_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln18_reg_507 == 1'd0) & (icmp_ln18_1_reg_535 == 1'd1) & (icmp_ln18_2_reg_568 == 1'd0) & (icmp_ln18_3_reg_587 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_615 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln18_reg_507 == 1'd0) & (icmp_ln18_1_reg_535 == 1'd1) & (icmp_ln18_2_reg_568 == 1'd0) & (icmp_ln18_3_reg_587 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_615 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln18_reg_507 == 1'd0) & (icmp_ln18_1_reg_535 == 1'd1) & (icmp_ln18_2_reg_568 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_591 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_507 == 1'd0) & (icmp_ln18_1_reg_535 == 1'd1) & (icmp_ln18_2_reg_568 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_591 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_507== 1'd0) & (icmp_ln18_1_reg_535 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln21_1_reg_549 == 1'd0)) | ((icmp_ln18_reg_507 == 1'd0) & (icmp_ln18_1_reg_535 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln21_1_reg_549 == 1'd1)) | ((icmp_ln18_reg_507 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln21_reg_521 == 1'd0)) | ((icmp_ln18_reg_507 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln21_reg_521 == 1'd1)))) begin
        a_ce0_local = 1'b1;
    end else begin
        a_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln18_reg_507 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln21_reg_521 == 1'd1)) | ((icmp_ln18_reg_507 == 1'd0) & (icmp_ln18_1_reg_535 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln21_1_reg_549 == 1'd1)) | ((icmp_ln18_reg_507 == 1'd0) & (icmp_ln18_1_reg_535 == 1'd1) & (icmp_ln18_2_reg_568 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_591 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_507 == 1'd0) & (icmp_ln18_1_reg_535 == 1'd1) & (icmp_ln18_2_reg_568 == 1'd0) & (icmp_ln18_3_reg_587 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_615 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        a_d0_local = reg_261;
    end else if ((((icmp_ln18_reg_507 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln21_reg_521 == 1'd0)) | ((icmp_ln18_reg_507 == 1'd0) & (icmp_ln18_1_reg_535 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln21_1_reg_549 == 1'd0)) | ((icmp_ln18_reg_507 == 1'd0) & (icmp_ln18_1_reg_535 == 1'd1) & (icmp_ln18_2_reg_568 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_591 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_507 == 1'd0) & (icmp_ln18_1_reg_535 == 1'd1) & (icmp_ln18_2_reg_568 == 1'd0) & (icmp_ln18_3_reg_587 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_615 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        a_d0_local = reg_266;
    end else begin
        a_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln18_reg_507 == 1'd0) & (icmp_ln18_1_reg_535 == 1'd1) & (icmp_ln18_2_reg_568 == 1'd0) & (icmp_ln18_3_reg_587 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_615 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln18_reg_507 == 1'd0) & (icmp_ln18_1_reg_535 == 1'd1) & (icmp_ln18_2_reg_568 == 1'd0) & (icmp_ln18_3_reg_587 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_615 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln18_reg_507 == 1'd0) & (icmp_ln18_1_reg_535 == 1'd1) & (icmp_ln18_2_reg_568 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_591 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_507 == 1'd0) & (icmp_ln18_1_reg_535 == 1'd1) & (icmp_ln18_2_reg_568 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_591 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_507== 1'd0) & (icmp_ln18_1_reg_535 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln21_1_reg_549 == 1'd0)) | ((icmp_ln18_reg_507 == 1'd0) & (icmp_ln18_1_reg_535 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln21_1_reg_549 == 1'd1)) | ((icmp_ln18_reg_507 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln21_reg_521 == 1'd0)) | ((icmp_ln18_reg_507 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln21_reg_521 == 1'd1)))) begin
        a_we0_local = 1'b1;
    end else begin
        a_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & ((icmp_ln18_reg_507 == 1'd1) | ((icmp_ln18_1_reg_535 == 1'd0) | ((icmp_ln18_2_reg_568 == 1'd1) | (icmp_ln18_3_reg_587 == 1'd1)))))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln18_reg_507 == 1'd1) | ((icmp_ln18_1_reg_535 == 1'd0) | ((icmp_ln18_2_reg_568 == 1'd1) | (icmp_ln18_3_reg_587 == 1'd1)))))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (~((ap_loop_exit_ready == 1'b0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
        ap_done_pending_pp0 = 1'b1;
    end else begin
        ap_done_pending_pp0 = 1'b0;
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
    if ((1'b1 == ap_condition_314)) begin
        if ((icmp_ln21_3_reg_615 == 1'd0)) begin
            ap_phi_mux_i_10_phi_fu_238_p4 = i_9_reg_624;
        end else if ((icmp_ln21_3_reg_615 == 1'd1)) begin
            ap_phi_mux_i_10_phi_fu_238_p4 = i_8_reg_213;
        end else begin
            ap_phi_mux_i_10_phi_fu_238_p4 = ap_phi_reg_pp0_iter1_i_10_reg_235;
        end
    end else begin
        ap_phi_mux_i_10_phi_fu_238_p4 = ap_phi_reg_pp0_iter1_i_10_reg_235;
    end
end
always @ (*) begin
    if ((icmp_ln18_reg_507 == 1'd0)) begin
        if ((icmp_ln21_reg_521 == 1'd0)) begin
            ap_phi_mux_i_4_phi_fu_174_p4 = i_3_reg_525;
        end else if ((icmp_ln21_reg_521 == 1'd1)) begin
            ap_phi_mux_i_4_phi_fu_174_p4 = i_reg_495;
        end else begin
            ap_phi_mux_i_4_phi_fu_174_p4 = ap_phi_reg_pp0_iter0_i_4_reg_171;
        end
    end else begin
        ap_phi_mux_i_4_phi_fu_174_p4 = ap_phi_reg_pp0_iter0_i_4_reg_171;
    end
end
always @ (*) begin
    if (((icmp_ln18_reg_507 == 1'd0) & (icmp_ln18_1_reg_535 == 1'd1))) begin
        if ((icmp_ln21_1_reg_549 == 1'd0)) begin
            ap_phi_mux_i_6_phi_fu_194_p4 = i_5_reg_553;
        end else if ((icmp_ln21_1_reg_549 == 1'd1)) begin
            ap_phi_mux_i_6_phi_fu_194_p4 = i_4_reg_171;
        end else begin
            ap_phi_mux_i_6_phi_fu_194_p4 = ap_phi_reg_pp0_iter0_i_6_reg_191;
        end
    end else begin
        ap_phi_mux_i_6_phi_fu_194_p4 = ap_phi_reg_pp0_iter0_i_6_reg_191;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_299)) begin
        if ((icmp_ln21_2_reg_591 == 1'd0)) begin
            ap_phi_mux_i_8_phi_fu_216_p4 = i_7_reg_595;
        end else if ((icmp_ln21_2_reg_591 == 1'd1)) begin
            ap_phi_mux_i_8_phi_fu_216_p4 = i_6_reg_191;
        end else begin
            ap_phi_mux_i_8_phi_fu_216_p4 = ap_phi_reg_pp0_iter0_i_8_reg_213;
        end
    end else begin
        ap_phi_mux_i_8_phi_fu_216_p4 = ap_phi_reg_pp0_iter0_i_8_reg_213;
    end
end
always @ (*) begin
    if ((icmp_ln18_reg_507 == 1'd0)) begin
        if ((icmp_ln21_reg_521 == 1'd0)) begin
            ap_phi_mux_j_3_phi_fu_184_p4 = j_1_reg_501;
        end else if ((icmp_ln21_reg_521 == 1'd1)) begin
            ap_phi_mux_j_3_phi_fu_184_p4 = j_2_reg_530;
        end else begin
            ap_phi_mux_j_3_phi_fu_184_p4 = ap_phi_reg_pp0_iter0_j_3_reg_181;
        end
    end else begin
        ap_phi_mux_j_3_phi_fu_184_p4 = ap_phi_reg_pp0_iter0_j_3_reg_181;
    end
end
always @ (*) begin
    if (((icmp_ln18_reg_507 == 1'd0) & (icmp_ln18_1_reg_535 == 1'd1))) begin
        if ((icmp_ln21_1_reg_549 == 1'd0)) begin
            ap_phi_mux_j_5_phi_fu_205_p4 = j_3_reg_181;
        end else if ((icmp_ln21_1_reg_549 == 1'd1)) begin
            ap_phi_mux_j_5_phi_fu_205_p4 = j_4_reg_558;
        end else begin
            ap_phi_mux_j_5_phi_fu_205_p4 = ap_phi_reg_pp0_iter0_j_5_reg_202;
        end
    end else begin
        ap_phi_mux_j_5_phi_fu_205_p4 = ap_phi_reg_pp0_iter0_j_5_reg_202;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_299)) begin
        if ((icmp_ln21_2_reg_591 == 1'd0)) begin
            ap_phi_mux_j_7_phi_fu_227_p4 = j_5_reg_202;
        end else if ((icmp_ln21_2_reg_591 == 1'd1)) begin
            ap_phi_mux_j_7_phi_fu_227_p4 = j_6_reg_600;
        end else begin
            ap_phi_mux_j_7_phi_fu_227_p4 = ap_phi_reg_pp0_iter0_j_7_reg_224;
        end
    end else begin
        ap_phi_mux_j_7_phi_fu_227_p4 = ap_phi_reg_pp0_iter0_j_7_reg_224;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_314)) begin
        if ((icmp_ln21_3_reg_615 == 1'd0)) begin
            ap_phi_mux_j_9_phi_fu_248_p4 = j_7_reg_224;
        end else if ((icmp_ln21_3_reg_615 == 1'd1)) begin
            ap_phi_mux_j_9_phi_fu_248_p4 = j_8_reg_629;
        end else begin
            ap_phi_mux_j_9_phi_fu_248_p4 = ap_phi_reg_pp0_iter1_j_9_reg_245;
        end
    end else begin
        ap_phi_mux_j_9_phi_fu_248_p4 = ap_phi_reg_pp0_iter1_j_9_reg_245;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_sig_allocacmp_i = ap_phi_mux_i_10_phi_fu_238_p4;
    end else begin
        ap_sig_allocacmp_i = i_2_fu_42;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_sig_allocacmp_j_1 = ap_phi_mux_j_9_phi_fu_248_p4;
    end else begin
        ap_sig_allocacmp_j_1 = j_fu_46;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            temp_address0_local = zext_ln20_3_fu_425_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            temp_address0_local = zext_ln20_2_fu_379_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            temp_address0_local = zext_ln20_1_fu_333_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            temp_address0_local = zext_ln20_fu_305_p1;
        end else begin
            temp_address0_local = 'bx;
        end
    end else begin
        temp_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            temp_address1_local = zext_ln19_3_fu_420_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            temp_address1_local = zext_ln19_2_fu_374_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            temp_address1_local = zext_ln19_1_fu_328_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            temp_address1_local = zext_ln19_fu_300_p1;
        end else begin
            temp_address1_local = 'bx;
        end
    end else begin
        temp_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        temp_ce0_local = 1'b1;
    end else begin
        temp_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        temp_ce1_local = 1'b1;
    end else begin
        temp_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_done_pending_pp0 == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign a_address0 = a_address0_local;
assign a_ce0 = a_ce0_local;
assign a_d0 = a_d0_local;
assign a_we0 = a_we0_local;
assign add_ln18_1_fu_364_p2 = (k_1_reg_485 + 32'd2);
assign add_ln18_2_fu_384_p2 = (k_1_reg_485 + 32'd3);
assign add_ln18_3_fu_394_p2 = (k_1_reg_485 + 32'd4);
assign add_ln18_fu_353_p2 = (trunc_ln18_fu_350_p1 + 11'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_258 = ~((icmp_ln18_reg_507 == 1'd1) | ((icmp_ln18_1_fu_324_p2 == 1'd0) | ((icmp_ln18_2_reg_568 == 1'd1) | (icmp_ln18_3_reg_587 == 1'd1))));
end
always @ (*) begin
    ap_condition_260 = ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_278 = ~((icmp_ln18_reg_507 == 1'd1) | ((icmp_ln18_1_reg_535 == 1'd0) | ((icmp_ln18_3_fu_389_p2 == 1'd1) | (icmp_ln18_2_fu_369_p2 == 1'd1))));
end
always @ (*) begin
    ap_condition_280 = ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5));
end
always @ (*) begin
    ap_condition_285 = ((icmp_ln18_reg_507 == 1'd0) & (icmp_ln18_1_reg_535 == 1'd1) & (icmp_ln21_1_reg_549 == 1'd1));
end
always @ (*) begin
    ap_condition_288 = ((icmp_ln18_reg_507 == 1'd0) & (icmp_ln18_1_reg_535 == 1'd1) & (icmp_ln21_1_reg_549 == 1'd0));
end
always @ (*) begin
    ap_condition_294 = ~((icmp_ln18_reg_507 == 1'd1) | ((icmp_ln18_1_reg_535 == 1'd0) | ((icmp_ln18_2_reg_568 == 1'd1) | (icmp_ln18_3_reg_587 == 1'd1))));
end
always @ (*) begin
    ap_condition_296 = ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7));
end
always @ (*) begin
    ap_condition_299 = ((icmp_ln18_reg_507 == 1'd0) & (icmp_ln18_1_reg_535 == 1'd1) & (icmp_ln18_2_reg_568 == 1'd0));
end
always @ (*) begin
    ap_condition_301 = ((icmp_ln18_reg_507 == 1'd0) & (icmp_ln18_1_reg_535 == 1'd1) & (icmp_ln18_2_reg_568 == 1'd0) & (icmp_ln21_2_reg_591 == 1'd1));
end
always @ (*) begin
    ap_condition_304 = ((icmp_ln18_reg_507 == 1'd0) & (icmp_ln18_1_reg_535 == 1'd1) & (icmp_ln18_2_reg_568 == 1'd0) & (icmp_ln21_2_reg_591 == 1'd0));
end
always @ (*) begin
    ap_condition_314 = ((icmp_ln18_reg_507 == 1'd0) & (icmp_ln18_1_reg_535 == 1'd1) & (icmp_ln18_2_reg_568 == 1'd0) & (icmp_ln18_3_reg_587 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_phi_reg_pp0_iter0_i_4_reg_171 = 'bx;
assign ap_phi_reg_pp0_iter0_i_6_reg_191 = 'bx;
assign ap_phi_reg_pp0_iter0_i_8_reg_213 = 'bx;
assign ap_phi_reg_pp0_iter0_j_3_reg_181 = 'bx;
assign ap_phi_reg_pp0_iter0_j_5_reg_202 = 'bx;
assign ap_phi_reg_pp0_iter0_j_7_reg_224 = 'bx;
assign ap_phi_reg_pp0_iter1_i_10_reg_235 = 'bx;
assign ap_phi_reg_pp0_iter1_j_9_reg_245 = 'bx;
assign ap_ready = ap_ready_sig;
assign grp_fu_255_p2 = (($signed(temp_q1) < $signed(temp_q0)) ? 1'b1 : 1'b0);
assign i_3_fu_310_p2 = (i_reg_495 + 32'd1);
assign i_5_fu_338_p2 = (i_4_reg_171 + 32'd1);
assign i_7_fu_404_p2 = (i_6_reg_191 + 32'd1);
assign i_9_fu_434_p2 = (i_8_reg_213 + 32'd1);
assign icmp_ln18_1_fu_324_p2 = (($signed(k_1_reg_485) < $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln18_2_fu_369_p2 = (($signed(add_ln18_1_fu_364_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln18_3_fu_389_p2 = (($signed(add_ln18_2_fu_384_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_295_p2 = (($signed(k_fu_38) > $signed(stop)) ? 1'b1 : 1'b0);
assign j_2_fu_315_p2 = ($signed(j_1_reg_501) + $signed(32'd4294967295));
assign j_4_fu_344_p2 = ($signed(j_3_reg_181) + $signed(32'd4294967295));
assign j_6_fu_410_p2 = ($signed(j_5_reg_202) + $signed(32'd4294967295));
assign j_8_fu_440_p2 = ($signed(j_7_reg_224) + $signed(32'd4294967295));
assign temp_address0 = temp_address0_local;
assign temp_address1 = temp_address1_local;
assign temp_ce0 = temp_ce0_local;
assign temp_ce1 = temp_ce1_local;
assign trunc_ln18_fu_350_p1 = k_1_reg_485[10:0];
assign zext_ln18_fu_320_p1 = k_1_reg_485;
assign zext_ln19_1_fu_328_p1 = ap_phi_mux_j_3_phi_fu_184_p4;
assign zext_ln19_2_fu_374_p1 = ap_phi_mux_j_5_phi_fu_205_p4;
assign zext_ln19_3_fu_420_p1 = ap_phi_mux_j_7_phi_fu_227_p4;
assign zext_ln19_fu_300_p1 = ap_sig_allocacmp_j_1;
assign zext_ln20_1_fu_333_p1 = ap_phi_mux_i_4_phi_fu_174_p4;
assign zext_ln20_2_fu_379_p1 = ap_phi_mux_i_6_phi_fu_194_p4;
assign zext_ln20_3_fu_425_p1 = ap_phi_mux_i_8_phi_fu_216_p4;
assign zext_ln20_fu_305_p1 = ap_sig_allocacmp_i;
assign zext_ln5_1_fu_416_p1 = add_ln18_1_reg_563;
assign zext_ln5_2_fu_430_p1 = add_ln18_2_reg_582;
assign zext_ln5_fu_359_p1 = add_ln18_fu_353_p2;
endmodule 
