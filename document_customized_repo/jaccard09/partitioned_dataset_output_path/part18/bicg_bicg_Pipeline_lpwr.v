
module bicg_bicg_Pipeline_lpwr (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,s_out_din,s_out_full_n,s_out_write,q_out_din,q_out_full_n,q_out_write,buff_s_out_address0,buff_s_out_ce0,buff_s_out_q0,buff_q_out_address0,buff_q_out_ce0,buff_q_out_q0,buff_s_out_1_address0,buff_s_out_1_ce0,buff_s_out_1_q0,buff_q_out_1_address0,buff_q_out_1_ce0,buff_q_out_1_q0,buff_s_out_2_address0,buff_s_out_2_ce0,buff_s_out_2_q0,buff_q_out_2_address0,buff_q_out_2_ce0,buff_q_out_2_q0,buff_s_out_3_address0,buff_s_out_3_ce0,buff_s_out_3_q0,buff_q_out_3_address0,buff_q_out_3_ce0,buff_q_out_3_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] s_out_din;
input   s_out_full_n;
output   s_out_write;
output  [31:0] q_out_din;
input   q_out_full_n;
output   q_out_write;
output  [3:0] buff_s_out_address0;
output   buff_s_out_ce0;
input  [31:0] buff_s_out_q0;
output  [3:0] buff_q_out_address0;
output   buff_q_out_ce0;
input  [31:0] buff_q_out_q0;
output  [3:0] buff_s_out_1_address0;
output   buff_s_out_1_ce0;
input  [31:0] buff_s_out_1_q0;
output  [3:0] buff_q_out_1_address0;
output   buff_q_out_1_ce0;
input  [31:0] buff_q_out_1_q0;
output  [3:0] buff_s_out_2_address0;
output   buff_s_out_2_ce0;
input  [31:0] buff_s_out_2_q0;
output  [3:0] buff_q_out_2_address0;
output   buff_q_out_2_ce0;
input  [31:0] buff_q_out_2_q0;
output  [3:0] buff_s_out_3_address0;
output   buff_s_out_3_ce0;
input  [31:0] buff_s_out_3_q0;
output  [3:0] buff_q_out_3_address0;
output   buff_q_out_3_ce0;
input  [31:0] buff_q_out_3_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
reg    ap_block_state5_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_190_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage3;
reg   [0:0] tmp_reg_272;
reg    ap_block_state4_pp0_stage3_iter0;
reg    ap_block_pp0_stage3_subdone;
reg    s_out_blk_n;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage0;
reg    q_out_blk_n;
reg    ap_block_pp0_stage0_11001;
reg   [31:0] buff_s_out_1_load_reg_316;
reg    ap_block_state2_pp0_stage1_iter0;
reg    ap_block_pp0_stage1_11001;
reg   [31:0] buff_q_out_1_load_reg_321;
reg   [31:0] buff_s_out_2_load_reg_326;
reg   [31:0] buff_q_out_2_load_reg_331;
reg   [31:0] buff_s_out_3_load_reg_336;
reg   [31:0] buff_q_out_3_load_reg_341;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln5_fu_208_p1;
reg   [6:0] i_fu_60;
wire   [6:0] add_ln35_fu_220_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_1;
wire   [31:0] bitcast_ln36_fu_231_p1;
reg   [31:0] s_out_din_local;
reg    ap_block_pp0_stage1_01001;
wire   [31:0] bitcast_ln36_1_fu_241_p1;
reg    ap_block_state3_pp0_stage2_iter0;
reg    ap_block_pp0_stage2_01001;
wire   [31:0] bitcast_ln36_2_fu_249_p1;
reg    ap_block_pp0_stage3_01001;
wire   [31:0] bitcast_ln36_3_fu_257_p1;
reg    ap_block_pp0_stage0_01001;
reg    s_out_write_local;
reg    ap_block_pp0_stage2_11001;
reg    ap_block_pp0_stage3_11001;
wire   [31:0] bitcast_ln37_fu_236_p1;
reg   [31:0] q_out_din_local;
wire   [31:0] bitcast_ln37_1_fu_245_p1;
wire   [31:0] bitcast_ln37_2_fu_253_p1;
wire   [31:0] bitcast_ln37_3_fu_261_p1;
reg    q_out_write_local;
reg    buff_s_out_ce0_local;
reg    buff_q_out_ce0_local;
reg    buff_s_out_1_ce0_local;
reg    buff_q_out_1_ce0_local;
reg    buff_s_out_2_ce0_local;
reg    buff_q_out_2_ce0_local;
reg    buff_s_out_3_ce0_local;
reg    buff_q_out_3_ce0_local;
wire   [3:0] lshr_ln5_5_fu_198_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
reg    ap_block_pp0_stage1_subdone;
reg    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_60 = 7'd0;
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((tmp_fu_190_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_60 <= add_ln35_fu_220_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_60 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_q_out_1_load_reg_321 <= buff_q_out_1_q0;
        buff_q_out_2_load_reg_331 <= buff_q_out_2_q0;
        buff_q_out_3_load_reg_341 <= buff_q_out_3_q0;
        buff_s_out_1_load_reg_316 <= buff_s_out_1_q0;
        buff_s_out_2_load_reg_326 <= buff_s_out_2_q0;
        buff_s_out_3_load_reg_336 <= buff_s_out_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_reg_272 <= ap_sig_allocacmp_i_1[32'd6];
    end
end
always @ (*) begin
    if (((tmp_fu_190_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_60;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_q_out_1_ce0_local = 1'b1;
    end else begin
        buff_q_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_q_out_2_ce0_local = 1'b1;
    end else begin
        buff_q_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_q_out_3_ce0_local = 1'b1;
    end else begin
        buff_q_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_q_out_ce0_local = 1'b1;
    end else begin
        buff_q_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_1_ce0_local = 1'b1;
    end else begin
        buff_s_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_2_ce0_local = 1'b1;
    end else begin
        buff_s_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_3_ce0_local = 1'b1;
    end else begin
        buff_s_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_ce0_local = 1'b1;
    end else begin
        buff_s_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_272 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_272 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_272 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        q_out_blk_n = q_out_full_n;
    end else begin
        q_out_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        q_out_din_local = bitcast_ln37_3_fu_261_p1;
    end else if (((tmp_reg_272 == 1'd0) & (1'b0 == ap_block_pp0_stage3_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        q_out_din_local = bitcast_ln37_2_fu_253_p1;
    end else if (((tmp_reg_272 == 1'd0) & (1'b0 == ap_block_pp0_stage2_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        q_out_din_local = bitcast_ln37_1_fu_245_p1;
    end else if (((tmp_reg_272 == 1'd0) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        q_out_din_local = bitcast_ln37_fu_236_p1;
    end else begin
        q_out_din_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_272 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_272 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_272 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        q_out_write_local = 1'b1;
    end else begin
        q_out_write_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_272 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_272 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_272 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        s_out_blk_n = s_out_full_n;
    end else begin
        s_out_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_out_din_local = bitcast_ln36_3_fu_257_p1;
    end else if (((tmp_reg_272 == 1'd0) & (1'b0 == ap_block_pp0_stage3_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        s_out_din_local = bitcast_ln36_2_fu_249_p1;
    end else if (((tmp_reg_272 == 1'd0) & (1'b0 == ap_block_pp0_stage2_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        s_out_din_local = bitcast_ln36_1_fu_241_p1;
    end else if (((tmp_reg_272 == 1'd0) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        s_out_din_local = bitcast_ln36_fu_231_p1;
    end else begin
        s_out_din_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_272 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_272 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_272 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        s_out_write_local = 1'b1;
    end else begin
        s_out_write_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln35_fu_220_p2 = (ap_sig_allocacmp_i_1 + 7'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state5_pp0_stage0_iter1));
end
always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state5_pp0_stage0_iter1));
end
always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state5_pp0_stage0_iter1));
end
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage1_01001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage1_iter0));
end
always @ (*) begin
    ap_block_pp0_stage1_11001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage1_iter0));
end
always @ (*) begin
    ap_block_pp0_stage1_subdone = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage1_iter0));
end
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage2_01001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state3_pp0_stage2_iter0));
end
always @ (*) begin
    ap_block_pp0_stage2_11001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state3_pp0_stage2_iter0));
end
always @ (*) begin
    ap_block_pp0_stage2_subdone = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state3_pp0_stage2_iter0));
end
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage3_01001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state4_pp0_stage3_iter0));
end
always @ (*) begin
    ap_block_pp0_stage3_11001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state4_pp0_stage3_iter0));
end
always @ (*) begin
    ap_block_pp0_stage3_subdone = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state4_pp0_stage3_iter0));
end
always @ (*) begin
    ap_block_state2_pp0_stage1_iter0 = (((tmp_reg_272 == 1'd0) & (q_out_full_n == 1'b0)) | ((tmp_reg_272 == 1'd0) & (s_out_full_n == 1'b0)));
end
always @ (*) begin
    ap_block_state3_pp0_stage2_iter0 = (((tmp_reg_272 == 1'd0) & (q_out_full_n == 1'b0)) | ((tmp_reg_272 == 1'd0) & (s_out_full_n == 1'b0)));
end
always @ (*) begin
    ap_block_state4_pp0_stage3_iter0 = (((tmp_reg_272 == 1'd0) & (q_out_full_n == 1'b0)) | ((tmp_reg_272 == 1'd0) & (s_out_full_n == 1'b0)));
end
always @ (*) begin
    ap_block_state5_pp0_stage0_iter1 = ((q_out_full_n == 1'b0) | (s_out_full_n == 1'b0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln36_1_fu_241_p1 = buff_s_out_1_load_reg_316;
assign bitcast_ln36_2_fu_249_p1 = buff_s_out_2_load_reg_326;
assign bitcast_ln36_3_fu_257_p1 = buff_s_out_3_load_reg_336;
assign bitcast_ln36_fu_231_p1 = buff_s_out_q0;
assign bitcast_ln37_1_fu_245_p1 = buff_q_out_1_load_reg_321;
assign bitcast_ln37_2_fu_253_p1 = buff_q_out_2_load_reg_331;
assign bitcast_ln37_3_fu_261_p1 = buff_q_out_3_load_reg_341;
assign bitcast_ln37_fu_236_p1 = buff_q_out_q0;
assign buff_q_out_1_address0 = zext_ln5_fu_208_p1;
assign buff_q_out_1_ce0 = buff_q_out_1_ce0_local;
assign buff_q_out_2_address0 = zext_ln5_fu_208_p1;
assign buff_q_out_2_ce0 = buff_q_out_2_ce0_local;
assign buff_q_out_3_address0 = zext_ln5_fu_208_p1;
assign buff_q_out_3_ce0 = buff_q_out_3_ce0_local;
assign buff_q_out_address0 = zext_ln5_fu_208_p1;
assign buff_q_out_ce0 = buff_q_out_ce0_local;
assign buff_s_out_1_address0 = zext_ln5_fu_208_p1;
assign buff_s_out_1_ce0 = buff_s_out_1_ce0_local;
assign buff_s_out_2_address0 = zext_ln5_fu_208_p1;
assign buff_s_out_2_ce0 = buff_s_out_2_ce0_local;
assign buff_s_out_3_address0 = zext_ln5_fu_208_p1;
assign buff_s_out_3_ce0 = buff_s_out_3_ce0_local;
assign buff_s_out_address0 = zext_ln5_fu_208_p1;
assign buff_s_out_ce0 = buff_s_out_ce0_local;
assign lshr_ln5_5_fu_198_p4 = {{ap_sig_allocacmp_i_1[5:2]}};
assign q_out_din = q_out_din_local;
assign q_out_write = q_out_write_local;
assign s_out_din = s_out_din_local;
assign s_out_write = s_out_write_local;
assign tmp_fu_190_p3 = ap_sig_allocacmp_i_1[32'd6];
assign zext_ln5_fu_208_p1 = lshr_ln5_5_fu_198_p4;
endmodule 
