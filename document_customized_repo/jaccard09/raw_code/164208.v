module forward_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_Pipeline_VITIS_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v15070,zext_ln19859_1,zext_ln19859,v15155_address0,v15155_ce0,v15155_we0,v15155_d0,v15155_1_address0,v15155_1_ce0,v15155_1_we0,v15155_1_d0,v15155_2_address0,v15155_2_ce0,v15155_2_we0,v15155_2_d0,v15155_3_address0,v15155_3_ce0,v15155_3_we0,v15155_3_d0,v15154_3_address0,v15154_3_ce0,v15154_3_q0,v15153_3_address0,v15153_3_ce0,v15153_3_q0,v15154_2_address0,v15154_2_ce0,v15154_2_q0,v15153_2_address0,v15153_2_ce0,v15153_2_q0,v15154_1_address0,v15154_1_ce0,v15154_1_q0,v15153_1_address0,v15153_1_ce0,v15153_1_q0,v15154_address0,v15154_ce0,v15154_q0,v15153_address0,v15153_ce0,v15153_q0,brmerge_i); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [4:0] v15070;
input  [2:0] zext_ln19859_1;
input  [1:0] zext_ln19859;
output  [11:0] v15155_address0;
output   v15155_ce0;
output   v15155_we0;
output  [7:0] v15155_d0;
output  [11:0] v15155_1_address0;
output   v15155_1_ce0;
output   v15155_1_we0;
output  [7:0] v15155_1_d0;
output  [11:0] v15155_2_address0;
output   v15155_2_ce0;
output   v15155_2_we0;
output  [7:0] v15155_2_d0;
output  [11:0] v15155_3_address0;
output   v15155_3_ce0;
output   v15155_3_we0;
output  [7:0] v15155_3_d0;
output  [11:0] v15154_3_address0;
output   v15154_3_ce0;
input  [7:0] v15154_3_q0;
output  [11:0] v15153_3_address0;
output   v15153_3_ce0;
input  [7:0] v15153_3_q0;
output  [11:0] v15154_2_address0;
output   v15154_2_ce0;
input  [7:0] v15154_2_q0;
output  [11:0] v15153_2_address0;
output   v15153_2_ce0;
input  [7:0] v15153_2_q0;
output  [11:0] v15154_1_address0;
output   v15154_1_ce0;
input  [7:0] v15154_1_q0;
output  [11:0] v15153_1_address0;
output   v15153_1_ce0;
input  [7:0] v15153_1_q0;
output  [11:0] v15154_address0;
output   v15154_ce0;
input  [7:0] v15154_q0;
output  [11:0] v15153_address0;
output   v15153_ce0;
input  [7:0] v15153_q0;
input  [0:0] brmerge_i;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln19756_fu_583_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [8:0] v15626_address0;
wire  signed [7:0] v15626_q0;
reg   [0:0] icmp_ln1975781_reg_329;
reg   [0:0] icmp_ln1975880_reg_340;
wire   [0:0] brmerge_i_read_reg_836;
wire    ap_block_pp0_stage0_11001;
wire   [8:0] zext_ln19859_cast_fu_351_p1;
reg   [8:0] zext_ln19859_cast_reg_849;
wire   [6:0] zext_ln19859_1_cast_fu_355_p1;
reg   [6:0] zext_ln19859_1_cast_reg_854;
wire   [6:0] empty_207_fu_506_p2;
reg   [6:0] empty_207_reg_859;
wire   [8:0] add_ln19804_fu_525_p2;
reg   [8:0] add_ln19804_reg_865;
wire   [7:0] trunc_ln19804_fu_531_p1;
reg   [7:0] trunc_ln19804_reg_870;
reg   [3:0] lshr_ln18_reg_875;
wire   [0:0] icmp_ln19758_fu_571_p2;
reg   [0:0] icmp_ln19758_reg_880;
wire   [0:0] icmp_ln19757_fu_577_p2;
reg   [0:0] icmp_ln19757_reg_885;
reg   [0:0] icmp_ln19756_reg_890;
wire   [63:0] zext_ln19804_4_fu_673_p1;
reg   [63:0] zext_ln19804_4_reg_899;
reg   [63:0] zext_ln19804_4_reg_899_pp0_iter3_reg;
reg   [63:0] zext_ln19804_4_reg_899_pp0_iter4_reg;
reg   [63:0] zext_ln19804_4_reg_899_pp0_iter5_reg;
reg   [0:0] ap_phi_mux_icmp_ln1975781_phi_fu_333_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1975880_phi_fu_344_p4;
wire   [63:0] p_cast2_fu_635_p1;
reg   [11:0] indvar_flatten1275_fu_116;
wire   [11:0] add_ln19756_1_fu_565_p2;
reg   [4:0] v1507176_fu_120;
wire   [4:0] v15071_fu_427_p3;
reg   [7:0] indvar_flatten77_fu_124;
wire   [7:0] select_ln19757_1_fu_557_p3;
reg   [4:0] v1507278_fu_128;
wire   [4:0] v15072_fu_449_p3;
reg   [4:0] v1507379_fu_132;
wire   [4:0] v15073_fu_545_p2;
reg    v15626_ce0_local;
reg    v15154_3_ce0_local;
reg    v15154_2_ce0_local;
reg    v15154_1_ce0_local;
reg    v15154_ce0_local;
reg    v15153_3_ce0_local;
reg    v15153_2_ce0_local;
reg    v15153_1_ce0_local;
reg    v15153_ce0_local;
reg    v15155_3_we0_local;
wire   [7:0] select_ln19771_fu_694_p3;
reg    v15155_3_ce0_local;
reg    v15155_2_we0_local;
wire   [7:0] select_ln19782_fu_714_p3;
reg    v15155_2_ce0_local;
reg    v15155_1_we0_local;
wire   [7:0] select_ln19793_fu_734_p3;
reg    v15155_1_ce0_local;
reg    v15155_we0_local;
wire   [7:0] select_ln19804_fu_754_p3;
reg    v15155_ce0_local;
wire   [4:0] add_ln19756_fu_399_p2;
wire   [4:0] select_ln19756_fu_405_p3;
wire   [0:0] or_ln19756_fu_421_p2;
wire   [4:0] select_ln19756_1_fu_413_p3;
wire   [4:0] add_ln19757_fu_435_p2;
wire   [5:0] tmp_fu_465_p3;
wire   [8:0] p_shl25_fu_457_p3;
wire   [8:0] zext_ln19804_fu_473_p1;
wire   [4:0] empty_fu_483_p2;
wire   [6:0] p_shl24_fu_492_p3;
wire   [6:0] p_cast_fu_488_p1;
wire   [6:0] empty_206_fu_500_p2;
wire   [3:0] lshr_ln_fu_511_p4;
wire   [8:0] sub_ln19804_fu_477_p2;
wire   [8:0] zext_ln19804_1_fu_521_p1;
wire   [4:0] v15073_mid2_fu_441_p3;
wire   [7:0] add_ln19757_1_fu_551_p2;
wire   [8:0] p_shl23_fu_617_p3;
wire   [8:0] p_cast1_fu_614_p1;
wire   [8:0] empty_208_fu_624_p2;
wire   [8:0] empty_209_fu_630_p2;
wire   [9:0] tmp_99_fu_640_p3;
wire   [11:0] tmp_100_fu_647_p3;
wire   [11:0] zext_ln19804_2_fu_654_p1;
wire   [11:0] sub_ln19759_fu_658_p2;
wire   [11:0] zext_ln19804_3_fu_664_p1;
wire   [11:0] add_ln19804_1_fu_667_p2;
wire  signed [7:0] v15082_fu_681_p0;
wire   [7:0] grp_fu_761_p3;
wire   [0:0] v15082_fu_681_p2;
wire  signed [7:0] select_ln19771_fu_694_p1;
wire   [7:0] select_ln19771_1_fu_686_p3;
wire  signed [7:0] v15092_fu_701_p0;
wire   [7:0] grp_fu_771_p3;
wire   [0:0] v15092_fu_701_p2;
wire  signed [7:0] select_ln19782_fu_714_p1;
wire   [7:0] select_ln19782_1_fu_706_p3;
wire  signed [7:0] v15102_fu_721_p0;
wire   [7:0] grp_fu_781_p3;
wire   [0:0] v15102_fu_721_p2;
wire  signed [7:0] select_ln19793_fu_734_p1;
wire   [7:0] select_ln19793_1_fu_726_p3;
wire  signed [7:0] v15112_fu_741_p0;
wire   [7:0] grp_fu_791_p3;
wire   [0:0] v15112_fu_741_p2;
wire  signed [7:0] select_ln19804_fu_754_p1;
wire   [7:0] select_ln19804_1_fu_746_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
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
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 indvar_flatten1275_fu_116 = 12'd0;
#0 v1507176_fu_120 = 5'd0;
#0 indvar_flatten77_fu_124 = 8'd0;
#0 v1507278_fu_128 = 5'd0;
#0 v1507379_fu_132 = 5'd0;
#0 ap_done_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_Pipeline_VITdEe #(.DataWidth( 8 ),.AddressRange( 288 ),.AddressWidth( 9 ))
v15626_U(.clk(ap_clk),.reset(ap_rst),.address0(v15626_address0),.ce0(v15626_ce0_local),.q0(v15626_q0));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U623(.clk(ap_clk),.reset(ap_rst),.din0(v15154_3_q0),.din1(v15626_q0),.din2(v15153_3_q0),.ce(1'b1),.dout(grp_fu_761_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U624(.clk(ap_clk),.reset(ap_rst),.din0(v15154_2_q0),.din1(v15626_q0),.din2(v15153_2_q0),.ce(1'b1),.dout(grp_fu_771_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U625(.clk(ap_clk),.reset(ap_rst),.din0(v15154_1_q0),.din1(v15626_q0),.din2(v15153_1_q0),.ce(1'b1),.dout(grp_fu_781_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U626(.clk(ap_clk),.reset(ap_rst),.din0(v15154_q0),.din1(v15626_q0),.din2(v15153_q0),.ce(1'b1),.dout(grp_fu_791_p3));
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
        end else if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_exit_ready_pp0_iter5_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln19756_reg_890 == 1'd0))) begin
        icmp_ln1975781_reg_329 <= icmp_ln19757_reg_885;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln1975781_reg_329 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln19756_reg_890 == 1'd0))) begin
        icmp_ln1975880_reg_340 <= icmp_ln19758_reg_880;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln1975880_reg_340 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1275_fu_116 <= 12'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten1275_fu_116 <= add_ln19756_1_fu_565_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten77_fu_124 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten77_fu_124 <= select_ln19757_1_fu_557_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1507176_fu_120 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1507176_fu_120 <= v15071_fu_427_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1507278_fu_128 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1507278_fu_128 <= v15072_fu_449_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1507379_fu_132 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1507379_fu_132 <= v15073_fu_545_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln19804_reg_865 <= add_ln19804_fu_525_p2;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        empty_207_reg_859 <= empty_207_fu_506_p2;
        icmp_ln19756_reg_890 <= icmp_ln19756_fu_583_p2;
        lshr_ln18_reg_875 <= {{v15073_mid2_fu_441_p3[4:1]}};
        trunc_ln19804_reg_870 <= trunc_ln19804_fu_531_p1;
        zext_ln19859_1_cast_reg_854[2 : 0] <= zext_ln19859_1_cast_fu_355_p1[2 : 0];
        zext_ln19859_cast_reg_849[1 : 0] <= zext_ln19859_cast_fu_351_p1[1 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        zext_ln19804_4_reg_899[11 : 0] <= zext_ln19804_4_fu_673_p1[11 : 0];
        zext_ln19804_4_reg_899_pp0_iter3_reg[11 : 0] <= zext_ln19804_4_reg_899[11 : 0];
        zext_ln19804_4_reg_899_pp0_iter4_reg[11 : 0] <= zext_ln19804_4_reg_899_pp0_iter3_reg[11 : 0];
        zext_ln19804_4_reg_899_pp0_iter5_reg[11 : 0] <= zext_ln19804_4_reg_899_pp0_iter4_reg[11 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln19757_reg_885 <= icmp_ln19757_fu_577_p2;
        icmp_ln19758_reg_880 <= icmp_ln19758_fu_571_p2;
    end
end
always @ (*) begin
    if (((icmp_ln19756_fu_583_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln19756_reg_890 == 1'd0))) begin
        ap_phi_mux_icmp_ln1975781_phi_fu_333_p4 = icmp_ln19757_reg_885;
    end else begin
        ap_phi_mux_icmp_ln1975781_phi_fu_333_p4 = icmp_ln1975781_reg_329;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln19756_reg_890 == 1'd0))) begin
        ap_phi_mux_icmp_ln1975880_phi_fu_344_p4 = icmp_ln19758_reg_880;
    end else begin
        ap_phi_mux_icmp_ln1975880_phi_fu_344_p4 = icmp_ln1975880_reg_340;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15153_1_ce0_local = 1'b1;
    end else begin
        v15153_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15153_2_ce0_local = 1'b1;
    end else begin
        v15153_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15153_3_ce0_local = 1'b1;
    end else begin
        v15153_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15153_ce0_local = 1'b1;
    end else begin
        v15153_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15154_1_ce0_local = 1'b1;
    end else begin
        v15154_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15154_2_ce0_local = 1'b1;
    end else begin
        v15154_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15154_3_ce0_local = 1'b1;
    end else begin
        v15154_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15154_ce0_local = 1'b1;
    end else begin
        v15154_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15155_1_ce0_local = 1'b1;
    end else begin
        v15155_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15155_1_we0_local = 1'b1;
    end else begin
        v15155_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15155_2_ce0_local = 1'b1;
    end else begin
        v15155_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15155_2_we0_local = 1'b1;
    end else begin
        v15155_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15155_3_ce0_local = 1'b1;
    end else begin
        v15155_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15155_3_we0_local = 1'b1;
    end else begin
        v15155_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15155_ce0_local = 1'b1;
    end else begin
        v15155_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15155_we0_local = 1'b1;
    end else begin
        v15155_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15626_ce0_local = 1'b1;
    end else begin
        v15626_ce0_local = 1'b0;
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
assign add_ln19756_1_fu_565_p2 = (indvar_flatten1275_fu_116 + 12'd1);
assign add_ln19756_fu_399_p2 = (v1507176_fu_120 + 5'd1);
assign add_ln19757_1_fu_551_p2 = (indvar_flatten77_fu_124 + 8'd1);
assign add_ln19757_fu_435_p2 = (select_ln19756_fu_405_p3 + 5'd2);
assign add_ln19804_1_fu_667_p2 = (sub_ln19759_fu_658_p2 + zext_ln19804_3_fu_664_p1);
assign add_ln19804_fu_525_p2 = (sub_ln19804_fu_477_p2 + zext_ln19804_1_fu_521_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign brmerge_i_read_reg_836 = brmerge_i;
assign empty_206_fu_500_p2 = (p_shl24_fu_492_p3 - p_cast_fu_488_p1);
assign empty_207_fu_506_p2 = (empty_206_fu_500_p2 + zext_ln19859_1_cast_reg_854);
assign empty_208_fu_624_p2 = (p_shl23_fu_617_p3 - p_cast1_fu_614_p1);
assign empty_209_fu_630_p2 = (empty_208_fu_624_p2 + zext_ln19859_cast_reg_849);
assign empty_fu_483_p2 = (v15071_fu_427_p3 + v15070);
assign icmp_ln19756_fu_583_p2 = ((indvar_flatten1275_fu_116 == 12'd3135) ? 1'b1 : 1'b0);
assign icmp_ln19757_fu_577_p2 = ((select_ln19757_1_fu_557_p3 == 8'd196) ? 1'b1 : 1'b0);
assign icmp_ln19758_fu_571_p2 = ((v15073_fu_545_p2 < 5'd28) ? 1'b1 : 1'b0);
assign lshr_ln_fu_511_p4 = {{v15072_fu_449_p3[4:1]}};
assign or_ln19756_fu_421_p2 = (ap_phi_mux_icmp_ln1975880_phi_fu_344_p4 | ap_phi_mux_icmp_ln1975781_phi_fu_333_p4);
assign p_cast1_fu_614_p1 = empty_207_reg_859;
assign p_cast2_fu_635_p1 = empty_209_fu_630_p2;
assign p_cast_fu_488_p1 = empty_fu_483_p2;
assign p_shl23_fu_617_p3 = {{empty_207_reg_859}, {2'd0}};
assign p_shl24_fu_492_p3 = {{empty_fu_483_p2}, {2'd0}};
assign p_shl25_fu_457_p3 = {{v15071_fu_427_p3}, {4'd0}};
assign select_ln19756_1_fu_413_p3 = ((ap_phi_mux_icmp_ln1975781_phi_fu_333_p4[0:0] == 1'b1) ? 5'd0 : v1507379_fu_132);
assign select_ln19756_fu_405_p3 = ((ap_phi_mux_icmp_ln1975781_phi_fu_333_p4[0:0] == 1'b1) ? 5'd0 : v1507278_fu_128);
assign select_ln19757_1_fu_557_p3 = ((ap_phi_mux_icmp_ln1975781_phi_fu_333_p4[0:0] == 1'b1) ? 8'd1 : add_ln19757_1_fu_551_p2);
assign select_ln19771_1_fu_686_p3 = ((v15082_fu_681_p2[0:0] == 1'b1) ? 8'd127 : 8'd126);
assign select_ln19771_fu_694_p1 = grp_fu_761_p3;
assign select_ln19771_fu_694_p3 = ((brmerge_i[0:0] == 1'b1) ? select_ln19771_fu_694_p1 : select_ln19771_1_fu_686_p3);
assign select_ln19782_1_fu_706_p3 = ((v15092_fu_701_p2[0:0] == 1'b1) ? 8'd127 : 8'd126);
assign select_ln19782_fu_714_p1 = grp_fu_771_p3;
assign select_ln19782_fu_714_p3 = ((brmerge_i[0:0] == 1'b1) ? select_ln19782_fu_714_p1 : select_ln19782_1_fu_706_p3);
assign select_ln19793_1_fu_726_p3 = ((v15102_fu_721_p2[0:0] == 1'b1) ? 8'd127 : 8'd126);
assign select_ln19793_fu_734_p1 = grp_fu_781_p3;
assign select_ln19793_fu_734_p3 = ((brmerge_i[0:0] == 1'b1) ? select_ln19793_fu_734_p1 : select_ln19793_1_fu_726_p3);
assign select_ln19804_1_fu_746_p3 = ((v15112_fu_741_p2[0:0] == 1'b1) ? 8'd127 : 8'd126);
assign select_ln19804_fu_754_p1 = grp_fu_791_p3;
assign select_ln19804_fu_754_p3 = ((brmerge_i[0:0] == 1'b1) ? select_ln19804_fu_754_p1 : select_ln19804_1_fu_746_p3);
assign sub_ln19759_fu_658_p2 = (tmp_100_fu_647_p3 - zext_ln19804_2_fu_654_p1);
assign sub_ln19804_fu_477_p2 = (p_shl25_fu_457_p3 - zext_ln19804_fu_473_p1);
assign tmp_100_fu_647_p3 = {{trunc_ln19804_reg_870}, {4'd0}};
assign tmp_99_fu_640_p3 = {{add_ln19804_reg_865}, {1'd0}};
assign tmp_fu_465_p3 = {{v15071_fu_427_p3}, {1'd0}};
assign trunc_ln19804_fu_531_p1 = add_ln19804_fu_525_p2[7:0];
assign v15071_fu_427_p3 = ((ap_phi_mux_icmp_ln1975781_phi_fu_333_p4[0:0] == 1'b1) ? add_ln19756_fu_399_p2 : v1507176_fu_120);
assign v15072_fu_449_p3 = ((or_ln19756_fu_421_p2[0:0] == 1'b1) ? select_ln19756_fu_405_p3 : add_ln19757_fu_435_p2);
assign v15073_fu_545_p2 = (v15073_mid2_fu_441_p3 + 5'd2);
assign v15073_mid2_fu_441_p3 = ((or_ln19756_fu_421_p2[0:0] == 1'b1) ? select_ln19756_1_fu_413_p3 : 5'd0);
assign v15082_fu_681_p0 = grp_fu_761_p3;
assign v15082_fu_681_p2 = ((v15082_fu_681_p0 == 8'd127) ? 1'b1 : 1'b0);
assign v15092_fu_701_p0 = grp_fu_771_p3;
assign v15092_fu_701_p2 = ((v15092_fu_701_p0 == 8'd127) ? 1'b1 : 1'b0);
assign v15102_fu_721_p0 = grp_fu_781_p3;
assign v15102_fu_721_p2 = ((v15102_fu_721_p0 == 8'd127) ? 1'b1 : 1'b0);
assign v15112_fu_741_p0 = grp_fu_791_p3;
assign v15112_fu_741_p2 = ((v15112_fu_741_p0 == 8'd127) ? 1'b1 : 1'b0);
assign v15153_1_address0 = zext_ln19804_4_reg_899_pp0_iter3_reg;
assign v15153_1_ce0 = v15153_1_ce0_local;
assign v15153_2_address0 = zext_ln19804_4_reg_899_pp0_iter3_reg;
assign v15153_2_ce0 = v15153_2_ce0_local;
assign v15153_3_address0 = zext_ln19804_4_reg_899_pp0_iter3_reg;
assign v15153_3_ce0 = v15153_3_ce0_local;
assign v15153_address0 = zext_ln19804_4_reg_899_pp0_iter3_reg;
assign v15153_ce0 = v15153_ce0_local;
assign v15154_1_address0 = zext_ln19804_4_fu_673_p1;
assign v15154_1_ce0 = v15154_1_ce0_local;
assign v15154_2_address0 = zext_ln19804_4_fu_673_p1;
assign v15154_2_ce0 = v15154_2_ce0_local;
assign v15154_3_address0 = zext_ln19804_4_fu_673_p1;
assign v15154_3_ce0 = v15154_3_ce0_local;
assign v15154_address0 = zext_ln19804_4_fu_673_p1;
assign v15154_ce0 = v15154_ce0_local;
assign v15155_1_address0 = zext_ln19804_4_reg_899_pp0_iter5_reg;
assign v15155_1_ce0 = v15155_1_ce0_local;
assign v15155_1_d0 = select_ln19793_fu_734_p3;
assign v15155_1_we0 = v15155_1_we0_local;
assign v15155_2_address0 = zext_ln19804_4_reg_899_pp0_iter5_reg;
assign v15155_2_ce0 = v15155_2_ce0_local;
assign v15155_2_d0 = select_ln19782_fu_714_p3;
assign v15155_2_we0 = v15155_2_we0_local;
assign v15155_3_address0 = zext_ln19804_4_reg_899_pp0_iter5_reg;
assign v15155_3_ce0 = v15155_3_ce0_local;
assign v15155_3_d0 = select_ln19771_fu_694_p3;
assign v15155_3_we0 = v15155_3_we0_local;
assign v15155_address0 = zext_ln19804_4_reg_899_pp0_iter5_reg;
assign v15155_ce0 = v15155_ce0_local;
assign v15155_d0 = select_ln19804_fu_754_p3;
assign v15155_we0 = v15155_we0_local;
assign v15626_address0 = p_cast2_fu_635_p1;
assign zext_ln19804_1_fu_521_p1 = lshr_ln_fu_511_p4;
assign zext_ln19804_2_fu_654_p1 = tmp_99_fu_640_p3;
assign zext_ln19804_3_fu_664_p1 = lshr_ln18_reg_875;
assign zext_ln19804_4_fu_673_p1 = add_ln19804_1_fu_667_p2;
assign zext_ln19804_fu_473_p1 = tmp_fu_465_p3;
assign zext_ln19859_1_cast_fu_355_p1 = zext_ln19859_1;
assign zext_ln19859_cast_fu_351_p1 = zext_ln19859;
always @ (posedge ap_clk) begin
    zext_ln19859_cast_reg_849[8:2] <= 7'b0000000;
    zext_ln19859_1_cast_reg_854[6:3] <= 4'b0000;
    zext_ln19804_4_reg_899[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln19804_4_reg_899_pp0_iter3_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln19804_4_reg_899_pp0_iter4_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln19804_4_reg_899_pp0_iter5_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
end
endmodule 