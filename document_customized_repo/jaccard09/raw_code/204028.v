module kernel_3mm_kernel_3mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v279_dout,v279_empty_n,v279_read,v260_address0,v260_ce0,v260_q0,v278_dout,v278_empty_n,v278_read,v264_address0,v264_ce0,v264_q0,v264_address1,v264_ce1,v264_q1,v268_0_address0,v268_0_ce0,v268_0_we0,v268_0_d0,v268_0_q0,v268_0_address1,v268_0_ce1,v268_0_we1,v268_0_d1,v268_0_q1,v268_1_address0,v268_1_ce0,v268_1_we0,v268_1_d0,v268_1_q0,v268_1_address1,v268_1_ce1,v268_1_we1,v268_1_d1,v268_1_q1,grp_fu_142_p_din0,grp_fu_142_p_din1,grp_fu_142_p_opcode,grp_fu_142_p_dout0,grp_fu_142_p_ce,grp_fu_146_p_din0,grp_fu_146_p_din1,grp_fu_146_p_dout0,grp_fu_146_p_ce); 
parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] v279_dout;
input   v279_empty_n;
output   v279_read;
output  [15:0] v260_address0;
output   v260_ce0;
input  [31:0] v260_q0;
input  [0:0] v278_dout;
input   v278_empty_n;
output   v278_read;
output  [15:0] v264_address0;
output   v264_ce0;
input  [31:0] v264_q0;
output  [15:0] v264_address1;
output   v264_ce1;
input  [31:0] v264_q1;
output  [14:0] v268_0_address0;
output   v268_0_ce0;
output   v268_0_we0;
output  [31:0] v268_0_d0;
input  [31:0] v268_0_q0;
output  [14:0] v268_0_address1;
output   v268_0_ce1;
output   v268_0_we1;
output  [31:0] v268_0_d1;
input  [31:0] v268_0_q1;
output  [14:0] v268_1_address0;
output   v268_1_ce0;
output   v268_1_we0;
output  [31:0] v268_1_d0;
input  [31:0] v268_1_q0;
output  [14:0] v268_1_address1;
output   v268_1_ce1;
output   v268_1_we1;
output  [31:0] v268_1_d1;
input  [31:0] v268_1_q1;
output  [31:0] grp_fu_142_p_din0;
output  [31:0] grp_fu_142_p_din1;
output  [1:0] grp_fu_142_p_opcode;
input  [31:0] grp_fu_142_p_dout0;
output   grp_fu_142_p_ce;
output  [31:0] grp_fu_146_p_din0;
output  [31:0] grp_fu_146_p_din1;
input  [31:0] grp_fu_146_p_dout0;
output   grp_fu_146_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v279_blk_n;
reg    v278_blk_n;
reg   [15:0] phi_mul2031_load_reg_268;
wire    ap_CS_fsm_state2;
wire   [15:0] add_ln31_1_fu_151_p2;
reg   [15:0] add_ln31_1_reg_273;
wire   [7:0] add_ln31_fu_163_p2;
reg   [7:0] add_ln31_reg_281;
wire   [15:0] zext_ln31_fu_169_p1;
reg   [15:0] zext_ln31_reg_286;
wire   [0:0] cmp12_fu_173_p2;
reg   [0:0] cmp12_reg_291;
wire   [15:0] add_ln32_2_fu_179_p2;
reg   [15:0] add_ln32_2_reg_296;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln32_fu_191_p2;
reg   [7:0] add_ln32_reg_304;
wire   [0:0] icmp_ln32_1_fu_207_p2;
reg   [0:0] icmp_ln32_1_reg_314;
wire   [7:0] select_ln32_fu_219_p3;
reg   [7:0] select_ln32_reg_319;
wire   [0:0] empty_28_fu_227_p2;
reg   [0:0] empty_28_reg_324;
wire   [14:0] mul_ln32_fu_244_p2;
reg   [14:0] mul_ln32_reg_329;
wire    ap_CS_fsm_state4;
reg   [31:0] v260_load_reg_334;
wire   [31:0] v10_fu_250_p1;
reg   [31:0] v10_reg_339;
wire    ap_CS_fsm_state5;
wire    grp_kernel_3mm_node0_Pipeline_label_2_fu_119_ap_start;
wire    grp_kernel_3mm_node0_Pipeline_label_2_fu_119_ap_done;
wire    grp_kernel_3mm_node0_Pipeline_label_2_fu_119_ap_idle;
wire    grp_kernel_3mm_node0_Pipeline_label_2_fu_119_ap_ready;
wire   [14:0] grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_0_address0;
wire    grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_0_ce0;
wire    grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_0_we0;
wire   [31:0] grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_0_d0;
wire   [14:0] grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_0_address1;
wire    grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_0_ce1;
wire    grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_0_we1;
wire   [31:0] grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_0_d1;
wire   [14:0] grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_1_address0;
wire    grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_1_ce0;
wire    grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_1_we0;
wire   [31:0] grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_1_d0;
wire   [14:0] grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_1_address1;
wire    grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_1_ce1;
wire    grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_1_we1;
wire   [31:0] grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_1_d1;
wire   [15:0] grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v264_address0;
wire    grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v264_ce0;
wire   [15:0] grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v264_address1;
wire    grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v264_ce1;
wire   [31:0] grp_kernel_3mm_node0_Pipeline_label_2_fu_119_grp_fu_344_p_din0;
wire   [31:0] grp_kernel_3mm_node0_Pipeline_label_2_fu_119_grp_fu_344_p_din1;
wire   [1:0] grp_kernel_3mm_node0_Pipeline_label_2_fu_119_grp_fu_344_p_opcode;
wire    grp_kernel_3mm_node0_Pipeline_label_2_fu_119_grp_fu_344_p_ce;
wire   [31:0] grp_kernel_3mm_node0_Pipeline_label_2_fu_119_grp_fu_348_p_din0;
wire   [31:0] grp_kernel_3mm_node0_Pipeline_label_2_fu_119_grp_fu_348_p_din1;
wire    grp_kernel_3mm_node0_Pipeline_label_2_fu_119_grp_fu_348_p_ce;
reg   [7:0] v6_reg_97;
wire   [0:0] icmp_ln31_fu_157_p2;
wire    ap_CS_fsm_state6;
reg   [15:0] phi_mul_reg_108;
reg    grp_kernel_3mm_node0_Pipeline_label_2_fu_119_ap_start_reg;
wire   [63:0] p_cast_fu_202_p1;
wire   [0:0] icmp_ln32_fu_185_p2;
reg   [15:0] phi_mul2031_fu_64;
reg    ap_block_state1;
reg   [7:0] v5_fu_68;
reg    v278_read_local;
reg    v279_read_local;
reg    v260_ce0_local;
wire   [15:0] empty_fu_197_p2;
wire   [7:0] add_ln32_1_fu_213_p2;
wire   [7:0] mul_ln32_fu_244_p0;
wire   [8:0] mul_ln32_fu_244_p1;
reg    grp_fu_344_ce;
reg    grp_fu_348_ce;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire   [14:0] mul_ln32_fu_244_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_kernel_3mm_node0_Pipeline_label_2_fu_119_ap_start_reg = 1'b0;
#0 phi_mul2031_fu_64 = 16'd0;
#0 v5_fu_68 = 8'd0;
end
kernel_3mm_kernel_3mm_node0_Pipeline_label_2 grp_kernel_3mm_node0_Pipeline_label_2_fu_119(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_3mm_node0_Pipeline_label_2_fu_119_ap_start),.ap_done(grp_kernel_3mm_node0_Pipeline_label_2_fu_119_ap_done),.ap_idle(grp_kernel_3mm_node0_Pipeline_label_2_fu_119_ap_idle),.ap_ready(grp_kernel_3mm_node0_Pipeline_label_2_fu_119_ap_ready),.v268_0_address0(grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_0_address0),.v268_0_ce0(grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_0_ce0),.v268_0_we0(grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_0_we0),.v268_0_d0(grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_0_d0),.v268_0_q0(v268_0_q0),.v268_0_address1(grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_0_address1),.v268_0_ce1(grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_0_ce1),.v268_0_we1(grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_0_we1),.v268_0_d1(grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_0_d1),.v268_0_q1(v268_0_q1),.v268_1_address0(grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_1_address0),.v268_1_ce0(grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_1_ce0),.v268_1_we0(grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_1_we0),.v268_1_d0(grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_1_d0),.v268_1_q0(v268_1_q0),.v268_1_address1(grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_1_address1),.v268_1_ce1(grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_1_ce1),.v268_1_we1(grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_1_we1),.v268_1_d1(grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_1_d1),.v268_1_q1(v268_1_q1),.phi_mul2031(phi_mul2031_load_reg_268),.v264_address0(grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v264_address0),.v264_ce0(grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v264_ce0),.v264_q0(v264_q0),.v264_address1(grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v264_address1),.v264_ce1(grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v264_ce1),.v264_q1(v264_q1),.mul_ln34(mul_ln32_reg_329),.empty(empty_28_reg_324),.cmp12(cmp12_reg_291),.v10(v10_reg_339),.icmp_ln32_1(icmp_ln32_1_reg_314),.grp_fu_344_p_din0(grp_kernel_3mm_node0_Pipeline_label_2_fu_119_grp_fu_344_p_din0),.grp_fu_344_p_din1(grp_kernel_3mm_node0_Pipeline_label_2_fu_119_grp_fu_344_p_din1),.grp_fu_344_p_opcode(grp_kernel_3mm_node0_Pipeline_label_2_fu_119_grp_fu_344_p_opcode),.grp_fu_344_p_dout0(grp_fu_142_p_dout0),.grp_fu_344_p_ce(grp_kernel_3mm_node0_Pipeline_label_2_fu_119_grp_fu_344_p_ce),.grp_fu_348_p_din0(grp_kernel_3mm_node0_Pipeline_label_2_fu_119_grp_fu_348_p_din0),.grp_fu_348_p_din1(grp_kernel_3mm_node0_Pipeline_label_2_fu_119_grp_fu_348_p_din1),.grp_fu_348_p_dout0(grp_fu_146_p_dout0),.grp_fu_348_p_ce(grp_kernel_3mm_node0_Pipeline_label_2_fu_119_grp_fu_348_p_ce));
kernel_3mm_mul_8ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_8ns_9ns_15_1_1_U72(.din0(mul_ln32_fu_244_p0),.din1(mul_ln32_fu_244_p1),.dout(mul_ln32_fu_244_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_3mm_node0_Pipeline_label_2_fu_119_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_kernel_3mm_node0_Pipeline_label_2_fu_119_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_3mm_node0_Pipeline_label_2_fu_119_ap_ready == 1'b1)) begin
            grp_kernel_3mm_node0_Pipeline_label_2_fu_119_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul2031_fu_64 <= 16'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln32_fu_185_p2 == 1'd1))) begin
        phi_mul2031_fu_64 <= add_ln31_1_reg_273;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (grp_kernel_3mm_node0_Pipeline_label_2_fu_119_ap_done == 1'b1))) begin
        phi_mul_reg_108 <= add_ln32_2_reg_296;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln31_fu_157_p2 == 1'd0))) begin
        phi_mul_reg_108 <= 16'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_68 <= 8'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln32_fu_185_p2 == 1'd1))) begin
        v5_fu_68 <= add_ln31_reg_281;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (grp_kernel_3mm_node0_Pipeline_label_2_fu_119_ap_done == 1'b1))) begin
        v6_reg_97 <= add_ln32_reg_304;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln31_fu_157_p2 == 1'd0))) begin
        v6_reg_97 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln31_1_reg_273 <= add_ln31_1_fu_151_p2;
        add_ln31_reg_281 <= add_ln31_fu_163_p2;
        cmp12_reg_291 <= cmp12_fu_173_p2;
        phi_mul2031_load_reg_268 <= phi_mul2031_fu_64;
        zext_ln31_reg_286[7 : 0] <= zext_ln31_fu_169_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_2_reg_296 <= add_ln32_2_fu_179_p2;
        add_ln32_reg_304 <= add_ln32_fu_191_p2;
        empty_28_reg_324 <= empty_28_fu_227_p2;
        icmp_ln32_1_reg_314 <= icmp_ln32_1_fu_207_p2;
        select_ln32_reg_319 <= select_ln32_fu_219_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        mul_ln32_reg_329 <= mul_ln32_fu_244_p2;
        v260_load_reg_334 <= v260_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        v10_reg_339 <= v10_fu_250_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state1)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_3mm_node0_Pipeline_label_2_fu_119_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state2) & (icmp_ln31_fu_157_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln31_fu_157_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_344_ce = grp_kernel_3mm_node0_Pipeline_label_2_fu_119_grp_fu_344_p_ce;
    end else begin
        grp_fu_344_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_348_ce = grp_kernel_3mm_node0_Pipeline_label_2_fu_119_grp_fu_348_p_ce;
    end else begin
        grp_fu_348_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        v260_ce0_local = 1'b1;
    end else begin
        v260_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v278_blk_n = v278_empty_n;
    end else begin
        v278_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v278_read_local = 1'b1;
    end else begin
        v278_read_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v279_blk_n = v279_empty_n;
    end else begin
        v279_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v279_read_local = 1'b1;
    end else begin
        v279_read_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln31_fu_157_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln32_fu_185_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_kernel_3mm_node0_Pipeline_label_2_fu_119_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln31_1_fu_151_p2 = (phi_mul2031_fu_64 + 16'd210);
assign add_ln31_fu_163_p2 = (v5_fu_68 + 8'd1);
assign add_ln32_1_fu_213_p2 = ($signed(v6_reg_97) + $signed(8'd166));
assign add_ln32_2_fu_179_p2 = (phi_mul_reg_108 + 16'd190);
assign add_ln32_fu_191_p2 = (v6_reg_97 + 8'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
always @ (*) begin
    ap_block_state1 = ((v278_empty_n == 1'b0) | (v279_empty_n == 1'b0) | (ap_start == 1'b0));
end
assign cmp12_fu_173_p2 = ((v5_fu_68 == 8'd0) ? 1'b1 : 1'b0);
assign empty_28_fu_227_p2 = ((add_ln32_1_fu_213_p2 < 8'd90) ? 1'b1 : 1'b0);
assign empty_fu_197_p2 = (phi_mul_reg_108 + zext_ln31_reg_286);
assign grp_fu_142_p_ce = grp_fu_344_ce;
assign grp_fu_142_p_din0 = grp_kernel_3mm_node0_Pipeline_label_2_fu_119_grp_fu_344_p_din0;
assign grp_fu_142_p_din1 = grp_kernel_3mm_node0_Pipeline_label_2_fu_119_grp_fu_344_p_din1;
assign grp_fu_142_p_opcode = 2'd0;
assign grp_fu_146_p_ce = grp_fu_348_ce;
assign grp_fu_146_p_din0 = grp_kernel_3mm_node0_Pipeline_label_2_fu_119_grp_fu_348_p_din0;
assign grp_fu_146_p_din1 = grp_kernel_3mm_node0_Pipeline_label_2_fu_119_grp_fu_348_p_din1;
assign grp_kernel_3mm_node0_Pipeline_label_2_fu_119_ap_start = grp_kernel_3mm_node0_Pipeline_label_2_fu_119_ap_start_reg;
assign icmp_ln31_fu_157_p2 = ((v5_fu_68 == 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_1_fu_207_p2 = ((v6_reg_97 < 8'd90) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_185_p2 = ((v6_reg_97 == 8'd180) ? 1'b1 : 1'b0);
assign mul_ln32_fu_244_p0 = mul_ln32_fu_244_p00;
assign mul_ln32_fu_244_p00 = select_ln32_reg_319;
assign mul_ln32_fu_244_p1 = 15'd210;
assign p_cast_fu_202_p1 = empty_fu_197_p2;
assign select_ln32_fu_219_p3 = ((icmp_ln32_1_fu_207_p2[0:0] == 1'b1) ? v6_reg_97 : add_ln32_1_fu_213_p2);
assign v10_fu_250_p1 = v260_load_reg_334;
assign v260_address0 = p_cast_fu_202_p1;
assign v260_ce0 = v260_ce0_local;
assign v264_address0 = grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v264_address0;
assign v264_address1 = grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v264_address1;
assign v264_ce0 = grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v264_ce0;
assign v264_ce1 = grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v264_ce1;
assign v268_0_address0 = grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_0_address0;
assign v268_0_address1 = grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_0_address1;
assign v268_0_ce0 = grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_0_ce0;
assign v268_0_ce1 = grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_0_ce1;
assign v268_0_d0 = grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_0_d0;
assign v268_0_d1 = grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_0_d1;
assign v268_0_we0 = grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_0_we0;
assign v268_0_we1 = grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_0_we1;
assign v268_1_address0 = grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_1_address0;
assign v268_1_address1 = grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_1_address1;
assign v268_1_ce0 = grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_1_ce0;
assign v268_1_ce1 = grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_1_ce1;
assign v268_1_d0 = grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_1_d0;
assign v268_1_d1 = grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_1_d1;
assign v268_1_we0 = grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_1_we0;
assign v268_1_we1 = grp_kernel_3mm_node0_Pipeline_label_2_fu_119_v268_1_we1;
assign v278_read = v278_read_local;
assign v279_read = v279_read_local;
assign zext_ln31_fu_169_p1 = v5_fu_68;
always @ (posedge ap_clk) begin
    zext_ln31_reg_286[15:8] <= 8'b00000000;
end
endmodule 