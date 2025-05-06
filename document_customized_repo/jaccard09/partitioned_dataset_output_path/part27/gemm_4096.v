
module gemm_4096 (ap_clk,ap_rst_n,v2_Addr_A,v2_EN_A,v2_WEN_A,v2_Din_A,v2_Dout_A,v2_Clk_A,v2_Rst_A,v3_Addr_A,v3_EN_A,v3_WEN_A,v3_Din_A,v3_Dout_A,v3_Clk_A,v3_Rst_A,v4_Addr_A,v4_EN_A,v4_WEN_A,v4_Din_A,v4_Dout_A,v4_Clk_A,v4_Rst_A,s_axi_ctrl_AWVALID,s_axi_ctrl_AWREADY,s_axi_ctrl_AWADDR,s_axi_ctrl_WVALID,s_axi_ctrl_WREADY,s_axi_ctrl_WDATA,s_axi_ctrl_WSTRB,s_axi_ctrl_ARVALID,s_axi_ctrl_ARREADY,s_axi_ctrl_ARADDR,s_axi_ctrl_RVALID,s_axi_ctrl_RREADY,s_axi_ctrl_RDATA,s_axi_ctrl_RRESP,s_axi_ctrl_BVALID,s_axi_ctrl_BREADY,s_axi_ctrl_BRESP,interrupt);  
parameter    ap_ST_fsm_pp0_stage0 = 6'd1;
parameter    ap_ST_fsm_pp0_stage1 = 6'd2;
parameter    ap_ST_fsm_pp0_stage2 = 6'd4;
parameter    ap_ST_fsm_pp0_stage3 = 6'd8;
parameter    ap_ST_fsm_pp0_stage4 = 6'd16;
parameter    ap_ST_fsm_pp0_stage5 = 6'd32;
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
reg   [0:0] icmp_ln42_reg_532;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage5_pp0_iter1_reg;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_subdone;
reg   [0:0] icmp_ln42_reg_532_pp0_iter2_reg;
reg    ap_condition_exit_pp0_iter2_stage4;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_delayed;
wire   [31:0] v0;
wire   [31:0] v1;
reg   [0:0] icmp_ln438_reg_155;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] v1_read_reg_498;
reg   [31:0] v0_read_reg_503;
wire   [0:0] first_iter_0_fu_293_p2;
reg   [0:0] first_iter_0_reg_508;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] first_iter_0_reg_508_pp0_iter1_reg;
reg   [23:0] v2_addr_reg_512;
reg   [23:0] v2_addr_reg_512_pp0_iter1_reg;
reg   [23:0] v2_addr_reg_512_pp0_iter2_reg;
wire   [0:0] icmp_ln47_fu_368_p2;
reg   [0:0] icmp_ln47_reg_527;
reg   [0:0] icmp_ln47_reg_527_pp0_iter1_reg;
reg   [0:0] icmp_ln47_reg_527_pp0_iter2_reg;
wire   [0:0] icmp_ln42_fu_374_p2;
reg   [0:0] icmp_ln42_reg_532_pp0_iter1_reg;
reg   [31:0] v2_load_reg_536;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] v3_load_reg_541;
reg   [31:0] v4_load_reg_546;
wire   [31:0] v10_fu_400_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] v7_fu_404_p1;
wire    ap_block_pp0_stage4_11001;
wire   [31:0] grp_fu_182_p2;
reg   [31:0] v13_reg_561;
wire   [0:0] icmp_ln43_fu_425_p2;
reg   [0:0] icmp_ln43_reg_566;
reg   [31:0] v8_reg_571;
wire   [31:0] v11_fu_436_p1;
reg   [31:0] v14_reg_581;
wire   [31:0] grp_fu_178_p2;
reg   [31:0] v12_reg_591;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [0:0] ap_phi_mux_icmp_ln438_phi_fu_159_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage1;
reg   [0:0] ap_phi_mux_icmp_ln477_phi_fu_171_p4;
wire   [63:0] zext_ln44_1_fu_317_p1;
wire   [63:0] zext_ln48_1_fu_338_p1;
wire   [63:0] zext_ln49_fu_357_p1;
reg   [35:0] indvar_flatten141_fu_80;
wire   [35:0] add_ln42_1_fu_322_p2;
reg   [12:0] v52_fu_84;
wire   [12:0] v5_fu_249_p3;
reg   [25:0] indvar_flatten3_fu_88;
wire   [25:0] select_ln43_1_fu_417_p3;
wire    ap_block_pp0_stage0;
reg   [12:0] v64_fu_92;
wire   [12:0] v6_fu_285_p3;
reg   [12:0] v95_fu_96;
wire   [12:0] v9_fu_362_p2;
reg   [31:0] v126_fu_100;
wire    ap_block_pp0_stage5;
reg    v2_EN_A_local;
reg   [31:0] v2_Addr_A_orig;
reg   [3:0] v2_WEN_A_local;
wire   [31:0] bitcast_ln50_fu_448_p1;
wire    ap_block_pp0_stage4;
reg    v3_EN_A_local;
wire   [31:0] v3_Addr_A_orig;
reg    v4_EN_A_local;
wire   [31:0] v4_Addr_A_orig;
reg   [31:0] grp_fu_182_p0;
reg   [31:0] grp_fu_182_p1;
wire    ap_block_pp0_stage3;
wire   [0:0] xor_ln42_fu_237_p2;
wire   [12:0] add_ln42_fu_223_p2;
wire   [12:0] select_ln42_fu_229_p3;
wire   [0:0] and_ln42_fu_243_p2;
wire   [0:0] empty_fu_267_p2;
wire   [12:0] v9_mid2_fu_273_p3;
wire   [12:0] add_ln43_fu_261_p2;
wire   [11:0] trunc_ln43_fu_257_p1;
wire   [23:0] tmp_fu_299_p3;
wire   [23:0] zext_ln44_fu_307_p1;
wire   [23:0] add_ln44_fu_311_p2;
wire   [23:0] zext_ln48_fu_328_p1;
wire   [23:0] add_ln48_fu_332_p2;
wire   [11:0] trunc_ln43_1_fu_281_p1;
wire   [23:0] tmp_1_fu_343_p3;
wire   [23:0] add_ln49_fu_351_p2;
wire   [25:0] add_ln43_1_fu_411_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [5:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_546;
reg    ap_condition_551;
reg    ap_condition_555;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten141_fu_80 = 36'd0;
#0 v52_fu_84 = 13'd0;
#0 indvar_flatten3_fu_88 = 26'd0;
#0 v64_fu_92 = 13'd0;
#0 v95_fu_96 = 13'd0;
#0 v126_fu_100 = 32'd0;
#0 ap_done_reg = 1'b0;
end
gemm_4096_ctrl_s_axi #(.C_S_AXI_ADDR_WIDTH( C_S_AXI_CTRL_ADDR_WIDTH ),.C_S_AXI_DATA_WIDTH( C_S_AXI_CTRL_DATA_WIDTH ))
ctrl_s_axi_U(.AWVALID(s_axi_ctrl_AWVALID),.AWREADY(s_axi_ctrl_AWREADY),.AWADDR(s_axi_ctrl_AWADDR),.WVALID(s_axi_ctrl_WVALID),.WREADY(s_axi_ctrl_WREADY),.WDATA(s_axi_ctrl_WDATA),.WSTRB(s_axi_ctrl_WSTRB),.ARVALID(s_axi_ctrl_ARVALID),.ARREADY(s_axi_ctrl_ARREADY),.ARADDR(s_axi_ctrl_ARADDR),.RVALID(s_axi_ctrl_RVALID),.RREADY(s_axi_ctrl_RREADY),.RDATA(s_axi_ctrl_RDATA),.RRESP(s_axi_ctrl_RRESP),.BVALID(s_axi_ctrl_BVALID),.BREADY(s_axi_ctrl_BREADY),.BRESP(s_axi_ctrl_BRESP),.ACLK(ap_clk),.ARESET(ap_rst_n_inv),.ACLK_EN(1'b1),.v0(v0),.v1(v1),.ap_start(ap_start),.interrupt(interrupt),.ap_ready(ap_ready),.ap_done(ap_done),.ap_idle(ap_idle));
gemm_4096_fadd_32ns_32ns_32_5_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst_n_inv),.din0(v126_fu_100),.din1(v14_reg_581),.ce(1'b1),.dout(grp_fu_178_p2));
gemm_4096_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst_n_inv),.din0(grp_fu_182_p0),.din1(grp_fu_182_p1),.ce(1'b1),.dout(grp_fu_182_p2));
gemm_4096_flow_control_loop_delay_pipe flow_control_loop_delay_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst_n_inv),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(1'b1),.ap_loop_exit_ready_delayed(ap_loop_exit_ready_delayed));
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage4))) begin
        ap_condition_exit_pp0_iter0_stage5_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage5;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage4))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage4)) | ((ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage1)) begin
        if ((1'b1 == ap_condition_551)) begin
            icmp_ln438_reg_155 <= icmp_ln43_reg_566;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln438_reg_155 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_555)) begin
            indvar_flatten141_fu_80 <= 36'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            indvar_flatten141_fu_80 <= add_ln42_1_fu_322_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (ap_loop_init == 1'b1))) begin
            indvar_flatten3_fu_88 <= 26'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten3_fu_88 <= select_ln43_1_fu_417_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        if (((ap_enable_reg_pp0_iter1 == 1'b1) & (first_iter_0_reg_508_pp0_iter1_reg == 1'd1))) begin
            v126_fu_100 <= v8_reg_571;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            v126_fu_100 <= v12_reg_591;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_555)) begin
            v52_fu_84 <= 13'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v52_fu_84 <= v5_fu_249_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_555)) begin
            v64_fu_92 <= 13'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v64_fu_92 <= v6_fu_285_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_555)) begin
            v95_fu_96 <= 13'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v95_fu_96 <= v9_fu_362_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        first_iter_0_reg_508 <= first_iter_0_fu_293_p2;
        first_iter_0_reg_508_pp0_iter1_reg <= first_iter_0_reg_508;
        icmp_ln42_reg_532 <= icmp_ln42_fu_374_p2;
        icmp_ln42_reg_532_pp0_iter1_reg <= icmp_ln42_reg_532;
        icmp_ln42_reg_532_pp0_iter2_reg <= icmp_ln42_reg_532_pp0_iter1_reg;
        icmp_ln47_reg_527_pp0_iter1_reg <= icmp_ln47_reg_527;
        icmp_ln47_reg_527_pp0_iter2_reg <= icmp_ln47_reg_527_pp0_iter1_reg;
        v2_addr_reg_512 <= zext_ln44_1_fu_317_p1;
        v2_addr_reg_512_pp0_iter1_reg <= v2_addr_reg_512;
        v2_addr_reg_512_pp0_iter2_reg <= v2_addr_reg_512_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln43_reg_566 <= icmp_ln43_fu_425_p2;
        v13_reg_561 <= grp_fu_182_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln47_reg_527 <= icmp_ln47_fu_368_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_read_reg_503 <= v0;
        v1_read_reg_498 <= v1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v12_reg_591 <= grp_fu_178_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v14_reg_581 <= grp_fu_182_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_load_reg_536 <= v2_Dout_A;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_load_reg_541 <= v3_Dout_A;
        v4_load_reg_546 <= v4_Dout_A;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v8_reg_571 <= grp_fu_182_p2;
    end
end
always @ (*) begin
    if (((icmp_ln42_reg_532 == 1'd1) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln42_reg_532_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_condition_exit_pp0_iter2_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage5_pp0_iter1_reg) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage1)) begin
        if ((1'b1 == ap_condition_546)) begin
            ap_phi_mux_icmp_ln438_phi_fu_159_p4 = icmp_ln43_reg_566;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln438_phi_fu_159_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln438_phi_fu_159_p4 = icmp_ln43_reg_566;
        end
    end else begin
        ap_phi_mux_icmp_ln438_phi_fu_159_p4 = icmp_ln43_reg_566;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage1)) begin
        if ((1'b1 == ap_condition_546)) begin
            ap_phi_mux_icmp_ln477_phi_fu_171_p4 = icmp_ln47_reg_527;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln477_phi_fu_171_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln477_phi_fu_171_p4 = icmp_ln47_reg_527;
        end
    end else begin
        ap_phi_mux_icmp_ln477_phi_fu_171_p4 = icmp_ln47_reg_527;
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
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_182_p0 = v13_reg_561;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_182_p0 = v7_fu_404_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_182_p0 = v10_fu_400_p1;
    end else begin
        grp_fu_182_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_182_p1 = v11_fu_436_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_182_p1 = v1_read_reg_498;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_182_p1 = v0_read_reg_503;
    end else begin
        grp_fu_182_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_Addr_A_orig = v2_addr_reg_512_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_Addr_A_orig = zext_ln44_1_fu_317_p1;
    end else begin
        v2_Addr_A_orig = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v2_EN_A_local = 1'b1;
    end else begin
        v2_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln47_reg_527_pp0_iter2_reg == 1'd1))) begin
        v2_WEN_A_local = 4'd15;
    end else begin
        v2_WEN_A_local = 4'd0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_EN_A_local = 1'b1;
    end else begin
        v3_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage4))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
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
assign add_ln42_1_fu_322_p2 = (indvar_flatten141_fu_80 + 36'd1);
assign add_ln42_fu_223_p2 = (v52_fu_84 + 13'd1);
assign add_ln43_1_fu_411_p2 = (indvar_flatten3_fu_88 + 26'd1);
assign add_ln43_fu_261_p2 = (select_ln42_fu_229_p3 + 13'd1);
assign add_ln44_fu_311_p2 = (tmp_fu_299_p3 + zext_ln44_fu_307_p1);
assign add_ln48_fu_332_p2 = (tmp_fu_299_p3 + zext_ln48_fu_328_p1);
assign add_ln49_fu_351_p2 = (tmp_1_fu_343_p3 + zext_ln44_fu_307_p1);
assign and_ln42_fu_243_p2 = (xor_ln42_fu_237_p2 & ap_phi_mux_icmp_ln477_phi_fu_171_p4);
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
    ap_condition_546 = ((icmp_ln42_reg_532 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_551 = ((icmp_ln42_reg_532 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_555 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end
assign bitcast_ln50_fu_448_p1 = v12_reg_591;
assign empty_fu_267_p2 = (ap_phi_mux_icmp_ln438_phi_fu_159_p4 | and_ln42_fu_243_p2);
assign first_iter_0_fu_293_p2 = ((v9_mid2_fu_273_p3 == 13'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_fu_374_p2 = ((indvar_flatten141_fu_80 == 36'd68719476735) ? 1'b1 : 1'b0);
assign icmp_ln43_fu_425_p2 = ((select_ln43_1_fu_417_p3 == 26'd16777216) ? 1'b1 : 1'b0);
assign icmp_ln47_fu_368_p2 = ((v9_fu_362_p2 == 13'd4096) ? 1'b1 : 1'b0);
assign select_ln42_fu_229_p3 = ((ap_phi_mux_icmp_ln438_phi_fu_159_p4[0:0] == 1'b1) ? 13'd0 : v64_fu_92);
assign select_ln43_1_fu_417_p3 = ((icmp_ln438_reg_155[0:0] == 1'b1) ? 26'd1 : add_ln43_1_fu_411_p2);
assign tmp_1_fu_343_p3 = {{trunc_ln43_1_fu_281_p1}, {12'd0}};
assign tmp_fu_299_p3 = {{trunc_ln43_fu_257_p1}, {12'd0}};
assign trunc_ln43_1_fu_281_p1 = v9_mid2_fu_273_p3[11:0];
assign trunc_ln43_fu_257_p1 = v5_fu_249_p3[11:0];
assign v10_fu_400_p1 = v3_load_reg_541;
assign v11_fu_436_p1 = v4_load_reg_546;
assign v2_Addr_A = v2_Addr_A_orig << 32'd2;
assign v2_Clk_A = ap_clk;
assign v2_Din_A = bitcast_ln50_fu_448_p1;
assign v2_EN_A = v2_EN_A_local;
assign v2_Rst_A = ap_rst_n_inv;
assign v2_WEN_A = v2_WEN_A_local;
assign v3_Addr_A = v3_Addr_A_orig << 32'd2;
assign v3_Addr_A_orig = zext_ln48_1_fu_338_p1;
assign v3_Clk_A = ap_clk;
assign v3_Din_A = 32'd0;
assign v3_EN_A = v3_EN_A_local;
assign v3_Rst_A = ap_rst_n_inv;
assign v3_WEN_A = 4'd0;
assign v4_Addr_A = v4_Addr_A_orig << 32'd2;
assign v4_Addr_A_orig = zext_ln49_fu_357_p1;
assign v4_Clk_A = ap_clk;
assign v4_Din_A = 32'd0;
assign v4_EN_A = v4_EN_A_local;
assign v4_Rst_A = ap_rst_n_inv;
assign v4_WEN_A = 4'd0;
assign v5_fu_249_p3 = ((ap_phi_mux_icmp_ln438_phi_fu_159_p4[0:0] == 1'b1) ? add_ln42_fu_223_p2 : v52_fu_84);
assign v6_fu_285_p3 = ((and_ln42_fu_243_p2[0:0] == 1'b1) ? add_ln43_fu_261_p2 : select_ln42_fu_229_p3);
assign v7_fu_404_p1 = v2_load_reg_536;
assign v9_fu_362_p2 = (v9_mid2_fu_273_p3 + 13'd1);
assign v9_mid2_fu_273_p3 = ((empty_fu_267_p2[0:0] == 1'b1) ? 13'd0 : v95_fu_96);
assign xor_ln42_fu_237_p2 = (ap_phi_mux_icmp_ln438_phi_fu_159_p4 ^ 1'd1);
assign zext_ln44_1_fu_317_p1 = add_ln44_fu_311_p2;
assign zext_ln44_fu_307_p1 = v6_fu_285_p3;
assign zext_ln48_1_fu_338_p1 = add_ln48_fu_332_p2;
assign zext_ln48_fu_328_p1 = v9_mid2_fu_273_p3;
assign zext_ln49_fu_357_p1 = add_ln49_fu_351_p2;
endmodule 
