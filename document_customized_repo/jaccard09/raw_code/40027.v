module stencil3d (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,C_address0,C_ce0,C_q0,C_address1,C_ce1,C_q1,orig_address0,orig_ce0,orig_q0,orig_address1,orig_ce1,orig_q1,sol_address0,sol_ce0,sol_we0,sol_d0,sol_address1,sol_ce1,sol_we1,sol_d1); 
parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_state7 = 9'd64;
parameter    ap_ST_fsm_state8 = 9'd128;
parameter    ap_ST_fsm_state9 = 9'd256;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [0:0] C_address0;
output   C_ce0;
input  [31:0] C_q0;
output  [0:0] C_address1;
output   C_ce1;
input  [31:0] C_q1;
output  [13:0] orig_address0;
output   orig_ce0;
input  [31:0] orig_q0;
output  [13:0] orig_address1;
output   orig_ce1;
input  [31:0] orig_q1;
output  [13:0] sol_address0;
output   sol_ce0;
output   sol_we0;
output  [31:0] sol_d0;
output  [13:0] sol_address1;
output   sol_ce1;
output   sol_we1;
output  [31:0] sol_d1;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[13:0] orig_address0;
reg orig_ce0;
reg[13:0] orig_address1;
reg orig_ce1;
reg[13:0] sol_address0;
reg sol_ce0;
reg sol_we0;
reg[31:0] sol_d0;
reg[13:0] sol_address1;
reg sol_ce1;
reg sol_we1;
reg[31:0] sol_d1;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state5;
reg   [31:0] C_load_reg_249;
wire    ap_CS_fsm_state6;
reg   [31:0] C_load_1_reg_254;
reg   [4:0] i_1_reg_259;
wire    ap_CS_fsm_state7;
wire   [4:0] indvars_iv_next74_fu_159_p2;
reg   [4:0] indvars_iv_next74_reg_267;
wire   [9:0] tmp_4_fu_165_p3;
reg   [9:0] tmp_4_reg_272;
wire   [4:0] shl_ln44_fu_179_p2;
reg   [4:0] shl_ln44_reg_281;
wire    ap_CS_fsm_state8;
wire   [9:0] empty_fu_198_p2;
reg   [9:0] empty_reg_286;
wire   [9:0] empty_12_fu_208_p2;
reg   [9:0] empty_12_reg_291;
wire   [4:0] indvars_iv_next61_fu_214_p2;
reg   [4:0] indvars_iv_next61_reg_296;
wire   [4:0] tmp3_fu_221_p2;
reg   [4:0] tmp3_reg_302;
wire    grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_ap_start;
wire    grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_ap_done;
wire    grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_ap_idle;
wire    grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_ap_ready;
wire   [13:0] grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_orig_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_orig_ce0;
wire   [13:0] grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_orig_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_orig_ce1;
wire   [13:0] grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_sol_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_sol_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_sol_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_sol_d0;
wire    grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_ap_start;
wire    grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_ap_done;
wire    grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_ap_idle;
wire    grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_ap_ready;
wire   [13:0] grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_orig_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_orig_ce0;
wire   [13:0] grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_orig_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_orig_ce1;
wire   [13:0] grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_sol_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_sol_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_sol_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_sol_d0;
wire   [13:0] grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_sol_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_sol_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_sol_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_sol_d1;
wire    grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_ap_start;
wire    grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_ap_done;
wire    grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_ap_idle;
wire    grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_ap_ready;
wire   [13:0] grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_orig_address0;
wire    grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_orig_ce0;
wire   [13:0] grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_orig_address1;
wire    grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_orig_ce1;
wire   [13:0] grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_sol_address0;
wire    grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_sol_ce0;
wire    grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_sol_we0;
wire   [31:0] grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_sol_d0;
wire   [13:0] grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_sol_address1;
wire    grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_sol_ce1;
wire    grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_sol_we1;
wire   [31:0] grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_sol_d1;
wire    grp_stencil3d_Pipeline_loop_row_fu_127_ap_start;
wire    grp_stencil3d_Pipeline_loop_row_fu_127_ap_done;
wire    grp_stencil3d_Pipeline_loop_row_fu_127_ap_idle;
wire    grp_stencil3d_Pipeline_loop_row_fu_127_ap_ready;
wire   [13:0] grp_stencil3d_Pipeline_loop_row_fu_127_orig_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_127_orig_ce0;
wire   [13:0] grp_stencil3d_Pipeline_loop_row_fu_127_orig_address1;
wire    grp_stencil3d_Pipeline_loop_row_fu_127_orig_ce1;
wire   [13:0] grp_stencil3d_Pipeline_loop_row_fu_127_sol_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_127_sol_ce0;
wire    grp_stencil3d_Pipeline_loop_row_fu_127_sol_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_127_sol_d0;
reg   [4:0] j_reg_91;
wire   [0:0] icmp_ln36_fu_153_p2;
wire    ap_CS_fsm_state9;
reg    grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg    grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_ap_start_reg;
reg    grp_stencil3d_Pipeline_loop_row_fu_127_ap_start_reg;
wire   [0:0] icmp_ln37_fu_173_p2;
reg   [4:0] i_fu_60;
reg    C_ce1_local;
reg    C_ce0_local;
wire  signed [5:0] tmp1_cast_cast_fu_186_p3;
wire   [9:0] tmp1_cast_cast_cast_fu_194_p1;
wire  signed [9:0] tmp2_cast_fu_204_p1;
reg   [8:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
reg    ap_ST_fsm_state9_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_ap_start_reg = 1'b0;
#0 grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_ap_start_reg = 1'b0;
#0 grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_ap_start_reg = 1'b0;
#0 grp_stencil3d_Pipeline_loop_row_fu_127_ap_start_reg = 1'b0;
#0 i_fu_60 = 5'd0;
end
stencil3d_stencil3d_Pipeline_height_bound_col_height_bound_row grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_ap_start),.ap_done(grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_ap_done),.ap_idle(grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_ap_idle),.ap_ready(grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_ap_ready),.orig_address0(grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_orig_address0),.orig_ce0(grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_orig_ce0),.orig_q0(orig_q0),.orig_address1(grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_orig_address1),.orig_ce1(grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_orig_ce1),.orig_q1(orig_q1),.sol_address0(grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_sol_address0),.sol_ce0(grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_sol_ce0),.sol_we0(grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_sol_we0),.sol_d0(grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_sol_d0));
stencil3d_stencil3d_Pipeline_col_bound_height_col_bound_row grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_ap_start),.ap_done(grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_ap_done),.ap_idle(grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_ap_idle),.ap_ready(grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_ap_ready),.orig_address0(grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_orig_address0),.orig_ce0(grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_orig_ce0),.orig_q0(orig_q0),.orig_address1(grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_orig_address1),.orig_ce1(grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_orig_ce1),.orig_q1(orig_q1),.sol_address0(grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_sol_address0),.sol_ce0(grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_sol_ce0),.sol_we0(grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_sol_we0),.sol_d0(grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_sol_d0),.sol_address1(grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_sol_address1),.sol_ce1(grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_sol_ce1),.sol_we1(grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_sol_we1),.sol_d1(grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_sol_d1));
stencil3d_stencil3d_Pipeline_row_bound_height_row_bound_col grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_ap_start),.ap_done(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_ap_done),.ap_idle(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_ap_idle),.ap_ready(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_ap_ready),.orig_address0(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_orig_address0),.orig_ce0(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_orig_ce0),.orig_q0(orig_q0),.orig_address1(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_orig_address1),.orig_ce1(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_orig_ce1),.orig_q1(orig_q1),.sol_address0(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_sol_address0),.sol_ce0(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_sol_ce0),.sol_we0(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_sol_we0),.sol_d0(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_sol_d0),.sol_address1(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_sol_address1),.sol_ce1(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_sol_ce1),.sol_we1(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_sol_we1),.sol_d1(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_sol_d1));
stencil3d_stencil3d_Pipeline_loop_row grp_stencil3d_Pipeline_loop_row_fu_127(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_stencil3d_Pipeline_loop_row_fu_127_ap_start),.ap_done(grp_stencil3d_Pipeline_loop_row_fu_127_ap_done),.ap_idle(grp_stencil3d_Pipeline_loop_row_fu_127_ap_idle),.ap_ready(grp_stencil3d_Pipeline_loop_row_fu_127_ap_ready),.i_2(i_1_reg_259),.j_2(j_reg_91),.orig_address0(grp_stencil3d_Pipeline_loop_row_fu_127_orig_address0),.orig_ce0(grp_stencil3d_Pipeline_loop_row_fu_127_orig_ce0),.orig_q0(orig_q0),.orig_address1(grp_stencil3d_Pipeline_loop_row_fu_127_orig_address1),.orig_ce1(grp_stencil3d_Pipeline_loop_row_fu_127_orig_ce1),.orig_q1(orig_q1),.empty_5(empty_reg_286),.empty_6(empty_12_reg_291),.indvars_iv_next61(indvars_iv_next61_reg_296),.tmp3(tmp3_reg_302),.C_load(C_load_reg_249),.C_load_1(C_load_1_reg_254),.sol_address0(grp_stencil3d_Pipeline_loop_row_fu_127_sol_address0),.sol_ce0(grp_stencil3d_Pipeline_loop_row_fu_127_sol_ce0),.sol_we0(grp_stencil3d_Pipeline_loop_row_fu_127_sol_we0),.sol_d0(grp_stencil3d_Pipeline_loop_row_fu_127_sol_d0),.empty(shl_ln44_reg_281));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_ap_start_reg <= 1'b1;
        end else if ((grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_ap_ready == 1'b1)) begin
            grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_ap_start_reg <= 1'b1;
        end else if ((grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_ap_ready == 1'b1)) begin
            grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_stencil3d_Pipeline_loop_row_fu_127_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln37_fu_173_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
            grp_stencil3d_Pipeline_loop_row_fu_127_ap_start_reg <= 1'b1;
        end else if ((grp_stencil3d_Pipeline_loop_row_fu_127_ap_ready == 1'b1)) begin
            grp_stencil3d_Pipeline_loop_row_fu_127_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_ap_start_reg <= 1'b1;
        end else if ((grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_ap_ready == 1'b1)) begin
            grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_60 <= 5'd1;
    end else if (((icmp_ln37_fu_173_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        i_fu_60 <= indvars_iv_next74_reg_267;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) & (grp_stencil3d_Pipeline_loop_row_fu_127_ap_done == 1'b1))) begin
        j_reg_91 <= indvars_iv_next61_reg_296;
    end else if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln36_fu_153_p2 == 1'd0))) begin
        j_reg_91 <= 5'd1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        C_load_1_reg_254 <= C_q0;
        C_load_reg_249 <= C_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        empty_12_reg_291 <= empty_12_fu_208_p2;
        empty_reg_286 <= empty_fu_198_p2;
        indvars_iv_next61_reg_296 <= indvars_iv_next61_fu_214_p2;
        shl_ln44_reg_281[4] <= shl_ln44_fu_179_p2[4];
        tmp3_reg_302 <= tmp3_fu_221_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        i_1_reg_259 <= i_fu_60;
        indvars_iv_next74_reg_267 <= indvars_iv_next74_fu_159_p2;
        tmp_4_reg_272[9 : 5] <= tmp_4_fu_165_p3[9 : 5];
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        C_ce0_local = 1'b1;
    end else begin
        C_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        C_ce1_local = 1'b1;
    end else begin
        C_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
always @ (*) begin
    if ((grp_stencil3d_Pipeline_loop_row_fu_127_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln36_fu_153_p2 == 1'd1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln36_fu_153_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_address0 = grp_stencil3d_Pipeline_loop_row_fu_127_orig_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        orig_address0 = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_orig_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_address0 = grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_orig_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_address0 = grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_orig_address0;
    end else begin
        orig_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_address1 = grp_stencil3d_Pipeline_loop_row_fu_127_orig_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        orig_address1 = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_orig_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_address1 = grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_orig_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_address1 = grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_orig_address1;
    end else begin
        orig_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_ce0 = grp_stencil3d_Pipeline_loop_row_fu_127_orig_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        orig_ce0 = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_orig_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_ce0 = grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_orig_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_ce0 = grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_orig_ce0;
    end else begin
        orig_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_ce1 = grp_stencil3d_Pipeline_loop_row_fu_127_orig_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        orig_ce1 = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_orig_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_ce1 = grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_orig_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_ce1 = grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_orig_ce1;
    end else begin
        orig_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        sol_address0 = grp_stencil3d_Pipeline_loop_row_fu_127_sol_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_address0 = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_sol_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_address0 = grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_sol_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_address0 = grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_sol_address0;
    end else begin
        sol_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_address1 = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_sol_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_address1 = grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_sol_address1;
    end else begin
        sol_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        sol_ce0 = grp_stencil3d_Pipeline_loop_row_fu_127_sol_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_ce0 = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_sol_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_ce0 = grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_sol_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_ce0 = grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_sol_ce0;
    end else begin
        sol_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_ce1 = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_sol_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_ce1 = grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_sol_ce1;
    end else begin
        sol_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        sol_d0 = grp_stencil3d_Pipeline_loop_row_fu_127_sol_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_d0 = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_sol_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_d0 = grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_sol_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_d0 = grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_sol_d0;
    end else begin
        sol_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_d1 = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_sol_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_d1 = grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_sol_d1;
    end else begin
        sol_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        sol_we0 = grp_stencil3d_Pipeline_loop_row_fu_127_sol_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_we0 = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_sol_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_we0 = grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_sol_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_we0 = grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_sol_we0;
    end else begin
        sol_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_we1 = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_sol_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_we1 = grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_sol_we1;
    end else begin
        sol_we1 = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln36_fu_153_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((icmp_ln37_fu_173_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (grp_stencil3d_Pipeline_loop_row_fu_127_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign C_address0 = 64'd1;
assign C_address1 = 64'd0;
assign C_ce0 = C_ce0_local;
assign C_ce1 = C_ce1_local;
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign empty_12_fu_208_p2 = ($signed(tmp2_cast_fu_204_p1) + $signed(tmp_4_reg_272));
assign empty_fu_198_p2 = (tmp1_cast_cast_cast_fu_194_p1 + tmp_4_reg_272);
assign grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_ap_start = grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_111_ap_start_reg;
assign grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_ap_start = grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_103_ap_start_reg;
assign grp_stencil3d_Pipeline_loop_row_fu_127_ap_start = grp_stencil3d_Pipeline_loop_row_fu_127_ap_start_reg;
assign grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_ap_start = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_119_ap_start_reg;
assign icmp_ln36_fu_153_p2 = ((i_fu_60 == 5'd31) ? 1'b1 : 1'b0);
assign icmp_ln37_fu_173_p2 = ((j_reg_91 == 5'd31) ? 1'b1 : 1'b0);
assign indvars_iv_next61_fu_214_p2 = (j_reg_91 + 5'd1);
assign indvars_iv_next74_fu_159_p2 = (i_fu_60 + 5'd1);
assign shl_ln44_fu_179_p2 = j_reg_91 << 5'd4;
assign tmp1_cast_cast_cast_fu_194_p1 = $unsigned(tmp1_cast_cast_fu_186_p3);
assign tmp1_cast_cast_fu_186_p3 = {{1'd1}, {j_reg_91}};
assign tmp2_cast_fu_204_p1 = tmp1_cast_cast_fu_186_p3;
assign tmp3_fu_221_p2 = ($signed(j_reg_91) + $signed(5'd31));
assign tmp_4_fu_165_p3 = {{i_fu_60}, {5'd0}};
always @ (posedge ap_clk) begin
    tmp_4_reg_272[4:0] <= 5'b00000;
    shl_ln44_reg_281[3:0] <= 4'b0000;
end
endmodule 