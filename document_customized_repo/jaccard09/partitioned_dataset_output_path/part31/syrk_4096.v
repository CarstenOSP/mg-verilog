
module syrk_4096 (ap_clk,ap_rst_n,v2_Addr_A,v2_EN_A,v2_WEN_A,v2_Din_A,v2_Dout_A,v2_Clk_A,v2_Rst_A,v3_Addr_A,v3_EN_A,v3_WEN_A,v3_Din_A,v3_Dout_A,v3_Clk_A,v3_Rst_A,v3_Addr_B,v3_EN_B,v3_WEN_B,v3_Din_B,v3_Dout_B,v3_Clk_B,v3_Rst_B,s_axi_ctrl_AWVALID,s_axi_ctrl_AWREADY,s_axi_ctrl_AWADDR,s_axi_ctrl_WVALID,s_axi_ctrl_WREADY,s_axi_ctrl_WDATA,s_axi_ctrl_WSTRB,s_axi_ctrl_ARVALID,s_axi_ctrl_ARREADY,s_axi_ctrl_ARADDR,s_axi_ctrl_RVALID,s_axi_ctrl_RREADY,s_axi_ctrl_RDATA,s_axi_ctrl_RRESP,s_axi_ctrl_BVALID,s_axi_ctrl_BREADY,s_axi_ctrl_BRESP,interrupt);  
parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;
parameter    C_S_AXI_CTRL_DATA_WIDTH = 32;
parameter    C_S_AXI_CTRL_ADDR_WIDTH = 5;
parameter    C_S_AXI_DATA_WIDTH = 32;
parameter C_S_AXI_CTRL_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);
input   ap_clk;
input   ap_rst_n;
output  [31:0] v2_Addr_A;
output   v2_EN_A;
output  [3:0] v2_WEN_A;
output  [31:0] v2_Din_A;
input  [31:0] v2_Dout_A;
output   v2_Clk_A;
output   v2_Rst_A;
output  [31:0] v3_Addr_A;
output   v3_EN_A;
output  [3:0] v3_WEN_A;
output  [31:0] v3_Din_A;
input  [31:0] v3_Dout_A;
output   v3_Clk_A;
output   v3_Rst_A;
output  [31:0] v3_Addr_B;
output   v3_EN_B;
output  [3:0] v3_WEN_B;
output  [31:0] v3_Din_B;
input  [31:0] v3_Dout_B;
output   v3_Clk_B;
output   v3_Rst_B;
input   s_axi_ctrl_AWVALID;
output   s_axi_ctrl_AWREADY;
input  [C_S_AXI_CTRL_ADDR_WIDTH - 1:0] s_axi_ctrl_AWADDR;
input   s_axi_ctrl_WVALID;
output   s_axi_ctrl_WREADY;
input  [C_S_AXI_CTRL_DATA_WIDTH - 1:0] s_axi_ctrl_WDATA;
input  [C_S_AXI_CTRL_WSTRB_WIDTH - 1:0] s_axi_ctrl_WSTRB;
input   s_axi_ctrl_ARVALID;
output   s_axi_ctrl_ARREADY;
input  [C_S_AXI_CTRL_ADDR_WIDTH - 1:0] s_axi_ctrl_ARADDR;
output   s_axi_ctrl_RVALID;
input   s_axi_ctrl_RREADY;
output  [C_S_AXI_CTRL_DATA_WIDTH - 1:0] s_axi_ctrl_RDATA;
output  [1:0] s_axi_ctrl_RRESP;
output   s_axi_ctrl_BVALID;
input   s_axi_ctrl_BREADY;
output  [1:0] s_axi_ctrl_BRESP;
output   interrupt;
 reg    ap_rst_n_inv;
wire    ap_start;
reg    ap_done;
reg    ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_ready;
wire   [31:0] v0;
wire   [31:0] v1;
reg   [31:0] v1_read_reg_174;
reg   [31:0] v0_read_reg_179;
wire   [23:0] tmp_fu_126_p3;
reg   [23:0] tmp_reg_187;
wire    ap_CS_fsm_state2;
wire   [24:0] tmp_1_fu_135_p3;
reg   [24:0] tmp_1_reg_192;
wire    grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_ap_start;
wire    grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_ap_done;
wire    grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_ap_idle;
wire    grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_ap_ready;
wire   [31:0] grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_v3_Addr_A;
wire    grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_v3_EN_A;
wire   [3:0] grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_v3_WEN_A;
wire   [31:0] grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_v3_Din_A;
wire   [31:0] grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_v3_Addr_B;
wire    grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_v3_EN_B;
wire   [3:0] grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_v3_WEN_B;
wire   [31:0] grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_v3_Din_B;
wire   [31:0] grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_v2_Addr_A;
wire    grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_v2_EN_A;
wire   [3:0] grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_v2_WEN_A;
wire   [31:0] grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_v2_Din_A;
reg    grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_ap_start_reg;
wire   [0:0] icmp_ln38_fu_107_p2;
wire    ap_CS_fsm_state3;
reg   [12:0] indvars_iv15_fu_62;
wire   [12:0] add_ln38_fu_144_p2;
reg   [12:0] v4_fu_66;
wire   [12:0] indvars_iv_next18_fu_113_p2;
wire   [11:0] trunc_ln38_fu_122_p1;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_ap_start_reg = 1'b0;
#0 indvars_iv15_fu_62 = 13'd0;
#0 v4_fu_66 = 13'd0;
end
syrk_4096_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3 grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82(.ap_clk(ap_clk),.ap_rst(ap_rst_n_inv),.ap_start(grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_ap_start),.ap_done(grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_ap_done),.ap_idle(grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_ap_idle),.ap_ready(grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_ap_ready),.zext_ln38(tmp_1_reg_192),.zext_ln40(tmp_reg_187),.v3_Addr_A(grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_v3_Addr_A),.v3_EN_A(grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_v3_EN_A),.v3_WEN_A(grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_v3_WEN_A),.v3_Din_A(grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_v3_Din_A),.v3_Dout_A(v3_Dout_A),.v3_Addr_B(grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_v3_Addr_B),.v3_EN_B(grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_v3_EN_B),.v3_WEN_B(grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_v3_WEN_B),.v3_Din_B(grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_v3_Din_B),.v3_Dout_B(v3_Dout_B),.v0(v0_read_reg_179),.v2_Addr_A(grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_v2_Addr_A),.v2_EN_A(grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_v2_EN_A),.v2_WEN_A(grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_v2_WEN_A),.v2_Din_A(grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_v2_Din_A),.v2_Dout_A(v2_Dout_A),.v1(v1_read_reg_174));
syrk_4096_ctrl_s_axi #(.C_S_AXI_ADDR_WIDTH( C_S_AXI_CTRL_ADDR_WIDTH ),.C_S_AXI_DATA_WIDTH( C_S_AXI_CTRL_DATA_WIDTH ))
ctrl_s_axi_U(.AWVALID(s_axi_ctrl_AWVALID),.AWREADY(s_axi_ctrl_AWREADY),.AWADDR(s_axi_ctrl_AWADDR),.WVALID(s_axi_ctrl_WVALID),.WREADY(s_axi_ctrl_WREADY),.WDATA(s_axi_ctrl_WDATA),.WSTRB(s_axi_ctrl_WSTRB),.ARVALID(s_axi_ctrl_ARVALID),.ARREADY(s_axi_ctrl_ARREADY),.ARADDR(s_axi_ctrl_ARADDR),.RVALID(s_axi_ctrl_RVALID),.RREADY(s_axi_ctrl_RREADY),.RDATA(s_axi_ctrl_RDATA),.RRESP(s_axi_ctrl_RRESP),.BVALID(s_axi_ctrl_BVALID),.BREADY(s_axi_ctrl_BREADY),.BRESP(s_axi_ctrl_BRESP),.ACLK(ap_clk),.ARESET(ap_rst_n_inv),.ACLK_EN(1'b1),.v0(v0),.v1(v1),.ap_start(ap_start),.interrupt(interrupt),.ap_ready(ap_ready),.ap_done(ap_done),.ap_idle(ap_idle));
always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln38_fu_107_p2 == 1'd0))) begin
            grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_ap_start_reg <= 1'b1;
        end else if ((grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_ap_ready == 1'b1)) begin
            grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        indvars_iv15_fu_62 <= 13'd1;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln38_fu_107_p2 == 1'd0))) begin
        indvars_iv15_fu_62 <= add_ln38_fu_144_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v4_fu_66 <= 13'd0;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln38_fu_107_p2 == 1'd0))) begin
        v4_fu_66 <= indvars_iv_next18_fu_113_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        tmp_1_reg_192[24 : 12] <= tmp_1_fu_135_p3[24 : 12];
        tmp_reg_187[23 : 12] <= tmp_fu_126_p3[23 : 12];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        v0_read_reg_179 <= v0;
        v1_read_reg_174 <= v1;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
always @ (*) begin
    if ((grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln38_fu_107_p2 == 1'd1))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln38_fu_107_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln38_fu_107_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln38_fu_144_p2 = (indvars_iv15_fu_62 + 13'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end
assign grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_ap_start = grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_ap_start_reg;
assign icmp_ln38_fu_107_p2 = ((v4_fu_66 == 13'd4096) ? 1'b1 : 1'b0);
assign indvars_iv_next18_fu_113_p2 = (v4_fu_66 + 13'd1);
assign tmp_1_fu_135_p3 = {{indvars_iv15_fu_62}, {12'd0}};
assign tmp_fu_126_p3 = {{trunc_ln38_fu_122_p1}, {12'd0}};
assign trunc_ln38_fu_122_p1 = v4_fu_66[11:0];
assign v2_Addr_A = grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_v2_Addr_A;
assign v2_Clk_A = ap_clk;
assign v2_Din_A = grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_v2_Din_A;
assign v2_EN_A = grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_v2_EN_A;
assign v2_Rst_A = ap_rst_n_inv;
assign v2_WEN_A = grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_v2_WEN_A;
assign v3_Addr_A = grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_v3_Addr_A;
assign v3_Addr_B = grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_v3_Addr_B;
assign v3_Clk_A = ap_clk;
assign v3_Clk_B = ap_clk;
assign v3_Din_A = 32'd0;
assign v3_Din_B = 32'd0;
assign v3_EN_A = grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_v3_EN_A;
assign v3_EN_B = grp_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3_fu_82_v3_EN_B;
assign v3_Rst_A = ap_rst_n_inv;
assign v3_Rst_B = ap_rst_n_inv;
assign v3_WEN_A = 4'd0;
assign v3_WEN_B = 4'd0;
always @ (posedge ap_clk) begin
    tmp_reg_187[11:0] <= 12'b000000000000;
    tmp_1_reg_192[11:0] <= 12'b000000000000;
end
endmodule 
