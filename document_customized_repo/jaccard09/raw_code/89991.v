module gemm_gemm_Pipeline_lpwr_1_lpwr_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,D_out_address0,D_out_ce0,D_out_we0,D_out_d0,buff_C_address0,buff_C_ce0,buff_C_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] D_out_address0;
output   D_out_ce0;
output   D_out_we0;
output  [31:0] D_out_d0;
output  [11:0] buff_C_address0;
output   buff_C_ce0;
input  [31:0] buff_C_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln35_fu_100_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [11:0] add_ln37_fu_167_p2;
reg   [11:0] add_ln37_reg_223;
wire   [63:0] zext_ln37_1_fu_189_p1;
reg   [63:0] zext_ln37_1_reg_228;
wire    ap_block_pp0_stage0;
reg   [6:0] j_fu_44;
wire   [6:0] add_ln36_fu_173_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_48;
wire   [6:0] select_ln35_fu_143_p3;
reg   [12:0] indvar_flatten20_fu_52;
wire   [12:0] add_ln35_1_fu_106_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten20_load;
reg    buff_C_ce0_local;
reg    D_out_we0_local;
wire   [31:0] bitcast_ln37_fu_193_p1;
reg    D_out_ce0_local;
wire   [0:0] icmp_ln36_fu_129_p2;
wire   [6:0] add_ln35_fu_123_p2;
wire   [5:0] trunc_ln37_fu_151_p1;
wire   [6:0] select_ln5_fu_135_p3;
wire   [11:0] tmp_3_fu_155_p3;
wire   [11:0] zext_ln37_fu_163_p1;
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
#0 j_fu_44 = 7'd0;
#0 i_fu_48 = 7'd0;
#0 indvar_flatten20_fu_52 = 13'd0;
#0 ap_done_reg = 1'b0;
end
gemm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
            i_fu_48 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_48 <= select_ln35_fu_143_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln35_fu_100_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten20_fu_52 <= add_ln35_1_fu_106_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten20_fu_52 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_44 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_44 <= add_ln36_fu_173_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln37_reg_223 <= add_ln37_fu_167_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        zext_ln37_1_reg_228[11 : 0] <= zext_ln37_1_fu_189_p1[11 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        D_out_ce0_local = 1'b1;
    end else begin
        D_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        D_out_we0_local = 1'b1;
    end else begin
        D_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln35_fu_100_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten20_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten20_load = indvar_flatten20_fu_52;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_C_ce0_local = 1'b1;
    end else begin
        buff_C_ce0_local = 1'b0;
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
assign D_out_address0 = zext_ln37_1_reg_228;
assign D_out_ce0 = D_out_ce0_local;
assign D_out_d0 = bitcast_ln37_fu_193_p1;
assign D_out_we0 = D_out_we0_local;
assign add_ln35_1_fu_106_p2 = (ap_sig_allocacmp_indvar_flatten20_load + 13'd1);
assign add_ln35_fu_123_p2 = (i_fu_48 + 7'd1);
assign add_ln36_fu_173_p2 = (select_ln5_fu_135_p3 + 7'd1);
assign add_ln37_fu_167_p2 = (tmp_3_fu_155_p3 + zext_ln37_fu_163_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln37_fu_193_p1 = buff_C_q0;
assign buff_C_address0 = zext_ln37_1_fu_189_p1;
assign buff_C_ce0 = buff_C_ce0_local;
assign icmp_ln35_fu_100_p2 = ((ap_sig_allocacmp_indvar_flatten20_load == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln36_fu_129_p2 = ((j_fu_44 == 7'd64) ? 1'b1 : 1'b0);
assign select_ln35_fu_143_p3 = ((icmp_ln36_fu_129_p2[0:0] == 1'b1) ? add_ln35_fu_123_p2 : i_fu_48);
assign select_ln5_fu_135_p3 = ((icmp_ln36_fu_129_p2[0:0] == 1'b1) ? 7'd0 : j_fu_44);
assign tmp_3_fu_155_p3 = {{trunc_ln37_fu_151_p1}, {6'd0}};
assign trunc_ln37_fu_151_p1 = select_ln35_fu_143_p3[5:0];
assign zext_ln37_1_fu_189_p1 = add_ln37_reg_223;
assign zext_ln37_fu_163_p1 = select_ln5_fu_135_p3;
always @ (posedge ap_clk) begin
    zext_ln37_1_reg_228[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
end
endmodule 