module fft1D_512_sin_or_cos_double_Pipeline_4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,result,c_reload,c_1_reload,c_2_reload,c_3_reload,shift_1_out,shift_1_out_ap_vld,in_shift_out,in_shift_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [62:0] result;
input  [31:0] c_reload;
input  [31:0] c_1_reload;
input  [31:0] c_2_reload;
input  [31:0] c_3_reload;
output  [31:0] shift_1_out;
output   shift_1_out_ap_vld;
output  [61:0] in_shift_out;
output   in_shift_out_ap_vld;
reg ap_idle;
reg shift_1_out_ap_vld;
reg in_shift_out_ap_vld;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] or_ln424_fu_212_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] tmp_s_fu_142_p11;
reg   [31:0] tmp_s_reg_293;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] tmp_fu_166_p3;
reg   [0:0] tmp_reg_298;
wire   [31:0] select_ln423_fu_180_p3;
reg   [31:0] select_ln423_reg_303;
reg   [0:0] or_ln424_reg_308;
reg   [62:0] in_shift_1_fu_64;
wire   [62:0] in_shift_fu_250_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [31:0] shift_fu_68;
wire   [31:0] shift_3_fu_229_p2;
reg   [1:0] i_fu_72;
wire   [1:0] trunc_ln421_fu_200_p1;
reg   [1:0] ap_sig_allocacmp_i_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage0_01001;
wire   [31:0] tmp_s_fu_142_p9;
wire   [31:0] sub_ln423_fu_174_p2;
wire   [2:0] zext_ln419_fu_138_p1;
wire   [2:0] add_ln421_fu_194_p2;
wire   [0:0] tmp_1_fu_204_p3;
wire   [0:0] icmp_ln424_fu_188_p2;
wire   [62:0] zext_ln423_fu_235_p1;
wire   [62:0] ashr_ln423_fu_238_p2;
wire   [62:0] shl_ln423_fu_244_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] tmp_s_fu_142_p1;
wire   [1:0] tmp_s_fu_142_p3;
wire  signed [1:0] tmp_s_fu_142_p5;
wire  signed [1:0] tmp_s_fu_142_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 in_shift_1_fu_64 = 63'd0;
#0 shift_fu_68 = 32'd0;
#0 i_fu_72 = 2'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U21(.din0(c_reload),.din1(c_1_reload),.din2(c_2_reload),.din3(c_3_reload),.def(tmp_s_fu_142_p9),.sel(ap_sig_allocacmp_i_1),.dout(tmp_s_fu_142_p11));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if (((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
            ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            i_fu_72 <= trunc_ln421_fu_200_p1;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_72 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            in_shift_1_fu_64 <= result;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            in_shift_1_fu_64 <= in_shift_fu_250_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            shift_fu_68 <= 32'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            shift_fu_68 <= shift_3_fu_229_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        or_ln424_reg_308 <= or_ln424_fu_212_p2;
        select_ln423_reg_303 <= select_ln423_fu_180_p3;
        tmp_reg_298 <= tmp_s_fu_142_p11[32'd31];
        tmp_s_reg_293 <= tmp_s_fu_142_p11;
    end
end
always @ (*) begin
    if (((or_ln424_fu_212_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_1 = 2'd0;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_72;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (or_ln424_reg_308 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in_shift_out_ap_vld = 1'b1;
    end else begin
        in_shift_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (or_ln424_reg_308 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        shift_1_out_ap_vld = 1'b1;
    end else begin
        shift_1_out_ap_vld = 1'b0;
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
assign add_ln421_fu_194_p2 = (zext_ln419_fu_138_p1 + 3'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign ashr_ln423_fu_238_p2 = $signed(in_shift_1_fu_64) >>> zext_ln423_fu_235_p1;
assign icmp_ln424_fu_188_p2 = ((tmp_s_fu_142_p11 != 32'd16) ? 1'b1 : 1'b0);
assign in_shift_fu_250_p3 = ((tmp_reg_298[0:0] == 1'b1) ? ashr_ln423_fu_238_p2 : shl_ln423_fu_244_p2);
assign in_shift_out = in_shift_fu_250_p3[61:0];
assign or_ln424_fu_212_p2 = (tmp_1_fu_204_p3 | icmp_ln424_fu_188_p2);
assign select_ln423_fu_180_p3 = ((tmp_fu_166_p3[0:0] == 1'b1) ? sub_ln423_fu_174_p2 : tmp_s_fu_142_p11);
assign shift_1_out = (tmp_s_reg_293 + shift_fu_68);
assign shift_3_fu_229_p2 = (tmp_s_reg_293 + shift_fu_68);
assign shl_ln423_fu_244_p2 = in_shift_1_fu_64 << zext_ln423_fu_235_p1;
assign sub_ln423_fu_174_p2 = (32'd0 - tmp_s_fu_142_p11);
assign tmp_1_fu_204_p3 = add_ln421_fu_194_p2[32'd2];
assign tmp_fu_166_p3 = tmp_s_fu_142_p11[32'd31];
assign tmp_s_fu_142_p9 = 'bx;
assign trunc_ln421_fu_200_p1 = add_ln421_fu_194_p2[1:0];
assign zext_ln419_fu_138_p1 = ap_sig_allocacmp_i_1;
assign zext_ln423_fu_235_p1 = select_ln423_reg_303;
endmodule 