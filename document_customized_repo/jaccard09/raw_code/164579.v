module main_graph_main_graph_Pipeline_VITIS_LOOP_1339_279_VITIS_LOOP_1340_280_VITIS_LOOP_1341_281 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v35_address1,v35_ce1,v35_we1,v35_d1,v36_address0,v36_ce0,v36_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] v35_address1;
output   v35_ce1;
output   v35_we1;
output  [6:0] v35_d1;
output  [11:0] v36_address0;
output   v36_ce0;
input  [7:0] v36_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln1339_fu_144_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [1:0] v704_mid2_fu_226_p3;
reg   [1:0] v704_mid2_reg_384;
wire   [10:0] add_ln1345_fu_252_p2;
reg   [10:0] add_ln1345_reg_389;
wire   [63:0] zext_ln1345_2_fu_319_p1;
reg   [63:0] zext_ln1345_2_reg_394;
wire    ap_block_pp0_stage0;
reg   [1:0] v704_fu_66;
wire   [1:0] add_ln1341_fu_258_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_v704_load;
reg   [1:0] v703_fu_70;
wire   [1:0] select_ln1340_fu_234_p3;
reg   [1:0] ap_sig_allocacmp_v703_load;
reg   [3:0] indvar_flatten1657_fu_74;
wire   [3:0] select_ln1340_1_fu_270_p3;
reg   [3:0] ap_sig_allocacmp_indvar_flatten1657_load;
reg   [10:0] v702_fu_78;
wire   [10:0] select_ln1339_1_fu_206_p3;
reg   [10:0] ap_sig_allocacmp_v702_load;
reg   [12:0] indvar_flatten1670_fu_82;
wire   [12:0] add_ln1339_1_fu_150_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten1670_load;
reg    v36_ce0_local;
reg    v35_we1_local;
wire   [6:0] v707_fu_336_p3;
reg    v35_ce1_local;
wire   [0:0] icmp_ln1340_fu_174_p2;
wire   [0:0] icmp_ln1341_fu_194_p2;
wire   [0:0] xor_ln1339_fu_188_p2;
wire   [10:0] add_ln1339_fu_168_p2;
wire   [1:0] select_ln1339_fu_180_p3;
wire   [0:0] and_ln1339_fu_200_p2;
wire   [0:0] empty_fu_220_p2;
wire   [1:0] add_ln1340_fu_214_p2;
wire   [10:0] shl_ln1345_fu_242_p2;
wire   [10:0] zext_ln1345_fu_248_p1;
wire   [3:0] add_ln1340_1_fu_264_p2;
wire   [11:0] tmp_fu_303_p3;
wire   [11:0] zext_ln1345_1_fu_310_p1;
wire   [11:0] add_ln1345_1_fu_313_p2;
wire   [0:0] v706_fu_328_p3;
wire   [6:0] trunc_ln1342_fu_324_p1;
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
#0 v704_fu_66 = 2'd0;
#0 v703_fu_70 = 2'd0;
#0 indvar_flatten1657_fu_74 = 4'd0;
#0 v702_fu_78 = 11'd0;
#0 indvar_flatten1670_fu_82 = 13'd0;
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
        if (((icmp_ln1339_fu_144_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten1657_fu_74 <= select_ln1340_1_fu_270_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1657_fu_74 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln1339_fu_144_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten1670_fu_82 <= add_ln1339_1_fu_150_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1670_fu_82 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln1339_fu_144_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v702_fu_78 <= select_ln1339_1_fu_206_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v702_fu_78 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln1339_fu_144_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v703_fu_70 <= select_ln1340_fu_234_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v703_fu_70 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln1339_fu_144_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v704_fu_66 <= add_ln1341_fu_258_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v704_fu_66 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln1345_reg_389 <= add_ln1345_fu_252_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        v704_mid2_reg_384 <= v704_mid2_fu_226_p3;
        zext_ln1345_2_reg_394[11 : 0] <= zext_ln1345_2_fu_319_p1[11 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln1339_fu_144_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_indvar_flatten1657_load = 4'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1657_load = indvar_flatten1657_fu_74;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten1670_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1670_load = indvar_flatten1670_fu_82;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v702_load = 11'd0;
    end else begin
        ap_sig_allocacmp_v702_load = v702_fu_78;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v703_load = 2'd0;
    end else begin
        ap_sig_allocacmp_v703_load = v703_fu_70;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v704_load = 2'd0;
    end else begin
        ap_sig_allocacmp_v704_load = v704_fu_66;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v35_ce1_local = 1'b1;
    end else begin
        v35_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v35_we1_local = 1'b1;
    end else begin
        v35_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v36_ce0_local = 1'b1;
    end else begin
        v36_ce0_local = 1'b0;
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
assign add_ln1339_1_fu_150_p2 = (ap_sig_allocacmp_indvar_flatten1670_load + 13'd1);
assign add_ln1339_fu_168_p2 = (ap_sig_allocacmp_v702_load + 11'd1);
assign add_ln1340_1_fu_264_p2 = (ap_sig_allocacmp_indvar_flatten1657_load + 4'd1);
assign add_ln1340_fu_214_p2 = (select_ln1339_fu_180_p3 + 2'd1);
assign add_ln1341_fu_258_p2 = (v704_mid2_fu_226_p3 + 2'd1);
assign add_ln1345_1_fu_313_p2 = (tmp_fu_303_p3 + zext_ln1345_1_fu_310_p1);
assign add_ln1345_fu_252_p2 = (shl_ln1345_fu_242_p2 + zext_ln1345_fu_248_p1);
assign and_ln1339_fu_200_p2 = (xor_ln1339_fu_188_p2 & icmp_ln1341_fu_194_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_220_p2 = (icmp_ln1340_fu_174_p2 | and_ln1339_fu_200_p2);
assign icmp_ln1339_fu_144_p2 = ((ap_sig_allocacmp_indvar_flatten1670_load == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln1340_fu_174_p2 = ((ap_sig_allocacmp_indvar_flatten1657_load == 4'd4) ? 1'b1 : 1'b0);
assign icmp_ln1341_fu_194_p2 = ((ap_sig_allocacmp_v704_load == 2'd2) ? 1'b1 : 1'b0);
assign select_ln1339_1_fu_206_p3 = ((icmp_ln1340_fu_174_p2[0:0] == 1'b1) ? add_ln1339_fu_168_p2 : ap_sig_allocacmp_v702_load);
assign select_ln1339_fu_180_p3 = ((icmp_ln1340_fu_174_p2[0:0] == 1'b1) ? 2'd0 : ap_sig_allocacmp_v703_load);
assign select_ln1340_1_fu_270_p3 = ((icmp_ln1340_fu_174_p2[0:0] == 1'b1) ? 4'd1 : add_ln1340_1_fu_264_p2);
assign select_ln1340_fu_234_p3 = ((and_ln1339_fu_200_p2[0:0] == 1'b1) ? add_ln1340_fu_214_p2 : select_ln1339_fu_180_p3);
assign shl_ln1345_fu_242_p2 = select_ln1339_1_fu_206_p3 << 11'd1;
assign tmp_fu_303_p3 = {{add_ln1345_reg_389}, {1'd0}};
assign trunc_ln1342_fu_324_p1 = v36_q0[6:0];
assign v35_address1 = zext_ln1345_2_reg_394;
assign v35_ce1 = v35_ce1_local;
assign v35_d1 = v707_fu_336_p3;
assign v35_we1 = v35_we1_local;
assign v36_address0 = zext_ln1345_2_fu_319_p1;
assign v36_ce0 = v36_ce0_local;
assign v704_mid2_fu_226_p3 = ((empty_fu_220_p2[0:0] == 1'b1) ? 2'd0 : ap_sig_allocacmp_v704_load);
assign v706_fu_328_p3 = v36_q0[32'd7];
assign v707_fu_336_p3 = ((v706_fu_328_p3[0:0] == 1'b1) ? 7'd0 : trunc_ln1342_fu_324_p1);
assign xor_ln1339_fu_188_p2 = (icmp_ln1340_fu_174_p2 ^ 1'd1);
assign zext_ln1345_1_fu_310_p1 = v704_mid2_reg_384;
assign zext_ln1345_2_fu_319_p1 = add_ln1345_1_fu_313_p2;
assign zext_ln1345_fu_248_p1 = select_ln1340_fu_234_p3;
always @ (posedge ap_clk) begin
    zext_ln1345_2_reg_394[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
end
endmodule 