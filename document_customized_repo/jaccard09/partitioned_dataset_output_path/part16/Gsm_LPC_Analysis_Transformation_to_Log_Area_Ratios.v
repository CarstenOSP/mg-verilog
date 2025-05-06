
module Gsm_LPC_Analysis_Transformation_to_Log_Area_Ratios (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,LARc_address0,LARc_ce0,LARc_we0,LARc_d0,LARc_q0,LARc_address1,LARc_ce1,LARc_we1,LARc_d1,LARc_q1);  
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
output  [2:0] LARc_address0;
output   LARc_ce0;
output   LARc_we0;
output  [15:0] LARc_d0;
input  [15:0] LARc_q0;
output  [2:0] LARc_address1;
output   LARc_ce1;
output   LARc_we1;
output  [15:0] LARc_d1;
input  [15:0] LARc_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] icmp_ln248_reg_625;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [15:0] reg_177;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage2_11001;
wire   [15:0] grp_fu_141_p3;
reg   [15:0] reg_181;
reg   [15:0] reg_185;
wire   [15:0] grp_fu_169_p3;
reg   [15:0] reg_189;
wire   [0:0] icmp_ln248_fu_206_p2;
wire    ap_block_pp0_stage0_11001;
reg   [2:0] LARc_addr_reg_629;
reg   [2:0] LARc_addr_1_reg_634;
reg   [0:0] tmp_3_reg_639;
reg   [0:0] tmp_reg_645;
reg   [0:0] tmp_2_reg_651;
reg   [2:0] LARc_addr_2_reg_657;
reg   [2:0] LARc_addr_2_reg_657_pp0_iter1_reg;
reg   [2:0] LARc_addr_3_reg_662;
reg   [2:0] LARc_addr_3_reg_662_pp0_iter1_reg;
wire   [15:0] temp_1_fu_356_p3;
reg   [15:0] temp_1_reg_667;
wire   [15:0] temp_12_fu_423_p3;
reg   [15:0] temp_12_reg_673;
reg   [0:0] tmp_4_reg_679;
reg   [0:0] tmp_5_reg_685;
wire   [15:0] temp_19_fu_514_p3;
reg   [15:0] temp_19_reg_691;
wire    ap_block_pp0_stage3_11001;
wire   [15:0] temp_26_fu_581_p3;
reg   [15:0] temp_26_reg_697;
wire   [15:0] select_ln268_2_fu_594_p3;
reg   [15:0] select_ln268_2_reg_703;
wire   [15:0] select_ln268_3_fu_605_p3;
reg   [15:0] select_ln268_3_reg_708;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln248_fu_215_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln243_fu_238_p1;
wire   [63:0] zext_ln243_1_fu_280_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln243_2_fu_292_p1;
reg   [3:0] idx_fu_72;
wire   [3:0] add_ln248_fu_257_p2;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_idx_load;
reg   [3:0] i_fu_76;
wire   [3:0] i_3_fu_251_p2;
reg   [3:0] ap_sig_allocacmp_i_2;
reg    LARc_ce1_local;
reg   [2:0] LARc_address1_local;
reg    LARc_ce0_local;
reg   [2:0] LARc_address0_local;
reg    LARc_we1_local;
reg   [15:0] LARc_d1_local;
wire   [15:0] select_ln268_fu_436_p3;
wire    ap_block_pp0_stage3;
reg    LARc_we0_local;
reg   [15:0] LARc_d0_local;
wire   [15:0] select_ln268_1_fu_448_p3;
wire    ap_block_pp0_stage2;
wire   [0:0] grp_fu_129_p2;
wire   [15:0] grp_fu_135_p2;
wire   [0:0] grp_fu_157_p2;
wire   [15:0] grp_fu_163_p2;
wire   [1:0] tmp_1_fu_220_p4;
wire   [2:0] or_ln_fu_230_p3;
wire   [2:0] or_ln248_1_fu_273_p3;
wire   [2:0] or_ln248_2_fu_285_p3;
wire   [15:0] temp_fu_297_p3;
wire   [14:0] temp_3_fu_310_p4;
wire   [15:0] shl_ln265_fu_336_p2;
wire   [0:0] icmp_ln258_fu_324_p2;
wire   [15:0] temp_4_fu_330_p2;
wire   [15:0] temp_5_fu_342_p2;
wire   [0:0] icmp_ln254_fu_304_p2;
wire  signed [15:0] sext_ln256_fu_320_p1;
wire   [15:0] temp_6_fu_348_p3;
wire   [15:0] temp_7_fu_364_p3;
wire   [14:0] temp_9_fu_377_p4;
wire   [15:0] shl_ln265_1_fu_403_p2;
wire   [0:0] icmp_ln258_1_fu_391_p2;
wire   [15:0] temp_10_fu_397_p2;
wire   [15:0] temp_11_fu_409_p2;
wire   [0:0] icmp_ln254_1_fu_371_p2;
wire  signed [15:0] sext_ln256_1_fu_387_p1;
wire   [15:0] temp_13_fu_415_p3;
wire   [15:0] sub_ln268_fu_431_p2;
wire   [15:0] sub_ln268_1_fu_443_p2;
wire   [15:0] temp_14_fu_455_p3;
wire   [14:0] temp_16_fu_468_p4;
wire   [15:0] shl_ln265_2_fu_494_p2;
wire   [0:0] icmp_ln258_2_fu_482_p2;
wire   [15:0] temp_17_fu_488_p2;
wire   [15:0] temp_18_fu_500_p2;
wire   [0:0] icmp_ln254_2_fu_462_p2;
wire  signed [15:0] sext_ln256_2_fu_478_p1;
wire   [15:0] temp_20_fu_506_p3;
wire   [15:0] temp_21_fu_522_p3;
wire   [14:0] temp_23_fu_535_p4;
wire   [15:0] shl_ln265_3_fu_561_p2;
wire   [0:0] icmp_ln258_3_fu_549_p2;
wire   [15:0] temp_24_fu_555_p2;
wire   [15:0] temp_25_fu_567_p2;
wire   [0:0] icmp_ln254_3_fu_529_p2;
wire  signed [15:0] sext_ln256_3_fu_545_p1;
wire   [15:0] temp_27_fu_573_p3;
wire   [15:0] sub_ln268_2_fu_589_p2;
wire   [15:0] sub_ln268_3_fu_600_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 idx_fu_72 = 4'd0;
#0 i_fu_76 = 4'd0;
#0 ap_done_reg = 1'b0;
end
Gsm_LPC_Analysis_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
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
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln248_fu_206_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_76 <= i_3_fu_251_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_76 <= 4'd1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln248_fu_206_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            idx_fu_72 <= add_ln248_fu_257_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            idx_fu_72 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        LARc_addr_1_reg_634[2 : 1] <= zext_ln243_fu_238_p1[2 : 1];
        LARc_addr_reg_629 <= zext_ln248_fu_215_p1;
        icmp_ln248_reg_625 <= icmp_ln248_fu_206_p2;
        select_ln268_2_reg_703 <= select_ln268_2_fu_594_p3;
        select_ln268_3_reg_708 <= select_ln268_3_fu_605_p3;
        tmp_3_reg_639 <= ap_sig_allocacmp_idx_load[32'd2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        LARc_addr_2_reg_657[2] <= zext_ln243_1_fu_280_p1[2];
        LARc_addr_2_reg_657_pp0_iter1_reg[2] <= LARc_addr_2_reg_657[2];
        LARc_addr_3_reg_662[2] <= zext_ln243_2_fu_292_p1[2];
        LARc_addr_3_reg_662_pp0_iter1_reg[2] <= LARc_addr_3_reg_662[2];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_177 <= LARc_q1;
        reg_181 <= grp_fu_141_p3;
        reg_185 <= LARc_q0;
        reg_189 <= grp_fu_169_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        temp_12_reg_673 <= temp_12_fu_423_p3;
        temp_1_reg_667 <= temp_1_fu_356_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        temp_19_reg_691 <= temp_19_fu_514_p3;
        temp_26_reg_697 <= temp_26_fu_581_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_2_reg_651 <= LARc_q0[32'd15];
        tmp_reg_645 <= LARc_q1[32'd15];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_4_reg_679 <= LARc_q1[32'd15];
        tmp_5_reg_685 <= LARc_q0[32'd15];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        LARc_address0_local = LARc_addr_3_reg_662_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        LARc_address0_local = LARc_addr_1_reg_634;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        LARc_address0_local = zext_ln243_2_fu_292_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        LARc_address0_local = zext_ln243_fu_238_p1;
    end else begin
        LARc_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        LARc_address1_local = LARc_addr_2_reg_657_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        LARc_address1_local = LARc_addr_reg_629;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        LARc_address1_local = zext_ln243_1_fu_280_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        LARc_address1_local = zext_ln248_fu_215_p1;
    end else begin
        LARc_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        LARc_ce0_local = 1'b1;
    end else begin
        LARc_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        LARc_ce1_local = 1'b1;
    end else begin
        LARc_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        LARc_d0_local = select_ln268_3_reg_708;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        LARc_d0_local = select_ln268_1_fu_448_p3;
    end else begin
        LARc_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        LARc_d1_local = select_ln268_2_reg_703;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        LARc_d1_local = select_ln268_fu_436_p3;
    end else begin
        LARc_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln248_reg_625 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        LARc_we0_local = 1'b1;
    end else begin
        LARc_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln248_reg_625 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        LARc_we1_local = 1'b1;
    end else begin
        LARc_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln248_reg_625 == 1'd0) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_2 = 4'd1;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_76;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_idx_load = 4'd0;
    end else begin
        ap_sig_allocacmp_idx_load = idx_fu_72;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
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
assign LARc_address0 = LARc_address0_local;
assign LARc_address1 = LARc_address1_local;
assign LARc_ce0 = LARc_ce0_local;
assign LARc_ce1 = LARc_ce1_local;
assign LARc_d0 = LARc_d0_local;
assign LARc_d1 = LARc_d1_local;
assign LARc_we0 = LARc_we0_local;
assign LARc_we1 = LARc_we1_local;
assign add_ln248_fu_257_p2 = (ap_sig_allocacmp_idx_load + 4'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign grp_fu_129_p2 = ((LARc_q1 == 16'd32768) ? 1'b1 : 1'b0);
assign grp_fu_135_p2 = (16'd0 - LARc_q1);
assign grp_fu_141_p3 = ((grp_fu_129_p2[0:0] == 1'b1) ? 16'd32767 : grp_fu_135_p2);
assign grp_fu_157_p2 = ((LARc_q0 == 16'd32768) ? 1'b1 : 1'b0);
assign grp_fu_163_p2 = (16'd0 - LARc_q0);
assign grp_fu_169_p3 = ((grp_fu_157_p2[0:0] == 1'b1) ? 16'd32767 : grp_fu_163_p2);
assign i_3_fu_251_p2 = (ap_sig_allocacmp_i_2 + 4'd4);
assign icmp_ln248_fu_206_p2 = ((ap_sig_allocacmp_i_2 < 4'd9) ? 1'b1 : 1'b0);
assign icmp_ln254_1_fu_371_p2 = (($signed(temp_7_fu_364_p3) < $signed(16'd22118)) ? 1'b1 : 1'b0);
assign icmp_ln254_2_fu_462_p2 = (($signed(temp_14_fu_455_p3) < $signed(16'd22118)) ? 1'b1 : 1'b0);
assign icmp_ln254_3_fu_529_p2 = (($signed(temp_21_fu_522_p3) < $signed(16'd22118)) ? 1'b1 : 1'b0);
assign icmp_ln254_fu_304_p2 = (($signed(temp_fu_297_p3) < $signed(16'd22118)) ? 1'b1 : 1'b0);
assign icmp_ln258_1_fu_391_p2 = (($signed(temp_7_fu_364_p3) < $signed(16'd31130)) ? 1'b1 : 1'b0);
assign icmp_ln258_2_fu_482_p2 = (($signed(temp_14_fu_455_p3) < $signed(16'd31130)) ? 1'b1 : 1'b0);
assign icmp_ln258_3_fu_549_p2 = (($signed(temp_21_fu_522_p3) < $signed(16'd31130)) ? 1'b1 : 1'b0);
assign icmp_ln258_fu_324_p2 = (($signed(temp_fu_297_p3) < $signed(16'd31130)) ? 1'b1 : 1'b0);
assign or_ln248_1_fu_273_p3 = {{tmp_3_reg_639}, {2'd2}};
assign or_ln248_2_fu_285_p3 = {{tmp_3_reg_639}, {2'd3}};
assign or_ln_fu_230_p3 = {{tmp_1_fu_220_p4}, {1'd1}};
assign select_ln268_1_fu_448_p3 = ((tmp_2_reg_651[0:0] == 1'b1) ? sub_ln268_1_fu_443_p2 : temp_12_reg_673);
assign select_ln268_2_fu_594_p3 = ((tmp_4_reg_679[0:0] == 1'b1) ? sub_ln268_2_fu_589_p2 : temp_19_reg_691);
assign select_ln268_3_fu_605_p3 = ((tmp_5_reg_685[0:0] == 1'b1) ? sub_ln268_3_fu_600_p2 : temp_26_reg_697);
assign select_ln268_fu_436_p3 = ((tmp_reg_645[0:0] == 1'b1) ? sub_ln268_fu_431_p2 : temp_1_reg_667);
assign sext_ln256_1_fu_387_p1 = $signed(temp_9_fu_377_p4);
assign sext_ln256_2_fu_478_p1 = $signed(temp_16_fu_468_p4);
assign sext_ln256_3_fu_545_p1 = $signed(temp_23_fu_535_p4);
assign sext_ln256_fu_320_p1 = $signed(temp_3_fu_310_p4);
assign shl_ln265_1_fu_403_p2 = temp_7_fu_364_p3 << 16'd2;
assign shl_ln265_2_fu_494_p2 = temp_14_fu_455_p3 << 16'd2;
assign shl_ln265_3_fu_561_p2 = temp_21_fu_522_p3 << 16'd2;
assign shl_ln265_fu_336_p2 = temp_fu_297_p3 << 16'd2;
assign sub_ln268_1_fu_443_p2 = (16'd0 - temp_12_reg_673);
assign sub_ln268_2_fu_589_p2 = (16'd0 - temp_19_reg_691);
assign sub_ln268_3_fu_600_p2 = (16'd0 - temp_26_reg_697);
assign sub_ln268_fu_431_p2 = (16'd0 - temp_1_reg_667);
assign temp_10_fu_397_p2 = ($signed(temp_7_fu_364_p3) + $signed(16'd54477));
assign temp_11_fu_409_p2 = (shl_ln265_1_fu_403_p2 + 16'd26624);
assign temp_12_fu_423_p3 = ((icmp_ln254_1_fu_371_p2[0:0] == 1'b1) ? sext_ln256_1_fu_387_p1 : temp_13_fu_415_p3);
assign temp_13_fu_415_p3 = ((icmp_ln258_1_fu_391_p2[0:0] == 1'b1) ? temp_10_fu_397_p2 : temp_11_fu_409_p2);
assign temp_14_fu_455_p3 = ((tmp_4_reg_679[0:0] == 1'b1) ? reg_181 : reg_177);
assign temp_16_fu_468_p4 = {{temp_14_fu_455_p3[15:1]}};
assign temp_17_fu_488_p2 = ($signed(temp_14_fu_455_p3) + $signed(16'd54477));
assign temp_18_fu_500_p2 = (shl_ln265_2_fu_494_p2 + 16'd26624);
assign temp_19_fu_514_p3 = ((icmp_ln254_2_fu_462_p2[0:0] == 1'b1) ? sext_ln256_2_fu_478_p1 : temp_20_fu_506_p3);
assign temp_1_fu_356_p3 = ((icmp_ln254_fu_304_p2[0:0] == 1'b1) ? sext_ln256_fu_320_p1 : temp_6_fu_348_p3);
assign temp_20_fu_506_p3 = ((icmp_ln258_2_fu_482_p2[0:0] == 1'b1) ? temp_17_fu_488_p2 : temp_18_fu_500_p2);
assign temp_21_fu_522_p3 = ((tmp_5_reg_685[0:0] == 1'b1) ? reg_189 : reg_185);
assign temp_23_fu_535_p4 = {{temp_21_fu_522_p3[15:1]}};
assign temp_24_fu_555_p2 = ($signed(temp_21_fu_522_p3) + $signed(16'd54477));
assign temp_25_fu_567_p2 = (shl_ln265_3_fu_561_p2 + 16'd26624);
assign temp_26_fu_581_p3 = ((icmp_ln254_3_fu_529_p2[0:0] == 1'b1) ? sext_ln256_3_fu_545_p1 : temp_27_fu_573_p3);
assign temp_27_fu_573_p3 = ((icmp_ln258_3_fu_549_p2[0:0] == 1'b1) ? temp_24_fu_555_p2 : temp_25_fu_567_p2);
assign temp_3_fu_310_p4 = {{temp_fu_297_p3[15:1]}};
assign temp_4_fu_330_p2 = ($signed(temp_fu_297_p3) + $signed(16'd54477));
assign temp_5_fu_342_p2 = (shl_ln265_fu_336_p2 + 16'd26624);
assign temp_6_fu_348_p3 = ((icmp_ln258_fu_324_p2[0:0] == 1'b1) ? temp_4_fu_330_p2 : temp_5_fu_342_p2);
assign temp_7_fu_364_p3 = ((tmp_2_reg_651[0:0] == 1'b1) ? reg_189 : reg_185);
assign temp_9_fu_377_p4 = {{temp_7_fu_364_p3[15:1]}};
assign temp_fu_297_p3 = ((tmp_reg_645[0:0] == 1'b1) ? reg_181 : reg_177);
assign tmp_1_fu_220_p4 = {{ap_sig_allocacmp_idx_load[2:1]}};
assign zext_ln243_1_fu_280_p1 = or_ln248_1_fu_273_p3;
assign zext_ln243_2_fu_292_p1 = or_ln248_2_fu_285_p3;
assign zext_ln243_fu_238_p1 = or_ln_fu_230_p3;
assign zext_ln248_fu_215_p1 = ap_sig_allocacmp_idx_load;
always @ (posedge ap_clk) begin
    LARc_addr_1_reg_634[0] <= 1'b1;
    LARc_addr_2_reg_657[1:0] <= 2'b10;
    LARc_addr_2_reg_657_pp0_iter1_reg[1:0] <= 2'b10;
    LARc_addr_3_reg_662[1:0] <= 2'b11;
    LARc_addr_3_reg_662_pp0_iter1_reg[1:0] <= 2'b11;
end
endmodule 
