module ss_sort_ss_sort_Pipeline_hist_1_hist_21 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,b_address0,b_ce0,b_q0,zext_ln63,bucket_address0,bucket_ce0,bucket_we0,bucket_d0,bucket_address1,bucket_ce1,bucket_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] b_address0;
output   b_ce0;
input  [31:0] b_q0;
input  [4:0] zext_ln63;
output  [10:0] bucket_address0;
output   bucket_ce0;
output   bucket_we0;
output  [31:0] bucket_d0;
output  [10:0] bucket_address1;
output   bucket_ce1;
input  [31:0] bucket_q1;
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
reg   [0:0] icmp_ln54_reg_338;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] zext_ln63_cast_fu_114_p1;
reg   [31:0] zext_ln63_cast_reg_333;
wire   [0:0] icmp_ln54_fu_146_p2;
reg   [0:0] icmp_ln54_reg_338_pp0_iter1_reg;
reg   [2:0] i_load_reg_342;
reg   [9:0] blockID_load_reg_347;
wire   [0:0] icmp_ln55_fu_164_p2;
reg   [0:0] icmp_ln55_reg_352;
wire   [9:0] add_ln54_1_fu_170_p2;
reg   [9:0] add_ln54_1_reg_358;
wire   [8:0] empty_fu_192_p1;
reg   [8:0] empty_reg_363;
wire    ap_block_pp0_stage1_11001;
reg   [8:0] empty_reg_363_pp0_iter1_reg;
reg   [31:0] b_load_reg_373;
wire   [1:0] trunc_ln57_fu_239_p1;
reg   [1:0] trunc_ln57_reg_378;
reg   [10:0] bucket_addr_2_reg_383;
wire   [0:0] addr_cmp_fu_267_p2;
reg   [0:0] addr_cmp_reg_389;
wire   [31:0] add_ln58_fu_288_p2;
reg   [31:0] add_ln58_reg_394;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln57_fu_214_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln58_fu_259_p1;
wire    ap_block_pp0_stage0;
reg   [63:0] reuse_addr_reg_fu_58;
wire    ap_loop_init;
reg   [31:0] reuse_reg_fu_62;
reg   [2:0] i_fu_66;
wire   [2:0] add_ln55_fu_219_p2;
reg   [2:0] ap_sig_allocacmp_i_load;
reg   [9:0] blockID_fu_70;
wire   [9:0] select_ln54_fu_187_p3;
reg   [9:0] ap_sig_allocacmp_blockID_load;
reg   [11:0] indvar_flatten6_fu_74;
wire   [11:0] add_ln54_fu_152_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten6_load;
reg    b_ce0_local;
reg    bucket_ce1_local;
reg    bucket_we0_local;
reg    bucket_ce0_local;
wire   [2:0] select_ln52_fu_181_p3;
wire   [10:0] zext_ln55_1_fu_204_p1;
wire   [10:0] tmp_1_fu_196_p3;
wire   [10:0] add_ln56_fu_208_p2;
wire   [31:0] ashr_ln57_fu_235_p2;
wire   [10:0] or_ln_fu_246_p3;
wire   [10:0] zext_ln55_fu_243_p1;
wire   [10:0] bucket_indx_fu_253_p2;
wire   [31:0] reuse_select_fu_281_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage0;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [1:0] ap_NS_fsm;
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
#0 reuse_addr_reg_fu_58 = 64'd0;
#0 reuse_reg_fu_62 = 32'd0;
#0 i_fu_66 = 3'd0;
#0 blockID_fu_70 = 10'd0;
#0 indvar_flatten6_fu_74 = 12'd0;
#0 ap_done_reg = 1'b0;
end
ss_sort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        blockID_fu_70 <= 10'd0;
    end else if (((icmp_ln54_reg_338 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        blockID_fu_70 <= select_ln54_fu_187_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_fu_66 <= 3'd0;
    end else if (((icmp_ln54_reg_338 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_66 <= add_ln55_fu_219_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln54_fu_146_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten6_fu_74 <= add_ln54_fu_152_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten6_fu_74 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            reuse_addr_reg_fu_58 <= 64'd18446744073709551615;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            reuse_addr_reg_fu_58 <= zext_ln58_fu_259_p1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            reuse_reg_fu_62 <= 32'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            reuse_reg_fu_62 <= add_ln58_reg_394;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln54_1_reg_358 <= add_ln54_1_fu_170_p2;
        addr_cmp_reg_389 <= addr_cmp_fu_267_p2;
        b_load_reg_373 <= b_q0;
        blockID_load_reg_347 <= ap_sig_allocacmp_blockID_load;
        bucket_addr_2_reg_383 <= zext_ln58_fu_259_p1;
        i_load_reg_342 <= ap_sig_allocacmp_i_load;
        icmp_ln54_reg_338 <= icmp_ln54_fu_146_p2;
        icmp_ln54_reg_338_pp0_iter1_reg <= icmp_ln54_reg_338;
        icmp_ln55_reg_352 <= icmp_ln55_fu_164_p2;
        zext_ln63_cast_reg_333[4 : 0] <= zext_ln63_cast_fu_114_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln58_reg_394 <= add_ln58_fu_288_p2;
        empty_reg_363 <= empty_fu_192_p1;
        empty_reg_363_pp0_iter1_reg <= empty_reg_363;
        trunc_ln57_reg_378 <= trunc_ln57_fu_239_p1;
    end
end
always @ (*) begin
    if (((icmp_ln54_reg_338 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln54_reg_338_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_blockID_load = 10'd0;
    end else begin
        ap_sig_allocacmp_blockID_load = blockID_fu_70;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_load = 3'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_66;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten6_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten6_load = indvar_flatten6_fu_74;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_ce0_local = 1'b1;
    end else begin
        bucket_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_ce1_local = 1'b1;
    end else begin
        bucket_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_we0_local = 1'b1;
    end else begin
        bucket_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln54_1_fu_170_p2 = (ap_sig_allocacmp_blockID_load + 10'd1);
assign add_ln54_fu_152_p2 = (ap_sig_allocacmp_indvar_flatten6_load + 12'd1);
assign add_ln55_fu_219_p2 = (select_ln52_fu_181_p3 + 3'd1);
assign add_ln56_fu_208_p2 = (zext_ln55_1_fu_204_p1 + tmp_1_fu_196_p3);
assign add_ln58_fu_288_p2 = (reuse_select_fu_281_p3 + 32'd1);
assign addr_cmp_fu_267_p2 = ((reuse_addr_reg_fu_58 == zext_ln58_fu_259_p1) ? 1'b1 : 1'b0);
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
assign ashr_ln57_fu_235_p2 = $signed(b_load_reg_373) >>> zext_ln63_cast_reg_333;
assign b_address0 = zext_ln57_fu_214_p1;
assign b_ce0 = b_ce0_local;
assign bucket_address0 = bucket_addr_2_reg_383;
assign bucket_address1 = zext_ln58_fu_259_p1;
assign bucket_ce0 = bucket_ce0_local;
assign bucket_ce1 = bucket_ce1_local;
assign bucket_d0 = add_ln58_reg_394;
assign bucket_indx_fu_253_p2 = (or_ln_fu_246_p3 + zext_ln55_fu_243_p1);
assign bucket_we0 = bucket_we0_local;
assign empty_fu_192_p1 = select_ln54_fu_187_p3[8:0];
assign icmp_ln54_fu_146_p2 = ((ap_sig_allocacmp_indvar_flatten6_load == 12'd2048) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_164_p2 = ((ap_sig_allocacmp_i_load == 3'd4) ? 1'b1 : 1'b0);
assign or_ln_fu_246_p3 = {{trunc_ln57_reg_378}, {9'd1}};
assign reuse_select_fu_281_p3 = ((addr_cmp_reg_389[0:0] == 1'b1) ? reuse_reg_fu_62 : bucket_q1);
assign select_ln52_fu_181_p3 = ((icmp_ln55_reg_352[0:0] == 1'b1) ? 3'd0 : i_load_reg_342);
assign select_ln54_fu_187_p3 = ((icmp_ln55_reg_352[0:0] == 1'b1) ? add_ln54_1_reg_358 : blockID_load_reg_347);
assign tmp_1_fu_196_p3 = {{empty_fu_192_p1}, {2'd0}};
assign trunc_ln57_fu_239_p1 = ashr_ln57_fu_235_p2[1:0];
assign zext_ln55_1_fu_204_p1 = select_ln52_fu_181_p3;
assign zext_ln55_fu_243_p1 = empty_reg_363_pp0_iter1_reg;
assign zext_ln57_fu_214_p1 = add_ln56_fu_208_p2;
assign zext_ln58_fu_259_p1 = bucket_indx_fu_253_p2;
assign zext_ln63_cast_fu_114_p1 = zext_ln63;
always @ (posedge ap_clk) begin
    zext_ln63_cast_reg_333[31:5] <= 27'b000000000000000000000000000;
end
endmodule 