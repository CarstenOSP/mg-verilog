module k3mm_k3mm_Pipeline_lpwr_1_lpwr_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,E_out_0_din,E_out_0_full_n,E_out_0_write,E_out_1_din,E_out_1_full_n,E_out_1_write,E_out_2_din,E_out_2_full_n,E_out_2_write,E_out_3_din,E_out_3_full_n,E_out_3_write,E_out_4_din,E_out_4_full_n,E_out_4_write,E_out_5_din,E_out_5_full_n,E_out_5_write,E_out_6_din,E_out_6_full_n,E_out_6_write,E_out_7_din,E_out_7_full_n,E_out_7_write,buff_E_out_address0,buff_E_out_ce0,buff_E_out_q0,buff_E_out_1_address0,buff_E_out_1_ce0,buff_E_out_1_q0,buff_E_out_2_address0,buff_E_out_2_ce0,buff_E_out_2_q0,buff_E_out_3_address0,buff_E_out_3_ce0,buff_E_out_3_q0,buff_E_out_4_address0,buff_E_out_4_ce0,buff_E_out_4_q0,buff_E_out_5_address0,buff_E_out_5_ce0,buff_E_out_5_q0,buff_E_out_6_address0,buff_E_out_6_ce0,buff_E_out_6_q0,buff_E_out_7_address0,buff_E_out_7_ce0,buff_E_out_7_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] E_out_0_din;
input   E_out_0_full_n;
output   E_out_0_write;
output  [31:0] E_out_1_din;
input   E_out_1_full_n;
output   E_out_1_write;
output  [31:0] E_out_2_din;
input   E_out_2_full_n;
output   E_out_2_write;
output  [31:0] E_out_3_din;
input   E_out_3_full_n;
output   E_out_3_write;
output  [31:0] E_out_4_din;
input   E_out_4_full_n;
output   E_out_4_write;
output  [31:0] E_out_5_din;
input   E_out_5_full_n;
output   E_out_5_write;
output  [31:0] E_out_6_din;
input   E_out_6_full_n;
output   E_out_6_write;
output  [31:0] E_out_7_din;
input   E_out_7_full_n;
output   E_out_7_write;
output  [8:0] buff_E_out_address0;
output   buff_E_out_ce0;
input  [31:0] buff_E_out_q0;
output  [8:0] buff_E_out_1_address0;
output   buff_E_out_1_ce0;
input  [31:0] buff_E_out_1_q0;
output  [8:0] buff_E_out_2_address0;
output   buff_E_out_2_ce0;
input  [31:0] buff_E_out_2_q0;
output  [8:0] buff_E_out_3_address0;
output   buff_E_out_3_ce0;
input  [31:0] buff_E_out_3_q0;
output  [8:0] buff_E_out_4_address0;
output   buff_E_out_4_ce0;
input  [31:0] buff_E_out_4_q0;
output  [8:0] buff_E_out_5_address0;
output   buff_E_out_5_ce0;
input  [31:0] buff_E_out_5_q0;
output  [8:0] buff_E_out_6_address0;
output   buff_E_out_6_ce0;
input  [31:0] buff_E_out_6_q0;
output  [8:0] buff_E_out_7_address0;
output   buff_E_out_7_ce0;
input  [31:0] buff_E_out_7_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
reg    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln56_fu_272_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    E_out_0_blk_n;
wire    ap_block_pp0_stage0;
reg    E_out_1_blk_n;
reg    E_out_2_blk_n;
reg    E_out_3_blk_n;
reg    E_out_4_blk_n;
reg    E_out_5_blk_n;
reg    E_out_6_blk_n;
reg    E_out_7_blk_n;
reg    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln58_fu_347_p1;
reg   [6:0] j_fu_82;
wire   [6:0] add_ln57_fu_359_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_86;
wire   [6:0] select_ln56_fu_317_p3;
reg   [9:0] indvar_flatten44_fu_90;
wire   [9:0] add_ln56_1_fu_278_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten44_load;
wire   [31:0] bitcast_ln58_fu_375_p1;
reg    ap_block_pp0_stage0_01001;
reg    E_out_0_write_local;
wire   [31:0] bitcast_ln58_1_fu_380_p1;
reg    E_out_1_write_local;
wire   [31:0] bitcast_ln58_2_fu_385_p1;
reg    E_out_2_write_local;
wire   [31:0] bitcast_ln58_3_fu_390_p1;
reg    E_out_3_write_local;
wire   [31:0] bitcast_ln58_4_fu_395_p1;
reg    E_out_4_write_local;
wire   [31:0] bitcast_ln58_5_fu_400_p1;
reg    E_out_5_write_local;
wire   [31:0] bitcast_ln58_6_fu_405_p1;
reg    E_out_6_write_local;
wire   [31:0] bitcast_ln58_7_fu_410_p1;
reg    E_out_7_write_local;
reg    buff_E_out_ce0_local;
reg    buff_E_out_1_ce0_local;
reg    buff_E_out_2_ce0_local;
reg    buff_E_out_3_ce0_local;
reg    buff_E_out_4_ce0_local;
reg    buff_E_out_5_ce0_local;
reg    buff_E_out_6_ce0_local;
reg    buff_E_out_7_ce0_local;
wire   [0:0] tmp_fu_301_p3;
wire   [6:0] add_ln56_fu_295_p2;
wire   [6:0] select_ln10_fu_309_p3;
wire   [5:0] trunc_ln7_fu_325_p1;
wire   [2:0] lshr_ln10_7_fu_329_p4;
wire   [8:0] tmp_s_fu_339_p3;
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
#0 j_fu_82 = 7'd0;
#0 i_fu_86 = 7'd0;
#0 indvar_flatten44_fu_90 = 10'd0;
#0 ap_done_reg = 1'b0;
end
k3mm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_fu_86 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_86 <= select_ln56_fu_317_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln56_fu_272_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten44_fu_90 <= add_ln56_1_fu_278_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten44_fu_90 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_82 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_82 <= add_ln57_fu_359_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        E_out_0_blk_n = E_out_0_full_n;
    end else begin
        E_out_0_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        E_out_0_write_local = 1'b1;
    end else begin
        E_out_0_write_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        E_out_1_blk_n = E_out_1_full_n;
    end else begin
        E_out_1_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        E_out_1_write_local = 1'b1;
    end else begin
        E_out_1_write_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        E_out_2_blk_n = E_out_2_full_n;
    end else begin
        E_out_2_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        E_out_2_write_local = 1'b1;
    end else begin
        E_out_2_write_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        E_out_3_blk_n = E_out_3_full_n;
    end else begin
        E_out_3_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        E_out_3_write_local = 1'b1;
    end else begin
        E_out_3_write_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        E_out_4_blk_n = E_out_4_full_n;
    end else begin
        E_out_4_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        E_out_4_write_local = 1'b1;
    end else begin
        E_out_4_write_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        E_out_5_blk_n = E_out_5_full_n;
    end else begin
        E_out_5_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        E_out_5_write_local = 1'b1;
    end else begin
        E_out_5_write_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        E_out_6_blk_n = E_out_6_full_n;
    end else begin
        E_out_6_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        E_out_6_write_local = 1'b1;
    end else begin
        E_out_6_write_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        E_out_7_blk_n = E_out_7_full_n;
    end else begin
        E_out_7_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        E_out_7_write_local = 1'b1;
    end else begin
        E_out_7_write_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln56_fu_272_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten44_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten44_load = indvar_flatten44_fu_90;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_1_ce0_local = 1'b1;
    end else begin
        buff_E_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_2_ce0_local = 1'b1;
    end else begin
        buff_E_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_3_ce0_local = 1'b1;
    end else begin
        buff_E_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_4_ce0_local = 1'b1;
    end else begin
        buff_E_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_5_ce0_local = 1'b1;
    end else begin
        buff_E_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_6_ce0_local = 1'b1;
    end else begin
        buff_E_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_7_ce0_local = 1'b1;
    end else begin
        buff_E_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_ce0_local = 1'b1;
    end else begin
        buff_E_out_ce0_local = 1'b0;
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
assign E_out_0_din = bitcast_ln58_fu_375_p1;
assign E_out_0_write = E_out_0_write_local;
assign E_out_1_din = bitcast_ln58_1_fu_380_p1;
assign E_out_1_write = E_out_1_write_local;
assign E_out_2_din = bitcast_ln58_2_fu_385_p1;
assign E_out_2_write = E_out_2_write_local;
assign E_out_3_din = bitcast_ln58_3_fu_390_p1;
assign E_out_3_write = E_out_3_write_local;
assign E_out_4_din = bitcast_ln58_4_fu_395_p1;
assign E_out_4_write = E_out_4_write_local;
assign E_out_5_din = bitcast_ln58_5_fu_400_p1;
assign E_out_5_write = E_out_5_write_local;
assign E_out_6_din = bitcast_ln58_6_fu_405_p1;
assign E_out_6_write = E_out_6_write_local;
assign E_out_7_din = bitcast_ln58_7_fu_410_p1;
assign E_out_7_write = E_out_7_write_local;
assign add_ln56_1_fu_278_p2 = (ap_sig_allocacmp_indvar_flatten44_load + 10'd1);
assign add_ln56_fu_295_p2 = (i_fu_86 + 7'd1);
assign add_ln57_fu_359_p2 = (select_ln10_fu_309_p3 + 7'd8);
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
    ap_block_state3_pp0_stage0_iter2 = ((1'b0 == E_out_7_full_n) | (1'b0 == E_out_6_full_n) | (1'b0 == E_out_5_full_n) | (1'b0 == E_out_4_full_n) | (1'b0 == E_out_3_full_n) | (1'b0 == E_out_2_full_n) | (1'b0 == E_out_1_full_n) | (1'b0 == E_out_0_full_n));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln58_1_fu_380_p1 = buff_E_out_1_q0;
assign bitcast_ln58_2_fu_385_p1 = buff_E_out_2_q0;
assign bitcast_ln58_3_fu_390_p1 = buff_E_out_3_q0;
assign bitcast_ln58_4_fu_395_p1 = buff_E_out_4_q0;
assign bitcast_ln58_5_fu_400_p1 = buff_E_out_5_q0;
assign bitcast_ln58_6_fu_405_p1 = buff_E_out_6_q0;
assign bitcast_ln58_7_fu_410_p1 = buff_E_out_7_q0;
assign bitcast_ln58_fu_375_p1 = buff_E_out_q0;
assign buff_E_out_1_address0 = zext_ln58_fu_347_p1;
assign buff_E_out_1_ce0 = buff_E_out_1_ce0_local;
assign buff_E_out_2_address0 = zext_ln58_fu_347_p1;
assign buff_E_out_2_ce0 = buff_E_out_2_ce0_local;
assign buff_E_out_3_address0 = zext_ln58_fu_347_p1;
assign buff_E_out_3_ce0 = buff_E_out_3_ce0_local;
assign buff_E_out_4_address0 = zext_ln58_fu_347_p1;
assign buff_E_out_4_ce0 = buff_E_out_4_ce0_local;
assign buff_E_out_5_address0 = zext_ln58_fu_347_p1;
assign buff_E_out_5_ce0 = buff_E_out_5_ce0_local;
assign buff_E_out_6_address0 = zext_ln58_fu_347_p1;
assign buff_E_out_6_ce0 = buff_E_out_6_ce0_local;
assign buff_E_out_7_address0 = zext_ln58_fu_347_p1;
assign buff_E_out_7_ce0 = buff_E_out_7_ce0_local;
assign buff_E_out_address0 = zext_ln58_fu_347_p1;
assign buff_E_out_ce0 = buff_E_out_ce0_local;
assign icmp_ln56_fu_272_p2 = ((ap_sig_allocacmp_indvar_flatten44_load == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln10_7_fu_329_p4 = {{select_ln10_fu_309_p3[5:3]}};
assign select_ln10_fu_309_p3 = ((tmp_fu_301_p3[0:0] == 1'b1) ? 7'd0 : j_fu_82);
assign select_ln56_fu_317_p3 = ((tmp_fu_301_p3[0:0] == 1'b1) ? add_ln56_fu_295_p2 : i_fu_86);
assign tmp_fu_301_p3 = j_fu_82[32'd6];
assign tmp_s_fu_339_p3 = {{trunc_ln7_fu_325_p1}, {lshr_ln10_7_fu_329_p4}};
assign trunc_ln7_fu_325_p1 = select_ln56_fu_317_p3[5:0];
assign zext_ln58_fu_347_p1 = tmp_s_fu_339_p3;
endmodule 