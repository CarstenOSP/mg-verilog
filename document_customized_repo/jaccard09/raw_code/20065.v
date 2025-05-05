module ss_sort_ss_sort_Pipeline_local_1_local_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,bucket_1_address0,bucket_1_ce0,bucket_1_we0,bucket_1_d0,bucket_1_q0,bucket_1_address1,bucket_1_ce1,bucket_1_q1,bucket_0_address0,bucket_0_ce0,bucket_0_we0,bucket_0_d0,bucket_0_q0,bucket_0_address1,bucket_0_ce1,bucket_0_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] bucket_1_address0;
output   bucket_1_ce0;
output   bucket_1_we0;
output  [31:0] bucket_1_d0;
input  [31:0] bucket_1_q0;
output  [9:0] bucket_1_address1;
output   bucket_1_ce1;
input  [31:0] bucket_1_q1;
output  [9:0] bucket_0_address0;
output   bucket_0_ce0;
output   bucket_0_we0;
output  [31:0] bucket_0_d0;
input  [31:0] bucket_0_q0;
output  [9:0] bucket_0_address1;
output   bucket_0_ce1;
input  [31:0] bucket_0_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln13_fu_132_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] icmp_ln13_reg_303;
wire    ap_block_pp0_stage0_11001;
reg   [4:0] i_load_reg_307;
wire   [0:0] icmp_ln14_fu_147_p2;
reg   [0:0] icmp_ln14_reg_312;
wire   [0:0] trunc_ln14_1_fu_184_p1;
reg   [0:0] trunc_ln14_1_reg_318;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [9:0] bucket_0_addr_32_reg_334;
reg   [9:0] bucket_1_addr_32_reg_339;
wire   [31:0] add_ln16_1_fu_276_p2;
reg   [31:0] add_ln16_1_reg_344;
wire    ap_block_pp0_stage2_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln16_1_fu_240_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln16_fu_210_p1;
reg   [4:0] i_fu_52;
wire   [4:0] add_ln14_fu_246_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_i_load;
wire    ap_block_pp0_stage0;
reg   [7:0] radixID_fu_56;
wire   [7:0] select_ln13_fu_173_p3;
reg   [10:0] indvar_flatten_fu_60;
wire   [10:0] add_ln13_fu_138_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten_load;
reg    bucket_0_ce1_local;
reg    bucket_0_ce0_local;
reg   [9:0] bucket_0_address0_local;
reg    bucket_0_we0_local;
reg    bucket_1_ce1_local;
reg    bucket_1_ce0_local;
reg   [9:0] bucket_1_address0_local;
reg    bucket_1_we0_local;
wire   [7:0] add_ln13_1_fu_167_p2;
wire   [4:0] select_ln12_fu_161_p3;
wire   [6:0] trunc_ln16_fu_198_p1;
wire   [2:0] lshr_ln1_fu_188_p4;
wire   [9:0] add_ln_fu_202_p3;
wire   [3:0] trunc_ln14_fu_180_p1;
wire   [3:0] add_ln16_fu_216_p2;
wire   [2:0] tmp_s_fu_222_p4;
wire   [9:0] lshr_ln16_1_fu_232_p3;
wire    ap_block_pp0_stage2;
wire   [31:0] select_ln16_1_fu_269_p3;
wire   [31:0] select_ln16_fu_262_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
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
#0 i_fu_52 = 5'd0;
#0 radixID_fu_56 = 8'd0;
#0 indvar_flatten_fu_60 = 11'd0;
#0 ap_done_reg = 1'b0;
end
ss_sort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_fu_52 <= 5'd1;
    end else if (((icmp_ln13_reg_303 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_52 <= add_ln14_fu_246_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln13_fu_132_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_60 <= add_ln13_fu_138_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_60 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        radixID_fu_56 <= 8'd0;
    end else if (((icmp_ln13_reg_303 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        radixID_fu_56 <= select_ln13_fu_173_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln16_1_reg_344 <= add_ln16_1_fu_276_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_0_addr_32_reg_334 <= zext_ln16_fu_210_p1;
        bucket_1_addr_32_reg_339 <= zext_ln16_fu_210_p1;
        trunc_ln14_1_reg_318 <= trunc_ln14_1_fu_184_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_load_reg_307 <= ap_sig_allocacmp_i_load;
        icmp_ln13_reg_303 <= icmp_ln13_fu_132_p2;
        icmp_ln14_reg_312 <= icmp_ln14_fu_147_p2;
    end
end
always @ (*) begin
    if (((icmp_ln13_fu_132_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_load = 5'd1;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_52;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_60;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_0_address0_local = bucket_0_addr_32_reg_334;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_0_address0_local = zext_ln16_fu_210_p1;
    end else begin
        bucket_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_0_ce0_local = 1'b1;
    end else begin
        bucket_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_0_ce1_local = 1'b1;
    end else begin
        bucket_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln14_1_reg_318 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_0_we0_local = 1'b1;
    end else begin
        bucket_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_1_address0_local = bucket_1_addr_32_reg_339;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_1_address0_local = zext_ln16_fu_210_p1;
    end else begin
        bucket_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_1_ce0_local = 1'b1;
    end else begin
        bucket_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_1_ce1_local = 1'b1;
    end else begin
        bucket_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln14_1_reg_318 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_1_we0_local = 1'b1;
    end else begin
        bucket_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
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
assign add_ln13_1_fu_167_p2 = (radixID_fu_56 + 8'd1);
assign add_ln13_fu_138_p2 = (ap_sig_allocacmp_indvar_flatten_load + 11'd1);
assign add_ln14_fu_246_p2 = (select_ln12_fu_161_p3 + 5'd1);
assign add_ln16_1_fu_276_p2 = (select_ln16_1_fu_269_p3 + select_ln16_fu_262_p3);
assign add_ln16_fu_216_p2 = ($signed(trunc_ln14_fu_180_p1) + $signed(4'd15));
assign add_ln_fu_202_p3 = {{trunc_ln16_fu_198_p1}, {lshr_ln1_fu_188_p4}};
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bucket_0_address0 = bucket_0_address0_local;
assign bucket_0_address1 = zext_ln16_1_fu_240_p1;
assign bucket_0_ce0 = bucket_0_ce0_local;
assign bucket_0_ce1 = bucket_0_ce1_local;
assign bucket_0_d0 = add_ln16_1_reg_344;
assign bucket_0_we0 = bucket_0_we0_local;
assign bucket_1_address0 = bucket_1_address0_local;
assign bucket_1_address1 = zext_ln16_1_fu_240_p1;
assign bucket_1_ce0 = bucket_1_ce0_local;
assign bucket_1_ce1 = bucket_1_ce1_local;
assign bucket_1_d0 = add_ln16_1_reg_344;
assign bucket_1_we0 = bucket_1_we0_local;
assign icmp_ln13_fu_132_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 11'd1920) ? 1'b1 : 1'b0);
assign icmp_ln14_fu_147_p2 = ((ap_sig_allocacmp_i_load == 5'd16) ? 1'b1 : 1'b0);
assign lshr_ln16_1_fu_232_p3 = {{trunc_ln16_fu_198_p1}, {tmp_s_fu_222_p4}};
assign lshr_ln1_fu_188_p4 = {{select_ln12_fu_161_p3[3:1]}};
assign select_ln12_fu_161_p3 = ((icmp_ln14_reg_312[0:0] == 1'b1) ? 5'd1 : i_load_reg_307);
assign select_ln13_fu_173_p3 = ((icmp_ln14_reg_312[0:0] == 1'b1) ? add_ln13_1_fu_167_p2 : radixID_fu_56);
assign select_ln16_1_fu_269_p3 = ((trunc_ln14_1_reg_318[0:0] == 1'b1) ? bucket_1_q0 : bucket_0_q0);
assign select_ln16_fu_262_p3 = ((trunc_ln14_1_reg_318[0:0] == 1'b1) ? bucket_0_q1 : bucket_1_q1);
assign tmp_s_fu_222_p4 = {{add_ln16_fu_216_p2[3:1]}};
assign trunc_ln14_1_fu_184_p1 = select_ln12_fu_161_p3[0:0];
assign trunc_ln14_fu_180_p1 = select_ln12_fu_161_p3[3:0];
assign trunc_ln16_fu_198_p1 = select_ln13_fu_173_p3[6:0];
assign zext_ln16_1_fu_240_p1 = lshr_ln16_1_fu_232_p3;
assign zext_ln16_fu_210_p1 = add_ln_fu_202_p3;
endmodule 