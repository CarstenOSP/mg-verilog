
module forward_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v15431_0_0_address0,v15431_0_0_ce0,v15431_0_0_we0,v15431_0_0_d0,v15431_0_1_address0,v15431_0_1_ce0,v15431_0_1_we0,v15431_0_1_d0,v15431_1_0_address0,v15431_1_0_ce0,v15431_1_0_we0,v15431_1_0_d0,v15431_1_1_address0,v15431_1_1_ce0,v15431_1_1_we0,v15431_1_1_d0,and_ln,mul10_i,p_udiv4_cast,v15155_3_address0,v15155_3_ce0,v15155_3_q0,v15155_2_address0,v15155_2_ce0,v15155_2_q0,v15155_1_address0,v15155_1_ce0,v15155_1_q0,v15155_address0,v15155_ce0,v15155_q0,mul15_i78,trunc_ln);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [16:0] v15431_0_0_address0;
output   v15431_0_0_ce0;
output   v15431_0_0_we0;
output  [7:0] v15431_0_0_d0;
output  [16:0] v15431_0_1_address0;
output   v15431_0_1_ce0;
output   v15431_0_1_we0;
output  [7:0] v15431_0_1_d0;
output  [16:0] v15431_1_0_address0;
output   v15431_1_0_ce0;
output   v15431_1_0_we0;
output  [7:0] v15431_1_0_d0;
output  [16:0] v15431_1_1_address0;
output   v15431_1_1_ce0;
output   v15431_1_1_we0;
output  [7:0] v15431_1_1_d0;
input  [4:0] and_ln;
input  [6:0] mul10_i;
input  [5:0] p_udiv4_cast;
output  [11:0] v15155_3_address0;
output   v15155_3_ce0;
input  [7:0] v15155_3_q0;
output  [11:0] v15155_2_address0;
output   v15155_2_ce0;
input  [7:0] v15155_2_q0;
output  [11:0] v15155_1_address0;
output   v15155_1_ce0;
input  [7:0] v15155_1_q0;
output  [11:0] v15155_address0;
output   v15155_ce0;
input  [7:0] v15155_q0;
input  [6:0] mul15_i78;
input  [5:0] trunc_ln;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln19715_fu_541_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1971675_reg_280;
reg   [0:0] icmp_ln1971774_reg_291;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] empty_fu_426_p2;
reg   [4:0] empty_reg_831;
wire   [3:0] lshr_ln_fu_435_p4;
reg   [3:0] lshr_ln_reg_837;
wire   [8:0] add_ln19719_fu_449_p2;
reg   [8:0] add_ln19719_reg_842;
wire   [7:0] trunc_ln19719_fu_455_p1;
reg   [7:0] trunc_ln19719_reg_847;
reg   [5:0] lshr_ln19_reg_852;
reg   [3:0] lshr_ln19717_1_reg_857;
reg   [3:0] lshr_ln19717_1_reg_857_pp0_iter2_reg;
reg   [5:0] lshr_ln20_reg_863;
reg   [5:0] lshr_ln20_reg_863_pp0_iter2_reg;
wire   [0:0] icmp_ln19717_fu_529_p2;
reg   [0:0] icmp_ln19717_reg_868;
wire   [0:0] icmp_ln19716_fu_535_p2;
reg   [0:0] icmp_ln19716_reg_873;
reg   [0:0] icmp_ln19715_reg_878;
wire   [10:0] add_ln19722_fu_632_p2;
reg   [10:0] add_ln19722_reg_882;
wire   [10:0] add_ln19726_fu_641_p2;
reg   [10:0] add_ln19726_reg_888;
reg   [0:0] ap_phi_mux_icmp_ln1971675_phi_fu_284_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1971774_phi_fu_295_p4;
wire   [63:0] zext_ln19719_4_fu_656_p1;
wire   [63:0] zext_ln19724_1_fu_730_p1;
wire   [63:0] zext_ln19720_fu_741_p1;
wire   [63:0] zext_ln19726_4_fu_755_p1;
wire   [63:0] zext_ln19722_2_fu_766_p1;
reg   [11:0] indvar_flatten1269_fu_122;
wire   [11:0] add_ln19715_1_fu_523_p2;
reg   [4:0] v1505770_fu_126;
wire   [4:0] v15057_fu_370_p3;
reg   [7:0] indvar_flatten71_fu_130;
wire   [7:0] select_ln19716_1_fu_515_p3;
reg   [4:0] v1505872_fu_134;
wire   [4:0] v15058_fu_392_p3;
reg   [4:0] v1505973_fu_138;
wire   [4:0] v15059_fu_503_p2;
reg    v15155_3_ce0_local;
reg    v15155_2_ce0_local;
reg    v15155_1_ce0_local;
reg    v15155_ce0_local;
reg    v15431_0_0_we0_local;
reg    v15431_0_0_ce0_local;
reg    v15431_0_1_we0_local;
reg    v15431_0_1_ce0_local;
reg    v15431_1_0_we0_local;
reg    v15431_1_0_ce0_local;
reg    v15431_1_1_we0_local;
reg    v15431_1_1_ce0_local;
wire   [4:0] add_ln19715_fu_342_p2;
wire   [4:0] select_ln19715_fu_348_p3;
wire   [0:0] or_ln19715_fu_364_p2;
wire   [4:0] select_ln19715_1_fu_356_p3;
wire   [4:0] add_ln19716_fu_378_p2;
wire   [5:0] tmp_fu_408_p3;
wire   [8:0] p_shl35_fu_400_p3;
wire   [8:0] zext_ln19719_fu_416_p1;
wire   [8:0] sub_ln19719_fu_420_p2;
wire   [8:0] zext_ln19719_1_fu_445_p1;
wire   [6:0] zext_ln19716_fu_431_p1;
wire   [6:0] empty_210_fu_459_p2;
wire   [4:0] v15059_mid2_fu_384_p3;
wire   [6:0] zext_ln19717_fu_474_p1;
wire   [6:0] add_ln19720_fu_488_p2;
wire   [7:0] add_ln19716_1_fu_509_p2;
wire   [7:0] tmp_101_fu_579_p3;
wire   [10:0] p_shl33_fu_572_p3;
wire   [10:0] zext_ln19726_fu_586_p1;
wire   [9:0] tmp_102_fu_596_p3;
wire   [11:0] tmp_103_fu_603_p3;
wire   [11:0] zext_ln19719_2_fu_610_p1;
wire   [5:0] zext_ln19716_1_fu_620_p1;
wire   [5:0] empty_211_fu_623_p2;
wire   [10:0] sub_ln19726_fu_590_p2;
wire   [10:0] zext_ln19722_fu_628_p1;
wire   [10:0] zext_ln19726_1_fu_638_p1;
wire   [11:0] sub_ln19719_1_fu_614_p2;
wire   [11:0] zext_ln19719_3_fu_647_p1;
wire   [11:0] add_ln19719_1_fu_650_p2;
wire   [13:0] tmp_104_fu_671_p3;
wire   [16:0] p_shl29_fu_664_p3;
wire   [16:0] zext_ln19722_1_fu_678_p1;
wire   [13:0] tmp_105_fu_695_p3;
wire   [16:0] p_shl_fu_688_p3;
wire   [16:0] zext_ln19726_2_fu_702_p1;
wire   [5:0] zext_ln19717_1_fu_712_p1;
wire   [5:0] add_ln19720_1_fu_715_p2;
wire   [16:0] sub_ln19726_1_fu_706_p2;
wire   [16:0] zext_ln19724_fu_720_p1;
wire   [16:0] add_ln19724_fu_724_p2;
wire   [16:0] sub_ln19722_fu_682_p2;
wire   [16:0] add_ln19720_2_fu_735_p2;
wire   [16:0] zext_ln19726_3_fu_746_p1;
wire   [16:0] add_ln19726_1_fu_749_p2;
wire   [16:0] add_ln19722_1_fu_760_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
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
#0 indvar_flatten1269_fu_122 = 12'd0;
#0 v1505770_fu_126 = 5'd0;
#0 indvar_flatten71_fu_130 = 8'd0;
#0 v1505872_fu_134 = 5'd0;
#0 v1505973_fu_138 = 5'd0;
#0 ap_done_reg = 1'b0;
end
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln19715_reg_878 == 1'd0))) begin
        icmp_ln1971675_reg_280 <= icmp_ln19716_reg_873;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1971675_reg_280 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln19715_reg_878 == 1'd0))) begin
        icmp_ln1971774_reg_291 <= icmp_ln19717_reg_868;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1971774_reg_291 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1269_fu_122 <= 12'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten1269_fu_122 <= add_ln19715_1_fu_523_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten71_fu_130 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten71_fu_130 <= select_ln19716_1_fu_515_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1505770_fu_126 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1505770_fu_126 <= v15057_fu_370_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1505872_fu_134 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1505872_fu_134 <= v15058_fu_392_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1505973_fu_138 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1505973_fu_138 <= v15059_fu_503_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln19719_reg_842 <= add_ln19719_fu_449_p2;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        empty_reg_831 <= empty_fu_426_p2;
        icmp_ln19715_reg_878 <= icmp_ln19715_fu_541_p2;
        lshr_ln19717_1_reg_857 <= {{v15059_mid2_fu_384_p3[4:1]}};
        lshr_ln19_reg_852 <= {{empty_210_fu_459_p2[6:1]}};
        lshr_ln20_reg_863 <= {{add_ln19720_fu_488_p2[6:1]}};
        lshr_ln_reg_837 <= {{v15058_fu_392_p3[4:1]}};
        trunc_ln19719_reg_847 <= trunc_ln19719_fu_455_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln19722_reg_882 <= add_ln19722_fu_632_p2;
        add_ln19726_reg_888 <= add_ln19726_fu_641_p2;
        lshr_ln19717_1_reg_857_pp0_iter2_reg <= lshr_ln19717_1_reg_857;
        lshr_ln20_reg_863_pp0_iter2_reg <= lshr_ln20_reg_863;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln19716_reg_873 <= icmp_ln19716_fu_535_p2;
        icmp_ln19717_reg_868 <= icmp_ln19717_fu_529_p2;
    end
end
always @ (*) begin
    if (((icmp_ln19715_fu_541_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln19715_reg_878 == 1'd0))) begin
        ap_phi_mux_icmp_ln1971675_phi_fu_284_p4 = icmp_ln19716_reg_873;
    end else begin
        ap_phi_mux_icmp_ln1971675_phi_fu_284_p4 = icmp_ln1971675_reg_280;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln19715_reg_878 == 1'd0))) begin
        ap_phi_mux_icmp_ln1971774_phi_fu_295_p4 = icmp_ln19717_reg_868;
    end else begin
        ap_phi_mux_icmp_ln1971774_phi_fu_295_p4 = icmp_ln1971774_reg_291;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15155_1_ce0_local = 1'b1;
    end else begin
        v15155_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15155_2_ce0_local = 1'b1;
    end else begin
        v15155_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15155_3_ce0_local = 1'b1;
    end else begin
        v15155_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15155_ce0_local = 1'b1;
    end else begin
        v15155_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15431_0_0_ce0_local = 1'b1;
    end else begin
        v15431_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15431_0_0_we0_local = 1'b1;
    end else begin
        v15431_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15431_0_1_ce0_local = 1'b1;
    end else begin
        v15431_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15431_0_1_we0_local = 1'b1;
    end else begin
        v15431_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15431_1_0_ce0_local = 1'b1;
    end else begin
        v15431_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15431_1_0_we0_local = 1'b1;
    end else begin
        v15431_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15431_1_1_ce0_local = 1'b1;
    end else begin
        v15431_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15431_1_1_we0_local = 1'b1;
    end else begin
        v15431_1_1_we0_local = 1'b0;
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
assign add_ln19715_1_fu_523_p2 = (indvar_flatten1269_fu_122 + 12'd1);
assign add_ln19715_fu_342_p2 = (v1505770_fu_126 + 5'd1);
assign add_ln19716_1_fu_509_p2 = (indvar_flatten71_fu_130 + 8'd1);
assign add_ln19716_fu_378_p2 = (select_ln19715_fu_348_p3 + 5'd2);
assign add_ln19719_1_fu_650_p2 = (sub_ln19719_1_fu_614_p2 + zext_ln19719_3_fu_647_p1);
assign add_ln19719_fu_449_p2 = (sub_ln19719_fu_420_p2 + zext_ln19719_1_fu_445_p1);
assign add_ln19720_1_fu_715_p2 = (trunc_ln + zext_ln19717_1_fu_712_p1);
assign add_ln19720_2_fu_735_p2 = (sub_ln19722_fu_682_p2 + zext_ln19724_fu_720_p1);
assign add_ln19720_fu_488_p2 = (mul15_i78 + zext_ln19717_fu_474_p1);
assign add_ln19722_1_fu_760_p2 = (sub_ln19722_fu_682_p2 + zext_ln19726_3_fu_746_p1);
assign add_ln19722_fu_632_p2 = (sub_ln19726_fu_590_p2 + zext_ln19722_fu_628_p1);
assign add_ln19724_fu_724_p2 = (sub_ln19726_1_fu_706_p2 + zext_ln19724_fu_720_p1);
assign add_ln19726_1_fu_749_p2 = (sub_ln19726_1_fu_706_p2 + zext_ln19726_3_fu_746_p1);
assign add_ln19726_fu_641_p2 = (sub_ln19726_fu_590_p2 + zext_ln19726_1_fu_638_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_210_fu_459_p2 = (mul10_i + zext_ln19716_fu_431_p1);
assign empty_211_fu_623_p2 = (p_udiv4_cast + zext_ln19716_1_fu_620_p1);
assign empty_fu_426_p2 = (v15057_fu_370_p3 + and_ln);
assign icmp_ln19715_fu_541_p2 = ((indvar_flatten1269_fu_122 == 12'd3135) ? 1'b1 : 1'b0);
assign icmp_ln19716_fu_535_p2 = ((select_ln19716_1_fu_515_p3 == 8'd196) ? 1'b1 : 1'b0);
assign icmp_ln19717_fu_529_p2 = ((v15059_fu_503_p2 < 5'd28) ? 1'b1 : 1'b0);
assign lshr_ln_fu_435_p4 = {{v15058_fu_392_p3[4:1]}};
assign or_ln19715_fu_364_p2 = (ap_phi_mux_icmp_ln1971774_phi_fu_295_p4 | ap_phi_mux_icmp_ln1971675_phi_fu_284_p4);
assign p_shl29_fu_664_p3 = {{add_ln19722_reg_882}, {6'd0}};
assign p_shl33_fu_572_p3 = {{empty_reg_831}, {6'd0}};
assign p_shl35_fu_400_p3 = {{v15057_fu_370_p3}, {4'd0}};
assign p_shl_fu_688_p3 = {{add_ln19726_reg_888}, {6'd0}};
assign select_ln19715_1_fu_356_p3 = ((ap_phi_mux_icmp_ln1971675_phi_fu_284_p4[0:0] == 1'b1) ? 5'd0 : v1505973_fu_138);
assign select_ln19715_fu_348_p3 = ((ap_phi_mux_icmp_ln1971675_phi_fu_284_p4[0:0] == 1'b1) ? 5'd0 : v1505872_fu_134);
assign select_ln19716_1_fu_515_p3 = ((ap_phi_mux_icmp_ln1971675_phi_fu_284_p4[0:0] == 1'b1) ? 8'd1 : add_ln19716_1_fu_509_p2);
assign sub_ln19719_1_fu_614_p2 = (tmp_103_fu_603_p3 - zext_ln19719_2_fu_610_p1);
assign sub_ln19719_fu_420_p2 = (p_shl35_fu_400_p3 - zext_ln19719_fu_416_p1);
assign sub_ln19722_fu_682_p2 = (p_shl29_fu_664_p3 - zext_ln19722_1_fu_678_p1);
assign sub_ln19726_1_fu_706_p2 = (p_shl_fu_688_p3 - zext_ln19726_2_fu_702_p1);
assign sub_ln19726_fu_590_p2 = (p_shl33_fu_572_p3 - zext_ln19726_fu_586_p1);
assign tmp_101_fu_579_p3 = {{empty_reg_831}, {3'd0}};
assign tmp_102_fu_596_p3 = {{add_ln19719_reg_842}, {1'd0}};
assign tmp_103_fu_603_p3 = {{trunc_ln19719_reg_847}, {4'd0}};
assign tmp_104_fu_671_p3 = {{add_ln19722_reg_882}, {3'd0}};
assign tmp_105_fu_695_p3 = {{add_ln19726_reg_888}, {3'd0}};
assign tmp_fu_408_p3 = {{v15057_fu_370_p3}, {1'd0}};
assign trunc_ln19719_fu_455_p1 = add_ln19719_fu_449_p2[7:0];
assign v15057_fu_370_p3 = ((ap_phi_mux_icmp_ln1971675_phi_fu_284_p4[0:0] == 1'b1) ? add_ln19715_fu_342_p2 : v1505770_fu_126);
assign v15058_fu_392_p3 = ((or_ln19715_fu_364_p2[0:0] == 1'b1) ? select_ln19715_fu_348_p3 : add_ln19716_fu_378_p2);
assign v15059_fu_503_p2 = (v15059_mid2_fu_384_p3 + 5'd2);
assign v15059_mid2_fu_384_p3 = ((or_ln19715_fu_364_p2[0:0] == 1'b1) ? select_ln19715_1_fu_356_p3 : 5'd0);
assign v15155_1_address0 = zext_ln19719_4_fu_656_p1;
assign v15155_1_ce0 = v15155_1_ce0_local;
assign v15155_2_address0 = zext_ln19719_4_fu_656_p1;
assign v15155_2_ce0 = v15155_2_ce0_local;
assign v15155_3_address0 = zext_ln19719_4_fu_656_p1;
assign v15155_3_ce0 = v15155_3_ce0_local;
assign v15155_address0 = zext_ln19719_4_fu_656_p1;
assign v15155_ce0 = v15155_ce0_local;
assign v15431_0_0_address0 = zext_ln19720_fu_741_p1;
assign v15431_0_0_ce0 = v15431_0_0_ce0_local;
assign v15431_0_0_d0 = v15155_3_q0;
assign v15431_0_0_we0 = v15431_0_0_we0_local;
assign v15431_0_1_address0 = zext_ln19722_2_fu_766_p1;
assign v15431_0_1_ce0 = v15431_0_1_ce0_local;
assign v15431_0_1_d0 = v15155_2_q0;
assign v15431_0_1_we0 = v15431_0_1_we0_local;
assign v15431_1_0_address0 = zext_ln19724_1_fu_730_p1;
assign v15431_1_0_ce0 = v15431_1_0_ce0_local;
assign v15431_1_0_d0 = v15155_1_q0;
assign v15431_1_0_we0 = v15431_1_0_we0_local;
assign v15431_1_1_address0 = zext_ln19726_4_fu_755_p1;
assign v15431_1_1_ce0 = v15431_1_1_ce0_local;
assign v15431_1_1_d0 = v15155_q0;
assign v15431_1_1_we0 = v15431_1_1_we0_local;
assign zext_ln19716_1_fu_620_p1 = lshr_ln_reg_837;
assign zext_ln19716_fu_431_p1 = v15058_fu_392_p3;
assign zext_ln19717_1_fu_712_p1 = lshr_ln19717_1_reg_857_pp0_iter2_reg;
assign zext_ln19717_fu_474_p1 = v15059_mid2_fu_384_p3;
assign zext_ln19719_1_fu_445_p1 = lshr_ln_fu_435_p4;
assign zext_ln19719_2_fu_610_p1 = tmp_102_fu_596_p3;
assign zext_ln19719_3_fu_647_p1 = lshr_ln19717_1_reg_857;
assign zext_ln19719_4_fu_656_p1 = add_ln19719_1_fu_650_p2;
assign zext_ln19719_fu_416_p1 = tmp_fu_408_p3;
assign zext_ln19720_fu_741_p1 = add_ln19720_2_fu_735_p2;
assign zext_ln19722_1_fu_678_p1 = tmp_104_fu_671_p3;
assign zext_ln19722_2_fu_766_p1 = add_ln19722_1_fu_760_p2;
assign zext_ln19722_fu_628_p1 = empty_211_fu_623_p2;
assign zext_ln19724_1_fu_730_p1 = add_ln19724_fu_724_p2;
assign zext_ln19724_fu_720_p1 = add_ln19720_1_fu_715_p2;
assign zext_ln19726_1_fu_638_p1 = lshr_ln19_reg_852;
assign zext_ln19726_2_fu_702_p1 = tmp_105_fu_695_p3;
assign zext_ln19726_3_fu_746_p1 = lshr_ln20_reg_863_pp0_iter2_reg;
assign zext_ln19726_4_fu_755_p1 = add_ln19726_1_fu_749_p2;
assign zext_ln19726_fu_586_p1 = tmp_101_fu_579_p3;
endmodule 
