module mvt_mvt_Pipeline_lp1_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,buff_A_2_address0,buff_A_2_ce0,buff_A_2_q0,buff_A_3_address0,buff_A_3_ce0,buff_A_3_q0,buff_y1_address0,buff_y1_ce0,buff_y1_q0,buff_y1_1_address0,buff_y1_1_ce0,buff_y1_1_q0,buff_x1_address0,buff_x1_ce0,buff_x1_we0,buff_x1_d0,buff_x1_q0,buff_x1_1_address0,buff_x1_1_ce0,buff_x1_1_we0,buff_x1_1_d0,buff_x1_1_q0,grp_fu_1733_p_din0,grp_fu_1733_p_din1,grp_fu_1733_p_opcode,grp_fu_1733_p_dout0,grp_fu_1733_p_ce,grp_fu_1737_p_din0,grp_fu_1737_p_din1,grp_fu_1737_p_dout0,grp_fu_1737_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] buff_A_address0;
output   buff_A_ce0;
input  [31:0] buff_A_q0;
output  [9:0] buff_A_1_address0;
output   buff_A_1_ce0;
input  [31:0] buff_A_1_q0;
output  [9:0] buff_A_2_address0;
output   buff_A_2_ce0;
input  [31:0] buff_A_2_q0;
output  [9:0] buff_A_3_address0;
output   buff_A_3_ce0;
input  [31:0] buff_A_3_q0;
output  [4:0] buff_y1_address0;
output   buff_y1_ce0;
input  [31:0] buff_y1_q0;
output  [4:0] buff_y1_1_address0;
output   buff_y1_1_ce0;
input  [31:0] buff_y1_1_q0;
output  [4:0] buff_x1_address0;
output   buff_x1_ce0;
output   buff_x1_we0;
output  [31:0] buff_x1_d0;
input  [31:0] buff_x1_q0;
output  [4:0] buff_x1_1_address0;
output   buff_x1_1_ce0;
output   buff_x1_1_we0;
output  [31:0] buff_x1_1_d0;
input  [31:0] buff_x1_1_q0;
output  [31:0] grp_fu_1733_p_din0;
output  [31:0] grp_fu_1733_p_din1;
output  [1:0] grp_fu_1733_p_opcode;
input  [31:0] grp_fu_1733_p_dout0;
output   grp_fu_1733_p_ce;
output  [31:0] grp_fu_1737_p_din0;
output  [31:0] grp_fu_1737_p_din1;
input  [31:0] grp_fu_1737_p_dout0;
output   grp_fu_1737_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln23_reg_410;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln23_fu_200_p2;
wire   [0:0] first_iter_0_fu_251_p2;
reg   [0:0] first_iter_0_reg_414;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] trunc_ln23_fu_257_p1;
reg   [0:0] trunc_ln23_reg_418;
reg   [0:0] trunc_ln23_reg_418_pp0_iter1_reg;
reg   [4:0] buff_x1_addr_reg_425;
reg   [4:0] buff_x1_addr_reg_425_pp0_iter1_reg;
reg   [4:0] buff_x1_1_addr_reg_430;
reg   [4:0] buff_x1_1_addr_reg_430_pp0_iter1_reg;
wire   [0:0] trunc_ln24_fu_277_p1;
reg   [0:0] trunc_ln24_reg_435;
wire   [0:0] icmp_ln24_1_fu_319_p2;
reg   [0:0] icmp_ln24_1_reg_471;
reg   [0:0] icmp_ln24_1_reg_471_pp0_iter1_reg;
wire   [31:0] select_ln25_fu_335_p3;
reg   [31:0] select_ln25_reg_475;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] select_ln25_3_fu_356_p3;
reg   [31:0] select_ln25_3_reg_480;
wire   [31:0] select_ln25_4_fu_363_p3;
reg   [31:0] select_ln25_4_reg_485;
reg   [31:0] mul_reg_490;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
reg   [31:0] add_reg_500;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln6_1_fu_271_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln25_fu_305_p1;
wire   [63:0] zext_ln6_fu_291_p1;
reg   [6:0] j_fu_54;
wire   [6:0] add_ln24_fu_313_p2;
wire    ap_loop_init;
reg   [6:0] i_1_fu_58;
wire   [6:0] select_ln23_fu_243_p3;
reg   [12:0] indvar_flatten_fu_62;
wire   [12:0] add_ln23_1_fu_206_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten_load;
wire    ap_block_pp0_stage0;
reg   [31:0] empty_fu_66;
wire    ap_block_pp0_stage7;
reg    buff_x1_ce0_local;
reg   [4:0] buff_x1_address0_local;
reg    buff_x1_we0_local;
wire    ap_block_pp0_stage6;
reg    buff_x1_1_ce0_local;
reg   [4:0] buff_x1_1_address0_local;
reg    buff_x1_1_we0_local;
reg    buff_A_ce0_local;
reg    buff_A_1_ce0_local;
reg    buff_A_2_ce0_local;
reg    buff_A_3_ce0_local;
reg    buff_y1_ce0_local;
reg    buff_y1_1_ce0_local;
wire    ap_block_pp0_stage3;
wire   [0:0] icmp_ln24_fu_229_p2;
wire   [6:0] add_ln23_fu_223_p2;
wire   [6:0] select_ln6_fu_235_p3;
wire   [4:0] lshr_ln6_1_fu_261_p4;
wire   [4:0] lshr_ln6_3_fu_281_p4;
wire   [9:0] tmp_1_fu_297_p3;
wire    ap_block_pp0_stage2;
wire   [31:0] select_ln25_2_fu_349_p3;
wire   [31:0] select_ln25_1_fu_342_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage7_00001;
reg    ap_condition_551;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_54 = 7'd0;
#0 i_1_fu_58 = 7'd0;
#0 indvar_flatten_fu_62 = 13'd0;
#0 empty_fu_66 = 32'd0;
#0 ap_done_reg = 1'b0;
end
mvt_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
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
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        if ((1'b1 == ap_condition_551)) begin
            empty_fu_66 <= select_ln25_reg_475;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_fu_66 <= add_reg_500;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_fu_58 <= 7'd0;
    end else if (((icmp_ln23_reg_410 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_1_fu_58 <= select_ln23_fu_243_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln23_fu_200_p2 == 1'd0))) begin
            indvar_flatten_fu_62 <= add_ln23_1_fu_206_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_62 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_54 <= 7'd0;
    end else if (((icmp_ln23_reg_410 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_54 <= add_ln24_fu_313_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_reg_500 <= grp_fu_1733_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_x1_1_addr_reg_430 <= zext_ln6_1_fu_271_p1;
        buff_x1_1_addr_reg_430_pp0_iter1_reg <= buff_x1_1_addr_reg_430;
        buff_x1_addr_reg_425 <= zext_ln6_1_fu_271_p1;
        buff_x1_addr_reg_425_pp0_iter1_reg <= buff_x1_addr_reg_425;
        first_iter_0_reg_414 <= first_iter_0_fu_251_p2;
        icmp_ln24_1_reg_471 <= icmp_ln24_1_fu_319_p2;
        icmp_ln24_1_reg_471_pp0_iter1_reg <= icmp_ln24_1_reg_471;
        trunc_ln23_reg_418 <= trunc_ln23_fu_257_p1;
        trunc_ln23_reg_418_pp0_iter1_reg <= trunc_ln23_reg_418;
        trunc_ln24_reg_435 <= trunc_ln24_fu_277_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln23_reg_410 <= icmp_ln23_fu_200_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul_reg_490 <= grp_fu_1737_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln25_3_reg_480 <= select_ln25_3_fu_356_p3;
        select_ln25_4_reg_485 <= select_ln25_4_fu_363_p3;
        select_ln25_reg_475 <= select_ln25_fu_335_p3;
    end
end
always @ (*) begin
    if (((icmp_ln23_reg_410 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
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
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_62;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_1_ce0_local = 1'b1;
    end else begin
        buff_A_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_2_ce0_local = 1'b1;
    end else begin
        buff_A_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_3_ce0_local = 1'b1;
    end else begin
        buff_A_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_ce0_local = 1'b1;
    end else begin
        buff_A_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x1_1_address0_local = buff_x1_1_addr_reg_430_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_x1_1_address0_local = zext_ln6_1_fu_271_p1;
    end else begin
        buff_x1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_x1_1_ce0_local = 1'b1;
    end else begin
        buff_x1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln24_1_reg_471_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln23_reg_418_pp0_iter1_reg == 1'd1))) begin
        buff_x1_1_we0_local = 1'b1;
    end else begin
        buff_x1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x1_address0_local = buff_x1_addr_reg_425_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_x1_address0_local = zext_ln6_1_fu_271_p1;
    end else begin
        buff_x1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_x1_ce0_local = 1'b1;
    end else begin
        buff_x1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln24_1_reg_471_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln23_reg_418_pp0_iter1_reg == 1'd0))) begin
        buff_x1_we0_local = 1'b1;
    end else begin
        buff_x1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y1_1_ce0_local = 1'b1;
    end else begin
        buff_y1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y1_ce0_local = 1'b1;
    end else begin
        buff_y1_ce0_local = 1'b0;
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
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln23_1_fu_206_p2 = (ap_sig_allocacmp_indvar_flatten_load + 13'd1);
assign add_ln23_fu_223_p2 = (i_1_fu_58 + 7'd1);
assign add_ln24_fu_313_p2 = (select_ln6_fu_235_p3 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
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
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_551 = ((icmp_ln23_reg_410 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (first_iter_0_reg_414 == 1'd1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign buff_A_1_address0 = zext_ln25_fu_305_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_2_address0 = zext_ln25_fu_305_p1;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_3_address0 = zext_ln25_fu_305_p1;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_address0 = zext_ln25_fu_305_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_x1_1_address0 = buff_x1_1_address0_local;
assign buff_x1_1_ce0 = buff_x1_1_ce0_local;
assign buff_x1_1_d0 = add_reg_500;
assign buff_x1_1_we0 = buff_x1_1_we0_local;
assign buff_x1_address0 = buff_x1_address0_local;
assign buff_x1_ce0 = buff_x1_ce0_local;
assign buff_x1_d0 = add_reg_500;
assign buff_x1_we0 = buff_x1_we0_local;
assign buff_y1_1_address0 = zext_ln6_fu_291_p1;
assign buff_y1_1_ce0 = buff_y1_1_ce0_local;
assign buff_y1_address0 = zext_ln6_fu_291_p1;
assign buff_y1_ce0 = buff_y1_ce0_local;
assign first_iter_0_fu_251_p2 = ((select_ln6_fu_235_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_1733_p_ce = 1'b1;
assign grp_fu_1733_p_din0 = empty_fu_66;
assign grp_fu_1733_p_din1 = mul_reg_490;
assign grp_fu_1733_p_opcode = 2'd0;
assign grp_fu_1737_p_ce = 1'b1;
assign grp_fu_1737_p_din0 = select_ln25_3_reg_480;
assign grp_fu_1737_p_din1 = select_ln25_4_reg_485;
assign icmp_ln23_fu_200_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln24_1_fu_319_p2 = ((add_ln24_fu_313_p2 == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln24_fu_229_p2 = ((j_fu_54 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln6_1_fu_261_p4 = {{select_ln23_fu_243_p3[5:1]}};
assign lshr_ln6_3_fu_281_p4 = {{select_ln6_fu_235_p3[5:1]}};
assign select_ln23_fu_243_p3 = ((icmp_ln24_fu_229_p2[0:0] == 1'b1) ? add_ln23_fu_223_p2 : i_1_fu_58);
assign select_ln25_1_fu_342_p3 = ((trunc_ln23_reg_418[0:0] == 1'b1) ? buff_A_1_q0 : buff_A_q0);
assign select_ln25_2_fu_349_p3 = ((trunc_ln23_reg_418[0:0] == 1'b1) ? buff_A_3_q0 : buff_A_2_q0);
assign select_ln25_3_fu_356_p3 = ((trunc_ln24_reg_435[0:0] == 1'b1) ? select_ln25_2_fu_349_p3 : select_ln25_1_fu_342_p3);
assign select_ln25_4_fu_363_p3 = ((trunc_ln24_reg_435[0:0] == 1'b1) ? buff_y1_1_q0 : buff_y1_q0);
assign select_ln25_fu_335_p3 = ((trunc_ln23_reg_418[0:0] == 1'b1) ? buff_x1_1_q0 : buff_x1_q0);
assign select_ln6_fu_235_p3 = ((icmp_ln24_fu_229_p2[0:0] == 1'b1) ? 7'd0 : j_fu_54);
assign tmp_1_fu_297_p3 = {{lshr_ln6_1_fu_261_p4}, {lshr_ln6_3_fu_281_p4}};
assign trunc_ln23_fu_257_p1 = select_ln23_fu_243_p3[0:0];
assign trunc_ln24_fu_277_p1 = select_ln6_fu_235_p3[0:0];
assign zext_ln25_fu_305_p1 = tmp_1_fu_297_p3;
assign zext_ln6_1_fu_271_p1 = lshr_ln6_1_fu_261_p4;
assign zext_ln6_fu_291_p1 = lshr_ln6_3_fu_281_p4;
endmodule 