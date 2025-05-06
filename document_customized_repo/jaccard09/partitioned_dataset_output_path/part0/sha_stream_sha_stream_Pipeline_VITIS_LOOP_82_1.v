
module sha_stream_sha_stream_Pipeline_VITIS_LOOP_82_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,idx,j,sha_info_data_address0,sha_info_data_ce0,sha_info_data_we0,sha_info_data_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [12:0] idx;
input  [0:0] j;
output  [3:0] sha_info_data_address0;
output   sha_info_data_ce0;
output   sha_info_data_we0;
output  [30:0] sha_info_data_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln82_fu_164_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [12:0] indata_0_address0;
wire   [6:0] indata_0_q0;
wire   [12:0] indata_0_address1;
wire   [6:0] indata_0_q1;
wire   [12:0] indata_1_address0;
wire   [6:0] indata_1_q0;
wire   [12:0] indata_1_address1;
wire   [6:0] indata_1_q1;
reg   [4:0] idx13_load_reg_318;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln74_fu_225_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln86_1_fu_253_p1;
wire   [63:0] zext_ln82_fu_275_p1;
reg   [4:0] idx13_fu_68;
wire   [4:0] add_ln82_1_fu_170_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_idx13_load;
reg   [6:0] idx11_fu_72;
wire   [6:0] add_ln82_fu_259_p2;
reg   [6:0] ap_sig_allocacmp_idx11_load;
reg    indata_0_ce1_local;
reg    indata_0_ce0_local;
reg    indata_1_ce1_local;
reg    indata_1_ce0_local;
reg    sha_info_data_we0_local;
wire   [30:0] tmp_fu_291_p5;
reg    sha_info_data_ce0_local;
wire   [4:0] tmp_s_fu_189_p4;
wire   [4:0] lshr_ln_fu_179_p4;
wire   [6:0] tmp_20_fu_205_p4;
wire   [4:0] or_ln74_fu_199_p2;
wire   [12:0] tmp_21_fu_215_p4;
wire   [3:0] tmp_22_fu_231_p4;
wire   [12:0] tmp_23_fu_241_p5;
wire   [7:0] zext_ln88_fu_287_p1;
wire   [7:0] zext_ln87_fu_283_p1;
wire   [7:0] zext_ln86_fu_279_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 idx13_fu_68 = 5'd0;
#0 idx11_fu_72 = 7'd0;
#0 ap_done_reg = 1'b0;
end
sha_stream_sha_stream_Pipeline_VITIS_LOOP_82_1_indata_0_ROM_AUTO_1R #(.DataWidth( 7 ),.AddressRange( 8192 ),.AddressWidth( 13 ))
indata_0_U(.clk(ap_clk),.reset(ap_rst),.address0(indata_0_address0),.ce0(indata_0_ce0_local),.q0(indata_0_q0),.address1(indata_0_address1),.ce1(indata_0_ce1_local),.q1(indata_0_q1));
sha_stream_sha_stream_Pipeline_VITIS_LOOP_82_1_indata_1_ROM_AUTO_1R #(.DataWidth( 7 ),.AddressRange( 8192 ),.AddressWidth( 13 ))
indata_1_U(.clk(ap_clk),.reset(ap_rst),.address0(indata_1_address0),.ce0(indata_1_ce0_local),.q0(indata_1_q0),.address1(indata_1_address1),.ce1(indata_1_ce1_local),.q1(indata_1_q1));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln82_fu_164_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            idx11_fu_72 <= add_ln82_fu_259_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            idx11_fu_72 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln82_fu_164_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            idx13_fu_68 <= add_ln82_1_fu_170_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            idx13_fu_68 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        idx13_load_reg_318 <= ap_sig_allocacmp_idx13_load;
    end
end
always @ (*) begin
    if (((icmp_ln82_fu_164_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_idx11_load = 7'd0;
    end else begin
        ap_sig_allocacmp_idx11_load = idx11_fu_72;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_idx13_load = 5'd0;
    end else begin
        ap_sig_allocacmp_idx13_load = idx13_fu_68;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indata_0_ce0_local = 1'b1;
    end else begin
        indata_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indata_0_ce1_local = 1'b1;
    end else begin
        indata_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indata_1_ce0_local = 1'b1;
    end else begin
        indata_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indata_1_ce1_local = 1'b1;
    end else begin
        indata_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sha_info_data_ce0_local = 1'b1;
    end else begin
        sha_info_data_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
assign add_ln82_1_fu_170_p2 = (ap_sig_allocacmp_idx13_load + 5'd1);
assign add_ln82_fu_259_p2 = (ap_sig_allocacmp_idx11_load + 7'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln82_fu_164_p2 = ((ap_sig_allocacmp_idx13_load == 5'd16) ? 1'b1 : 1'b0);
assign indata_0_address0 = zext_ln86_1_fu_253_p1;
assign indata_0_address1 = zext_ln74_fu_225_p1;
assign indata_1_address0 = zext_ln86_1_fu_253_p1;
assign indata_1_address1 = zext_ln74_fu_225_p1;
assign lshr_ln_fu_179_p4 = {{ap_sig_allocacmp_idx11_load[5:1]}};
assign or_ln74_fu_199_p2 = (tmp_s_fu_189_p4 | lshr_ln_fu_179_p4);
assign sha_info_data_address0 = zext_ln82_fu_275_p1;
assign sha_info_data_ce0 = sha_info_data_ce0_local;
assign sha_info_data_d0 = tmp_fu_291_p5;
assign sha_info_data_we0 = sha_info_data_we0_local;
assign tmp_20_fu_205_p4 = {{idx[12:6]}};
assign tmp_21_fu_215_p4 = {{{j}, {tmp_20_fu_205_p4}}, {or_ln74_fu_199_p2}};
assign tmp_22_fu_231_p4 = {{or_ln74_fu_199_p2[4:1]}};
assign tmp_23_fu_241_p5 = {{{{j}, {tmp_20_fu_205_p4}}, {tmp_22_fu_231_p4}}, {1'd1}};
assign tmp_fu_291_p5 = {{{{indata_1_q0}, {zext_ln88_fu_287_p1}}, {zext_ln87_fu_283_p1}}, {zext_ln86_fu_279_p1}};
assign tmp_s_fu_189_p4 = {{idx[5:1]}};
assign zext_ln74_fu_225_p1 = tmp_21_fu_215_p4;
assign zext_ln82_fu_275_p1 = idx13_load_reg_318;
assign zext_ln86_1_fu_253_p1 = tmp_23_fu_241_p5;
assign zext_ln86_fu_279_p1 = indata_0_q1;
assign zext_ln87_fu_283_p1 = indata_1_q1;
assign zext_ln88_fu_287_p1 = indata_0_q0;
endmodule 
