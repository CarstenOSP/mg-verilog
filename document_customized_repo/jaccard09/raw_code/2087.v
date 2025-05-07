module sha_stream_sha_update_Pipeline_VITIS_LOOP_82_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,idx,zext_ln74_1,buffer_offset,sha_info_data_address0,sha_info_data_ce0,sha_info_data_we0,sha_info_data_d0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [13:0] idx;
input  [13:0] zext_ln74_1;
input  [0:0] buffer_offset;
output  [3:0] sha_info_data_address0;
output   sha_info_data_ce0;
output   sha_info_data_we0;
output  [31:0] sha_info_data_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln82_fu_165_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [13:0] indata_address0;
wire   [6:0] indata_q0;
wire   [13:0] indata_address1;
wire   [6:0] indata_q1;
wire   [13:0] indata_address2;
wire   [6:0] indata_q2;
wire   [13:0] indata_address3;
wire   [6:0] indata_q3;
reg   [4:0] idx30_load_reg_325;
wire    ap_block_pp0_stage0_11001;
reg   [4:0] idx30_load_reg_325_pp0_iter1_reg;
wire   [13:0] add_ln74_1_fu_190_p2;
reg   [13:0] add_ln74_1_reg_334;
reg   [6:0] p2_1_load_reg_359;
reg   [6:0] p2_2_load_reg_364;
reg   [6:0] p2_3_load_reg_369;
wire   [63:0] zext_ln85_fu_216_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln86_1_fu_241_p1;
wire   [63:0] zext_ln87_1_fu_256_p1;
wire   [63:0] zext_ln74_fu_277_p1;
wire   [63:0] zext_ln82_fu_281_p1;
reg   [4:0] idx30_fu_64;
wire   [4:0] add_ln82_1_fu_171_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_idx30_load;
reg   [6:0] idx28_fu_68;
wire   [6:0] add_ln82_fu_261_p2;
reg   [6:0] ap_sig_allocacmp_idx28_load;
reg    indata_ce3_local;
reg    indata_ce2_local;
reg    indata_ce1_local;
reg    indata_ce0_local;
reg    sha_info_data_we0_local;
wire   [31:0] zext_ln76_fu_306_p1;
reg    sha_info_data_ce0_local;
wire   [13:0] zext_ln82_1_fu_180_p1;
wire   [13:0] add_ln74_fu_184_p2;
wire   [11:0] tmp_2_fu_196_p4;
wire   [13:0] tmp_3_fu_206_p4;
wire   [10:0] tmp_4_fu_221_p4;
wire   [13:0] tmp_6_fu_231_p4;
wire   [13:0] tmp_8_fu_246_p4;
wire   [7:0] zext_ln88_fu_292_p1;
wire   [7:0] zext_ln87_fu_289_p1;
wire   [7:0] zext_ln86_fu_285_p1;
wire   [30:0] tmp_fu_295_p5;
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
#0 idx30_fu_64 = 5'd0;
#0 idx28_fu_68 = 7'd0;
#0 ap_done_reg = 1'b0;
end
sha_stream_sha_update_Pipeline_VITIS_LOOP_82_1_indata_ROM_AUTO_1R #(.DataWidth( 7 ),.AddressRange( 16384 ),.AddressWidth( 14 ))
indata_U(.clk(ap_clk),.reset(ap_rst),.address0(indata_address0),.ce0(indata_ce0_local),.q0(indata_q0),.address1(indata_address1),.ce1(indata_ce1_local),.q1(indata_q1),.address2(indata_address2),.ce2(indata_ce2_local),.q2(indata_q2),.address3(indata_address3),.ce3(indata_ce3_local),.q3(indata_q3));
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if (((icmp_ln82_fu_165_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            idx28_fu_68 <= add_ln82_fu_261_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            idx28_fu_68 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln82_fu_165_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            idx30_fu_64 <= add_ln82_1_fu_171_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            idx30_fu_64 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln74_1_reg_334 <= add_ln74_1_fu_190_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        idx30_load_reg_325 <= ap_sig_allocacmp_idx30_load;
        idx30_load_reg_325_pp0_iter1_reg <= idx30_load_reg_325;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p2_1_load_reg_359 <= indata_q3;
        p2_2_load_reg_364 <= indata_q2;
        p2_3_load_reg_369 <= indata_q1;
    end
end
always @ (*) begin
    if (((icmp_ln82_fu_165_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_idx28_load = 7'd0;
    end else begin
        ap_sig_allocacmp_idx28_load = idx28_fu_68;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_idx30_load = 5'd0;
    end else begin
        ap_sig_allocacmp_idx30_load = idx30_fu_64;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indata_ce0_local = 1'b1;
    end else begin
        indata_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indata_ce1_local = 1'b1;
    end else begin
        indata_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indata_ce2_local = 1'b1;
    end else begin
        indata_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indata_ce3_local = 1'b1;
    end else begin
        indata_ce3_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        sha_info_data_ce0_local = 1'b1;
    end else begin
        sha_info_data_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        sha_info_data_we0_local = 1'b1;
    end else begin
        sha_info_data_we0_local = 1'b0;
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
assign add_ln74_1_fu_190_p2 = (zext_ln74_1 + add_ln74_fu_184_p2);
assign add_ln74_fu_184_p2 = (zext_ln82_1_fu_180_p1 + idx);
assign add_ln82_1_fu_171_p2 = (ap_sig_allocacmp_idx30_load + 5'd1);
assign add_ln82_fu_261_p2 = (ap_sig_allocacmp_idx28_load + 7'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln82_fu_165_p2 = ((ap_sig_allocacmp_idx30_load == 5'd16) ? 1'b1 : 1'b0);
assign indata_address0 = zext_ln74_fu_277_p1;
assign indata_address1 = zext_ln87_1_fu_256_p1;
assign indata_address2 = zext_ln86_1_fu_241_p1;
assign indata_address3 = zext_ln85_fu_216_p1;
assign sha_info_data_address0 = zext_ln82_fu_281_p1;
assign sha_info_data_ce0 = sha_info_data_ce0_local;
assign sha_info_data_d0 = zext_ln76_fu_306_p1;
assign sha_info_data_we0 = sha_info_data_we0_local;
assign tmp_2_fu_196_p4 = {{add_ln74_fu_184_p2[12:1]}};
assign tmp_3_fu_206_p4 = {{{buffer_offset}, {tmp_2_fu_196_p4}}, {1'd1}};
assign tmp_4_fu_221_p4 = {{add_ln74_fu_184_p2[12:2]}};
assign tmp_6_fu_231_p4 = {{{buffer_offset}, {tmp_4_fu_221_p4}}, {2'd2}};
assign tmp_8_fu_246_p4 = {{{buffer_offset}, {tmp_4_fu_221_p4}}, {2'd3}};
assign tmp_fu_295_p5 = {{{{p2_3_load_reg_369}, {zext_ln88_fu_292_p1}}, {zext_ln87_fu_289_p1}}, {zext_ln86_fu_285_p1}};
assign zext_ln74_fu_277_p1 = add_ln74_1_reg_334;
assign zext_ln76_fu_306_p1 = tmp_fu_295_p5;
assign zext_ln82_1_fu_180_p1 = ap_sig_allocacmp_idx28_load;
assign zext_ln82_fu_281_p1 = idx30_load_reg_325_pp0_iter1_reg;
assign zext_ln85_fu_216_p1 = tmp_3_fu_206_p4;
assign zext_ln86_1_fu_241_p1 = tmp_6_fu_231_p4;
assign zext_ln86_fu_285_p1 = indata_q0;
assign zext_ln87_1_fu_256_p1 = tmp_8_fu_246_p4;
assign zext_ln87_fu_289_p1 = p2_1_load_reg_359;
assign zext_ln88_fu_292_p1 = p2_2_load_reg_364;
endmodule 