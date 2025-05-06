
module bicg_4096 (ap_clk,ap_rst_n,v0_Addr_A,v0_EN_A,v0_WEN_A,v0_Din_A,v0_Dout_A,v0_Clk_A,v0_Rst_A,v1_Addr_A,v1_EN_A,v1_WEN_A,v1_Din_A,v1_Dout_A,v1_Clk_A,v1_Rst_A,v1_Addr_B,v1_EN_B,v1_WEN_B,v1_Din_B,v1_Dout_B,v1_Clk_B,v1_Rst_B,v2_Addr_A,v2_EN_A,v2_WEN_A,v2_Din_A,v2_Dout_A,v2_Clk_A,v2_Rst_A,v3_Addr_A,v3_EN_A,v3_WEN_A,v3_Din_A,v3_Dout_A,v3_Clk_A,v3_Rst_A,v4_Addr_A,v4_EN_A,v4_WEN_A,v4_Din_A,v4_Dout_A,v4_Clk_A,v4_Rst_A,s_axi_ctrl_AWVALID,s_axi_ctrl_AWREADY,s_axi_ctrl_AWADDR,s_axi_ctrl_WVALID,s_axi_ctrl_WREADY,s_axi_ctrl_WDATA,s_axi_ctrl_WSTRB,s_axi_ctrl_ARVALID,s_axi_ctrl_ARREADY,s_axi_ctrl_ARADDR,s_axi_ctrl_RVALID,s_axi_ctrl_RREADY,s_axi_ctrl_RDATA,s_axi_ctrl_RRESP,s_axi_ctrl_BVALID,s_axi_ctrl_BREADY,s_axi_ctrl_BRESP,interrupt);  
parameter    ap_ST_fsm_pp0_stage0 = 6'd1;
parameter    ap_ST_fsm_pp0_stage1 = 6'd2;
parameter    ap_ST_fsm_pp0_stage2 = 6'd4;
parameter    ap_ST_fsm_pp0_stage3 = 6'd8;
parameter    ap_ST_fsm_pp0_stage4 = 6'd16;
parameter    ap_ST_fsm_pp0_stage5 = 6'd32;
parameter    C_S_AXI_CTRL_DATA_WIDTH = 32;
parameter    C_S_AXI_CTRL_ADDR_WIDTH = 4;
parameter    C_S_AXI_DATA_WIDTH = 32;
parameter C_S_AXI_CTRL_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);
input   ap_clk;
input   ap_rst_n;
output  [31:0] v0_Addr_A;
output   v0_EN_A;
output  [3:0] v0_WEN_A;
output  [31:0] v0_Din_A;
input  [31:0] v0_Dout_A;
output   v0_Clk_A;
output   v0_Rst_A;
output  [31:0] v1_Addr_A;
output   v1_EN_A;
output  [3:0] v1_WEN_A;
output  [31:0] v1_Din_A;
input  [31:0] v1_Dout_A;
output   v1_Clk_A;
output   v1_Rst_A;
output  [31:0] v1_Addr_B;
output   v1_EN_B;
output  [3:0] v1_WEN_B;
output  [31:0] v1_Din_B;
input  [31:0] v1_Dout_B;
output   v1_Clk_B;
output   v1_Rst_B;
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
output  [31:0] v4_Addr_A;
output   v4_EN_A;
output  [3:0] v4_WEN_A;
output  [31:0] v4_Din_A;
input  [31:0] v4_Dout_A;
output   v4_Clk_A;
output   v4_Rst_A;
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
wire    ap_done;
reg    ap_idle;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_ready;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] icmp_ln46_reg_403;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_156_p2;
reg   [31:0] reg_164;
wire    ap_block_pp0_stage5_11001;
wire    ap_block_pp0_stage0_11001;
wire   [12:0] select_ln46_fu_198_p3;
reg   [12:0] select_ln46_reg_367;
wire   [11:0] empty_fu_214_p1;
reg   [11:0] empty_reg_373;
wire   [0:0] first_iter_0_fu_218_p2;
reg   [0:0] first_iter_0_reg_378;
reg   [0:0] first_iter_0_reg_378_pp0_iter1_reg;
reg   [11:0] v2_addr_reg_382;
reg   [11:0] v2_addr_reg_382_pp0_iter1_reg;
reg   [11:0] v2_addr_reg_382_pp0_iter2_reg;
reg   [11:0] v1_addr_reg_392;
reg   [11:0] v1_addr_reg_392_pp0_iter1_reg;
wire   [0:0] icmp_ln46_fu_242_p2;
reg   [0:0] icmp_ln46_reg_403_pp0_iter1_reg;
reg   [0:0] icmp_ln46_reg_403_pp0_iter2_reg;
reg   [31:0] v4_load_reg_407;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] v1_load_reg_417;
reg   [31:0] v3_load_reg_422;
reg   [31:0] v0_load_reg_427;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] v8_fu_279_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] v9_fu_283_p1;
reg   [31:0] v9_reg_437;
wire   [31:0] v13_fu_287_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [0:0] icmp_ln47_fu_296_p2;
reg   [0:0] icmp_ln47_reg_448;
reg   [0:0] icmp_ln47_reg_448_pp0_iter1_reg;
wire   [31:0] grp_fu_160_p2;
reg   [31:0] v10_reg_453;
wire   [31:0] v7_fu_316_p1;
reg   [31:0] v14_reg_463;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] ap_phi_mux_icmp_ln475_phi_fu_149_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln46_fu_224_p1;
wire   [63:0] zext_ln47_fu_236_p1;
wire   [63:0] zext_ln50_1_fu_274_p1;
wire    ap_block_pp0_stage1;
reg   [23:0] indvar_flatten1_fu_62;
wire   [23:0] add_ln46_1_fu_230_p2;
reg   [23:0] ap_sig_allocacmp_indvar_flatten1_load;
reg   [12:0] v52_fu_66;
wire   [12:0] v5_fu_206_p3;
reg   [12:0] ap_sig_allocacmp_v52_load;
reg   [12:0] v63_fu_70;
wire   [12:0] v6_fu_291_p2;
reg   [12:0] ap_sig_allocacmp_v63_load;
reg   [31:0] v124_fu_74;
wire   [31:0] bitcast_ln54_fu_307_p1;
wire    ap_block_pp0_stage2;
reg    v4_EN_A_local;
wire   [31:0] v4_Addr_A_orig;
reg    v1_EN_B_local;
wire   [31:0] v1_Addr_B_orig;
reg   [3:0] v1_WEN_A_local;
wire   [31:0] bitcast_ln53_fu_324_p1;
reg    v1_EN_A_local;
wire   [31:0] v1_Addr_A_orig;
reg    v3_EN_A_local;
wire   [31:0] v3_Addr_A_orig;
reg    v0_EN_A_local;
wire   [31:0] v0_Addr_A_orig;
reg    v2_EN_A_local;
reg   [31:0] v2_Addr_A_orig;
reg   [3:0] v2_WEN_A_local;
wire   [31:0] bitcast_ln54_1_fu_329_p1;
reg   [31:0] grp_fu_156_p0;
reg   [31:0] grp_fu_156_p1;
reg   [31:0] grp_fu_160_p0;
reg   [31:0] grp_fu_160_p1;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
wire   [12:0] add_ln46_fu_192_p2;
wire   [23:0] tmp_fu_258_p3;
wire   [23:0] zext_ln50_fu_265_p1;
wire   [23:0] add_ln50_fu_268_p2;
wire    ap_block_pp0_stage5;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage1;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [5:0] ap_NS_fsm;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_528;
reg    ap_condition_305;
reg    ap_condition_539;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten1_fu_62 = 24'd0;
#0 v52_fu_66 = 13'd0;
#0 v63_fu_70 = 13'd0;
#0 v124_fu_74 = 32'd0;
#0 ap_done_reg = 1'b0;
end
bicg_4096_ctrl_s_axi #(.C_S_AXI_ADDR_WIDTH( C_S_AXI_CTRL_ADDR_WIDTH ),.C_S_AXI_DATA_WIDTH( C_S_AXI_CTRL_DATA_WIDTH ))
ctrl_s_axi_U(.AWVALID(s_axi_ctrl_AWVALID),.AWREADY(s_axi_ctrl_AWREADY),.AWADDR(s_axi_ctrl_AWADDR),.WVALID(s_axi_ctrl_WVALID),.WREADY(s_axi_ctrl_WREADY),.WDATA(s_axi_ctrl_WDATA),.WSTRB(s_axi_ctrl_WSTRB),.ARVALID(s_axi_ctrl_ARVALID),.ARREADY(s_axi_ctrl_ARREADY),.ARADDR(s_axi_ctrl_ARADDR),.RVALID(s_axi_ctrl_RVALID),.RREADY(s_axi_ctrl_RREADY),.RDATA(s_axi_ctrl_RDATA),.RRESP(s_axi_ctrl_RRESP),.BVALID(s_axi_ctrl_BVALID),.BREADY(s_axi_ctrl_BREADY),.BRESP(s_axi_ctrl_BRESP),.ACLK(ap_clk),.ARESET(ap_rst_n_inv),.ACLK_EN(1'b1),.ap_start(ap_start),.interrupt(interrupt),.ap_ready(ap_ready),.ap_done(ap_done),.ap_idle(ap_idle));
bicg_4096_fadd_32ns_32ns_32_5_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst_n_inv),.din0(grp_fu_156_p0),.din1(grp_fu_156_p1),.ce(1'b1),.dout(grp_fu_156_p2));
bicg_4096_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst_n_inv),.din0(grp_fu_160_p0),.din1(grp_fu_160_p1),.ce(1'b1),.dout(grp_fu_160_p2));
bicg_4096_flow_control_loop_pipe flow_control_loop_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst_n_inv),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(1'b1));
always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage1)) | ((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_305)) begin
        indvar_flatten1_fu_62 <= add_ln46_1_fu_230_p2;
    end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (first_iter_0_reg_378_pp0_iter1_reg == 1'd1))) begin
        v124_fu_74 <= bitcast_ln54_fu_307_p1;
    end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        v124_fu_74 <= reg_164;
    end
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_305)) begin
    v52_fu_66 <= v5_fu_206_p3;
end
end
always @ (posedge ap_clk) begin
if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
    if ((1'b1 == ap_condition_539)) begin
        v63_fu_70 <= 13'd0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v63_fu_70 <= v6_fu_291_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_373 <= empty_fu_214_p1;
        first_iter_0_reg_378 <= first_iter_0_fu_218_p2;
        first_iter_0_reg_378_pp0_iter1_reg <= first_iter_0_reg_378;
        icmp_ln46_reg_403 <= icmp_ln46_fu_242_p2;
        icmp_ln46_reg_403_pp0_iter1_reg <= icmp_ln46_reg_403;
        icmp_ln46_reg_403_pp0_iter2_reg <= icmp_ln46_reg_403_pp0_iter1_reg;
        select_ln46_reg_367 <= select_ln46_fu_198_p3;
        v1_addr_reg_392 <= zext_ln47_fu_236_p1;
        v1_addr_reg_392_pp0_iter1_reg <= v1_addr_reg_392;
        v2_addr_reg_382 <= zext_ln46_fu_224_p1;
        v2_addr_reg_382_pp0_iter1_reg <= v2_addr_reg_382;
        v2_addr_reg_382_pp0_iter2_reg <= v2_addr_reg_382_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        icmp_ln47_reg_448 <= icmp_ln47_fu_296_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        icmp_ln47_reg_448_pp0_iter1_reg <= icmp_ln47_reg_448;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_164 <= grp_fu_156_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_load_reg_427 <= v0_Dout_A;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_reg_453 <= grp_fu_160_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v14_reg_463 <= grp_fu_160_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v1_load_reg_417 <= v1_Dout_B;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_load_reg_422 <= v3_Dout_A;
        v4_load_reg_407 <= v4_Dout_A;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v9_reg_437 <= v9_fu_283_p1;
    end
end
always @ (*) begin
    if (((icmp_ln46_reg_403 == 1'd1) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln46_reg_403_pp0_iter2_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter2_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_528)) begin
            ap_phi_mux_icmp_ln475_phi_fu_149_p4 = icmp_ln47_reg_448;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln475_phi_fu_149_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln475_phi_fu_149_p4 = icmp_ln47_reg_448;
        end
    end else begin
        ap_phi_mux_icmp_ln475_phi_fu_149_p4 = icmp_ln47_reg_448;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten1_load = 24'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1_load = indvar_flatten1_fu_62;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v52_load = 13'd0;
    end else begin
        ap_sig_allocacmp_v52_load = v52_fu_66;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v63_load = 13'd0;
    end else begin
        ap_sig_allocacmp_v63_load = v63_fu_70;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_156_p0 = v124_fu_74;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_156_p0 = v7_fu_316_p1;
        end else begin
            grp_fu_156_p0 = 'bx;
        end
    end else begin
        grp_fu_156_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_156_p1 = v14_reg_463;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_156_p1 = v10_reg_453;
        end else begin
            grp_fu_156_p1 = 'bx;
        end
    end else begin
        grp_fu_156_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_160_p0 = v9_reg_437;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_160_p0 = v8_fu_279_p1;
        end else begin
            grp_fu_160_p0 = 'bx;
        end
    end else begin
        grp_fu_160_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_160_p1 = v13_fu_287_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_160_p1 = v9_fu_283_p1;
        end else begin
            grp_fu_160_p1 = 'bx;
        end
    end else begin
        grp_fu_160_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_EN_A_local = 1'b1;
    end else begin
        v0_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v1_EN_A_local = 1'b1;
    end else begin
        v1_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v1_EN_B_local = 1'b1;
    end else begin
        v1_EN_B_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v1_WEN_A_local = 4'd15;
    end else begin
        v1_WEN_A_local = 4'd0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_Addr_A_orig = v2_addr_reg_382_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_Addr_A_orig = v2_addr_reg_382;
    end else begin
        v2_Addr_A_orig = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_EN_A_local = 1'b1;
    end else begin
        v2_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln47_reg_448_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_WEN_A_local = 4'd15;
    end else begin
        v2_WEN_A_local = 4'd0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_EN_A_local = 1'b1;
    end else begin
        v3_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4_EN_A_local = 1'b1;
    end else begin
        v4_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln46_1_fu_230_p2 = (ap_sig_allocacmp_indvar_flatten1_load + 24'd1);
assign add_ln46_fu_192_p2 = (ap_sig_allocacmp_v52_load + 13'd1);
assign add_ln50_fu_268_p2 = (tmp_fu_258_p3 + zext_ln50_fu_265_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_305 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_528 = ((icmp_ln46_reg_403 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_539 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end
assign bitcast_ln53_fu_324_p1 = reg_164;
assign bitcast_ln54_1_fu_329_p1 = reg_164;
assign bitcast_ln54_fu_307_p1 = v2_Dout_A;
assign empty_fu_214_p1 = v5_fu_206_p3[11:0];
assign first_iter_0_fu_218_p2 = ((select_ln46_fu_198_p3 == 13'd0) ? 1'b1 : 1'b0);
assign icmp_ln46_fu_242_p2 = ((ap_sig_allocacmp_indvar_flatten1_load == 24'd16777215) ? 1'b1 : 1'b0);
assign icmp_ln47_fu_296_p2 = ((v6_fu_291_p2 == 13'd4096) ? 1'b1 : 1'b0);
assign select_ln46_fu_198_p3 = ((ap_phi_mux_icmp_ln475_phi_fu_149_p4[0:0] == 1'b1) ? 13'd0 : ap_sig_allocacmp_v63_load);
assign tmp_fu_258_p3 = {{empty_reg_373}, {12'd0}};
assign v0_Addr_A = v0_Addr_A_orig << 32'd2;
assign v0_Addr_A_orig = zext_ln50_1_fu_274_p1;
assign v0_Clk_A = ap_clk;
assign v0_Din_A = 32'd0;
assign v0_EN_A = v0_EN_A_local;
assign v0_Rst_A = ap_rst_n_inv;
assign v0_WEN_A = 4'd0;
assign v13_fu_287_p1 = v3_load_reg_422;
assign v1_Addr_A = v1_Addr_A_orig << 32'd2;
assign v1_Addr_A_orig = v1_addr_reg_392_pp0_iter1_reg;
assign v1_Addr_B = v1_Addr_B_orig << 32'd2;
assign v1_Addr_B_orig = zext_ln47_fu_236_p1;
assign v1_Clk_A = ap_clk;
assign v1_Clk_B = ap_clk;
assign v1_Din_A = bitcast_ln53_fu_324_p1;
assign v1_Din_B = 32'd0;
assign v1_EN_A = v1_EN_A_local;
assign v1_EN_B = v1_EN_B_local;
assign v1_Rst_A = ap_rst_n_inv;
assign v1_Rst_B = ap_rst_n_inv;
assign v1_WEN_A = v1_WEN_A_local;
assign v1_WEN_B = 4'd0;
assign v2_Addr_A = v2_Addr_A_orig << 32'd2;
assign v2_Clk_A = ap_clk;
assign v2_Din_A = bitcast_ln54_1_fu_329_p1;
assign v2_EN_A = v2_EN_A_local;
assign v2_Rst_A = ap_rst_n_inv;
assign v2_WEN_A = v2_WEN_A_local;
assign v3_Addr_A = v3_Addr_A_orig << 32'd2;
assign v3_Addr_A_orig = zext_ln47_fu_236_p1;
assign v3_Clk_A = ap_clk;
assign v3_Din_A = 32'd0;
assign v3_EN_A = v3_EN_A_local;
assign v3_Rst_A = ap_rst_n_inv;
assign v3_WEN_A = 4'd0;
assign v4_Addr_A = v4_Addr_A_orig << 32'd2;
assign v4_Addr_A_orig = zext_ln46_fu_224_p1;
assign v4_Clk_A = ap_clk;
assign v4_Din_A = 32'd0;
assign v4_EN_A = v4_EN_A_local;
assign v4_Rst_A = ap_rst_n_inv;
assign v4_WEN_A = 4'd0;
assign v5_fu_206_p3 = ((ap_phi_mux_icmp_ln475_phi_fu_149_p4[0:0] == 1'b1) ? add_ln46_fu_192_p2 : ap_sig_allocacmp_v52_load);
assign v6_fu_291_p2 = (select_ln46_reg_367 + 13'd1);
assign v7_fu_316_p1 = v1_load_reg_417;
assign v8_fu_279_p1 = v4_load_reg_407;
assign v9_fu_283_p1 = v0_load_reg_427;
assign zext_ln46_fu_224_p1 = v5_fu_206_p3;
assign zext_ln47_fu_236_p1 = select_ln46_fu_198_p3;
assign zext_ln50_1_fu_274_p1 = add_ln50_fu_268_p2;
assign zext_ln50_fu_265_p1 = select_ln46_reg_367;
endmodule 
