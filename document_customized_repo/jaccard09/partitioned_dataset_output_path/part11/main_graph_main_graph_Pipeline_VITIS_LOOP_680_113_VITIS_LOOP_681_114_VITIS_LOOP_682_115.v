
module main_graph_main_graph_Pipeline_VITIS_LOOP_680_113_VITIS_LOOP_681_114_VITIS_LOOP_682_115 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v64_address1,v64_ce1,v64_we1,v64_d1,v65_address0,v65_ce0,v65_q0,v66_address0,v66_ce0,v66_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [14:0] v64_address1;
output   v64_ce1;
output   v64_we1;
output  [7:0] v64_d1;
output  [14:0] v65_address0;
output   v65_ce0;
input  [7:0] v65_q0;
output  [14:0] v66_address0;
output   v66_ce0;
input  [7:0] v66_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln680_fu_155_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] v311_mid2_fu_241_p3;
reg   [4:0] v311_mid2_reg_388;
wire   [10:0] add_ln689_fu_269_p2;
reg   [10:0] add_ln689_reg_393;
wire   [63:0] zext_ln689_2_fu_336_p1;
reg   [63:0] zext_ln689_2_reg_398;
wire    ap_block_pp0_stage0;
reg   [4:0] v311_fu_64;
wire   [4:0] add_ln682_fu_275_p2;
wire    ap_loop_init;
reg   [4:0] v310_fu_68;
wire   [4:0] select_ln681_fu_249_p3;
reg   [9:0] indvar_flatten1253_fu_72;
wire   [9:0] select_ln681_1_fu_287_p3;
reg   [7:0] v309_fu_76;
wire   [7:0] select_ln680_1_fu_217_p3;
reg   [15:0] indvar_flatten1266_fu_80;
wire   [15:0] add_ln680_1_fu_161_p2;
reg    v66_ce0_local;
reg    v65_ce0_local;
reg    v64_we1_local;
wire   [7:0] v317_fu_342_p2;
reg    v64_ce1_local;
wire   [0:0] icmp_ln681_fu_185_p2;
wire   [0:0] icmp_ln682_fu_205_p2;
wire   [0:0] xor_ln680_fu_199_p2;
wire   [7:0] add_ln680_fu_179_p2;
wire   [4:0] select_ln680_fu_191_p3;
wire   [0:0] and_ln680_fu_211_p2;
wire   [0:0] empty_fu_235_p2;
wire   [4:0] add_ln681_fu_229_p2;
wire   [6:0] trunc_ln681_fu_225_p1;
wire   [10:0] tmp_s_fu_257_p3;
wire   [10:0] zext_ln689_fu_265_p1;
wire   [9:0] add_ln681_1_fu_281_p2;
wire   [14:0] tmp_fu_320_p3;
wire   [14:0] zext_ln689_1_fu_327_p1;
wire   [14:0] add_ln689_1_fu_330_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
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
#0 v311_fu_64 = 5'd0;
#0 v310_fu_68 = 5'd0;
#0 indvar_flatten1253_fu_72 = 10'd0;
#0 v309_fu_76 = 8'd0;
#0 indvar_flatten1266_fu_80 = 16'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
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
            indvar_flatten1253_fu_72 <= 10'd0;
        end else if (((icmp_ln680_fu_155_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten1253_fu_72 <= select_ln681_1_fu_287_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1266_fu_80 <= 16'd0;
        end else if (((icmp_ln680_fu_155_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten1266_fu_80 <= add_ln680_1_fu_161_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v309_fu_76 <= 8'd0;
        end else if (((icmp_ln680_fu_155_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v309_fu_76 <= select_ln680_1_fu_217_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v310_fu_68 <= 5'd0;
        end else if (((icmp_ln680_fu_155_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v310_fu_68 <= select_ln681_fu_249_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v311_fu_64 <= 5'd0;
        end else if (((icmp_ln680_fu_155_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v311_fu_64 <= add_ln682_fu_275_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln689_reg_393 <= add_ln689_fu_269_p2;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        v311_mid2_reg_388 <= v311_mid2_fu_241_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        zext_ln689_2_reg_398[14 : 0] <= zext_ln689_2_fu_336_p1[14 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln680_fu_155_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v64_ce1_local = 1'b1;
    end else begin
        v64_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v64_we1_local = 1'b1;
    end else begin
        v64_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v65_ce0_local = 1'b1;
    end else begin
        v65_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v66_ce0_local = 1'b1;
    end else begin
        v66_ce0_local = 1'b0;
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
assign add_ln680_1_fu_161_p2 = (indvar_flatten1266_fu_80 + 16'd1);
assign add_ln680_fu_179_p2 = (v309_fu_76 + 8'd1);
assign add_ln681_1_fu_281_p2 = (indvar_flatten1253_fu_72 + 10'd1);
assign add_ln681_fu_229_p2 = (select_ln680_fu_191_p3 + 5'd1);
assign add_ln682_fu_275_p2 = (v311_mid2_fu_241_p3 + 5'd1);
assign add_ln689_1_fu_330_p2 = (tmp_fu_320_p3 + zext_ln689_1_fu_327_p1);
assign add_ln689_fu_269_p2 = (tmp_s_fu_257_p3 + zext_ln689_fu_265_p1);
assign and_ln680_fu_211_p2 = (xor_ln680_fu_199_p2 & icmp_ln682_fu_205_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_235_p2 = (icmp_ln681_fu_185_p2 | and_ln680_fu_211_p2);
assign icmp_ln680_fu_155_p2 = ((indvar_flatten1266_fu_80 == 16'd32768) ? 1'b1 : 1'b0);
assign icmp_ln681_fu_185_p2 = ((indvar_flatten1253_fu_72 == 10'd256) ? 1'b1 : 1'b0);
assign icmp_ln682_fu_205_p2 = ((v311_fu_64 == 5'd16) ? 1'b1 : 1'b0);
assign select_ln680_1_fu_217_p3 = ((icmp_ln681_fu_185_p2[0:0] == 1'b1) ? add_ln680_fu_179_p2 : v309_fu_76);
assign select_ln680_fu_191_p3 = ((icmp_ln681_fu_185_p2[0:0] == 1'b1) ? 5'd0 : v310_fu_68);
assign select_ln681_1_fu_287_p3 = ((icmp_ln681_fu_185_p2[0:0] == 1'b1) ? 10'd1 : add_ln681_1_fu_281_p2);
assign select_ln681_fu_249_p3 = ((and_ln680_fu_211_p2[0:0] == 1'b1) ? add_ln681_fu_229_p2 : select_ln680_fu_191_p3);
assign tmp_fu_320_p3 = {{add_ln689_reg_393}, {4'd0}};
assign tmp_s_fu_257_p3 = {{trunc_ln681_fu_225_p1}, {4'd0}};
assign trunc_ln681_fu_225_p1 = select_ln680_1_fu_217_p3[6:0];
assign v311_mid2_fu_241_p3 = ((empty_fu_235_p2[0:0] == 1'b1) ? 5'd0 : v311_fu_64);
assign v317_fu_342_p2 = (v65_q0 + v66_q0);
assign v64_address1 = zext_ln689_2_reg_398;
assign v64_ce1 = v64_ce1_local;
assign v64_d1 = v317_fu_342_p2;
assign v64_we1 = v64_we1_local;
assign v65_address0 = zext_ln689_2_fu_336_p1;
assign v65_ce0 = v65_ce0_local;
assign v66_address0 = zext_ln689_2_fu_336_p1;
assign v66_ce0 = v66_ce0_local;
assign xor_ln680_fu_199_p2 = (icmp_ln681_fu_185_p2 ^ 1'd1);
assign zext_ln689_1_fu_327_p1 = v311_mid2_reg_388;
assign zext_ln689_2_fu_336_p1 = add_ln689_1_fu_330_p2;
assign zext_ln689_fu_265_p1 = select_ln681_fu_249_p3;
always @ (posedge ap_clk) begin
    zext_ln689_2_reg_398[63:15] <= 49'b0000000000000000000000000000000000000000000000000;
end
endmodule 
