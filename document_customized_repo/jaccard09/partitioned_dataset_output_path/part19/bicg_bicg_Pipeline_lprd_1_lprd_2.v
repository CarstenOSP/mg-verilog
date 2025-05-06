
module bicg_bicg_Pipeline_lprd_1_lprd_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_address0,A_ce0,A_q0,buff_A_address0,buff_A_ce0,buff_A_we0,buff_A_d0,buff_A_1_address0,buff_A_1_ce0,buff_A_1_we0,buff_A_1_d0,p_address0,p_ce0,p_q0,buff_p_address0,buff_p_ce0,buff_p_we0,buff_p_d0,buff_p_1_address0,buff_p_1_ce0,buff_p_1_we0,buff_p_1_d0,r_address0,r_ce0,r_q0,buff_r_address0,buff_r_ce0,buff_r_we0,buff_r_d0,buff_s_out_address0,buff_s_out_ce0,buff_s_out_we0,buff_s_out_d0,buff_q_out_address0,buff_q_out_ce0,buff_q_out_we0,buff_q_out_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] A_address0;
output   A_ce0;
input  [31:0] A_q0;
output  [10:0] buff_A_address0;
output   buff_A_ce0;
output   buff_A_we0;
output  [31:0] buff_A_d0;
output  [10:0] buff_A_1_address0;
output   buff_A_1_ce0;
output   buff_A_1_we0;
output  [31:0] buff_A_1_d0;
output  [5:0] p_address0;
output   p_ce0;
input  [31:0] p_q0;
output  [4:0] buff_p_address0;
output   buff_p_ce0;
output   buff_p_we0;
output  [31:0] buff_p_d0;
output  [4:0] buff_p_1_address0;
output   buff_p_1_ce0;
output   buff_p_1_we0;
output  [31:0] buff_p_1_d0;
output  [5:0] r_address0;
output   r_ce0;
input  [31:0] r_q0;
output  [5:0] buff_r_address0;
output   buff_r_ce0;
output   buff_r_we0;
output  [31:0] buff_r_d0;
output  [5:0] buff_s_out_address0;
output   buff_s_out_ce0;
output   buff_s_out_we0;
output  [31:0] buff_s_out_d0;
output  [5:0] buff_q_out_address0;
output   buff_q_out_ce0;
output   buff_q_out_we0;
output  [31:0] buff_q_out_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln13_fu_227_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [6:0] select_ln5_fu_262_p3;
reg   [6:0] select_ln5_reg_419;
wire   [5:0] empty_fu_278_p1;
reg   [5:0] empty_reg_426;
reg   [5:0] empty_reg_426_pp0_iter2_reg;
wire   [0:0] first_iter_0_fu_282_p2;
reg   [0:0] first_iter_0_reg_432;
wire   [0:0] trunc_ln13_fu_297_p1;
reg   [0:0] trunc_ln13_reg_436;
reg   [4:0] lshr_ln5_reg_440;
reg   [5:0] buff_r_addr_reg_455;
reg   [5:0] buff_s_out_addr_reg_460;
reg   [5:0] buff_q_out_addr_reg_465;
wire   [0:0] trunc_ln18_fu_364_p1;
reg   [0:0] trunc_ln18_reg_475;
reg   [4:0] lshr_ln5_2_reg_479;
wire   [63:0] zext_ln13_fu_288_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln5_fu_334_p1;
wire   [63:0] zext_ln19_2_fu_359_p1;
wire   [63:0] zext_ln19_1_fu_382_p1;
reg   [6:0] j_fu_68;
wire   [6:0] add_ln18_fu_311_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_72;
wire   [6:0] select_ln13_fu_270_p3;
reg   [12:0] indvar_flatten_fu_76;
wire   [12:0] add_ln13_1_fu_233_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten_load;
reg    p_ce0_local;
reg    r_ce0_local;
reg    buff_p_we0_local;
wire   [31:0] bitcast_ln14_fu_339_p1;
reg    buff_p_ce0_local;
reg    buff_p_1_we0_local;
reg    buff_p_1_ce0_local;
reg    buff_r_we0_local;
wire   [31:0] bitcast_ln15_fu_345_p1;
reg    buff_r_ce0_local;
reg    buff_s_out_we0_local;
reg    buff_s_out_ce0_local;
reg    buff_q_out_we0_local;
reg    buff_q_out_ce0_local;
reg    A_ce0_local;
reg    buff_A_we0_local;
wire   [31:0] bitcast_ln19_fu_388_p1;
reg    buff_A_ce0_local;
reg    buff_A_1_we0_local;
reg    buff_A_1_ce0_local;
wire   [0:0] icmp_ln18_fu_256_p2;
wire   [6:0] add_ln13_fu_250_p2;
wire   [11:0] tmp_fu_327_p3;
wire   [11:0] zext_ln19_fu_350_p1;
wire   [11:0] add_ln19_fu_353_p2;
wire   [10:0] tmp_3_fu_376_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
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
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 j_fu_68 = 7'd0;
#0 i_fu_72 = 7'd0;
#0 indvar_flatten_fu_76 = 13'd0;
#0 ap_done_reg = 1'b0;
end
bicg_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_fu_72 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_72 <= select_ln13_fu_270_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln13_fu_227_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_76 <= add_ln13_1_fu_233_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_76 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_68 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_68 <= add_ln18_fu_311_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        buff_q_out_addr_reg_465 <= zext_ln13_fu_288_p1;
        buff_r_addr_reg_455 <= zext_ln13_fu_288_p1;
        buff_s_out_addr_reg_460 <= zext_ln13_fu_288_p1;
        empty_reg_426 <= empty_fu_278_p1;
        first_iter_0_reg_432 <= first_iter_0_fu_282_p2;
        lshr_ln5_reg_440 <= {{select_ln13_fu_270_p3[5:1]}};
        select_ln5_reg_419 <= select_ln5_fu_262_p3;
        trunc_ln13_reg_436 <= trunc_ln13_fu_297_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        empty_reg_426_pp0_iter2_reg <= empty_reg_426;
        lshr_ln5_2_reg_479 <= {{select_ln5_reg_419[5:1]}};
        trunc_ln18_reg_475 <= trunc_ln18_fu_364_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        A_ce0_local = 1'b1;
    end else begin
        A_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_fu_227_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_76;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_1_ce0_local = 1'b1;
    end else begin
        buff_A_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln18_reg_475 == 1'd1))) begin
        buff_A_1_we0_local = 1'b1;
    end else begin
        buff_A_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_ce0_local = 1'b1;
    end else begin
        buff_A_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln18_reg_475 == 1'd0))) begin
        buff_A_we0_local = 1'b1;
    end else begin
        buff_A_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_p_1_ce0_local = 1'b1;
    end else begin
        buff_p_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln13_reg_436 == 1'd1) & (first_iter_0_reg_432 == 1'd1))) begin
        buff_p_1_we0_local = 1'b1;
    end else begin
        buff_p_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_p_ce0_local = 1'b1;
    end else begin
        buff_p_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln13_reg_436 == 1'd0) & (first_iter_0_reg_432 == 1'd1))) begin
        buff_p_we0_local = 1'b1;
    end else begin
        buff_p_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_q_out_ce0_local = 1'b1;
    end else begin
        buff_q_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (first_iter_0_reg_432 == 1'd1))) begin
        buff_q_out_we0_local = 1'b1;
    end else begin
        buff_q_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_r_ce0_local = 1'b1;
    end else begin
        buff_r_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (first_iter_0_reg_432 == 1'd1))) begin
        buff_r_we0_local = 1'b1;
    end else begin
        buff_r_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_s_out_ce0_local = 1'b1;
    end else begin
        buff_s_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (first_iter_0_reg_432 == 1'd1))) begin
        buff_s_out_we0_local = 1'b1;
    end else begin
        buff_s_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_ce0_local = 1'b1;
    end else begin
        p_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        r_ce0_local = 1'b1;
    end else begin
        r_ce0_local = 1'b0;
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
assign A_address0 = zext_ln19_2_fu_359_p1;
assign A_ce0 = A_ce0_local;
assign add_ln13_1_fu_233_p2 = (ap_sig_allocacmp_indvar_flatten_load + 13'd1);
assign add_ln13_fu_250_p2 = (i_fu_72 + 7'd1);
assign add_ln18_fu_311_p2 = (select_ln5_fu_262_p3 + 7'd1);
assign add_ln19_fu_353_p2 = (tmp_fu_327_p3 + zext_ln19_fu_350_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln14_fu_339_p1 = p_q0;
assign bitcast_ln15_fu_345_p1 = r_q0;
assign bitcast_ln19_fu_388_p1 = A_q0;
assign buff_A_1_address0 = zext_ln19_1_fu_382_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_1_d0 = bitcast_ln19_fu_388_p1;
assign buff_A_1_we0 = buff_A_1_we0_local;
assign buff_A_address0 = zext_ln19_1_fu_382_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_A_d0 = bitcast_ln19_fu_388_p1;
assign buff_A_we0 = buff_A_we0_local;
assign buff_p_1_address0 = zext_ln5_fu_334_p1;
assign buff_p_1_ce0 = buff_p_1_ce0_local;
assign buff_p_1_d0 = bitcast_ln14_fu_339_p1;
assign buff_p_1_we0 = buff_p_1_we0_local;
assign buff_p_address0 = zext_ln5_fu_334_p1;
assign buff_p_ce0 = buff_p_ce0_local;
assign buff_p_d0 = bitcast_ln14_fu_339_p1;
assign buff_p_we0 = buff_p_we0_local;
assign buff_q_out_address0 = buff_q_out_addr_reg_465;
assign buff_q_out_ce0 = buff_q_out_ce0_local;
assign buff_q_out_d0 = 32'd0;
assign buff_q_out_we0 = buff_q_out_we0_local;
assign buff_r_address0 = buff_r_addr_reg_455;
assign buff_r_ce0 = buff_r_ce0_local;
assign buff_r_d0 = bitcast_ln15_fu_345_p1;
assign buff_r_we0 = buff_r_we0_local;
assign buff_s_out_address0 = buff_s_out_addr_reg_460;
assign buff_s_out_ce0 = buff_s_out_ce0_local;
assign buff_s_out_d0 = 32'd0;
assign buff_s_out_we0 = buff_s_out_we0_local;
assign empty_fu_278_p1 = select_ln13_fu_270_p3[5:0];
assign first_iter_0_fu_282_p2 = ((select_ln5_fu_262_p3 == 7'd0) ? 1'b1 : 1'b0);
assign icmp_ln13_fu_227_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_256_p2 = ((j_fu_68 == 7'd64) ? 1'b1 : 1'b0);
assign p_address0 = zext_ln13_fu_288_p1;
assign p_ce0 = p_ce0_local;
assign r_address0 = zext_ln13_fu_288_p1;
assign r_ce0 = r_ce0_local;
assign select_ln13_fu_270_p3 = ((icmp_ln18_fu_256_p2[0:0] == 1'b1) ? add_ln13_fu_250_p2 : i_fu_72);
assign select_ln5_fu_262_p3 = ((icmp_ln18_fu_256_p2[0:0] == 1'b1) ? 7'd0 : j_fu_68);
assign tmp_3_fu_376_p3 = {{empty_reg_426_pp0_iter2_reg}, {lshr_ln5_2_reg_479}};
assign tmp_fu_327_p3 = {{empty_reg_426}, {6'd0}};
assign trunc_ln13_fu_297_p1 = select_ln13_fu_270_p3[0:0];
assign trunc_ln18_fu_364_p1 = select_ln5_reg_419[0:0];
assign zext_ln13_fu_288_p1 = select_ln13_fu_270_p3;
assign zext_ln19_1_fu_382_p1 = tmp_3_fu_376_p3;
assign zext_ln19_2_fu_359_p1 = add_ln19_fu_353_p2;
assign zext_ln19_fu_350_p1 = select_ln5_reg_419;
assign zext_ln5_fu_334_p1 = lshr_ln5_reg_440;
endmodule 
