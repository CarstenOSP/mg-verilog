
module ss_sort_ss_sort_Pipeline_sum_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sum_3_address0,sum_3_ce0,sum_3_we0,sum_3_d0,sum_2_address0,sum_2_ce0,sum_2_we0,sum_2_d0,sum_1_address0,sum_1_ce0,sum_1_we0,sum_1_d0,sum_0_address0,sum_0_ce0,sum_0_we0,sum_0_d0,sum_0_address1,sum_0_ce1,sum_0_q1,bucket_3_address0,bucket_3_ce0,bucket_3_q0,bucket_3_address1,bucket_3_ce1,bucket_3_q1);  
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] sum_3_address0;
output   sum_3_ce0;
output   sum_3_we0;
output  [31:0] sum_3_d0;
output  [4:0] sum_2_address0;
output   sum_2_ce0;
output   sum_2_we0;
output  [31:0] sum_2_d0;
output  [4:0] sum_1_address0;
output   sum_1_ce0;
output   sum_1_we0;
output  [31:0] sum_1_d0;
output  [4:0] sum_0_address0;
output   sum_0_ce0;
output   sum_0_we0;
output  [31:0] sum_0_d0;
output  [4:0] sum_0_address1;
output   sum_0_ce1;
input  [31:0] sum_0_q1;
output  [8:0] bucket_3_address0;
output   bucket_3_ce0;
input  [31:0] bucket_3_q0;
output  [8:0] bucket_3_address1;
output   bucket_3_ce1;
input  [31:0] bucket_3_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] tmp_reg_474;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_191;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage2_11001;
reg   [6:0] radixID_1_reg_423;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln23_fu_223_p1;
reg   [63:0] zext_ln23_reg_430;
wire   [10:0] shl_ln_fu_228_p3;
reg   [10:0] shl_ln_reg_438;
wire   [31:0] add_ln27_fu_292_p2;
reg   [31:0] add_ln27_reg_458;
wire   [7:0] add_ln25_fu_316_p2;
reg   [7:0] add_ln25_reg_469;
wire   [31:0] add_ln27_3_fu_356_p2;
reg   [31:0] add_ln27_3_reg_483;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_252_p1;
wire   [63:0] zext_ln27_1_fu_265_p1;
wire   [63:0] zext_ln27_2_fu_311_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln27_3_fu_345_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln25_fu_381_p1;
reg   [63:0] reuse_addr_reg_fu_74;
wire    ap_loop_init;
reg   [31:0] reuse_reg_fu_78;
wire   [31:0] add_ln27_4_fu_386_p2;
reg   [6:0] radixID_fu_82;
wire   [6:0] add_ln25_1_fu_362_p2;
reg   [6:0] ap_sig_allocacmp_radixID_1;
reg    sum_0_ce1_local;
reg    sum_0_we0_local;
reg    sum_0_ce0_local;
reg    bucket_3_ce1_local;
reg   [8:0] bucket_3_address1_local;
reg    bucket_3_ce0_local;
reg   [8:0] bucket_3_address0_local;
reg    sum_1_we0_local;
reg    sum_1_ce0_local;
reg    sum_2_we0_local;
wire   [31:0] add_ln27_1_fu_350_p2;
reg    sum_2_ce0_local;
reg    sum_3_we0_local;
reg    sum_3_ce0_local;
wire   [4:0] lshr_ln1_fu_213_p4;
wire   [10:0] add_ln26_fu_236_p2;
wire   [8:0] lshr_ln2_fu_242_p4;
wire   [8:0] or_ln_fu_257_p3;
wire   [0:0] addr_cmp_fu_279_p2;
wire   [31:0] reuse_select_fu_284_p3;
wire   [8:0] shl_ln1_fu_298_p3;
wire   [8:0] add_ln27_2_fu_305_p2;
wire   [7:0] zext_ln15_fu_270_p1;
wire   [10:0] add_ln26_1_fu_330_p2;
wire   [8:0] lshr_ln27_1_fu_335_p4;
wire   [4:0] lshr_ln3_fu_372_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage0;
reg    ap_idle_pp0_0to0;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 reuse_addr_reg_fu_74 = 64'd0;
#0 reuse_reg_fu_78 = 32'd0;
#0 radixID_fu_82 = 7'd0;
#0 ap_done_reg = 1'b0;
end
ss_sort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        radixID_fu_82 <= 7'd1;
    end else if (((tmp_reg_474 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        radixID_fu_82 <= add_ln25_1_fu_362_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            reuse_addr_reg_fu_74 <= 64'd18446744073709551615;
        end else if (((tmp_reg_474 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            reuse_addr_reg_fu_74 <= zext_ln25_fu_381_p1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            reuse_reg_fu_78 <= 32'd0;
        end else if (((tmp_reg_474 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            reuse_reg_fu_78 <= add_ln27_4_fu_386_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln25_reg_469 <= add_ln25_fu_316_p2;
        add_ln27_reg_458 <= add_ln27_fu_292_p2;
        tmp_reg_474 <= add_ln25_fu_316_p2[32'd7];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln27_3_reg_483 <= add_ln27_3_fu_356_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        radixID_1_reg_423 <= ap_sig_allocacmp_radixID_1;
        shl_ln_reg_438[10 : 4] <= shl_ln_fu_228_p3[10 : 4];
        zext_ln23_reg_430[4 : 0] <= zext_ln23_fu_223_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_191 <= bucket_3_q0;
    end
end
always @ (*) begin
    if (((tmp_reg_474 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_474 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_radixID_1 = 7'd1;
    end else begin
        ap_sig_allocacmp_radixID_1 = radixID_fu_82;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            bucket_3_address0_local = zext_ln27_3_fu_345_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            bucket_3_address0_local = zext_ln27_1_fu_265_p1;
        end else begin
            bucket_3_address0_local = 'bx;
        end
    end else begin
        bucket_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            bucket_3_address1_local = zext_ln27_2_fu_311_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            bucket_3_address1_local = zext_ln27_fu_252_p1;
        end else begin
            bucket_3_address1_local = 'bx;
        end
    end else begin
        bucket_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        bucket_3_ce0_local = 1'b1;
    end else begin
        bucket_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        bucket_3_ce1_local = 1'b1;
    end else begin
        bucket_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sum_0_ce0_local = 1'b1;
    end else begin
        sum_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sum_0_ce1_local = 1'b1;
    end else begin
        sum_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_474 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sum_0_we0_local = 1'b1;
    end else begin
        sum_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sum_1_ce0_local = 1'b1;
    end else begin
        sum_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sum_1_we0_local = 1'b1;
    end else begin
        sum_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sum_2_ce0_local = 1'b1;
    end else begin
        sum_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sum_2_we0_local = 1'b1;
    end else begin
        sum_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sum_3_ce0_local = 1'b1;
    end else begin
        sum_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sum_3_we0_local = 1'b1;
    end else begin
        sum_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln25_1_fu_362_p2 = (radixID_1_reg_423 + 7'd4);
assign add_ln25_fu_316_p2 = (zext_ln15_fu_270_p1 + 8'd3);
assign add_ln26_1_fu_330_p2 = (shl_ln_reg_438 + 11'd47);
assign add_ln26_fu_236_p2 = ($signed(shl_ln_fu_228_p3) + $signed(11'd2047));
assign add_ln27_1_fu_350_p2 = (reg_191 + add_ln27_reg_458);
assign add_ln27_2_fu_305_p2 = (shl_ln1_fu_298_p3 + 9'd7);
assign add_ln27_3_fu_356_p2 = (bucket_3_q1 + add_ln27_1_fu_350_p2);
assign add_ln27_4_fu_386_p2 = (reg_191 + add_ln27_3_reg_483);
assign add_ln27_fu_292_p2 = (bucket_3_q1 + reuse_select_fu_284_p3);
assign addr_cmp_fu_279_p2 = ((reuse_addr_reg_fu_74 == zext_ln23_reg_430) ? 1'b1 : 1'b0);
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
assign bucket_3_address0 = bucket_3_address0_local;
assign bucket_3_address1 = bucket_3_address1_local;
assign bucket_3_ce0 = bucket_3_ce0_local;
assign bucket_3_ce1 = bucket_3_ce1_local;
assign lshr_ln1_fu_213_p4 = {{ap_sig_allocacmp_radixID_1[6:2]}};
assign lshr_ln27_1_fu_335_p4 = {{add_ln26_1_fu_330_p2[10:2]}};
assign lshr_ln2_fu_242_p4 = {{add_ln26_fu_236_p2[10:2]}};
assign lshr_ln3_fu_372_p4 = {{add_ln25_reg_469[6:2]}};
assign or_ln_fu_257_p3 = {{ap_sig_allocacmp_radixID_1}, {2'd3}};
assign reuse_select_fu_284_p3 = ((addr_cmp_fu_279_p2[0:0] == 1'b1) ? reuse_reg_fu_78 : sum_0_q1);
assign shl_ln1_fu_298_p3 = {{radixID_1_reg_423}, {2'd0}};
assign shl_ln_fu_228_p3 = {{ap_sig_allocacmp_radixID_1}, {4'd0}};
assign sum_0_address0 = zext_ln25_fu_381_p1;
assign sum_0_address1 = zext_ln23_fu_223_p1;
assign sum_0_ce0 = sum_0_ce0_local;
assign sum_0_ce1 = sum_0_ce1_local;
assign sum_0_d0 = add_ln27_4_fu_386_p2;
assign sum_0_we0 = sum_0_we0_local;
assign sum_1_address0 = zext_ln23_reg_430;
assign sum_1_ce0 = sum_1_ce0_local;
assign sum_1_d0 = add_ln27_reg_458;
assign sum_1_we0 = sum_1_we0_local;
assign sum_2_address0 = zext_ln23_reg_430;
assign sum_2_ce0 = sum_2_ce0_local;
assign sum_2_d0 = add_ln27_1_fu_350_p2;
assign sum_2_we0 = sum_2_we0_local;
assign sum_3_address0 = zext_ln23_reg_430;
assign sum_3_ce0 = sum_3_ce0_local;
assign sum_3_d0 = add_ln27_3_reg_483;
assign sum_3_we0 = sum_3_we0_local;
assign zext_ln15_fu_270_p1 = radixID_1_reg_423;
assign zext_ln23_fu_223_p1 = lshr_ln1_fu_213_p4;
assign zext_ln25_fu_381_p1 = lshr_ln3_fu_372_p4;
assign zext_ln27_1_fu_265_p1 = or_ln_fu_257_p3;
assign zext_ln27_2_fu_311_p1 = add_ln27_2_fu_305_p2;
assign zext_ln27_3_fu_345_p1 = lshr_ln27_1_fu_335_p4;
assign zext_ln27_fu_252_p1 = lshr_ln2_fu_242_p4;
always @ (posedge ap_clk) begin
    zext_ln23_reg_430[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    shl_ln_reg_438[3:0] <= 4'b0000;
end
endmodule 
