
module needwun_needwun_Pipeline_fill_in (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,M_load,SEQA_address0,SEQA_ce0,SEQA_q0,SEQB_load,empty_9,M_address0,M_ce0,M_we0,M_d0,M_q0,M_address1,M_ce1,M_q1,empty,ptr_address0,ptr_ce0,ptr_we0,ptr_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] M_load;
output  [6:0] SEQA_address0;
output   SEQA_ce0;
input  [7:0] SEQA_q0;
input  [7:0] SEQB_load;
input  [14:0] empty_9;
output  [14:0] M_address0;
output   M_ce0;
output   M_we0;
output  [31:0] M_d0;
input  [31:0] M_q0;
output  [14:0] M_address1;
output   M_ce1;
input  [31:0] M_q1;
input  [14:0] empty;
output  [14:0] ptr_address0;
output   ptr_ce0;
output   ptr_we0;
output  [7:0] ptr_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln29_reg_413;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [7:0] a_idx_reg_408;
wire   [0:0] icmp_ln29_fu_180_p2;
wire   [7:0] add_ln30_fu_190_p2;
reg   [7:0] add_ln30_reg_417;
wire   [14:0] add_ln45_fu_212_p2;
reg   [14:0] add_ln45_reg_432;
reg   [14:0] add_ln45_reg_432_pp0_iter1_reg;
wire   [0:0] icmp_ln30_fu_221_p2;
reg   [0:0] icmp_ln30_reg_437;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] zext_ln39_fu_231_p1;
reg   [63:0] zext_ln39_reg_442;
reg   [31:0] M_load_2_reg_452;
wire   [31:0] up_left_fu_275_p2;
reg   [31:0] up_left_reg_457;
wire   [31:0] up_fu_281_p2;
reg   [31:0] up_reg_463;
wire   [31:0] left_fu_286_p2;
reg   [31:0] left_reg_468;
wire   [31:0] select_ln43_fu_298_p3;
reg   [31:0] select_ln43_reg_473;
wire   [63:0] zext_ln45_fu_317_p1;
reg   [63:0] zext_ln45_reg_479;
wire   [0:0] icmp_ln46_fu_331_p2;
reg   [0:0] icmp_ln46_reg_484;
wire   [0:0] icmp_ln48_fu_336_p2;
reg   [0:0] icmp_ln48_reg_490;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln30_fu_196_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln40_fu_207_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] reuse_addr_reg_fu_58;
wire    ap_loop_init;
reg   [31:0] reuse_reg_fu_62;
wire   [31:0] max_fu_310_p3;
reg   [7:0] a_idx_2_fu_66;
wire   [7:0] add_ln29_fu_236_p2;
reg   [7:0] ap_sig_allocacmp_a_idx;
reg   [31:0] store_forwarded_fu_70;
reg    SEQA_ce0_local;
reg    M_ce0_local;
reg   [14:0] M_address0_local;
reg    M_ce1_local;
reg    M_we0_local;
reg    ptr_we0_local;
wire   [7:0] zext_ln47_fu_365_p1;
reg    ptr_ce0_local;
wire   [14:0] zext_ln29_fu_186_p1;
wire   [14:0] add_ln40_fu_201_p2;
wire   [14:0] zext_ln30_1_fu_218_p1;
wire   [14:0] add_ln39_fu_226_p2;
wire   [0:0] addr_cmp_fu_262_p2;
wire   [31:0] reuse_select_fu_267_p3;
wire   [31:0] select_ln39_fu_249_p3;
wire   [0:0] icmp_ln43_fu_292_p2;
wire   [0:0] icmp_ln43_1_fu_306_p2;
wire   [0:0] empty_21_fu_353_p2;
wire   [6:0] select_ln48_fu_346_p3;
wire   [6:0] storemerge2_fu_357_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage0;
reg    ap_idle_pp0_0to0;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to2;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 reuse_addr_reg_fu_58 = 64'd0;
#0 reuse_reg_fu_62 = 32'd0;
#0 a_idx_2_fu_66 = 8'd0;
#0 store_forwarded_fu_70 = 32'd0;
#0 ap_done_reg = 1'b0;
end
needwun_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        a_idx_2_fu_66 <= 8'd1;
    end else if (((icmp_ln29_reg_413 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_idx_2_fu_66 <= add_ln29_fu_236_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        reuse_addr_reg_fu_58 <= 64'd18446744073709551615;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reuse_addr_reg_fu_58 <= zext_ln45_fu_317_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        reuse_reg_fu_62 <= 32'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reuse_reg_fu_62 <= max_fu_310_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        store_forwarded_fu_70 <= M_load;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        store_forwarded_fu_70 <= max_fu_310_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_load_2_reg_452 <= M_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_idx_reg_408 <= ap_sig_allocacmp_a_idx;
        add_ln30_reg_417 <= add_ln30_fu_190_p2;
        add_ln45_reg_432 <= add_ln45_fu_212_p2;
        add_ln45_reg_432_pp0_iter1_reg <= add_ln45_reg_432;
        icmp_ln29_reg_413 <= icmp_ln29_fu_180_p2;
        left_reg_468 <= left_fu_286_p2;
        select_ln43_reg_473 <= select_ln43_fu_298_p3;
        up_left_reg_457 <= up_left_fu_275_p2;
        up_reg_463 <= up_fu_281_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln30_reg_437 <= icmp_ln30_fu_221_p2;
        icmp_ln46_reg_484 <= icmp_ln46_fu_331_p2;
        icmp_ln48_reg_490 <= icmp_ln48_fu_336_p2;
        zext_ln39_reg_442[14 : 0] <= zext_ln39_fu_231_p1[14 : 0];
        zext_ln45_reg_479[14 : 0] <= zext_ln45_fu_317_p1[14 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_address0_local = zext_ln45_fu_317_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_address0_local = zext_ln40_fu_207_p1;
    end else begin
        M_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_ce0_local = 1'b1;
    end else begin
        M_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_ce1_local = 1'b1;
    end else begin
        M_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_we0_local = 1'b1;
    end else begin
        M_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        SEQA_ce0_local = 1'b1;
    end else begin
        SEQA_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln29_reg_413 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln29_reg_413 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_a_idx = 8'd1;
    end else begin
        ap_sig_allocacmp_a_idx = a_idx_2_fu_66;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ptr_ce0_local = 1'b1;
    end else begin
        ptr_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ptr_we0_local = 1'b1;
    end else begin
        ptr_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign M_address0 = M_address0_local;
assign M_address1 = zext_ln39_fu_231_p1;
assign M_ce0 = M_ce0_local;
assign M_ce1 = M_ce1_local;
assign M_d0 = max_fu_310_p3;
assign M_we0 = M_we0_local;
assign SEQA_address0 = zext_ln30_fu_196_p1;
assign SEQA_ce0 = SEQA_ce0_local;
assign add_ln29_fu_236_p2 = (a_idx_reg_408 + 8'd1);
assign add_ln30_fu_190_p2 = ($signed(ap_sig_allocacmp_a_idx) + $signed(8'd255));
assign add_ln39_fu_226_p2 = (zext_ln30_1_fu_218_p1 + empty_9);
assign add_ln40_fu_201_p2 = (zext_ln29_fu_186_p1 + empty_9);
assign add_ln45_fu_212_p2 = (zext_ln29_fu_186_p1 + empty);
assign addr_cmp_fu_262_p2 = ((reuse_addr_reg_fu_58 == zext_ln39_reg_442) ? 1'b1 : 1'b0);
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
assign empty_21_fu_353_p2 = (icmp_ln48_reg_490 | icmp_ln46_reg_484);
assign icmp_ln29_fu_180_p2 = ((ap_sig_allocacmp_a_idx == 8'd129) ? 1'b1 : 1'b0);
assign icmp_ln30_fu_221_p2 = ((SEQA_q0 == SEQB_load) ? 1'b1 : 1'b0);
assign icmp_ln43_1_fu_306_p2 = (($signed(up_left_reg_457) > $signed(select_ln43_reg_473)) ? 1'b1 : 1'b0);
assign icmp_ln43_fu_292_p2 = (($signed(up_fu_281_p2) > $signed(left_fu_286_p2)) ? 1'b1 : 1'b0);
assign icmp_ln46_fu_331_p2 = ((max_fu_310_p3 == left_reg_468) ? 1'b1 : 1'b0);
assign icmp_ln48_fu_336_p2 = ((max_fu_310_p3 == up_reg_463) ? 1'b1 : 1'b0);
assign left_fu_286_p2 = ($signed(store_forwarded_fu_70) + $signed(32'd4294967295));
assign max_fu_310_p3 = ((icmp_ln43_1_fu_306_p2[0:0] == 1'b1) ? up_left_reg_457 : select_ln43_reg_473);
assign ptr_address0 = zext_ln45_reg_479;
assign ptr_ce0 = ptr_ce0_local;
assign ptr_d0 = zext_ln47_fu_365_p1;
assign ptr_we0 = ptr_we0_local;
assign reuse_select_fu_267_p3 = ((addr_cmp_fu_262_p2[0:0] == 1'b1) ? reuse_reg_fu_62 : M_q1);
assign select_ln39_fu_249_p3 = ((icmp_ln30_reg_437[0:0] == 1'b1) ? 32'd1 : 32'd4294967295);
assign select_ln43_fu_298_p3 = ((icmp_ln43_fu_292_p2[0:0] == 1'b1) ? up_fu_281_p2 : left_fu_286_p2);
assign select_ln48_fu_346_p3 = ((icmp_ln46_reg_484[0:0] == 1'b1) ? 7'd60 : 7'd94);
assign storemerge2_fu_357_p3 = ((empty_21_fu_353_p2[0:0] == 1'b1) ? select_ln48_fu_346_p3 : 7'd92);
assign up_fu_281_p2 = ($signed(M_load_2_reg_452) + $signed(32'd4294967295));
assign up_left_fu_275_p2 = (reuse_select_fu_267_p3 + select_ln39_fu_249_p3);
assign zext_ln29_fu_186_p1 = ap_sig_allocacmp_a_idx;
assign zext_ln30_1_fu_218_p1 = add_ln30_reg_417;
assign zext_ln30_fu_196_p1 = add_ln30_fu_190_p2;
assign zext_ln39_fu_231_p1 = add_ln39_fu_226_p2;
assign zext_ln40_fu_207_p1 = add_ln40_fu_201_p2;
assign zext_ln45_fu_317_p1 = add_ln45_reg_432_pp0_iter1_reg;
assign zext_ln47_fu_365_p1 = storemerge2_fu_357_p3;
always @ (posedge ap_clk) begin
    zext_ln39_reg_442[63:15] <= 49'b0000000000000000000000000000000000000000000000000;
    zext_ln45_reg_479[63:15] <= 49'b0000000000000000000000000000000000000000000000000;
end
endmodule 
