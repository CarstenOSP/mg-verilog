module main_graph_main_graph_Pipeline_VITIS_LOOP_403_16_VITIS_LOOP_404_17_VITIS_LOOP_405_18 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v97_address1,v97_ce1,v97_we1,v97_d1); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [15:0] v97_address1;
output   v97_ce1;
output   v97_we1;
output  [6:0] v97_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln403_fu_130_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln404_fu_145_p2;
reg   [0:0] icmp_ln404_reg_390;
wire   [5:0] v131_mid2_fu_232_p3;
reg   [5:0] v131_mid2_reg_398;
wire   [11:0] add_ln406_fu_282_p2;
reg   [11:0] add_ln406_reg_403;
wire   [10:0] trunc_ln406_fu_288_p1;
reg   [10:0] trunc_ln406_reg_408;
wire   [63:0] zext_ln406_4_fu_346_p1;
wire    ap_block_pp0_stage0;
reg   [5:0] v131_fu_64;
wire   [5:0] add_ln405_fu_292_p2;
wire    ap_loop_init;
reg   [5:0] v130_fu_68;
wire   [5:0] select_ln404_fu_240_p3;
reg   [11:0] indvar_flatten61_fu_72;
wire   [11:0] select_ln404_1_fu_157_p3;
reg   [11:0] ap_sig_allocacmp_indvar_flatten61_load;
reg   [5:0] v129_fu_76;
wire   [5:0] select_ln403_1_fu_214_p3;
reg   [15:0] indvar_flatten74_fu_80;
wire   [15:0] add_ln403_1_fu_136_p2;
reg   [15:0] ap_sig_allocacmp_indvar_flatten74_load;
reg    v97_we1_local;
reg    v97_ce1_local;
wire   [11:0] add_ln404_1_fu_151_p2;
wire   [0:0] icmp_ln405_fu_202_p2;
wire   [0:0] xor_ln403_fu_197_p2;
wire   [5:0] add_ln403_fu_184_p2;
wire   [5:0] select_ln403_fu_190_p3;
wire   [0:0] and_ln403_fu_208_p2;
wire   [0:0] empty_fu_227_p2;
wire   [5:0] add_ln404_fu_221_p2;
wire   [10:0] tmp_fu_248_p3;
wire   [6:0] tmp_83_fu_260_p3;
wire   [11:0] zext_ln406_fu_256_p1;
wire   [11:0] zext_ln406_1_fu_268_p1;
wire   [11:0] add_ln406_2_fu_272_p2;
wire   [11:0] zext_ln406_2_fu_278_p1;
wire   [12:0] tmp_84_fu_320_p3;
wire   [15:0] p_shl_fu_313_p3;
wire   [15:0] zext_ln405_fu_327_p1;
wire   [15:0] add_ln405_1_fu_331_p2;
wire   [15:0] zext_ln406_3_fu_337_p1;
wire   [15:0] add_ln406_1_fu_340_p2;
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
#0 v131_fu_64 = 6'd0;
#0 v130_fu_68 = 6'd0;
#0 indvar_flatten61_fu_72 = 12'd0;
#0 v129_fu_76 = 6'd0;
#0 indvar_flatten74_fu_80 = 16'd0;
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
        if (((icmp_ln403_fu_130_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten61_fu_72 <= select_ln404_1_fu_157_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten61_fu_72 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln403_fu_130_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten74_fu_80 <= add_ln403_1_fu_136_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten74_fu_80 <= 16'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v129_fu_76 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v129_fu_76 <= select_ln403_1_fu_214_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v130_fu_68 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v130_fu_68 <= select_ln404_fu_240_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v131_fu_64 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v131_fu_64 <= add_ln405_fu_292_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln406_reg_403 <= add_ln406_fu_282_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln404_reg_390 <= icmp_ln404_fu_145_p2;
        trunc_ln406_reg_408 <= trunc_ln406_fu_288_p1;
        v131_mid2_reg_398 <= v131_mid2_fu_232_p3;
    end
end
always @ (*) begin
    if (((icmp_ln403_fu_130_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten61_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten61_load = indvar_flatten61_fu_72;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten74_load = 16'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten74_load = indvar_flatten74_fu_80;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v97_ce1_local = 1'b1;
    end else begin
        v97_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v97_we1_local = 1'b1;
    end else begin
        v97_we1_local = 1'b0;
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
assign add_ln403_1_fu_136_p2 = (ap_sig_allocacmp_indvar_flatten74_load + 16'd1);
assign add_ln403_fu_184_p2 = (v129_fu_76 + 6'd1);
assign add_ln404_1_fu_151_p2 = (ap_sig_allocacmp_indvar_flatten61_load + 12'd1);
assign add_ln404_fu_221_p2 = (select_ln403_fu_190_p3 + 6'd1);
assign add_ln405_1_fu_331_p2 = (p_shl_fu_313_p3 + zext_ln405_fu_327_p1);
assign add_ln405_fu_292_p2 = (v131_mid2_fu_232_p3 + 6'd1);
assign add_ln406_1_fu_340_p2 = (add_ln405_1_fu_331_p2 + zext_ln406_3_fu_337_p1);
assign add_ln406_2_fu_272_p2 = (zext_ln406_fu_256_p1 + zext_ln406_1_fu_268_p1);
assign add_ln406_fu_282_p2 = (add_ln406_2_fu_272_p2 + zext_ln406_2_fu_278_p1);
assign and_ln403_fu_208_p2 = (xor_ln403_fu_197_p2 & icmp_ln405_fu_202_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_227_p2 = (icmp_ln404_reg_390 | and_ln403_fu_208_p2);
assign icmp_ln403_fu_130_p2 = ((ap_sig_allocacmp_indvar_flatten74_load == 16'd36992) ? 1'b1 : 1'b0);
assign icmp_ln404_fu_145_p2 = ((ap_sig_allocacmp_indvar_flatten61_load == 12'd1156) ? 1'b1 : 1'b0);
assign icmp_ln405_fu_202_p2 = ((v131_fu_64 == 6'd34) ? 1'b1 : 1'b0);
assign p_shl_fu_313_p3 = {{trunc_ln406_reg_408}, {5'd0}};
assign select_ln403_1_fu_214_p3 = ((icmp_ln404_reg_390[0:0] == 1'b1) ? add_ln403_fu_184_p2 : v129_fu_76);
assign select_ln403_fu_190_p3 = ((icmp_ln404_reg_390[0:0] == 1'b1) ? 6'd0 : v130_fu_68);
assign select_ln404_1_fu_157_p3 = ((icmp_ln404_fu_145_p2[0:0] == 1'b1) ? 12'd1 : add_ln404_1_fu_151_p2);
assign select_ln404_fu_240_p3 = ((and_ln403_fu_208_p2[0:0] == 1'b1) ? add_ln404_fu_221_p2 : select_ln403_fu_190_p3);
assign tmp_83_fu_260_p3 = {{select_ln403_1_fu_214_p3}, {1'd0}};
assign tmp_84_fu_320_p3 = {{add_ln406_reg_403}, {1'd0}};
assign tmp_fu_248_p3 = {{select_ln403_1_fu_214_p3}, {5'd0}};
assign trunc_ln406_fu_288_p1 = add_ln406_fu_282_p2[10:0];
assign v131_mid2_fu_232_p3 = ((empty_fu_227_p2[0:0] == 1'b1) ? 6'd0 : v131_fu_64);
assign v97_address1 = zext_ln406_4_fu_346_p1;
assign v97_ce1 = v97_ce1_local;
assign v97_d1 = 7'd0;
assign v97_we1 = v97_we1_local;
assign xor_ln403_fu_197_p2 = (icmp_ln404_reg_390 ^ 1'd1);
assign zext_ln405_fu_327_p1 = tmp_84_fu_320_p3;
assign zext_ln406_1_fu_268_p1 = tmp_83_fu_260_p3;
assign zext_ln406_2_fu_278_p1 = select_ln404_fu_240_p3;
assign zext_ln406_3_fu_337_p1 = v131_mid2_reg_398;
assign zext_ln406_4_fu_346_p1 = add_ln406_1_fu_340_p2;
assign zext_ln406_fu_256_p1 = tmp_fu_248_p3;
endmodule 