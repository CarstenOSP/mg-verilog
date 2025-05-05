module ss_sort_ss_sort_Pipeline_hist_1_hist_21 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,b_address0,b_ce0,b_q0,b_address1,b_ce1,b_q1,zext_ln50,bucket_address0,bucket_ce0,bucket_we0,bucket_d0,bucket_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 6'd1;
parameter    ap_ST_fsm_pp0_stage1 = 6'd2;
parameter    ap_ST_fsm_pp0_stage2 = 6'd4;
parameter    ap_ST_fsm_pp0_stage3 = 6'd8;
parameter    ap_ST_fsm_pp0_stage4 = 6'd16;
parameter    ap_ST_fsm_pp0_stage5 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] b_address0;
output   b_ce0;
input  [31:0] b_q0;
output  [10:0] b_address1;
output   b_ce1;
input  [31:0] b_q1;
input  [4:0] zext_ln50;
output  [10:0] bucket_address0;
output   bucket_ce0;
output   bucket_we0;
output  [31:0] bucket_d0;
input  [31:0] bucket_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln54_reg_364;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [31:0] reg_126;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] zext_ln50_cast_fu_137_p1;
reg   [31:0] zext_ln50_cast_reg_358;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln54_fu_159_p2;
reg   [2:0] i_load_reg_368;
wire   [0:0] tmp_fu_177_p3;
reg   [0:0] tmp_reg_373;
wire   [8:0] empty_fu_199_p1;
reg   [8:0] empty_reg_378;
wire   [2:0] select_ln52_fu_213_p3;
reg   [2:0] select_ln52_reg_385;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] b_load_reg_400;
reg   [31:0] b_load_64_reg_405;
wire   [9:0] thr_add24_fu_266_p2;
reg   [9:0] thr_add24_reg_410;
wire    ap_block_pp0_stage3_11001;
wire   [1:0] trunc_ln57_fu_276_p1;
reg   [1:0] trunc_ln57_reg_415;
reg   [10:0] bucket_addr_reg_420;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [10:0] bucket_indx_1_fu_317_p2;
reg   [10:0] bucket_indx_1_reg_425;
reg   [10:0] bucket_addr_67_reg_430;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln57_fu_236_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln57_1_fu_258_p1;
wire   [63:0] zext_ln58_fu_296_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln58_1_fu_333_p1;
reg   [2:0] i_fu_62;
wire   [2:0] add_ln55_fu_323_p2;
wire    ap_loop_init;
reg   [2:0] ap_sig_allocacmp_i_load;
wire    ap_block_pp0_stage0;
reg   [9:0] blockID_1_fu_66;
wire   [9:0] select_ln54_fu_191_p3;
reg   [9:0] ap_sig_allocacmp_blockID_1_load;
reg   [10:0] indvar_flatten6_fu_70;
wire   [10:0] add_ln54_fu_165_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten6_load;
reg    b_ce1_local;
reg    b_ce0_local;
reg    bucket_ce0_local;
reg   [10:0] bucket_address0_local;
reg    bucket_we0_local;
wire   [31:0] grp_fu_130_p2;
wire    ap_block_pp0_stage3;
wire   [9:0] add_ln54_1_fu_185_p2;
wire   [10:0] zext_ln55_1_fu_226_p1;
wire   [10:0] tmp_s_fu_219_p3;
wire   [10:0] add_ln56_fu_230_p2;
wire   [0:0] tmp_11_fu_241_p3;
wire   [10:0] add_ln56_3_fu_249_p4;
wire   [9:0] blockID_1_cast2_cast_fu_263_p1;
wire   [31:0] ashr_ln57_fu_272_p2;
wire   [10:0] shl_ln57_2_fu_283_p3;
wire   [10:0] zext_ln55_fu_280_p1;
wire   [10:0] bucket_indx_fu_290_p2;
wire   [31:0] ashr_ln57_1_fu_301_p2;
wire   [1:0] trunc_ln57_1_fu_305_p1;
wire   [10:0] shl_ln57_3_fu_309_p3;
wire    ap_block_pp0_stage5;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [5:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_62 = 3'd0;
#0 blockID_1_fu_66 = 10'd0;
#0 indvar_flatten6_fu_70 = 11'd0;
#0 ap_done_reg = 1'b0;
end
ss_sort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
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
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln54_fu_159_p2 == 1'd0))) begin
            blockID_1_fu_66 <= select_ln54_fu_191_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            blockID_1_fu_66 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_fu_62 <= 3'd0;
    end else if (((icmp_ln54_reg_364 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        i_fu_62 <= add_ln55_fu_323_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln54_fu_159_p2 == 1'd0))) begin
            indvar_flatten6_fu_70 <= add_ln54_fu_165_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten6_fu_70 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        b_load_64_reg_405 <= b_q0;
        b_load_reg_400 <= b_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_addr_67_reg_430 <= zext_ln58_1_fu_333_p1;
        select_ln52_reg_385 <= select_ln52_fu_213_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        bucket_addr_reg_420 <= zext_ln58_fu_296_p1;
        bucket_indx_1_reg_425 <= bucket_indx_1_fu_317_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_378 <= empty_fu_199_p1;
        i_load_reg_368 <= ap_sig_allocacmp_i_load;
        icmp_ln54_reg_364 <= icmp_ln54_fu_159_p2;
        tmp_reg_373 <= ap_sig_allocacmp_i_load[32'd2];
        zext_ln50_cast_reg_358[4 : 0] <= zext_ln50_cast_fu_137_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_126 <= bucket_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        thr_add24_reg_410 <= thr_add24_fu_266_p2;
        trunc_ln57_reg_415 <= trunc_ln57_fu_276_p1;
    end
end
always @ (*) begin
    if (((icmp_ln54_reg_364 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_blockID_1_load = 10'd0;
    end else begin
        ap_sig_allocacmp_blockID_1_load = blockID_1_fu_66;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_load = 3'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_62;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten6_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten6_load = indvar_flatten6_fu_70;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        b_ce0_local = 1'b1;
    end else begin
        b_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        b_ce1_local = 1'b1;
    end else begin
        b_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_address0_local = bucket_addr_67_reg_430;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_address0_local = zext_ln58_1_fu_333_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_address0_local = bucket_addr_reg_420;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        bucket_address0_local = zext_ln58_fu_296_p1;
    end else begin
        bucket_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_ce0_local = 1'b1;
    end else begin
        bucket_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_we0_local = 1'b1;
    end else begin
        bucket_we0_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln54_1_fu_185_p2 = (ap_sig_allocacmp_blockID_1_load + 10'd1);
assign add_ln54_fu_165_p2 = (ap_sig_allocacmp_indvar_flatten6_load + 11'd1);
assign add_ln55_fu_323_p2 = (select_ln52_reg_385 + 3'd2);
assign add_ln56_3_fu_249_p4 = {{{empty_reg_378}, {tmp_11_fu_241_p3}}, {1'd1}};
assign add_ln56_fu_230_p2 = (zext_ln55_1_fu_226_p1 + tmp_s_fu_219_p3);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign ashr_ln57_1_fu_301_p2 = $signed(b_load_64_reg_405) >>> zext_ln50_cast_reg_358;
assign ashr_ln57_fu_272_p2 = $signed(b_load_reg_400) >>> zext_ln50_cast_reg_358;
assign b_address0 = zext_ln57_1_fu_258_p1;
assign b_address1 = zext_ln57_fu_236_p1;
assign b_ce0 = b_ce0_local;
assign b_ce1 = b_ce1_local;
assign blockID_1_cast2_cast_fu_263_p1 = empty_reg_378;
assign bucket_address0 = bucket_address0_local;
assign bucket_ce0 = bucket_ce0_local;
assign bucket_d0 = grp_fu_130_p2;
assign bucket_indx_1_fu_317_p2 = (shl_ln57_3_fu_309_p3 + zext_ln55_fu_280_p1);
assign bucket_indx_fu_290_p2 = (shl_ln57_2_fu_283_p3 + zext_ln55_fu_280_p1);
assign bucket_we0 = bucket_we0_local;
assign empty_fu_199_p1 = select_ln54_fu_191_p3[8:0];
assign grp_fu_130_p2 = (reg_126 + 32'd1);
assign icmp_ln54_fu_159_p2 = ((ap_sig_allocacmp_indvar_flatten6_load == 11'd1024) ? 1'b1 : 1'b0);
assign select_ln52_fu_213_p3 = ((tmp_reg_373[0:0] == 1'b1) ? 3'd0 : i_load_reg_368);
assign select_ln54_fu_191_p3 = ((tmp_fu_177_p3[0:0] == 1'b1) ? add_ln54_1_fu_185_p2 : ap_sig_allocacmp_blockID_1_load);
assign shl_ln57_2_fu_283_p3 = {{trunc_ln57_reg_415}, {9'd0}};
assign shl_ln57_3_fu_309_p3 = {{trunc_ln57_1_fu_305_p1}, {9'd0}};
assign thr_add24_fu_266_p2 = (blockID_1_cast2_cast_fu_263_p1 + 10'd1);
assign tmp_11_fu_241_p3 = select_ln52_fu_213_p3[32'd1];
assign tmp_fu_177_p3 = ap_sig_allocacmp_i_load[32'd2];
assign tmp_s_fu_219_p3 = {{empty_reg_378}, {2'd0}};
assign trunc_ln57_1_fu_305_p1 = ashr_ln57_1_fu_301_p2[1:0];
assign trunc_ln57_fu_276_p1 = ashr_ln57_fu_272_p2[1:0];
assign zext_ln50_cast_fu_137_p1 = zext_ln50;
assign zext_ln55_1_fu_226_p1 = select_ln52_fu_213_p3;
assign zext_ln55_fu_280_p1 = thr_add24_reg_410;
assign zext_ln57_1_fu_258_p1 = add_ln56_3_fu_249_p4;
assign zext_ln57_fu_236_p1 = add_ln56_fu_230_p2;
assign zext_ln58_1_fu_333_p1 = bucket_indx_1_reg_425;
assign zext_ln58_fu_296_p1 = bucket_indx_fu_290_p2;
always @ (posedge ap_clk) begin
    zext_ln50_cast_reg_358[31:5] <= 27'b000000000000000000000000000;
end
endmodule 