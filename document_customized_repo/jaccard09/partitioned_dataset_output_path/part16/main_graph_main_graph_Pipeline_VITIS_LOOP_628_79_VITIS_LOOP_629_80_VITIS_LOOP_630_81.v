
module main_graph_main_graph_Pipeline_VITIS_LOOP_628_79_VITIS_LOOP_629_80_VITIS_LOOP_630_81 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v82_address1,v82_ce1,v82_we1,v82_d1);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [15:0] v82_address1;
output   v82_ce1;
output   v82_we1;
output  [6:0] v82_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln628_fu_134_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln629_fu_149_p2;
reg   [0:0] icmp_ln629_reg_394;
wire   [4:0] v269_mid2_fu_236_p3;
reg   [4:0] v269_mid2_reg_402;
wire   [12:0] add_ln631_fu_286_p2;
reg   [12:0] add_ln631_reg_407;
wire   [11:0] trunc_ln631_fu_292_p1;
reg   [11:0] trunc_ln631_reg_412;
wire   [63:0] zext_ln631_4_fu_350_p1;
wire    ap_block_pp0_stage0;
reg   [4:0] v269_fu_68;
wire   [4:0] add_ln630_fu_296_p2;
wire    ap_loop_init;
reg   [4:0] v268_fu_72;
wire   [4:0] select_ln629_fu_244_p3;
reg   [9:0] indvar_flatten412_fu_76;
wire   [9:0] select_ln629_1_fu_161_p3;
reg   [9:0] ap_sig_allocacmp_indvar_flatten412_load;
reg   [7:0] v267_fu_80;
wire   [7:0] select_ln628_1_fu_218_p3;
reg   [15:0] indvar_flatten425_fu_84;
wire   [15:0] add_ln628_1_fu_140_p2;
reg   [15:0] ap_sig_allocacmp_indvar_flatten425_load;
reg    v82_we1_local;
reg    v82_ce1_local;
wire   [9:0] add_ln629_1_fu_155_p2;
wire   [0:0] icmp_ln630_fu_206_p2;
wire   [0:0] xor_ln628_fu_201_p2;
wire   [7:0] add_ln628_fu_188_p2;
wire   [4:0] select_ln628_fu_194_p3;
wire   [0:0] and_ln628_fu_212_p2;
wire   [0:0] empty_fu_231_p2;
wire   [4:0] add_ln629_fu_225_p2;
wire   [11:0] tmp_fu_252_p3;
wire   [8:0] tmp_51_fu_264_p3;
wire   [12:0] zext_ln631_fu_260_p1;
wire   [12:0] zext_ln631_1_fu_272_p1;
wire   [12:0] add_ln631_2_fu_276_p2;
wire   [12:0] zext_ln631_2_fu_282_p1;
wire   [13:0] tmp_52_fu_324_p3;
wire   [15:0] p_shl_fu_317_p3;
wire   [15:0] zext_ln630_fu_331_p1;
wire   [15:0] add_ln630_1_fu_335_p2;
wire   [15:0] zext_ln631_3_fu_341_p1;
wire   [15:0] add_ln631_1_fu_344_p2;
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
#0 v269_fu_68 = 5'd0;
#0 v268_fu_72 = 5'd0;
#0 indvar_flatten412_fu_76 = 10'd0;
#0 v267_fu_80 = 8'd0;
#0 indvar_flatten425_fu_84 = 16'd0;
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
        if (((icmp_ln628_fu_134_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten412_fu_76 <= select_ln629_1_fu_161_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten412_fu_76 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln628_fu_134_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten425_fu_84 <= add_ln628_1_fu_140_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten425_fu_84 <= 16'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v267_fu_80 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v267_fu_80 <= select_ln628_1_fu_218_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v268_fu_72 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v268_fu_72 <= select_ln629_fu_244_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v269_fu_68 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v269_fu_68 <= add_ln630_fu_296_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln631_reg_407 <= add_ln631_fu_286_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln629_reg_394 <= icmp_ln629_fu_149_p2;
        trunc_ln631_reg_412 <= trunc_ln631_fu_292_p1;
        v269_mid2_reg_402 <= v269_mid2_fu_236_p3;
    end
end
always @ (*) begin
    if (((icmp_ln628_fu_134_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_indvar_flatten412_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten412_load = indvar_flatten412_fu_76;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten425_load = 16'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten425_load = indvar_flatten425_fu_84;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v82_ce1_local = 1'b1;
    end else begin
        v82_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v82_we1_local = 1'b1;
    end else begin
        v82_we1_local = 1'b0;
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
assign add_ln628_1_fu_140_p2 = (ap_sig_allocacmp_indvar_flatten425_load + 16'd1);
assign add_ln628_fu_188_p2 = (v267_fu_80 + 8'd1);
assign add_ln629_1_fu_155_p2 = (ap_sig_allocacmp_indvar_flatten412_load + 10'd1);
assign add_ln629_fu_225_p2 = (select_ln628_fu_194_p3 + 5'd1);
assign add_ln630_1_fu_335_p2 = (p_shl_fu_317_p3 + zext_ln630_fu_331_p1);
assign add_ln630_fu_296_p2 = (v269_mid2_fu_236_p3 + 5'd1);
assign add_ln631_1_fu_344_p2 = (add_ln630_1_fu_335_p2 + zext_ln631_3_fu_341_p1);
assign add_ln631_2_fu_276_p2 = (zext_ln631_fu_260_p1 + zext_ln631_1_fu_272_p1);
assign add_ln631_fu_286_p2 = (add_ln631_2_fu_276_p2 + zext_ln631_2_fu_282_p1);
assign and_ln628_fu_212_p2 = (xor_ln628_fu_201_p2 & icmp_ln630_fu_206_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_231_p2 = (icmp_ln629_reg_394 | and_ln628_fu_212_p2);
assign icmp_ln628_fu_134_p2 = ((ap_sig_allocacmp_indvar_flatten425_load == 16'd41472) ? 1'b1 : 1'b0);
assign icmp_ln629_fu_149_p2 = ((ap_sig_allocacmp_indvar_flatten412_load == 10'd324) ? 1'b1 : 1'b0);
assign icmp_ln630_fu_206_p2 = ((v269_fu_68 == 5'd18) ? 1'b1 : 1'b0);
assign p_shl_fu_317_p3 = {{trunc_ln631_reg_412}, {4'd0}};
assign select_ln628_1_fu_218_p3 = ((icmp_ln629_reg_394[0:0] == 1'b1) ? add_ln628_fu_188_p2 : v267_fu_80);
assign select_ln628_fu_194_p3 = ((icmp_ln629_reg_394[0:0] == 1'b1) ? 5'd0 : v268_fu_72);
assign select_ln629_1_fu_161_p3 = ((icmp_ln629_fu_149_p2[0:0] == 1'b1) ? 10'd1 : add_ln629_1_fu_155_p2);
assign select_ln629_fu_244_p3 = ((and_ln628_fu_212_p2[0:0] == 1'b1) ? add_ln629_fu_225_p2 : select_ln628_fu_194_p3);
assign tmp_51_fu_264_p3 = {{select_ln628_1_fu_218_p3}, {1'd0}};
assign tmp_52_fu_324_p3 = {{add_ln631_reg_407}, {1'd0}};
assign tmp_fu_252_p3 = {{select_ln628_1_fu_218_p3}, {4'd0}};
assign trunc_ln631_fu_292_p1 = add_ln631_fu_286_p2[11:0];
assign v269_mid2_fu_236_p3 = ((empty_fu_231_p2[0:0] == 1'b1) ? 5'd0 : v269_fu_68);
assign v82_address1 = zext_ln631_4_fu_350_p1;
assign v82_ce1 = v82_ce1_local;
assign v82_d1 = 7'd0;
assign v82_we1 = v82_we1_local;
assign xor_ln628_fu_201_p2 = (icmp_ln629_reg_394 ^ 1'd1);
assign zext_ln630_fu_331_p1 = tmp_52_fu_324_p3;
assign zext_ln631_1_fu_272_p1 = tmp_51_fu_264_p3;
assign zext_ln631_2_fu_282_p1 = select_ln629_fu_244_p3;
assign zext_ln631_3_fu_341_p1 = v269_mid2_reg_402;
assign zext_ln631_4_fu_350_p1 = add_ln631_1_fu_344_p2;
assign zext_ln631_fu_260_p1 = tmp_fu_252_p3;
endmodule 
