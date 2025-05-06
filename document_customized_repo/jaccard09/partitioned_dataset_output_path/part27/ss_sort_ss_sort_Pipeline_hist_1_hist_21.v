
module ss_sort_ss_sort_Pipeline_hist_1_hist_21 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,b_0_address0,b_0_ce0,b_0_q0,b_1_address0,b_1_ce0,b_1_q0,zext_ln63,bucket_0_address0,bucket_0_ce0,bucket_0_we0,bucket_0_d0,bucket_0_q0,bucket_1_address0,bucket_1_ce0,bucket_1_we0,bucket_1_d0,bucket_1_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] b_0_address0;
output   b_0_ce0;
input  [31:0] b_0_q0;
output  [9:0] b_1_address0;
output   b_1_ce0;
input  [31:0] b_1_q0;
input  [4:0] zext_ln63;
output  [9:0] bucket_0_address0;
output   bucket_0_ce0;
output   bucket_0_we0;
output  [31:0] bucket_0_d0;
input  [31:0] bucket_0_q0;
output  [9:0] bucket_1_address0;
output   bucket_1_ce0;
output   bucket_1_we0;
output  [31:0] bucket_1_d0;
input  [31:0] bucket_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] icmp_ln54_reg_343;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] zext_ln63_cast_fu_134_p1;
reg   [31:0] zext_ln63_cast_reg_338;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln54_fu_156_p2;
wire   [8:0] empty_fu_207_p1;
reg   [8:0] empty_reg_347;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] empty_20_fu_211_p1;
reg   [0:0] empty_20_reg_352;
reg   [0:0] empty_20_reg_352_pp0_iter1_reg;
wire   [0:0] trunc_ln55_fu_215_p1;
reg   [0:0] trunc_ln55_reg_357;
wire   [31:0] select_ln57_fu_257_p3;
reg   [31:0] select_ln57_reg_372;
wire    ap_block_pp0_stage2_11001;
reg   [9:0] lshr_ln52_1_reg_377;
reg   [9:0] bucket_0_addr_reg_382;
reg   [9:0] bucket_1_addr_reg_387;
wire   [31:0] add_ln58_fu_311_p2;
reg   [31:0] add_ln58_reg_392;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln57_fu_235_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln52_fu_299_p1;
reg   [2:0] i_fu_64;
wire   [2:0] add_ln55_fu_241_p2;
wire    ap_loop_init;
reg   [9:0] blockID_fu_68;
wire   [9:0] select_ln54_fu_199_p3;
reg   [11:0] indvar_flatten6_fu_72;
wire   [11:0] add_ln54_fu_162_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten6_load;
wire    ap_block_pp0_stage0;
reg    b_0_ce0_local;
reg    b_1_ce0_local;
reg    bucket_0_ce0_local;
reg   [9:0] bucket_0_address0_local;
reg    bucket_0_we0_local;
reg    bucket_1_ce0_local;
reg   [9:0] bucket_1_address0_local;
reg    bucket_1_we0_local;
wire   [0:0] icmp_ln55_fu_179_p2;
wire   [9:0] add_ln54_1_fu_193_p2;
wire   [2:0] select_ln52_fu_185_p3;
wire   [0:0] tmp_fu_219_p3;
wire   [9:0] add_ln57_2_fu_227_p3;
wire    ap_block_pp0_stage2;
wire   [31:0] ashr_ln57_fu_267_p2;
wire   [1:0] trunc_ln57_fu_271_p1;
wire   [10:0] or_ln57_1_fu_275_p3;
wire   [10:0] blockID_1_cast_cast10_fu_264_p1;
wire   [10:0] bucket_indx_fu_283_p2;
wire   [31:0] select_ln58_fu_304_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage0;
reg    ap_idle_pp0_0to0;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_64 = 3'd0;
#0 blockID_fu_68 = 10'd0;
#0 indvar_flatten6_fu_72 = 12'd0;
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        blockID_fu_68 <= 10'd0;
    end else if (((icmp_ln54_reg_343 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        blockID_fu_68 <= select_ln54_fu_199_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_fu_64 <= 3'd0;
    end else if (((icmp_ln54_reg_343 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_64 <= add_ln55_fu_241_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln54_fu_156_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten6_fu_72 <= add_ln54_fu_162_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten6_fu_72 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln58_reg_392 <= add_ln58_fu_311_p2;
        select_ln57_reg_372 <= select_ln57_fu_257_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_0_addr_reg_382 <= zext_ln52_fu_299_p1;
        bucket_1_addr_reg_387 <= zext_ln52_fu_299_p1;
        empty_20_reg_352 <= empty_20_fu_211_p1;
        empty_20_reg_352_pp0_iter1_reg <= empty_20_reg_352;
        empty_reg_347 <= empty_fu_207_p1;
        trunc_ln55_reg_357 <= trunc_ln55_fu_215_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln54_reg_343 <= icmp_ln54_fu_156_p2;
        lshr_ln52_1_reg_377 <= {{bucket_indx_fu_283_p2[10:1]}};
        zext_ln63_cast_reg_338[4 : 0] <= zext_ln63_cast_fu_134_p1[4 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln54_reg_343 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln54_reg_343 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten6_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten6_load = indvar_flatten6_fu_72;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        b_0_ce0_local = 1'b1;
    end else begin
        b_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        b_1_ce0_local = 1'b1;
    end else begin
        b_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_0_address0_local = bucket_0_addr_reg_382;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_0_address0_local = zext_ln52_fu_299_p1;
    end else begin
        bucket_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_0_ce0_local = 1'b1;
    end else begin
        bucket_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_20_reg_352_pp0_iter1_reg == 1'd1))) begin
        bucket_0_we0_local = 1'b1;
    end else begin
        bucket_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_1_address0_local = bucket_1_addr_reg_387;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_1_address0_local = zext_ln52_fu_299_p1;
    end else begin
        bucket_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_1_ce0_local = 1'b1;
    end else begin
        bucket_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_20_reg_352_pp0_iter1_reg == 1'd0))) begin
        bucket_1_we0_local = 1'b1;
    end else begin
        bucket_1_we0_local = 1'b0;
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
assign add_ln54_1_fu_193_p2 = (blockID_fu_68 + 10'd1);
assign add_ln54_fu_162_p2 = (ap_sig_allocacmp_indvar_flatten6_load + 12'd1);
assign add_ln55_fu_241_p2 = (select_ln52_fu_185_p3 + 3'd1);
assign add_ln57_2_fu_227_p3 = {{empty_fu_207_p1}, {tmp_fu_219_p3}};
assign add_ln58_fu_311_p2 = (select_ln58_fu_304_p3 + 32'd1);
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
assign ashr_ln57_fu_267_p2 = $signed(select_ln57_reg_372) >>> zext_ln63_cast_reg_338;
assign b_0_address0 = zext_ln57_fu_235_p1;
assign b_0_ce0 = b_0_ce0_local;
assign b_1_address0 = zext_ln57_fu_235_p1;
assign b_1_ce0 = b_1_ce0_local;
assign blockID_1_cast_cast10_fu_264_p1 = empty_reg_347;
assign bucket_0_address0 = bucket_0_address0_local;
assign bucket_0_ce0 = bucket_0_ce0_local;
assign bucket_0_d0 = add_ln58_reg_392;
assign bucket_0_we0 = bucket_0_we0_local;
assign bucket_1_address0 = bucket_1_address0_local;
assign bucket_1_ce0 = bucket_1_ce0_local;
assign bucket_1_d0 = add_ln58_reg_392;
assign bucket_1_we0 = bucket_1_we0_local;
assign bucket_indx_fu_283_p2 = (or_ln57_1_fu_275_p3 + blockID_1_cast_cast10_fu_264_p1);
assign empty_20_fu_211_p1 = select_ln54_fu_199_p3[0:0];
assign empty_fu_207_p1 = select_ln54_fu_199_p3[8:0];
assign icmp_ln54_fu_156_p2 = ((ap_sig_allocacmp_indvar_flatten6_load == 12'd2048) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_179_p2 = ((i_fu_64 == 3'd4) ? 1'b1 : 1'b0);
assign or_ln57_1_fu_275_p3 = {{trunc_ln57_fu_271_p1}, {9'd1}};
assign select_ln52_fu_185_p3 = ((icmp_ln55_fu_179_p2[0:0] == 1'b1) ? 3'd0 : i_fu_64);
assign select_ln54_fu_199_p3 = ((icmp_ln55_fu_179_p2[0:0] == 1'b1) ? add_ln54_1_fu_193_p2 : blockID_fu_68);
assign select_ln57_fu_257_p3 = ((trunc_ln55_reg_357[0:0] == 1'b1) ? b_1_q0 : b_0_q0);
assign select_ln58_fu_304_p3 = ((empty_20_reg_352_pp0_iter1_reg[0:0] == 1'b1) ? bucket_0_q0 : bucket_1_q0);
assign tmp_fu_219_p3 = select_ln52_fu_185_p3[32'd1];
assign trunc_ln55_fu_215_p1 = select_ln52_fu_185_p3[0:0];
assign trunc_ln57_fu_271_p1 = ashr_ln57_fu_267_p2[1:0];
assign zext_ln52_fu_299_p1 = lshr_ln52_1_reg_377;
assign zext_ln57_fu_235_p1 = add_ln57_2_fu_227_p3;
assign zext_ln63_cast_fu_134_p1 = zext_ln63;
always @ (posedge ap_clk) begin
    zext_ln63_cast_reg_338[31:5] <= 27'b000000000000000000000000000;
end
endmodule 
