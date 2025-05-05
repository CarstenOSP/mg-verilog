module ms_mergesort_merge_Pipeline_merge_label3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,zext_ln7,stop_cast9,start_cast8,zext_ln11_1,a_0_address0,a_0_ce0,a_0_we0,a_0_d0,a_1_address0,a_1_ce0,a_1_we0,a_1_d0,temp_address0,temp_ce0,temp_q0,temp_address1,temp_ce1,temp_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [10:0] zext_ln7;
input  [10:0] stop_cast9;
input  [10:0] start_cast8;
input  [10:0] zext_ln11_1;
output  [9:0] a_0_address0;
output   a_0_ce0;
output   a_0_we0;
output  [31:0] a_0_d0;
output  [9:0] a_1_address0;
output   a_1_ce0;
output   a_1_we0;
output  [31:0] a_1_d0;
output  [10:0] temp_address0;
output   temp_ce0;
input  [31:0] temp_q0;
output  [10:0] temp_address1;
output   temp_ce1;
input  [31:0] temp_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] icmp_ln18_fu_185_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln11_1_cast_fu_145_p1;
reg   [63:0] zext_ln11_1_cast_reg_274;
reg   [63:0] k_1_reg_279;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] i_1_reg_286;
reg   [31:0] j_1_reg_291;
reg   [0:0] icmp_ln18_reg_296;
wire   [0:0] trunc_ln18_fu_200_p1;
reg   [0:0] trunc_ln18_reg_310;
reg   [9:0] lshr_ln5_2_reg_314;
reg   [31:0] tmp_j_reg_319;
reg   [31:0] tmp_i_reg_325;
wire   [0:0] icmp_ln21_fu_212_p2;
reg   [0:0] icmp_ln21_reg_331;
wire   [31:0] i_2_fu_218_p2;
reg   [31:0] i_2_reg_335;
wire   [31:0] j_2_fu_223_p2;
reg   [31:0] j_2_reg_340;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln19_fu_190_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln20_fu_195_p1;
wire   [63:0] zext_ln5_fu_238_p1;
wire   [9:0] a_0_addr_gep_fu_129_p3;
wire   [9:0] a_1_addr_gep_fu_137_p3;
reg   [63:0] k_fu_42;
wire   [63:0] add_ln18_fu_228_p2;
wire   [63:0] zext_ln7_cast_fu_157_p1;
wire    ap_loop_init;
reg   [31:0] i_fu_46;
wire   [31:0] start_cast8_cast_fu_149_p1;
reg   [31:0] ap_sig_allocacmp_i_1;
reg   [31:0] j_fu_50;
wire   [31:0] stop_cast9_cast_fu_153_p1;
reg   [31:0] ap_sig_allocacmp_j_1;
reg    temp_ce1_local;
reg    temp_ce0_local;
reg    a_0_we0_local;
reg   [31:0] a_0_d0_local;
reg    a_0_ce0_local;
reg   [9:0] a_0_address0_local;
reg    a_1_we0_local;
reg   [31:0] a_1_d0_local;
reg    a_1_ce0_local;
reg   [9:0] a_1_address0_local;
wire    ap_block_pp0_stage0;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_283;
reg    ap_condition_286;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_42 = 64'd0;
#0 i_fu_46 = 32'd0;
#0 j_fu_50 = 32'd0;
#0 ap_done_reg = 1'b0;
end
ms_mergesort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_fu_46 <= start_cast8_cast_fu_149_p1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_331 == 1'd0))) begin
        i_fu_46 <= i_2_reg_335;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        j_fu_50 <= stop_cast9_cast_fu_153_p1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_331 == 1'd1))) begin
        j_fu_50 <= j_2_reg_340;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            k_fu_42 <= zext_ln7_cast_fu_157_p1;
        end else if (((icmp_ln18_reg_296 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            k_fu_42 <= add_ln18_fu_228_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_1_reg_286 <= ap_sig_allocacmp_i_1;
        icmp_ln18_reg_296 <= icmp_ln18_fu_185_p2;
        j_1_reg_291 <= ap_sig_allocacmp_j_1;
        k_1_reg_279 <= k_fu_42;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_2_reg_335 <= i_2_fu_218_p2;
        icmp_ln21_reg_331 <= icmp_ln21_fu_212_p2;
        j_2_reg_340 <= j_2_fu_223_p2;
        lshr_ln5_2_reg_314 <= {{k_1_reg_279[10:1]}};
        trunc_ln18_reg_310 <= trunc_ln18_fu_200_p1;
        zext_ln11_1_cast_reg_274[10 : 0] <= zext_ln11_1_cast_fu_145_p1[10 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_i_reg_325 <= temp_q0;
        tmp_j_reg_319 <= temp_q1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_283)) begin
        if ((icmp_ln21_reg_331 == 1'd1)) begin
            a_0_address0_local = a_0_addr_gep_fu_129_p3;
        end else if ((icmp_ln21_reg_331 == 1'd0)) begin
            a_0_address0_local = zext_ln5_fu_238_p1;
        end else begin
            a_0_address0_local = 'bx;
        end
    end else begin
        a_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_331 == 1'd1) & (trunc_ln18_reg_310 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_331 == 1'd0) & (trunc_ln18_reg_310 == 1'd0)))) begin
        a_0_ce0_local = 1'b1;
    end else begin
        a_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_283)) begin
        if ((icmp_ln21_reg_331 == 1'd1)) begin
            a_0_d0_local = tmp_j_reg_319;
        end else if ((icmp_ln21_reg_331 == 1'd0)) begin
            a_0_d0_local = tmp_i_reg_325;
        end else begin
            a_0_d0_local = 'bx;
        end
    end else begin
        a_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_331 == 1'd1) & (trunc_ln18_reg_310 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_331 == 1'd0) & (trunc_ln18_reg_310 == 1'd0)))) begin
        a_0_we0_local = 1'b1;
    end else begin
        a_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_286)) begin
        if ((icmp_ln21_reg_331 == 1'd1)) begin
            a_1_address0_local = a_1_addr_gep_fu_137_p3;
        end else if ((icmp_ln21_reg_331 == 1'd0)) begin
            a_1_address0_local = zext_ln5_fu_238_p1;
        end else begin
            a_1_address0_local = 'bx;
        end
    end else begin
        a_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_331 == 1'd1) & (trunc_ln18_reg_310 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_331 == 1'd0) & (trunc_ln18_reg_310 == 1'd1)))) begin
        a_1_ce0_local = 1'b1;
    end else begin
        a_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_286)) begin
        if ((icmp_ln21_reg_331 == 1'd1)) begin
            a_1_d0_local = tmp_j_reg_319;
        end else if ((icmp_ln21_reg_331 == 1'd0)) begin
            a_1_d0_local = tmp_i_reg_325;
        end else begin
            a_1_d0_local = 'bx;
        end
    end else begin
        a_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_331 == 1'd1) & (trunc_ln18_reg_310 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_331 == 1'd0) & (trunc_ln18_reg_310 == 1'd1)))) begin
        a_1_we0_local = 1'b1;
    end else begin
        a_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln18_fu_185_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_331 == 1'd0))) begin
        ap_sig_allocacmp_i_1 = i_2_reg_335;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_46;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_331 == 1'd1))) begin
        ap_sig_allocacmp_j_1 = j_2_reg_340;
    end else begin
        ap_sig_allocacmp_j_1 = j_fu_50;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        temp_ce0_local = 1'b1;
    end else begin
        temp_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        temp_ce1_local = 1'b1;
    end else begin
        temp_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign a_0_addr_gep_fu_129_p3 = zext_ln5_fu_238_p1;
assign a_0_address0 = a_0_address0_local;
assign a_0_ce0 = a_0_ce0_local;
assign a_0_d0 = a_0_d0_local;
assign a_0_we0 = a_0_we0_local;
assign a_1_addr_gep_fu_137_p3 = zext_ln5_fu_238_p1;
assign a_1_address0 = a_1_address0_local;
assign a_1_ce0 = a_1_ce0_local;
assign a_1_d0 = a_1_d0_local;
assign a_1_we0 = a_1_we0_local;
assign add_ln18_fu_228_p2 = (k_1_reg_279 + 64'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_283 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_310 == 1'd0));
end
always @ (*) begin
    ap_condition_286 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_310 == 1'd1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign i_2_fu_218_p2 = (i_1_reg_286 + 32'd1);
assign icmp_ln18_fu_185_p2 = (($signed(k_fu_42) > $signed(zext_ln11_1_cast_reg_274)) ? 1'b1 : 1'b0);
assign icmp_ln21_fu_212_p2 = (($signed(temp_q1) < $signed(temp_q0)) ? 1'b1 : 1'b0);
assign j_2_fu_223_p2 = ($signed(j_1_reg_291) + $signed(32'd4294967295));
assign start_cast8_cast_fu_149_p1 = start_cast8;
assign stop_cast9_cast_fu_153_p1 = stop_cast9;
assign temp_address0 = zext_ln20_fu_195_p1;
assign temp_address1 = zext_ln19_fu_190_p1;
assign temp_ce0 = temp_ce0_local;
assign temp_ce1 = temp_ce1_local;
assign trunc_ln18_fu_200_p1 = k_1_reg_279[0:0];
assign zext_ln11_1_cast_fu_145_p1 = zext_ln11_1;
assign zext_ln19_fu_190_p1 = ap_sig_allocacmp_j_1;
assign zext_ln20_fu_195_p1 = ap_sig_allocacmp_i_1;
assign zext_ln5_fu_238_p1 = lshr_ln5_2_reg_314;
assign zext_ln7_cast_fu_157_p1 = zext_ln7;
always @ (posedge ap_clk) begin
    zext_ln11_1_cast_reg_274[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
end
endmodule 