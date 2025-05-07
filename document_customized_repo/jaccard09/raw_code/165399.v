module main_graph_main_graph_Pipeline_VITIS_LOOP_1313_298_VITIS_LOOP_1315_299 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v21_Addr_A,v21_EN_A,v21_WEN_A,v21_Din_A,v21_Dout_A,v24_address0,v24_ce0,v24_q0,v22_Addr_A,v22_EN_A,v22_WEN_A,v22_Din_A,v22_Dout_A); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] v21_Addr_A;
output   v21_EN_A;
output  [0:0] v21_WEN_A;
output  [7:0] v21_Din_A;
input  [7:0] v21_Dout_A;
output  [8:0] v24_address0;
output   v24_ce0;
input  [7:0] v24_q0;
output  [31:0] v22_Addr_A;
output   v22_EN_A;
output  [0:0] v22_WEN_A;
output  [7:0] v22_Din_A;
input  [7:0] v22_Dout_A;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln1313_fu_138_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln1315_fu_167_p2;
reg   [0:0] icmp_ln1315_reg_299;
reg   [0:0] icmp_ln1315_reg_299_pp0_iter2_reg;
reg   [0:0] icmp_ln1315_reg_299_pp0_iter3_reg;
wire   [3:0] select_ln1313_2_fu_181_p3;
reg   [3:0] select_ln1313_2_reg_304;
reg   [3:0] select_ln1313_2_reg_304_pp0_iter2_reg;
reg   [3:0] select_ln1313_2_reg_304_pp0_iter3_reg;
reg   [3:0] select_ln1313_2_reg_304_pp0_iter4_reg;
wire   [0:0] icmp_ln1315_1_fu_223_p2;
reg   [0:0] icmp_ln1315_1_reg_319;
reg   [0:0] icmp_ln1315_1_reg_319_pp0_iter2_reg;
reg   [0:0] icmp_ln1315_1_reg_319_pp0_iter3_reg;
reg   [0:0] icmp_ln1315_1_reg_319_pp0_iter4_reg;
wire   [63:0] zext_ln1317_1_fu_212_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln1315_fu_197_p1;
wire   [63:0] zext_ln1313_fu_249_p1;
reg   [7:0] v711_fu_60;
wire   [7:0] grp_fu_257_p3;
reg   [7:0] ap_sig_allocacmp_v711_load;
wire    ap_loop_init;
reg   [9:0] v692_fu_64;
wire   [9:0] add_ln1315_fu_217_p2;
reg   [3:0] v691_fu_68;
reg   [12:0] indvar_flatten3403_fu_72;
wire   [12:0] add_ln1313_1_fu_144_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten3403_load;
reg    v24_ce0_local;
reg    v21_EN_A_local;
wire   [31:0] v21_Addr_A_orig;
reg   [0:0] v22_WEN_A_local;
reg    v22_EN_A_local;
wire   [31:0] v22_Addr_A_orig;
wire   [3:0] add_ln1313_fu_161_p2;
wire   [9:0] select_ln1313_fu_173_p3;
wire   [12:0] tmp_s_fu_189_p3;
wire   [12:0] zext_ln1317_fu_202_p1;
wire   [12:0] add_ln1317_fu_206_p2;
wire   [7:0] grp_fu_257_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
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
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 v711_fu_60 = 8'd0;
#0 v692_fu_64 = 10'd0;
#0 v691_fu_68 = 4'd0;
#0 indvar_flatten3403_fu_72 = 13'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U338(.clk(ap_clk),.reset(ap_rst),.din0(v21_Dout_A),.din1(v24_q0),.din2(grp_fu_257_p2),.ce(1'b1),.dout(grp_fu_257_p3));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln1313_fu_138_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten3403_fu_72 <= add_ln1313_1_fu_144_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten3403_fu_72 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v691_fu_68 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v691_fu_68 <= select_ln1313_2_fu_181_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v692_fu_64 <= 10'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v692_fu_64 <= add_ln1315_fu_217_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v711_fu_60 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
            v711_fu_60 <= grp_fu_257_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln1315_1_reg_319 <= icmp_ln1315_1_fu_223_p2;
        icmp_ln1315_reg_299 <= icmp_ln1315_fu_167_p2;
        select_ln1313_2_reg_304 <= select_ln1313_2_fu_181_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        icmp_ln1315_1_reg_319_pp0_iter2_reg <= icmp_ln1315_1_reg_319;
        icmp_ln1315_1_reg_319_pp0_iter3_reg <= icmp_ln1315_1_reg_319_pp0_iter2_reg;
        icmp_ln1315_1_reg_319_pp0_iter4_reg <= icmp_ln1315_1_reg_319_pp0_iter3_reg;
        icmp_ln1315_reg_299_pp0_iter2_reg <= icmp_ln1315_reg_299;
        icmp_ln1315_reg_299_pp0_iter3_reg <= icmp_ln1315_reg_299_pp0_iter2_reg;
        select_ln1313_2_reg_304_pp0_iter2_reg <= select_ln1313_2_reg_304;
        select_ln1313_2_reg_304_pp0_iter3_reg <= select_ln1313_2_reg_304_pp0_iter2_reg;
        select_ln1313_2_reg_304_pp0_iter4_reg <= select_ln1313_2_reg_304_pp0_iter3_reg;
    end
end
always @ (*) begin
    if (((icmp_ln1313_fu_138_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_indvar_flatten3403_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten3403_load = indvar_flatten3403_fu_72;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        ap_sig_allocacmp_v711_load = grp_fu_257_p3;
    end else begin
        ap_sig_allocacmp_v711_load = v711_fu_60;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v21_EN_A_local = 1'b1;
    end else begin
        v21_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v22_EN_A_local = 1'b1;
    end else begin
        v22_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln1315_1_reg_319_pp0_iter4_reg == 1'd1))) begin
        v22_WEN_A_local = 1'd1;
    end else begin
        v22_WEN_A_local = 1'd0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v24_ce0_local = 1'b1;
    end else begin
        v24_ce0_local = 1'b0;
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
assign add_ln1313_1_fu_144_p2 = (ap_sig_allocacmp_indvar_flatten3403_load + 13'd1);
assign add_ln1313_fu_161_p2 = (v691_fu_68 + 4'd1);
assign add_ln1315_fu_217_p2 = (select_ln1313_fu_173_p3 + 10'd1);
assign add_ln1317_fu_206_p2 = (tmp_s_fu_189_p3 + zext_ln1317_fu_202_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_257_p2 = ((icmp_ln1315_reg_299_pp0_iter3_reg[0:0] == 1'b1) ? 8'd0 : ap_sig_allocacmp_v711_load);
assign icmp_ln1313_fu_138_p2 = ((ap_sig_allocacmp_indvar_flatten3403_load == 13'd5120) ? 1'b1 : 1'b0);
assign icmp_ln1315_1_fu_223_p2 = ((add_ln1315_fu_217_p2 == 10'd512) ? 1'b1 : 1'b0);
assign icmp_ln1315_fu_167_p2 = ((v692_fu_64 == 10'd512) ? 1'b1 : 1'b0);
assign select_ln1313_2_fu_181_p3 = ((icmp_ln1315_fu_167_p2[0:0] == 1'b1) ? add_ln1313_fu_161_p2 : v691_fu_68);
assign select_ln1313_fu_173_p3 = ((icmp_ln1315_fu_167_p2[0:0] == 1'b1) ? 10'd0 : v692_fu_64);
assign tmp_s_fu_189_p3 = {{select_ln1313_2_fu_181_p3}, {9'd0}};
assign v21_Addr_A = v21_Addr_A_orig << 32'd0;
assign v21_Addr_A_orig = zext_ln1317_1_fu_212_p1;
assign v21_Din_A = 8'd0;
assign v21_EN_A = v21_EN_A_local;
assign v21_WEN_A = 1'd0;
assign v22_Addr_A = v22_Addr_A_orig << 32'd0;
assign v22_Addr_A_orig = zext_ln1313_fu_249_p1;
assign v22_Din_A = grp_fu_257_p3;
assign v22_EN_A = v22_EN_A_local;
assign v22_WEN_A = v22_WEN_A_local;
assign v24_address0 = zext_ln1315_fu_197_p1;
assign v24_ce0 = v24_ce0_local;
assign zext_ln1313_fu_249_p1 = select_ln1313_2_reg_304_pp0_iter4_reg;
assign zext_ln1315_fu_197_p1 = select_ln1313_fu_173_p3;
assign zext_ln1317_1_fu_212_p1 = add_ln1317_fu_206_p2;
assign zext_ln1317_fu_202_p1 = select_ln1313_fu_173_p3;
endmodule 