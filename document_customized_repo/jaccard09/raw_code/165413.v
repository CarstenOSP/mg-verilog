module main_graph_main_graph_Pipeline_VITIS_LOOP_443_43_VITIS_LOOP_444_44_VITIS_LOOP_445_45 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v79_address1,v79_ce1,v79_we1,v79_d1,v80_address0,v80_ce0,v80_q0,v85_address0,v85_ce0,v85_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [15:0] v79_address1;
output   v79_ce1;
output   v79_we1;
output  [7:0] v79_d1;
output  [15:0] v80_address0;
output   v80_ce0;
input  [7:0] v80_q0;
output  [15:0] v85_address0;
output   v85_ce0;
input  [6:0] v85_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln443_fu_155_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln444_fu_170_p2;
reg   [0:0] icmp_ln444_reg_389;
wire   [15:0] add_ln452_1_fu_307_p2;
reg   [15:0] add_ln452_1_reg_397;
wire   [63:0] zext_ln452_2_fu_334_p1;
reg   [63:0] zext_ln452_2_reg_402;
wire    ap_block_pp0_stage0;
reg   [5:0] v168_fu_64;
wire   [5:0] add_ln445_fu_313_p2;
wire    ap_loop_init;
reg   [5:0] v167_fu_68;
wire   [5:0] select_ln444_fu_269_p3;
reg   [11:0] indvar_flatten425_fu_72;
wire   [11:0] select_ln444_1_fu_182_p3;
reg   [11:0] ap_sig_allocacmp_indvar_flatten425_load;
reg   [6:0] v166_fu_76;
wire   [6:0] select_ln443_1_fu_239_p3;
reg   [16:0] indvar_flatten438_fu_80;
wire   [16:0] add_ln443_1_fu_161_p2;
reg   [16:0] ap_sig_allocacmp_indvar_flatten438_load;
reg    v80_ce0_local;
reg    v85_ce0_local;
reg    v79_we1_local;
wire   [7:0] v174_fu_343_p2;
reg    v79_ce1_local;
wire   [11:0] add_ln444_1_fu_176_p2;
wire   [0:0] icmp_ln445_fu_227_p2;
wire   [0:0] xor_ln443_fu_222_p2;
wire   [6:0] add_ln443_fu_209_p2;
wire   [5:0] select_ln443_fu_215_p3;
wire   [0:0] and_ln443_fu_233_p2;
wire   [0:0] empty_fu_256_p2;
wire   [5:0] add_ln444_fu_250_p2;
wire   [5:0] trunc_ln444_fu_246_p1;
wire   [10:0] tmp_24_fu_277_p3;
wire   [10:0] zext_ln452_fu_285_p1;
wire   [10:0] add_ln452_fu_289_p2;
wire   [5:0] v168_mid2_fu_261_p3;
wire   [15:0] tmp_fu_295_p3;
wire   [15:0] zext_ln452_1_fu_303_p1;
wire   [7:0] zext_ln447_fu_339_p1;
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
#0 v168_fu_64 = 6'd0;
#0 v167_fu_68 = 6'd0;
#0 indvar_flatten425_fu_72 = 12'd0;
#0 v166_fu_76 = 7'd0;
#0 indvar_flatten438_fu_80 = 17'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if (((icmp_ln443_fu_155_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten425_fu_72 <= select_ln444_1_fu_182_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten425_fu_72 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln443_fu_155_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten438_fu_80 <= add_ln443_1_fu_161_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten438_fu_80 <= 17'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v166_fu_76 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v166_fu_76 <= select_ln443_1_fu_239_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v167_fu_68 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v167_fu_68 <= select_ln444_fu_269_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v168_fu_64 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v168_fu_64 <= add_ln445_fu_313_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln452_1_reg_397 <= add_ln452_1_fu_307_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln444_reg_389 <= icmp_ln444_fu_170_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        zext_ln452_2_reg_402[15 : 0] <= zext_ln452_2_fu_334_p1[15 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln443_fu_155_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_indvar_flatten425_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten425_load = indvar_flatten425_fu_72;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten438_load = 17'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten438_load = indvar_flatten438_fu_80;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v79_ce1_local = 1'b1;
    end else begin
        v79_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v79_we1_local = 1'b1;
    end else begin
        v79_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v80_ce0_local = 1'b1;
    end else begin
        v80_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v85_ce0_local = 1'b1;
    end else begin
        v85_ce0_local = 1'b0;
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
assign add_ln443_1_fu_161_p2 = (ap_sig_allocacmp_indvar_flatten438_load + 17'd1);
assign add_ln443_fu_209_p2 = (v166_fu_76 + 7'd1);
assign add_ln444_1_fu_176_p2 = (ap_sig_allocacmp_indvar_flatten425_load + 12'd1);
assign add_ln444_fu_250_p2 = (select_ln443_fu_215_p3 + 6'd1);
assign add_ln445_fu_313_p2 = (v168_mid2_fu_261_p3 + 6'd1);
assign add_ln452_1_fu_307_p2 = (tmp_fu_295_p3 + zext_ln452_1_fu_303_p1);
assign add_ln452_fu_289_p2 = (tmp_24_fu_277_p3 + zext_ln452_fu_285_p1);
assign and_ln443_fu_233_p2 = (xor_ln443_fu_222_p2 & icmp_ln445_fu_227_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_256_p2 = (icmp_ln444_reg_389 | and_ln443_fu_233_p2);
assign icmp_ln443_fu_155_p2 = ((ap_sig_allocacmp_indvar_flatten438_load == 17'd65536) ? 1'b1 : 1'b0);
assign icmp_ln444_fu_170_p2 = ((ap_sig_allocacmp_indvar_flatten425_load == 12'd1024) ? 1'b1 : 1'b0);
assign icmp_ln445_fu_227_p2 = ((v168_fu_64 == 6'd32) ? 1'b1 : 1'b0);
assign select_ln443_1_fu_239_p3 = ((icmp_ln444_reg_389[0:0] == 1'b1) ? add_ln443_fu_209_p2 : v166_fu_76);
assign select_ln443_fu_215_p3 = ((icmp_ln444_reg_389[0:0] == 1'b1) ? 6'd0 : v167_fu_68);
assign select_ln444_1_fu_182_p3 = ((icmp_ln444_fu_170_p2[0:0] == 1'b1) ? 12'd1 : add_ln444_1_fu_176_p2);
assign select_ln444_fu_269_p3 = ((and_ln443_fu_233_p2[0:0] == 1'b1) ? add_ln444_fu_250_p2 : select_ln443_fu_215_p3);
assign tmp_24_fu_277_p3 = {{trunc_ln444_fu_246_p1}, {5'd0}};
assign tmp_fu_295_p3 = {{add_ln452_fu_289_p2}, {5'd0}};
assign trunc_ln444_fu_246_p1 = select_ln443_1_fu_239_p3[5:0];
assign v168_mid2_fu_261_p3 = ((empty_fu_256_p2[0:0] == 1'b1) ? 6'd0 : v168_fu_64);
assign v174_fu_343_p2 = (zext_ln447_fu_339_p1 + v80_q0);
assign v79_address1 = zext_ln452_2_reg_402;
assign v79_ce1 = v79_ce1_local;
assign v79_d1 = v174_fu_343_p2;
assign v79_we1 = v79_we1_local;
assign v80_address0 = zext_ln452_2_fu_334_p1;
assign v80_ce0 = v80_ce0_local;
assign v85_address0 = zext_ln452_2_fu_334_p1;
assign v85_ce0 = v85_ce0_local;
assign xor_ln443_fu_222_p2 = (icmp_ln444_reg_389 ^ 1'd1);
assign zext_ln447_fu_339_p1 = v85_q0;
assign zext_ln452_1_fu_303_p1 = v168_mid2_fu_261_p3;
assign zext_ln452_2_fu_334_p1 = add_ln452_1_reg_397;
assign zext_ln452_fu_285_p1 = select_ln444_fu_269_p3;
always @ (posedge ap_clk) begin
    zext_ln452_2_reg_402[63:16] <= 48'b000000000000000000000000000000000000000000000000;
end
endmodule 