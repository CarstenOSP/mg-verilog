
module bfs_bfs_Pipeline_loop_neighbors (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,empty,cnt,tmp_end,edges_0_address0,edges_0_ce0,edges_0_q0,edges_1_address0,edges_1_ce0,edges_1_q0,level_address0,level_ce0,level_we0,level_d0,level_q0,indvars_iv_next12_cast4,cnt_1_out,cnt_1_out_ap_vld);  
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] empty;
input  [63:0] cnt;
input  [63:0] tmp_end;
output  [10:0] edges_0_address0;
output   edges_0_ce0;
input  [63:0] edges_0_q0;
output  [10:0] edges_1_address0;
output   edges_1_ce0;
input  [63:0] edges_1_q0;
output  [7:0] level_address0;
output   level_ce0;
output   level_we0;
output  [7:0] level_d0;
input  [7:0] level_q0;
input  [3:0] indvars_iv_next12_cast4;
output  [63:0] cnt_1_out;
output   cnt_1_out_ap_vld;
reg ap_idle;
reg cnt_1_out_ap_vld;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] icmp_ln28_reg_300;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [7:0] indvars_iv_next12_cast4_cast_fu_142_p1;
reg   [7:0] indvars_iv_next12_cast4_cast_reg_289;
reg   [63:0] e_1_reg_294;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln28_fu_167_p2;
wire   [0:0] icmp_ln29_fu_195_p2;
reg   [0:0] icmp_ln29_reg_304;
reg   [0:0] icmp_ln29_reg_304_pp0_iter1_reg;
wire   [7:0] tmp_dst_fu_216_p3;
reg   [7:0] tmp_dst_reg_318;
wire    ap_block_pp0_stage2_11001;
reg   [7:0] level_addr_reg_323;
wire   [0:0] icmp_ln34_fu_238_p2;
reg   [0:0] icmp_ln34_reg_328;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln14_fu_189_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln31_fu_234_p1;
wire    ap_block_pp0_stage0;
reg   [7:0] i_fu_60;
wire   [7:0] i_2_fu_173_p2;
wire    ap_loop_init;
reg   [63:0] e_fu_64;
wire   [63:0] e_2_fu_224_p2;
reg   [63:0] cnt_1_fu_68;
wire   [63:0] cnt_2_fu_247_p2;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage2_01001;
reg    edges_0_ce0_local;
reg    edges_1_ce0_local;
reg    level_ce0_local;
reg   [7:0] level_address0_local;
reg    level_we0_local;
wire   [10:0] lshr_ln1_fu_179_p4;
wire   [0:0] trunc_ln28_fu_205_p1;
wire   [7:0] trunc_ln31_fu_208_p1;
wire   [7:0] trunc_ln31_1_fu_212_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [2:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
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
#0 i_fu_60 = 8'd0;
#0 e_fu_64 = 64'd0;
#0 cnt_1_fu_68 = 64'd0;
#0 ap_done_reg = 1'b0;
end
bfs_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        cnt_1_fu_68 <= cnt;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln34_fu_238_p2 == 1'd1) & (icmp_ln29_reg_304 == 1'd1))) begin
        cnt_1_fu_68 <= cnt_2_fu_247_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        e_fu_64 <= empty;
    end else if (((icmp_ln28_reg_300 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        e_fu_64 <= e_2_fu_224_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_fu_60 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln28_fu_167_p2 == 1'd0))) begin
        i_fu_60 <= i_2_fu_173_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        e_1_reg_294 <= e_fu_64;
        icmp_ln28_reg_300 <= icmp_ln28_fu_167_p2;
        icmp_ln29_reg_304 <= icmp_ln29_fu_195_p2;
        icmp_ln29_reg_304_pp0_iter1_reg <= icmp_ln29_reg_304;
        icmp_ln34_reg_328 <= icmp_ln34_fu_238_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvars_iv_next12_cast4_cast_reg_289[3 : 0] <= indvars_iv_next12_cast4_cast_fu_142_p1[3 : 0];
        level_addr_reg_323 <= zext_ln31_fu_234_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_dst_reg_318 <= tmp_dst_fu_216_p3;
    end
end
always @ (*) begin
    if (((icmp_ln28_reg_300 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln28_reg_300 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        cnt_1_out_ap_vld = 1'b1;
    end else begin
        cnt_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_0_ce0_local = 1'b1;
    end else begin
        edges_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_1_ce0_local = 1'b1;
    end else begin
        edges_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            level_address0_local = level_addr_reg_323;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            level_address0_local = zext_ln31_fu_234_p1;
        end else begin
            level_address0_local = 'bx;
        end
    end else begin
        level_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        level_ce0_local = 1'b1;
    end else begin
        level_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln34_reg_328 == 1'd1) & (icmp_ln29_reg_304_pp0_iter1_reg == 1'd1))) begin
        level_we0_local = 1'b1;
    end else begin
        level_we0_local = 1'b0;
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
assign ap_block_pp0_stage2_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign cnt_1_out = cnt_1_fu_68;
assign cnt_2_fu_247_p2 = (cnt_1_fu_68 + 64'd1);
assign e_2_fu_224_p2 = (e_1_reg_294 + 64'd1);
assign edges_0_address0 = zext_ln14_fu_189_p1;
assign edges_0_ce0 = edges_0_ce0_local;
assign edges_1_address0 = zext_ln14_fu_189_p1;
assign edges_1_ce0 = edges_1_ce0_local;
assign i_2_fu_173_p2 = (i_fu_60 + 8'd1);
assign icmp_ln28_fu_167_p2 = ((i_fu_60 == 8'd158) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_195_p2 = ((e_fu_64 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln34_fu_238_p2 = ((level_q0 == 8'd127) ? 1'b1 : 1'b0);
assign indvars_iv_next12_cast4_cast_fu_142_p1 = indvars_iv_next12_cast4;
assign level_address0 = level_address0_local;
assign level_ce0 = level_ce0_local;
assign level_d0 = indvars_iv_next12_cast4_cast_reg_289;
assign level_we0 = level_we0_local;
assign lshr_ln1_fu_179_p4 = {{e_fu_64[11:1]}};
assign tmp_dst_fu_216_p3 = ((trunc_ln28_fu_205_p1[0:0] == 1'b1) ? trunc_ln31_fu_208_p1 : trunc_ln31_1_fu_212_p1);
assign trunc_ln28_fu_205_p1 = e_1_reg_294[0:0];
assign trunc_ln31_1_fu_212_p1 = edges_0_q0[7:0];
assign trunc_ln31_fu_208_p1 = edges_1_q0[7:0];
assign zext_ln14_fu_189_p1 = lshr_ln1_fu_179_p4;
assign zext_ln31_fu_234_p1 = tmp_dst_reg_318;
always @ (posedge ap_clk) begin
    indvars_iv_next12_cast4_cast_reg_289[7:4] <= 4'b0000;
end
endmodule 
