module syrk_syrk_Pipeline_lpwr_1_lpwr_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,C_out_0_din,C_out_0_full_n,C_out_0_write,C_out_1_din,C_out_1_full_n,C_out_1_write,C_out_2_din,C_out_2_full_n,C_out_2_write,C_out_3_din,C_out_3_full_n,C_out_3_write,C_out_4_din,C_out_4_full_n,C_out_4_write,C_out_5_din,C_out_5_full_n,C_out_5_write,C_out_6_din,C_out_6_full_n,C_out_6_write,C_out_7_din,C_out_7_full_n,C_out_7_write,buff_C_out_address0,buff_C_out_ce0,buff_C_out_q0,buff_C_out_1_address0,buff_C_out_1_ce0,buff_C_out_1_q0,buff_C_out_2_address0,buff_C_out_2_ce0,buff_C_out_2_q0,buff_C_out_3_address0,buff_C_out_3_ce0,buff_C_out_3_q0,buff_C_out_4_address0,buff_C_out_4_ce0,buff_C_out_4_q0,buff_C_out_5_address0,buff_C_out_5_ce0,buff_C_out_5_q0,buff_C_out_6_address0,buff_C_out_6_ce0,buff_C_out_6_q0,buff_C_out_7_address0,buff_C_out_7_ce0,buff_C_out_7_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] C_out_0_din;
input   C_out_0_full_n;
output   C_out_0_write;
output  [31:0] C_out_1_din;
input   C_out_1_full_n;
output   C_out_1_write;
output  [31:0] C_out_2_din;
input   C_out_2_full_n;
output   C_out_2_write;
output  [31:0] C_out_3_din;
input   C_out_3_full_n;
output   C_out_3_write;
output  [31:0] C_out_4_din;
input   C_out_4_full_n;
output   C_out_4_write;
output  [31:0] C_out_5_din;
input   C_out_5_full_n;
output   C_out_5_write;
output  [31:0] C_out_6_din;
input   C_out_6_full_n;
output   C_out_6_write;
output  [31:0] C_out_7_din;
input   C_out_7_full_n;
output   C_out_7_write;
output  [8:0] buff_C_out_address0;
output   buff_C_out_ce0;
input  [31:0] buff_C_out_q0;
output  [8:0] buff_C_out_1_address0;
output   buff_C_out_1_ce0;
input  [31:0] buff_C_out_1_q0;
output  [8:0] buff_C_out_2_address0;
output   buff_C_out_2_ce0;
input  [31:0] buff_C_out_2_q0;
output  [8:0] buff_C_out_3_address0;
output   buff_C_out_3_ce0;
input  [31:0] buff_C_out_3_q0;
output  [8:0] buff_C_out_4_address0;
output   buff_C_out_4_ce0;
input  [31:0] buff_C_out_4_q0;
output  [8:0] buff_C_out_5_address0;
output   buff_C_out_5_ce0;
input  [31:0] buff_C_out_5_q0;
output  [8:0] buff_C_out_6_address0;
output   buff_C_out_6_ce0;
input  [31:0] buff_C_out_6_q0;
output  [8:0] buff_C_out_7_address0;
output   buff_C_out_7_ce0;
input  [31:0] buff_C_out_7_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
reg   [0:0] icmp_ln40_reg_692;
reg   [0:0] icmp_ln40_1_reg_696;
reg   [0:0] icmp_ln40_2_reg_700;
reg   [0:0] icmp_ln40_3_reg_704;
reg   [0:0] icmp_ln40_4_reg_708;
reg   [0:0] icmp_ln40_5_reg_712;
reg   [0:0] icmp_ln40_6_reg_716;
reg   [0:0] icmp_ln40_7_reg_720;
reg    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln38_fu_306_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    C_out_7_blk_n;
wire    ap_block_pp0_stage0;
reg    C_out_6_blk_n;
reg    C_out_5_blk_n;
reg    C_out_4_blk_n;
reg    C_out_3_blk_n;
reg    C_out_2_blk_n;
reg    C_out_1_blk_n;
reg    C_out_0_blk_n;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln40_fu_393_p2;
wire   [0:0] icmp_ln40_1_fu_421_p2;
wire   [0:0] icmp_ln40_2_fu_455_p2;
wire   [0:0] icmp_ln40_3_fu_473_p2;
wire   [0:0] icmp_ln40_4_fu_497_p2;
wire   [0:0] icmp_ln40_5_fu_527_p2;
wire   [0:0] icmp_ln40_6_fu_547_p2;
wire   [0:0] icmp_ln40_7_fu_565_p2;
wire   [63:0] zext_ln41_fu_381_p1;
reg   [6:0] j_fu_108;
wire   [6:0] add_ln39_fu_571_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_112;
wire   [6:0] select_ln38_fu_351_p3;
reg   [9:0] indvar_flatten35_fu_116;
wire   [9:0] add_ln38_1_fu_312_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten35_load;
wire   [31:0] bitcast_ln41_fu_587_p1;
reg   [31:0] C_out_0_din_local;
reg    ap_block_pp0_stage0_01001;
reg    C_out_0_write_local;
wire   [31:0] bitcast_ln41_1_fu_592_p1;
reg   [31:0] C_out_1_din_local;
reg    C_out_1_write_local;
wire   [31:0] bitcast_ln41_2_fu_597_p1;
reg   [31:0] C_out_2_din_local;
reg    C_out_2_write_local;
wire   [31:0] bitcast_ln41_3_fu_602_p1;
reg   [31:0] C_out_3_din_local;
reg    C_out_3_write_local;
wire   [31:0] bitcast_ln41_4_fu_607_p1;
reg   [31:0] C_out_4_din_local;
reg    C_out_4_write_local;
wire   [31:0] bitcast_ln41_5_fu_612_p1;
reg   [31:0] C_out_5_din_local;
reg    C_out_5_write_local;
wire   [31:0] bitcast_ln41_6_fu_617_p1;
reg   [31:0] C_out_6_din_local;
reg    C_out_6_write_local;
wire   [31:0] bitcast_ln41_7_fu_622_p1;
reg   [31:0] C_out_7_din_local;
reg    C_out_7_write_local;
reg    buff_C_out_ce0_local;
reg    buff_C_out_1_ce0_local;
reg    buff_C_out_2_ce0_local;
reg    buff_C_out_3_ce0_local;
reg    buff_C_out_4_ce0_local;
reg    buff_C_out_5_ce0_local;
reg    buff_C_out_6_ce0_local;
reg    buff_C_out_7_ce0_local;
wire   [0:0] tmp_fu_335_p3;
wire   [6:0] add_ln38_fu_329_p2;
wire   [6:0] select_ln5_fu_343_p3;
wire   [5:0] trunc_ln38_fu_359_p1;
wire   [2:0] lshr_ln5_4_fu_363_p4;
wire   [8:0] tmp_s_fu_373_p3;
wire   [4:0] tmp_1_fu_399_p4;
wire   [5:0] or_ln_fu_409_p3;
wire   [6:0] zext_ln40_fu_417_p1;
wire   [3:0] tmp_2_fu_427_p4;
wire   [0:0] trunc_ln39_fu_437_p1;
wire   [5:0] or_ln39_1_fu_441_p4;
wire   [6:0] zext_ln40_1_fu_451_p1;
wire   [5:0] or_ln39_2_fu_461_p3;
wire   [6:0] zext_ln40_2_fu_469_p1;
wire   [1:0] trunc_ln39_1_fu_479_p1;
wire   [5:0] or_ln39_3_fu_483_p4;
wire   [6:0] zext_ln40_3_fu_493_p1;
wire   [0:0] tmp_3_fu_503_p3;
wire   [5:0] or_ln39_4_fu_511_p5;
wire   [6:0] zext_ln40_4_fu_523_p1;
wire   [5:0] or_ln39_5_fu_533_p4;
wire   [6:0] zext_ln40_5_fu_543_p1;
wire   [5:0] or_ln39_6_fu_553_p3;
wire   [6:0] zext_ln40_6_fu_561_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 j_fu_108 = 7'd0;
#0 i_fu_112 = 7'd0;
#0 indvar_flatten35_fu_116 = 10'd0;
#0 ap_done_reg = 1'b0;
end
syrk_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_fu_112 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_112 <= select_ln38_fu_351_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln38_fu_306_p2 == 1'd0))) begin
            indvar_flatten35_fu_116 <= add_ln38_1_fu_312_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten35_fu_116 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_108 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_108 <= add_ln39_fu_571_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln40_1_reg_696 <= icmp_ln40_1_fu_421_p2;
        icmp_ln40_2_reg_700 <= icmp_ln40_2_fu_455_p2;
        icmp_ln40_3_reg_704 <= icmp_ln40_3_fu_473_p2;
        icmp_ln40_4_reg_708 <= icmp_ln40_4_fu_497_p2;
        icmp_ln40_5_reg_712 <= icmp_ln40_5_fu_527_p2;
        icmp_ln40_6_reg_716 <= icmp_ln40_6_fu_547_p2;
        icmp_ln40_7_reg_720 <= icmp_ln40_7_fu_565_p2;
        icmp_ln40_reg_692 <= icmp_ln40_fu_393_p2;
    end
end
always @ (*) begin
    if ((((icmp_ln40_reg_692 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((icmp_ln40_reg_692 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        C_out_0_blk_n = C_out_0_full_n;
    end else begin
        C_out_0_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        if ((icmp_ln40_reg_692 == 1'd1)) begin
            C_out_0_din_local = 32'd0;
        end else if ((icmp_ln40_reg_692 == 1'd0)) begin
            C_out_0_din_local = bitcast_ln41_fu_587_p1;
        end else begin
            C_out_0_din_local = 'bx;
        end
    end else begin
        C_out_0_din_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln40_reg_692 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((icmp_ln40_reg_692 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        C_out_0_write_local = 1'b1;
    end else begin
        C_out_0_write_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln40_1_reg_696 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((icmp_ln40_1_reg_696 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        C_out_1_blk_n = C_out_1_full_n;
    end else begin
        C_out_1_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        if ((icmp_ln40_1_reg_696 == 1'd1)) begin
            C_out_1_din_local = 32'd0;
        end else if ((icmp_ln40_1_reg_696 == 1'd0)) begin
            C_out_1_din_local = bitcast_ln41_1_fu_592_p1;
        end else begin
            C_out_1_din_local = 'bx;
        end
    end else begin
        C_out_1_din_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln40_1_reg_696 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((icmp_ln40_1_reg_696 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        C_out_1_write_local = 1'b1;
    end else begin
        C_out_1_write_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln40_2_reg_700 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((icmp_ln40_2_reg_700 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        C_out_2_blk_n = C_out_2_full_n;
    end else begin
        C_out_2_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        if ((icmp_ln40_2_reg_700 == 1'd1)) begin
            C_out_2_din_local = 32'd0;
        end else if ((icmp_ln40_2_reg_700 == 1'd0)) begin
            C_out_2_din_local = bitcast_ln41_2_fu_597_p1;
        end else begin
            C_out_2_din_local = 'bx;
        end
    end else begin
        C_out_2_din_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln40_2_reg_700 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((icmp_ln40_2_reg_700 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        C_out_2_write_local = 1'b1;
    end else begin
        C_out_2_write_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln40_3_reg_704 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((icmp_ln40_3_reg_704 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        C_out_3_blk_n = C_out_3_full_n;
    end else begin
        C_out_3_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        if ((icmp_ln40_3_reg_704 == 1'd1)) begin
            C_out_3_din_local = 32'd0;
        end else if ((icmp_ln40_3_reg_704 == 1'd0)) begin
            C_out_3_din_local = bitcast_ln41_3_fu_602_p1;
        end else begin
            C_out_3_din_local = 'bx;
        end
    end else begin
        C_out_3_din_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln40_3_reg_704 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((icmp_ln40_3_reg_704 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        C_out_3_write_local = 1'b1;
    end else begin
        C_out_3_write_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln40_4_reg_708 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((icmp_ln40_4_reg_708 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        C_out_4_blk_n = C_out_4_full_n;
    end else begin
        C_out_4_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        if ((icmp_ln40_4_reg_708 == 1'd1)) begin
            C_out_4_din_local = 32'd0;
        end else if ((icmp_ln40_4_reg_708 == 1'd0)) begin
            C_out_4_din_local = bitcast_ln41_4_fu_607_p1;
        end else begin
            C_out_4_din_local = 'bx;
        end
    end else begin
        C_out_4_din_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln40_4_reg_708 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((icmp_ln40_4_reg_708 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        C_out_4_write_local = 1'b1;
    end else begin
        C_out_4_write_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln40_5_reg_712 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((icmp_ln40_5_reg_712 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        C_out_5_blk_n = C_out_5_full_n;
    end else begin
        C_out_5_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        if ((icmp_ln40_5_reg_712 == 1'd1)) begin
            C_out_5_din_local = 32'd0;
        end else if ((icmp_ln40_5_reg_712 == 1'd0)) begin
            C_out_5_din_local = bitcast_ln41_5_fu_612_p1;
        end else begin
            C_out_5_din_local = 'bx;
        end
    end else begin
        C_out_5_din_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln40_5_reg_712 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((icmp_ln40_5_reg_712 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        C_out_5_write_local = 1'b1;
    end else begin
        C_out_5_write_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (icmp_ln40_6_reg_716 == 1'd1)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (icmp_ln40_6_reg_716 == 1'd0)))) begin
        C_out_6_blk_n = C_out_6_full_n;
    end else begin
        C_out_6_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        if ((icmp_ln40_6_reg_716 == 1'd1)) begin
            C_out_6_din_local = 32'd0;
        end else if ((icmp_ln40_6_reg_716 == 1'd0)) begin
            C_out_6_din_local = bitcast_ln41_6_fu_617_p1;
        end else begin
            C_out_6_din_local = 'bx;
        end
    end else begin
        C_out_6_din_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln40_6_reg_716 == 1'd1)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln40_6_reg_716 == 1'd0)))) begin
        C_out_6_write_local = 1'b1;
    end else begin
        C_out_6_write_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (icmp_ln40_7_reg_720 == 1'd1)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (icmp_ln40_7_reg_720 == 1'd0)))) begin
        C_out_7_blk_n = C_out_7_full_n;
    end else begin
        C_out_7_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        if ((icmp_ln40_7_reg_720 == 1'd1)) begin
            C_out_7_din_local = 32'd0;
        end else if ((icmp_ln40_7_reg_720 == 1'd0)) begin
            C_out_7_din_local = bitcast_ln41_7_fu_622_p1;
        end else begin
            C_out_7_din_local = 'bx;
        end
    end else begin
        C_out_7_din_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln40_7_reg_720 == 1'd1)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln40_7_reg_720 == 1'd0)))) begin
        C_out_7_write_local = 1'b1;
    end else begin
        C_out_7_write_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln38_fu_306_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten35_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten35_load = indvar_flatten35_fu_116;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_1_ce0_local = 1'b1;
    end else begin
        buff_C_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_2_ce0_local = 1'b1;
    end else begin
        buff_C_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_3_ce0_local = 1'b1;
    end else begin
        buff_C_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_4_ce0_local = 1'b1;
    end else begin
        buff_C_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_5_ce0_local = 1'b1;
    end else begin
        buff_C_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_6_ce0_local = 1'b1;
    end else begin
        buff_C_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_7_ce0_local = 1'b1;
    end else begin
        buff_C_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_ce0_local = 1'b1;
    end else begin
        buff_C_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign C_out_0_din = C_out_0_din_local;
assign C_out_0_write = C_out_0_write_local;
assign C_out_1_din = C_out_1_din_local;
assign C_out_1_write = C_out_1_write_local;
assign C_out_2_din = C_out_2_din_local;
assign C_out_2_write = C_out_2_write_local;
assign C_out_3_din = C_out_3_din_local;
assign C_out_3_write = C_out_3_write_local;
assign C_out_4_din = C_out_4_din_local;
assign C_out_4_write = C_out_4_write_local;
assign C_out_5_din = C_out_5_din_local;
assign C_out_5_write = C_out_5_write_local;
assign C_out_6_din = C_out_6_din_local;
assign C_out_6_write = C_out_6_write_local;
assign C_out_7_din = C_out_7_din_local;
assign C_out_7_write = C_out_7_write_local;
assign add_ln38_1_fu_312_p2 = (ap_sig_allocacmp_indvar_flatten35_load + 10'd1);
assign add_ln38_fu_329_p2 = (i_fu_112 + 7'd1);
assign add_ln39_fu_571_p2 = (select_ln5_fu_343_p3 + 7'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state3_pp0_stage0_iter2));
end
always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state3_pp0_stage0_iter2));
end
always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state3_pp0_stage0_iter2));
end
always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = (((icmp_ln40_5_reg_712 == 1'd0) & (1'b0 == C_out_5_full_n)) | ((icmp_ln40_4_reg_708 == 1'd1) & (1'b0 == C_out_4_full_n)) | ((icmp_ln40_4_reg_708 == 1'd0) & (1'b0 == C_out_4_full_n)) | ((icmp_ln40_3_reg_704 == 1'd1) & (1'b0 == C_out_3_full_n)) | ((icmp_ln40_3_reg_704 == 1'd0) & (1'b0 == C_out_3_full_n)) | ((icmp_ln40_2_reg_700 == 1'd1) & (1'b0 == C_out_2_full_n)) | ((icmp_ln40_2_reg_700 == 1'd0) & (1'b0 == C_out_2_full_n)) | ((icmp_ln40_1_reg_696 == 1'd1) & (1'b0 == C_out_1_full_n)) | ((icmp_ln40_1_reg_696 == 1'd0) & (1'b0 == C_out_1_full_n)) | ((icmp_ln40_reg_692 == 1'd1) & (1'b0 == C_out_0_full_n)) | ((icmp_ln40_reg_692 == 1'd0) & (1'b0 == C_out_0_full_n)) | ((1'b0 == C_out_7_full_n) & (icmp_ln40_7_reg_720 == 1'd1)) | ((1'b0 == C_out_7_full_n) & (icmp_ln40_7_reg_720 == 1'd0)) | ((1'b0 == C_out_6_full_n) & (icmp_ln40_6_reg_716 == 1'd1)) | ((1'b0 == C_out_6_full_n) & (icmp_ln40_6_reg_716 == 1'd0)) | ((icmp_ln40_5_reg_712 == 1'd1) & (1'b0 == C_out_5_full_n)));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln41_1_fu_592_p1 = buff_C_out_1_q0;
assign bitcast_ln41_2_fu_597_p1 = buff_C_out_2_q0;
assign bitcast_ln41_3_fu_602_p1 = buff_C_out_3_q0;
assign bitcast_ln41_4_fu_607_p1 = buff_C_out_4_q0;
assign bitcast_ln41_5_fu_612_p1 = buff_C_out_5_q0;
assign bitcast_ln41_6_fu_617_p1 = buff_C_out_6_q0;
assign bitcast_ln41_7_fu_622_p1 = buff_C_out_7_q0;
assign bitcast_ln41_fu_587_p1 = buff_C_out_q0;
assign buff_C_out_1_address0 = zext_ln41_fu_381_p1;
assign buff_C_out_1_ce0 = buff_C_out_1_ce0_local;
assign buff_C_out_2_address0 = zext_ln41_fu_381_p1;
assign buff_C_out_2_ce0 = buff_C_out_2_ce0_local;
assign buff_C_out_3_address0 = zext_ln41_fu_381_p1;
assign buff_C_out_3_ce0 = buff_C_out_3_ce0_local;
assign buff_C_out_4_address0 = zext_ln41_fu_381_p1;
assign buff_C_out_4_ce0 = buff_C_out_4_ce0_local;
assign buff_C_out_5_address0 = zext_ln41_fu_381_p1;
assign buff_C_out_5_ce0 = buff_C_out_5_ce0_local;
assign buff_C_out_6_address0 = zext_ln41_fu_381_p1;
assign buff_C_out_6_ce0 = buff_C_out_6_ce0_local;
assign buff_C_out_7_address0 = zext_ln41_fu_381_p1;
assign buff_C_out_7_ce0 = buff_C_out_7_ce0_local;
assign buff_C_out_address0 = zext_ln41_fu_381_p1;
assign buff_C_out_ce0 = buff_C_out_ce0_local;
assign icmp_ln38_fu_306_p2 = ((ap_sig_allocacmp_indvar_flatten35_load == 10'd512) ? 1'b1 : 1'b0);
assign icmp_ln40_1_fu_421_p2 = ((zext_ln40_fu_417_p1 > select_ln38_fu_351_p3) ? 1'b1 : 1'b0);
assign icmp_ln40_2_fu_455_p2 = ((zext_ln40_1_fu_451_p1 > select_ln38_fu_351_p3) ? 1'b1 : 1'b0);
assign icmp_ln40_3_fu_473_p2 = ((zext_ln40_2_fu_469_p1 > select_ln38_fu_351_p3) ? 1'b1 : 1'b0);
assign icmp_ln40_4_fu_497_p2 = ((zext_ln40_3_fu_493_p1 > select_ln38_fu_351_p3) ? 1'b1 : 1'b0);
assign icmp_ln40_5_fu_527_p2 = ((zext_ln40_4_fu_523_p1 > select_ln38_fu_351_p3) ? 1'b1 : 1'b0);
assign icmp_ln40_6_fu_547_p2 = ((zext_ln40_5_fu_543_p1 > select_ln38_fu_351_p3) ? 1'b1 : 1'b0);
assign icmp_ln40_7_fu_565_p2 = ((zext_ln40_6_fu_561_p1 > select_ln38_fu_351_p3) ? 1'b1 : 1'b0);
assign icmp_ln40_fu_393_p2 = ((select_ln5_fu_343_p3 > select_ln38_fu_351_p3) ? 1'b1 : 1'b0);
assign lshr_ln5_4_fu_363_p4 = {{select_ln5_fu_343_p3[5:3]}};
assign or_ln39_1_fu_441_p4 = {{{tmp_2_fu_427_p4}, {1'd1}}, {trunc_ln39_fu_437_p1}};
assign or_ln39_2_fu_461_p3 = {{tmp_2_fu_427_p4}, {2'd3}};
assign or_ln39_3_fu_483_p4 = {{{lshr_ln5_4_fu_363_p4}, {1'd1}}, {trunc_ln39_1_fu_479_p1}};
assign or_ln39_4_fu_511_p5 = {{{{lshr_ln5_4_fu_363_p4}, {1'd1}}, {tmp_3_fu_503_p3}}, {1'd1}};
assign or_ln39_5_fu_533_p4 = {{{lshr_ln5_4_fu_363_p4}, {2'd3}}, {trunc_ln39_fu_437_p1}};
assign or_ln39_6_fu_553_p3 = {{lshr_ln5_4_fu_363_p4}, {3'd7}};
assign or_ln_fu_409_p3 = {{tmp_1_fu_399_p4}, {1'd1}};
assign select_ln38_fu_351_p3 = ((tmp_fu_335_p3[0:0] == 1'b1) ? add_ln38_fu_329_p2 : i_fu_112);
assign select_ln5_fu_343_p3 = ((tmp_fu_335_p3[0:0] == 1'b1) ? 7'd0 : j_fu_108);
assign tmp_1_fu_399_p4 = {{select_ln5_fu_343_p3[5:1]}};
assign tmp_2_fu_427_p4 = {{select_ln5_fu_343_p3[5:2]}};
assign tmp_3_fu_503_p3 = select_ln5_fu_343_p3[32'd1];
assign tmp_fu_335_p3 = j_fu_108[32'd6];
assign tmp_s_fu_373_p3 = {{trunc_ln38_fu_359_p1}, {lshr_ln5_4_fu_363_p4}};
assign trunc_ln38_fu_359_p1 = select_ln38_fu_351_p3[5:0];
assign trunc_ln39_1_fu_479_p1 = select_ln5_fu_343_p3[1:0];
assign trunc_ln39_fu_437_p1 = select_ln5_fu_343_p3[0:0];
assign zext_ln40_1_fu_451_p1 = or_ln39_1_fu_441_p4;
assign zext_ln40_2_fu_469_p1 = or_ln39_2_fu_461_p3;
assign zext_ln40_3_fu_493_p1 = or_ln39_3_fu_483_p4;
assign zext_ln40_4_fu_523_p1 = or_ln39_4_fu_511_p5;
assign zext_ln40_5_fu_543_p1 = or_ln39_5_fu_533_p4;
assign zext_ln40_6_fu_561_p1 = or_ln39_6_fu_553_p3;
assign zext_ln40_fu_417_p1 = or_ln_fu_409_p3;
assign zext_ln41_fu_381_p1 = tmp_s_fu_373_p3;
endmodule 