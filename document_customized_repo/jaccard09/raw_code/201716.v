module SgdLR_sw_SgdLR_sw_Pipeline_label_35 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v3_3_address0,v3_3_ce0,v3_3_we0,v3_3_d0,v3_2_address0,v3_2_ce0,v3_2_we0,v3_2_d0,v3_1_address0,v3_1_ce0,v3_1_we0,v3_1_d0,v3_address0,v3_ce0,v3_we0,v3_d0,empty,v0_address0,v0_ce0,v0_q0,v0_address1,v0_ce1,v0_q1,v22_2,grp_fu_1250_p_din0,grp_fu_1250_p_din1,grp_fu_1250_p_dout0,grp_fu_1250_p_ce,grp_fu_1254_p_din0,grp_fu_1254_p_din1,grp_fu_1254_p_dout0,grp_fu_1254_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] v3_3_address0;
output   v3_3_ce0;
output   v3_3_we0;
output  [31:0] v3_3_d0;
output  [7:0] v3_2_address0;
output   v3_2_ce0;
output   v3_2_we0;
output  [31:0] v3_2_d0;
output  [7:0] v3_1_address0;
output   v3_1_ce0;
output   v3_1_we0;
output  [31:0] v3_1_d0;
output  [7:0] v3_address0;
output   v3_ce0;
output   v3_we0;
output  [31:0] v3_d0;
input  [22:0] empty;
output  [22:0] v0_address0;
output   v0_ce0;
input  [31:0] v0_q0;
output  [22:0] v0_address1;
output   v0_ce1;
input  [31:0] v0_q1;
input  [31:0] v22_2;
output  [31:0] grp_fu_1250_p_din0;
output  [31:0] grp_fu_1250_p_din1;
input  [31:0] grp_fu_1250_p_dout0;
output   grp_fu_1250_p_ce;
output  [31:0] grp_fu_1254_p_din0;
output  [31:0] grp_fu_1254_p_din1;
input  [31:0] grp_fu_1254_p_dout0;
output   grp_fu_1254_p_ce;
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
reg   [0:0] tmp_1_reg_366;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_189;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_193;
reg   [31:0] reg_197;
reg   [31:0] reg_203;
reg   [10:0] v19_2_reg_360;
wire   [12:0] tmp_5_fu_250_p4;
reg   [12:0] tmp_5_reg_375;
wire   [7:0] lshr_ln48_2_fu_275_p4;
reg   [7:0] lshr_ln48_2_reg_386;
reg   [7:0] lshr_ln48_2_reg_386_pp0_iter1_reg;
reg   [7:0] lshr_ln48_2_reg_386_pp0_iter2_reg;
wire   [31:0] v23_fu_322_p1;
wire   [31:0] v23_4_fu_327_p1;
wire   [31:0] v23_5_fu_332_p1;
wire   [31:0] v23_6_fu_337_p1;
wire   [63:0] zext_ln48_fu_342_p1;
reg   [63:0] zext_ln48_reg_421;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln51_fu_235_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln51_4_fu_270_p1;
wire   [63:0] zext_ln51_5_fu_293_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln51_6_fu_307_p1;
reg   [10:0] v19_fu_72;
wire   [10:0] add_ln47_fu_312_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v19_2;
reg    v0_ce1_local;
reg   [22:0] v0_address1_local;
reg    v0_ce0_local;
reg   [22:0] v0_address0_local;
reg    v3_we0_local;
reg    v3_ce0_local;
reg    v3_1_we0_local;
reg    v3_1_ce0_local;
reg    v3_2_we0_local;
reg    v3_2_ce0_local;
reg    v3_3_we0_local;
reg    v3_3_ce0_local;
reg   [31:0] grp_fu_181_p1;
reg   [31:0] grp_fu_185_p1;
wire   [22:0] zext_ln47_fu_225_p1;
wire   [22:0] add_ln51_fu_229_p2;
wire   [8:0] tmp_s_fu_240_p4;
wire   [22:0] add_ln51_9_fu_260_p4;
wire   [22:0] add_ln51_s_fu_284_p4;
wire   [22:0] add_ln51_8_fu_298_p4;
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
#0 v19_fu_72 = 11'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        v19_fu_72 <= 11'd0;
    end else if (((tmp_1_reg_366 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v19_fu_72 <= add_ln47_fu_312_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln48_2_reg_386 <= {{v19_2_reg_360[9:2]}};
        lshr_ln48_2_reg_386_pp0_iter1_reg <= lshr_ln48_2_reg_386;
        lshr_ln48_2_reg_386_pp0_iter2_reg <= lshr_ln48_2_reg_386_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_189 <= v0_q1;
        reg_193 <= v0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_197 <= grp_fu_1250_p_dout0;
        reg_203 <= grp_fu_1254_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_1_reg_366 <= ap_sig_allocacmp_v19_2[32'd10];
        tmp_5_reg_375 <= {{empty[22:10]}};
        v19_2_reg_360 <= ap_sig_allocacmp_v19_2;
        zext_ln48_reg_421[7 : 0] <= zext_ln48_fu_342_p1[7 : 0];
    end
end
always @ (*) begin
    if (((tmp_1_reg_366 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v19_2 = 11'd0;
    end else begin
        ap_sig_allocacmp_v19_2 = v19_fu_72;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_181_p1 = v23_5_fu_332_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_181_p1 = v23_fu_322_p1;
        end else begin
            grp_fu_181_p1 = 'bx;
        end
    end else begin
        grp_fu_181_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_185_p1 = v23_6_fu_337_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_185_p1 = v23_4_fu_327_p1;
        end else begin
            grp_fu_185_p1 = 'bx;
        end
    end else begin
        grp_fu_185_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_address0_local = zext_ln51_6_fu_307_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_address0_local = zext_ln51_4_fu_270_p1;
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
            v0_address1_local = zext_ln51_5_fu_293_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_address1_local = zext_ln51_fu_235_p1;
        end else begin
            v0_address1_local = 'bx;
        end
    end else begin
        v0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_ce0_local = 1'b1;
    end else begin
        v0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_3_we0_local = 1'b1;
    end else begin
        v3_3_we0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
assign add_ln47_fu_312_p2 = (v19_2_reg_360 + 11'd4);
assign add_ln51_8_fu_298_p4 = {{{tmp_5_reg_375}, {lshr_ln48_2_fu_275_p4}}, {2'd3}};
assign add_ln51_9_fu_260_p4 = {{{tmp_5_fu_250_p4}, {tmp_s_fu_240_p4}}, {1'd1}};
assign add_ln51_fu_229_p2 = (zext_ln47_fu_225_p1 + empty);
assign add_ln51_s_fu_284_p4 = {{{tmp_5_reg_375}, {lshr_ln48_2_fu_275_p4}}, {2'd2}};
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
assign grp_fu_1250_p_ce = 1'b1;
assign grp_fu_1250_p_din0 = v22_2;
assign grp_fu_1250_p_din1 = grp_fu_181_p1;
assign grp_fu_1254_p_ce = 1'b1;
assign grp_fu_1254_p_din0 = v22_2;
assign grp_fu_1254_p_din1 = grp_fu_185_p1;
assign lshr_ln48_2_fu_275_p4 = {{v19_2_reg_360[9:2]}};
assign tmp_5_fu_250_p4 = {{empty[22:10]}};
assign tmp_s_fu_240_p4 = {{ap_sig_allocacmp_v19_2[9:1]}};
assign v0_address0 = v0_address0_local;
assign v0_address1 = v0_address1_local;
assign v0_ce0 = v0_ce0_local;
assign v0_ce1 = v0_ce1_local;
assign v23_4_fu_327_p1 = reg_193;
assign v23_5_fu_332_p1 = reg_189;
assign v23_6_fu_337_p1 = reg_193;
assign v23_fu_322_p1 = reg_189;
assign v3_1_address0 = zext_ln48_fu_342_p1;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_1_d0 = reg_203;
assign v3_1_we0 = v3_1_we0_local;
assign v3_2_address0 = zext_ln48_reg_421;
assign v3_2_ce0 = v3_2_ce0_local;
assign v3_2_d0 = reg_197;
assign v3_2_we0 = v3_2_we0_local;
assign v3_3_address0 = zext_ln48_reg_421;
assign v3_3_ce0 = v3_3_ce0_local;
assign v3_3_d0 = reg_203;
assign v3_3_we0 = v3_3_we0_local;
assign v3_address0 = zext_ln48_fu_342_p1;
assign v3_ce0 = v3_ce0_local;
assign v3_d0 = reg_197;
assign v3_we0 = v3_we0_local;
assign zext_ln47_fu_225_p1 = ap_sig_allocacmp_v19_2;
assign zext_ln48_fu_342_p1 = lshr_ln48_2_reg_386_pp0_iter2_reg;
assign zext_ln51_4_fu_270_p1 = add_ln51_9_fu_260_p4;
assign zext_ln51_5_fu_293_p1 = add_ln51_s_fu_284_p4;
assign zext_ln51_6_fu_307_p1 = add_ln51_8_fu_298_p4;
assign zext_ln51_fu_235_p1 = add_ln51_fu_229_p2;
always @ (posedge ap_clk) begin
    zext_ln48_reg_421[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 