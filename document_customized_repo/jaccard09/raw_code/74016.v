module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_address1,llike_ce1,llike_we1,llike_d1,init_address0,init_ce0,init_q0,init_address1,init_ce1,init_q1,obs_load,emission_address0,emission_ce0,emission_q0,emission_address1,emission_ce1,emission_q1,zext_ln13,grp_fu_227_p_din0,grp_fu_227_p_din1,grp_fu_227_p_opcode,grp_fu_227_p_dout0,grp_fu_227_p_ce,grp_fu_492_p_din0,grp_fu_492_p_din1,grp_fu_492_p_opcode,grp_fu_492_p_dout0,grp_fu_492_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] llike_address0;
output   llike_ce0;
output   llike_we0;
output  [63:0] llike_d0;
output  [13:0] llike_address1;
output   llike_ce1;
output   llike_we1;
output  [63:0] llike_d1;
output  [5:0] init_address0;
output   init_ce0;
input  [63:0] init_q0;
output  [5:0] init_address1;
output   init_ce1;
input  [63:0] init_q1;
input  [7:0] obs_load;
output  [11:0] emission_address0;
output   emission_ce0;
input  [63:0] emission_q0;
output  [11:0] emission_address1;
output   emission_ce1;
input  [63:0] emission_q1;
input  [7:0] zext_ln13;
output  [63:0] grp_fu_227_p_din0;
output  [63:0] grp_fu_227_p_din1;
output  [1:0] grp_fu_227_p_opcode;
input  [63:0] grp_fu_227_p_dout0;
output   grp_fu_227_p_ce;
output  [63:0] grp_fu_492_p_din0;
output  [63:0] grp_fu_492_p_din1;
output  [1:0] grp_fu_492_p_opcode;
input  [63:0] grp_fu_492_p_dout0;
output   grp_fu_492_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_461;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_219;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_223;
reg   [63:0] reg_227;
reg   [63:0] reg_231;
reg   [63:0] reg_235;
reg   [63:0] reg_240;
wire   [11:0] zext_ln13_cast_fu_245_p1;
reg   [11:0] zext_ln13_cast_reg_450;
reg   [6:0] s_1_reg_456;
wire   [63:0] zext_ln13_1_fu_265_p1;
reg   [63:0] zext_ln13_1_reg_465;
reg   [63:0] zext_ln13_1_reg_465_pp0_iter1_reg;
reg   [63:0] zext_ln13_1_reg_465_pp0_iter2_reg;
reg   [63:0] zext_ln13_1_reg_465_pp0_iter3_reg;
reg   [63:0] zext_ln13_1_reg_465_pp0_iter4_reg;
wire   [3:0] tmp_cast_fu_270_p4;
reg   [3:0] tmp_cast_reg_475;
wire   [63:0] zext_ln14_1_fu_311_p1;
reg   [63:0] zext_ln14_1_reg_488;
reg   [63:0] zext_ln14_1_reg_488_pp0_iter1_reg;
reg   [63:0] zext_ln14_1_reg_488_pp0_iter2_reg;
reg   [63:0] zext_ln14_1_reg_488_pp0_iter3_reg;
reg   [63:0] zext_ln14_1_reg_488_pp0_iter4_reg;
wire   [63:0] zext_ln14_3_fu_342_p1;
reg   [63:0] zext_ln14_3_reg_503;
reg   [63:0] zext_ln14_3_reg_503_pp0_iter1_reg;
reg   [63:0] zext_ln14_3_reg_503_pp0_iter2_reg;
reg   [63:0] zext_ln14_3_reg_503_pp0_iter3_reg;
reg   [63:0] zext_ln14_3_reg_503_pp0_iter4_reg;
wire   [63:0] zext_ln14_5_fu_371_p1;
reg   [63:0] zext_ln14_5_reg_518;
reg   [63:0] zext_ln14_5_reg_518_pp0_iter1_reg;
reg   [63:0] zext_ln14_5_reg_518_pp0_iter2_reg;
reg   [63:0] zext_ln14_5_reg_518_pp0_iter3_reg;
reg   [63:0] zext_ln14_5_reg_518_pp0_iter4_reg;
wire   [63:0] bitcast_ln14_fu_403_p1;
wire   [63:0] bitcast_ln14_1_fu_408_p1;
wire   [63:0] bitcast_ln14_2_fu_413_p1;
wire   [63:0] bitcast_ln14_3_fu_418_p1;
wire   [63:0] bitcast_ln14_4_fu_423_p1;
wire   [63:0] bitcast_ln14_5_fu_428_p1;
wire   [63:0] bitcast_ln14_6_fu_433_p1;
wire   [63:0] bitcast_ln14_7_fu_438_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_288_p1;
wire   [63:0] zext_ln14_2_fu_330_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_4_fu_359_p1;
wire   [63:0] zext_ln14_6_fu_388_p1;
reg   [6:0] s_fu_72;
wire   [6:0] add_ln13_fu_393_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg    init_ce1_local;
reg   [5:0] init_address1_local;
reg    init_ce0_local;
reg   [5:0] init_address0_local;
reg    emission_ce1_local;
reg   [11:0] emission_address1_local;
reg    emission_ce0_local;
reg   [11:0] emission_address0_local;
reg    llike_we1_local;
reg    llike_ce1_local;
reg   [13:0] llike_address1_local;
reg    llike_we0_local;
reg    llike_ce0_local;
reg   [13:0] llike_address0_local;
reg   [63:0] grp_fu_211_p0;
reg   [63:0] grp_fu_211_p1;
reg   [63:0] grp_fu_215_p0;
reg   [63:0] grp_fu_215_p1;
wire   [11:0] or_ln_fu_280_p3;
wire   [4:0] tmp_s_fu_293_p4;
wire   [5:0] or_ln1_fu_303_p3;
wire   [11:0] shl_ln_fu_316_p3;
wire   [11:0] add_ln14_fu_324_p2;
wire   [5:0] or_ln13_1_fu_335_p3;
wire   [11:0] shl_ln14_1_fu_347_p3;
wire   [11:0] add_ln14_1_fu_354_p2;
wire   [5:0] or_ln13_2_fu_364_p3;
wire   [11:0] shl_ln14_2_fu_376_p3;
wire   [11:0] add_ln14_2_fu_383_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to5;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 s_fu_72 = 7'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_fu_72 <= 7'd0;
    end else if (((tmp_reg_461 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        s_fu_72 <= add_ln13_fu_393_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        zext_ln14_3_reg_503[5 : 2] <= zext_ln14_3_fu_342_p1[5 : 2];
        zext_ln14_3_reg_503_pp0_iter1_reg[5 : 2] <= zext_ln14_3_reg_503[5 : 2];
        zext_ln14_3_reg_503_pp0_iter2_reg[5 : 2] <= zext_ln14_3_reg_503_pp0_iter1_reg[5 : 2];
        zext_ln14_3_reg_503_pp0_iter3_reg[5 : 2] <= zext_ln14_3_reg_503_pp0_iter2_reg[5 : 2];
        zext_ln14_3_reg_503_pp0_iter4_reg[5 : 2] <= zext_ln14_3_reg_503_pp0_iter3_reg[5 : 2];
        zext_ln14_5_reg_518[5 : 2] <= zext_ln14_5_fu_371_p1[5 : 2];
        zext_ln14_5_reg_518_pp0_iter1_reg[5 : 2] <= zext_ln14_5_reg_518[5 : 2];
        zext_ln14_5_reg_518_pp0_iter2_reg[5 : 2] <= zext_ln14_5_reg_518_pp0_iter1_reg[5 : 2];
        zext_ln14_5_reg_518_pp0_iter3_reg[5 : 2] <= zext_ln14_5_reg_518_pp0_iter2_reg[5 : 2];
        zext_ln14_5_reg_518_pp0_iter4_reg[5 : 2] <= zext_ln14_5_reg_518_pp0_iter3_reg[5 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_219 <= init_q1;
        reg_223 <= emission_q1;
        reg_227 <= init_q0;
        reg_231 <= emission_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_235 <= grp_fu_227_p_dout0;
        reg_240 <= grp_fu_492_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_1_reg_456 <= ap_sig_allocacmp_s_1;
        tmp_cast_reg_475 <= {{ap_sig_allocacmp_s_1[5:2]}};
        tmp_reg_461 <= ap_sig_allocacmp_s_1[32'd6];
        zext_ln13_1_reg_465[6 : 0] <= zext_ln13_1_fu_265_p1[6 : 0];
        zext_ln13_1_reg_465_pp0_iter1_reg[6 : 0] <= zext_ln13_1_reg_465[6 : 0];
        zext_ln13_1_reg_465_pp0_iter2_reg[6 : 0] <= zext_ln13_1_reg_465_pp0_iter1_reg[6 : 0];
        zext_ln13_1_reg_465_pp0_iter3_reg[6 : 0] <= zext_ln13_1_reg_465_pp0_iter2_reg[6 : 0];
        zext_ln13_1_reg_465_pp0_iter4_reg[6 : 0] <= zext_ln13_1_reg_465_pp0_iter3_reg[6 : 0];
        zext_ln13_cast_reg_450[7 : 0] <= zext_ln13_cast_fu_245_p1[7 : 0];
        zext_ln14_1_reg_488[5 : 1] <= zext_ln14_1_fu_311_p1[5 : 1];
        zext_ln14_1_reg_488_pp0_iter1_reg[5 : 1] <= zext_ln14_1_reg_488[5 : 1];
        zext_ln14_1_reg_488_pp0_iter2_reg[5 : 1] <= zext_ln14_1_reg_488_pp0_iter1_reg[5 : 1];
        zext_ln14_1_reg_488_pp0_iter3_reg[5 : 1] <= zext_ln14_1_reg_488_pp0_iter2_reg[5 : 1];
        zext_ln14_1_reg_488_pp0_iter4_reg[5 : 1] <= zext_ln14_1_reg_488_pp0_iter3_reg[5 : 1];
    end
end
always @ (*) begin
    if (((tmp_reg_461 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to5 = 1'b1;
    end else begin
        ap_idle_pp0_1to5 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_s_1 = s_fu_72;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_address0_local = zext_ln14_6_fu_388_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_address0_local = zext_ln14_2_fu_330_p1;
        end else begin
            emission_address0_local = 'bx;
        end
    end else begin
        emission_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_address1_local = zext_ln14_4_fu_359_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_address1_local = zext_ln14_fu_288_p1;
        end else begin
            emission_address1_local = 'bx;
        end
    end else begin
        emission_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        emission_ce0_local = 1'b1;
    end else begin
        emission_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        emission_ce1_local = 1'b1;
    end else begin
        emission_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_211_p0 = bitcast_ln14_4_fu_423_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_211_p0 = bitcast_ln14_fu_403_p1;
        end else begin
            grp_fu_211_p0 = 'bx;
        end
    end else begin
        grp_fu_211_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_211_p1 = bitcast_ln14_5_fu_428_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_211_p1 = bitcast_ln14_1_fu_408_p1;
        end else begin
            grp_fu_211_p1 = 'bx;
        end
    end else begin
        grp_fu_211_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_215_p0 = bitcast_ln14_6_fu_433_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_215_p0 = bitcast_ln14_2_fu_413_p1;
        end else begin
            grp_fu_215_p0 = 'bx;
        end
    end else begin
        grp_fu_215_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_215_p1 = bitcast_ln14_7_fu_438_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_215_p1 = bitcast_ln14_3_fu_418_p1;
        end else begin
            grp_fu_215_p1 = 'bx;
        end
    end else begin
        grp_fu_215_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_address0_local = zext_ln14_5_fu_371_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_address0_local = zext_ln14_1_fu_311_p1;
        end else begin
            init_address0_local = 'bx;
        end
    end else begin
        init_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_address1_local = zext_ln14_3_fu_342_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_address1_local = zext_ln13_1_fu_265_p1;
        end else begin
            init_address1_local = 'bx;
        end
    end else begin
        init_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        init_ce0_local = 1'b1;
    end else begin
        init_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        init_ce1_local = 1'b1;
    end else begin
        init_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln14_5_reg_518_pp0_iter4_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln14_1_reg_488_pp0_iter4_reg;
        end else begin
            llike_address0_local = 'bx;
        end
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address1_local = zext_ln14_3_reg_503_pp0_iter4_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address1_local = zext_ln13_1_reg_465_pp0_iter4_reg;
        end else begin
            llike_address1_local = 'bx;
        end
    end else begin
        llike_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_ce1_local = 1'b1;
    end else begin
        llike_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_we1_local = 1'b1;
    end else begin
        llike_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to5 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln13_fu_393_p2 = (s_1_reg_456 + 7'd4);
assign add_ln14_1_fu_354_p2 = (shl_ln14_1_fu_347_p3 + zext_ln13_cast_reg_450);
assign add_ln14_2_fu_383_p2 = (shl_ln14_2_fu_376_p3 + zext_ln13_cast_reg_450);
assign add_ln14_fu_324_p2 = (shl_ln_fu_316_p3 + zext_ln13_cast_fu_245_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign bitcast_ln14_1_fu_408_p1 = reg_223;
assign bitcast_ln14_2_fu_413_p1 = reg_227;
assign bitcast_ln14_3_fu_418_p1 = reg_231;
assign bitcast_ln14_4_fu_423_p1 = reg_219;
assign bitcast_ln14_5_fu_428_p1 = reg_223;
assign bitcast_ln14_6_fu_433_p1 = reg_227;
assign bitcast_ln14_7_fu_438_p1 = reg_231;
assign bitcast_ln14_fu_403_p1 = reg_219;
assign emission_address0 = emission_address0_local;
assign emission_address1 = emission_address1_local;
assign emission_ce0 = emission_ce0_local;
assign emission_ce1 = emission_ce1_local;
assign grp_fu_227_p_ce = 1'b1;
assign grp_fu_227_p_din0 = grp_fu_211_p0;
assign grp_fu_227_p_din1 = grp_fu_211_p1;
assign grp_fu_227_p_opcode = 2'd0;
assign grp_fu_492_p_ce = 1'b1;
assign grp_fu_492_p_din0 = grp_fu_215_p0;
assign grp_fu_492_p_din1 = grp_fu_215_p1;
assign grp_fu_492_p_opcode = 2'd0;
assign init_address0 = init_address0_local;
assign init_address1 = init_address1_local;
assign init_ce0 = init_ce0_local;
assign init_ce1 = init_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_address1 = llike_address1_local;
assign llike_ce0 = llike_ce0_local;
assign llike_ce1 = llike_ce1_local;
assign llike_d0 = reg_240;
assign llike_d1 = reg_235;
assign llike_we0 = llike_we0_local;
assign llike_we1 = llike_we1_local;
assign or_ln13_1_fu_335_p3 = {{tmp_cast_reg_475}, {2'd2}};
assign or_ln13_2_fu_364_p3 = {{tmp_cast_reg_475}, {2'd3}};
assign or_ln1_fu_303_p3 = {{tmp_s_fu_293_p4}, {1'd1}};
assign or_ln_fu_280_p3 = {{tmp_cast_fu_270_p4}, {obs_load}};
assign shl_ln14_1_fu_347_p3 = {{tmp_cast_reg_475}, {8'd128}};
assign shl_ln14_2_fu_376_p3 = {{tmp_cast_reg_475}, {8'd192}};
assign shl_ln_fu_316_p3 = {{tmp_s_fu_293_p4}, {7'd64}};
assign tmp_cast_fu_270_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign tmp_s_fu_293_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign zext_ln13_1_fu_265_p1 = ap_sig_allocacmp_s_1;
assign zext_ln13_cast_fu_245_p1 = zext_ln13;
assign zext_ln14_1_fu_311_p1 = or_ln1_fu_303_p3;
assign zext_ln14_2_fu_330_p1 = add_ln14_fu_324_p2;
assign zext_ln14_3_fu_342_p1 = or_ln13_1_fu_335_p3;
assign zext_ln14_4_fu_359_p1 = add_ln14_1_fu_354_p2;
assign zext_ln14_5_fu_371_p1 = or_ln13_2_fu_364_p3;
assign zext_ln14_6_fu_388_p1 = add_ln14_2_fu_383_p2;
assign zext_ln14_fu_288_p1 = or_ln_fu_280_p3;
always @ (posedge ap_clk) begin
    zext_ln13_cast_reg_450[11:8] <= 4'b0000;
    zext_ln13_1_reg_465[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln13_1_reg_465_pp0_iter1_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln13_1_reg_465_pp0_iter2_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln13_1_reg_465_pp0_iter3_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln13_1_reg_465_pp0_iter4_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln14_1_reg_488[0] <= 1'b1;
    zext_ln14_1_reg_488[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_1_reg_488_pp0_iter1_reg[0] <= 1'b1;
    zext_ln14_1_reg_488_pp0_iter1_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_1_reg_488_pp0_iter2_reg[0] <= 1'b1;
    zext_ln14_1_reg_488_pp0_iter2_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_1_reg_488_pp0_iter3_reg[0] <= 1'b1;
    zext_ln14_1_reg_488_pp0_iter3_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_1_reg_488_pp0_iter4_reg[0] <= 1'b1;
    zext_ln14_1_reg_488_pp0_iter4_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_3_reg_503[1:0] <= 2'b10;
    zext_ln14_3_reg_503[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_3_reg_503_pp0_iter1_reg[1:0] <= 2'b10;
    zext_ln14_3_reg_503_pp0_iter1_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_3_reg_503_pp0_iter2_reg[1:0] <= 2'b10;
    zext_ln14_3_reg_503_pp0_iter2_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_3_reg_503_pp0_iter3_reg[1:0] <= 2'b10;
    zext_ln14_3_reg_503_pp0_iter3_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_3_reg_503_pp0_iter4_reg[1:0] <= 2'b10;
    zext_ln14_3_reg_503_pp0_iter4_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_5_reg_518[1:0] <= 2'b11;
    zext_ln14_5_reg_518[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_5_reg_518_pp0_iter1_reg[1:0] <= 2'b11;
    zext_ln14_5_reg_518_pp0_iter1_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_5_reg_518_pp0_iter2_reg[1:0] <= 2'b11;
    zext_ln14_5_reg_518_pp0_iter2_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_5_reg_518_pp0_iter3_reg[1:0] <= 2'b11;
    zext_ln14_5_reg_518_pp0_iter3_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_5_reg_518_pp0_iter4_reg[1:0] <= 2'b11;
    zext_ln14_5_reg_518_pp0_iter4_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 