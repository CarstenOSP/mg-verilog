module forward_dataflow_in_loop_VITIS_LOOP_18263_1_Loop_VITIS_LOOP_18108_1_proc_Pipeline_VITIS_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v14173_address0,v14173_ce0,v14173_q0,v14175_address0,v14175_ce0,v14175_we0,v14175_d0,v14175_1_address0,v14175_1_ce0,v14175_1_we0,v14175_1_d0,v14175_2_address0,v14175_2_ce0,v14175_2_we0,v14175_2_d0,v14175_3_address0,v14175_3_ce0,v14175_3_we0,v14175_3_d0,v14174_3_address0,v14174_3_ce0,v14174_3_q0,v14172_3_address0,v14172_3_ce0,v14172_3_q0,v14174_2_address0,v14174_2_ce0,v14174_2_q0,v14172_2_address0,v14172_2_ce0,v14172_2_q0,v14174_1_address0,v14174_1_ce0,v14174_1_q0,v14172_1_address0,v14172_1_ce0,v14172_1_q0,v14174_address0,v14174_ce0,v14174_q0,v14172_address0,v14172_ce0,v14172_q0,brmerge_i); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] v14173_address0;
output   v14173_ce0;
input  [7:0] v14173_q0;
output  [12:0] v14175_address0;
output   v14175_ce0;
output   v14175_we0;
output  [7:0] v14175_d0;
output  [12:0] v14175_1_address0;
output   v14175_1_ce0;
output   v14175_1_we0;
output  [7:0] v14175_1_d0;
output  [12:0] v14175_2_address0;
output   v14175_2_ce0;
output   v14175_2_we0;
output  [7:0] v14175_2_d0;
output  [12:0] v14175_3_address0;
output   v14175_3_ce0;
output   v14175_3_we0;
output  [7:0] v14175_3_d0;
output  [12:0] v14174_3_address0;
output   v14174_3_ce0;
input  [7:0] v14174_3_q0;
output  [12:0] v14172_3_address0;
output   v14172_3_ce0;
input  [7:0] v14172_3_q0;
output  [12:0] v14174_2_address0;
output   v14174_2_ce0;
input  [7:0] v14174_2_q0;
output  [12:0] v14172_2_address0;
output   v14172_2_ce0;
input  [7:0] v14172_2_q0;
output  [12:0] v14174_1_address0;
output   v14174_1_ce0;
input  [7:0] v14174_1_q0;
output  [12:0] v14172_1_address0;
output   v14172_1_ce0;
input  [7:0] v14172_1_q0;
output  [12:0] v14174_address0;
output   v14174_ce0;
input  [7:0] v14174_q0;
output  [12:0] v14172_address0;
output   v14172_ce0;
input  [7:0] v14172_q0;
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
wire   [0:0] icmp_ln18108_fu_513_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1810981_reg_295;
reg   [0:0] icmp_ln1811080_reg_306;
wire   [0:0] brmerge_i_read_reg_744;
wire    ap_block_pp0_stage0_11001;
wire   [5:0] v14083_fu_385_p3;
reg   [5:0] v14083_reg_752;
wire   [9:0] add_ln18156_fu_455_p2;
reg   [9:0] add_ln18156_reg_757;
wire   [8:0] trunc_ln18156_fu_461_p1;
reg   [8:0] trunc_ln18156_reg_762;
reg   [3:0] lshr_ln38_reg_767;
wire   [0:0] icmp_ln18110_fu_501_p2;
reg   [0:0] icmp_ln18110_reg_772;
wire   [0:0] icmp_ln18109_fu_507_p2;
reg   [0:0] icmp_ln18109_reg_777;
reg   [0:0] icmp_ln18108_reg_782;
wire   [63:0] zext_ln18156_4_fu_581_p1;
reg   [63:0] zext_ln18156_4_reg_791;
reg   [63:0] zext_ln18156_4_reg_791_pp0_iter3_reg;
reg   [63:0] zext_ln18156_4_reg_791_pp0_iter4_reg;
reg   [63:0] zext_ln18156_4_reg_791_pp0_iter5_reg;
reg   [0:0] ap_phi_mux_icmp_ln1810981_phi_fu_299_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1811080_phi_fu_310_p4;
wire   [63:0] zext_ln18108_fu_544_p1;
reg   [12:0] indvar_flatten1275_fu_100;
wire   [12:0] add_ln18108_1_fu_495_p2;
reg   [5:0] v1408376_fu_104;
reg   [7:0] indvar_flatten77_fu_108;
wire   [7:0] select_ln18109_1_fu_487_p3;
reg   [4:0] v1408478_fu_112;
wire   [4:0] v14084_fu_407_p3;
reg   [4:0] v1408579_fu_116;
wire   [4:0] v14085_fu_475_p2;
reg    v14173_ce0_local;
reg    v14174_3_ce0_local;
reg    v14174_2_ce0_local;
reg    v14174_1_ce0_local;
reg    v14174_ce0_local;
reg    v14172_3_ce0_local;
reg    v14172_2_ce0_local;
reg    v14172_1_ce0_local;
reg    v14172_ce0_local;
reg    v14175_3_we0_local;
wire   [7:0] select_ln18123_fu_602_p3;
reg    v14175_3_ce0_local;
reg    v14175_2_we0_local;
wire   [7:0] select_ln18134_fu_622_p3;
reg    v14175_2_ce0_local;
reg    v14175_1_we0_local;
wire   [7:0] select_ln18145_fu_642_p3;
reg    v14175_1_ce0_local;
reg    v14175_we0_local;
wire   [7:0] select_ln18156_fu_662_p3;
reg    v14175_ce0_local;
wire   [5:0] add_ln18108_fu_357_p2;
wire   [4:0] select_ln18108_fu_363_p3;
wire   [0:0] or_ln18108_fu_379_p2;
wire   [4:0] select_ln18108_1_fu_371_p3;
wire   [4:0] add_ln18109_fu_393_p2;
wire   [6:0] tmp_fu_423_p3;
wire   [9:0] p_shl15_fu_415_p3;
wire   [9:0] zext_ln18156_fu_431_p1;
wire   [3:0] lshr_ln_fu_441_p4;
wire   [9:0] sub_ln18156_fu_435_p2;
wire   [9:0] zext_ln18156_1_fu_451_p1;
wire   [4:0] v14085_mid2_fu_399_p3;
wire   [7:0] add_ln18109_1_fu_481_p2;
wire   [10:0] tmp_219_fu_548_p3;
wire   [12:0] tmp_220_fu_555_p3;
wire   [12:0] zext_ln18156_2_fu_562_p1;
wire   [12:0] sub_ln18111_fu_566_p2;
wire   [12:0] zext_ln18156_3_fu_572_p1;
wire   [12:0] add_ln18156_1_fu_575_p2;
wire  signed [7:0] v14094_fu_589_p0;
wire   [7:0] grp_fu_669_p3;
wire   [0:0] v14094_fu_589_p2;
wire  signed [7:0] select_ln18123_fu_602_p1;
wire   [7:0] select_ln18123_1_fu_594_p3;
wire  signed [7:0] v14104_fu_609_p0;
wire   [7:0] grp_fu_679_p3;
wire   [0:0] v14104_fu_609_p2;
wire  signed [7:0] select_ln18134_fu_622_p1;
wire   [7:0] select_ln18134_1_fu_614_p3;
wire  signed [7:0] v14114_fu_629_p0;
wire   [7:0] grp_fu_689_p3;
wire   [0:0] v14114_fu_629_p2;
wire  signed [7:0] select_ln18145_fu_642_p1;
wire   [7:0] select_ln18145_1_fu_634_p3;
wire  signed [7:0] v14124_fu_649_p0;
wire   [7:0] grp_fu_699_p3;
wire   [0:0] v14124_fu_649_p2;
wire  signed [7:0] select_ln18156_fu_662_p1;
wire   [7:0] select_ln18156_1_fu_654_p3;
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
#0 indvar_flatten1275_fu_100 = 13'd0;
#0 v1408376_fu_104 = 6'd0;
#0 indvar_flatten77_fu_108 = 8'd0;
#0 v1408478_fu_112 = 5'd0;
#0 v1408579_fu_116 = 5'd0;
#0 ap_done_reg = 1'b0;
end
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U1679(.clk(ap_clk),.reset(ap_rst),.din0(v14174_3_q0),.din1(v14173_q0),.din2(v14172_3_q0),.ce(1'b1),.dout(grp_fu_669_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U1680(.clk(ap_clk),.reset(ap_rst),.din0(v14174_2_q0),.din1(v14173_q0),.din2(v14172_2_q0),.ce(1'b1),.dout(grp_fu_679_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U1681(.clk(ap_clk),.reset(ap_rst),.din0(v14174_1_q0),.din1(v14173_q0),.din2(v14172_1_q0),.ce(1'b1),.dout(grp_fu_689_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U1682(.clk(ap_clk),.reset(ap_rst),.din0(v14174_q0),.din1(v14173_q0),.din2(v14172_q0),.ce(1'b1),.dout(grp_fu_699_p3));
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln18108_reg_782 == 1'd0))) begin
        icmp_ln1810981_reg_295 <= icmp_ln18109_reg_777;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln1810981_reg_295 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln18108_reg_782 == 1'd0))) begin
        icmp_ln1811080_reg_306 <= icmp_ln18110_reg_772;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln1811080_reg_306 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1275_fu_100 <= 13'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten1275_fu_100 <= add_ln18108_1_fu_495_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten77_fu_108 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten77_fu_108 <= select_ln18109_1_fu_487_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1408376_fu_104 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1408376_fu_104 <= v14083_fu_385_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1408478_fu_112 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1408478_fu_112 <= v14084_fu_407_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1408579_fu_116 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1408579_fu_116 <= v14085_fu_475_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln18156_reg_757 <= add_ln18156_fu_455_p2;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        icmp_ln18108_reg_782 <= icmp_ln18108_fu_513_p2;
        lshr_ln38_reg_767 <= {{v14085_mid2_fu_399_p3[4:1]}};
        trunc_ln18156_reg_762 <= trunc_ln18156_fu_461_p1;
        v14083_reg_752 <= v14083_fu_385_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        zext_ln18156_4_reg_791[12 : 0] <= zext_ln18156_4_fu_581_p1[12 : 0];
        zext_ln18156_4_reg_791_pp0_iter3_reg[12 : 0] <= zext_ln18156_4_reg_791[12 : 0];
        zext_ln18156_4_reg_791_pp0_iter4_reg[12 : 0] <= zext_ln18156_4_reg_791_pp0_iter3_reg[12 : 0];
        zext_ln18156_4_reg_791_pp0_iter5_reg[12 : 0] <= zext_ln18156_4_reg_791_pp0_iter4_reg[12 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln18109_reg_777 <= icmp_ln18109_fu_507_p2;
        icmp_ln18110_reg_772 <= icmp_ln18110_fu_501_p2;
    end
end
always @ (*) begin
    if (((icmp_ln18108_fu_513_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln18108_reg_782 == 1'd0))) begin
        ap_phi_mux_icmp_ln1810981_phi_fu_299_p4 = icmp_ln18109_reg_777;
    end else begin
        ap_phi_mux_icmp_ln1810981_phi_fu_299_p4 = icmp_ln1810981_reg_295;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln18108_reg_782 == 1'd0))) begin
        ap_phi_mux_icmp_ln1811080_phi_fu_310_p4 = icmp_ln18110_reg_772;
    end else begin
        ap_phi_mux_icmp_ln1811080_phi_fu_310_p4 = icmp_ln1811080_reg_306;
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
        v14172_1_ce0_local = 1'b1;
    end else begin
        v14172_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v14172_2_ce0_local = 1'b1;
    end else begin
        v14172_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v14172_3_ce0_local = 1'b1;
    end else begin
        v14172_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v14172_ce0_local = 1'b1;
    end else begin
        v14172_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14173_ce0_local = 1'b1;
    end else begin
        v14173_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14174_1_ce0_local = 1'b1;
    end else begin
        v14174_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14174_2_ce0_local = 1'b1;
    end else begin
        v14174_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14174_3_ce0_local = 1'b1;
    end else begin
        v14174_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14174_ce0_local = 1'b1;
    end else begin
        v14174_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v14175_1_ce0_local = 1'b1;
    end else begin
        v14175_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v14175_1_we0_local = 1'b1;
    end else begin
        v14175_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v14175_2_ce0_local = 1'b1;
    end else begin
        v14175_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v14175_2_we0_local = 1'b1;
    end else begin
        v14175_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v14175_3_ce0_local = 1'b1;
    end else begin
        v14175_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v14175_3_we0_local = 1'b1;
    end else begin
        v14175_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v14175_ce0_local = 1'b1;
    end else begin
        v14175_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v14175_we0_local = 1'b1;
    end else begin
        v14175_we0_local = 1'b0;
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
assign add_ln18108_1_fu_495_p2 = (indvar_flatten1275_fu_100 + 13'd1);
assign add_ln18108_fu_357_p2 = (v1408376_fu_104 + 6'd1);
assign add_ln18109_1_fu_481_p2 = (indvar_flatten77_fu_108 + 8'd1);
assign add_ln18109_fu_393_p2 = (select_ln18108_fu_363_p3 + 5'd2);
assign add_ln18156_1_fu_575_p2 = (sub_ln18111_fu_566_p2 + zext_ln18156_3_fu_572_p1);
assign add_ln18156_fu_455_p2 = (sub_ln18156_fu_435_p2 + zext_ln18156_1_fu_451_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign brmerge_i_read_reg_744 = brmerge_i;
assign icmp_ln18108_fu_513_p2 = ((indvar_flatten1275_fu_100 == 13'd6271) ? 1'b1 : 1'b0);
assign icmp_ln18109_fu_507_p2 = ((select_ln18109_1_fu_487_p3 == 8'd196) ? 1'b1 : 1'b0);
assign icmp_ln18110_fu_501_p2 = ((v14085_fu_475_p2 < 5'd28) ? 1'b1 : 1'b0);
assign lshr_ln_fu_441_p4 = {{v14084_fu_407_p3[4:1]}};
assign or_ln18108_fu_379_p2 = (ap_phi_mux_icmp_ln1811080_phi_fu_310_p4 | ap_phi_mux_icmp_ln1810981_phi_fu_299_p4);
assign p_shl15_fu_415_p3 = {{v14083_fu_385_p3}, {4'd0}};
assign select_ln18108_1_fu_371_p3 = ((ap_phi_mux_icmp_ln1810981_phi_fu_299_p4[0:0] == 1'b1) ? 5'd0 : v1408579_fu_116);
assign select_ln18108_fu_363_p3 = ((ap_phi_mux_icmp_ln1810981_phi_fu_299_p4[0:0] == 1'b1) ? 5'd0 : v1408478_fu_112);
assign select_ln18109_1_fu_487_p3 = ((ap_phi_mux_icmp_ln1810981_phi_fu_299_p4[0:0] == 1'b1) ? 8'd1 : add_ln18109_1_fu_481_p2);
assign select_ln18123_1_fu_594_p3 = ((v14094_fu_589_p2[0:0] == 1'b1) ? 8'd127 : 8'd126);
assign select_ln18123_fu_602_p1 = grp_fu_669_p3;
assign select_ln18123_fu_602_p3 = ((brmerge_i[0:0] == 1'b1) ? select_ln18123_fu_602_p1 : select_ln18123_1_fu_594_p3);
assign select_ln18134_1_fu_614_p3 = ((v14104_fu_609_p2[0:0] == 1'b1) ? 8'd127 : 8'd126);
assign select_ln18134_fu_622_p1 = grp_fu_679_p3;
assign select_ln18134_fu_622_p3 = ((brmerge_i[0:0] == 1'b1) ? select_ln18134_fu_622_p1 : select_ln18134_1_fu_614_p3);
assign select_ln18145_1_fu_634_p3 = ((v14114_fu_629_p2[0:0] == 1'b1) ? 8'd127 : 8'd126);
assign select_ln18145_fu_642_p1 = grp_fu_689_p3;
assign select_ln18145_fu_642_p3 = ((brmerge_i[0:0] == 1'b1) ? select_ln18145_fu_642_p1 : select_ln18145_1_fu_634_p3);
assign select_ln18156_1_fu_654_p3 = ((v14124_fu_649_p2[0:0] == 1'b1) ? 8'd127 : 8'd126);
assign select_ln18156_fu_662_p1 = grp_fu_699_p3;
assign select_ln18156_fu_662_p3 = ((brmerge_i[0:0] == 1'b1) ? select_ln18156_fu_662_p1 : select_ln18156_1_fu_654_p3);
assign sub_ln18111_fu_566_p2 = (tmp_220_fu_555_p3 - zext_ln18156_2_fu_562_p1);
assign sub_ln18156_fu_435_p2 = (p_shl15_fu_415_p3 - zext_ln18156_fu_431_p1);
assign tmp_219_fu_548_p3 = {{add_ln18156_reg_757}, {1'd0}};
assign tmp_220_fu_555_p3 = {{trunc_ln18156_reg_762}, {4'd0}};
assign tmp_fu_423_p3 = {{v14083_fu_385_p3}, {1'd0}};
assign trunc_ln18156_fu_461_p1 = add_ln18156_fu_455_p2[8:0];
assign v14083_fu_385_p3 = ((ap_phi_mux_icmp_ln1810981_phi_fu_299_p4[0:0] == 1'b1) ? add_ln18108_fu_357_p2 : v1408376_fu_104);
assign v14084_fu_407_p3 = ((or_ln18108_fu_379_p2[0:0] == 1'b1) ? select_ln18108_fu_363_p3 : add_ln18109_fu_393_p2);
assign v14085_fu_475_p2 = (v14085_mid2_fu_399_p3 + 5'd2);
assign v14085_mid2_fu_399_p3 = ((or_ln18108_fu_379_p2[0:0] == 1'b1) ? select_ln18108_1_fu_371_p3 : 5'd0);
assign v14094_fu_589_p0 = grp_fu_669_p3;
assign v14094_fu_589_p2 = ((v14094_fu_589_p0 == 8'd127) ? 1'b1 : 1'b0);
assign v14104_fu_609_p0 = grp_fu_679_p3;
assign v14104_fu_609_p2 = ((v14104_fu_609_p0 == 8'd127) ? 1'b1 : 1'b0);
assign v14114_fu_629_p0 = grp_fu_689_p3;
assign v14114_fu_629_p2 = ((v14114_fu_629_p0 == 8'd127) ? 1'b1 : 1'b0);
assign v14124_fu_649_p0 = grp_fu_699_p3;
assign v14124_fu_649_p2 = ((v14124_fu_649_p0 == 8'd127) ? 1'b1 : 1'b0);
assign v14172_1_address0 = zext_ln18156_4_reg_791_pp0_iter3_reg;
assign v14172_1_ce0 = v14172_1_ce0_local;
assign v14172_2_address0 = zext_ln18156_4_reg_791_pp0_iter3_reg;
assign v14172_2_ce0 = v14172_2_ce0_local;
assign v14172_3_address0 = zext_ln18156_4_reg_791_pp0_iter3_reg;
assign v14172_3_ce0 = v14172_3_ce0_local;
assign v14172_address0 = zext_ln18156_4_reg_791_pp0_iter3_reg;
assign v14172_ce0 = v14172_ce0_local;
assign v14173_address0 = zext_ln18108_fu_544_p1;
assign v14173_ce0 = v14173_ce0_local;
assign v14174_1_address0 = zext_ln18156_4_fu_581_p1;
assign v14174_1_ce0 = v14174_1_ce0_local;
assign v14174_2_address0 = zext_ln18156_4_fu_581_p1;
assign v14174_2_ce0 = v14174_2_ce0_local;
assign v14174_3_address0 = zext_ln18156_4_fu_581_p1;
assign v14174_3_ce0 = v14174_3_ce0_local;
assign v14174_address0 = zext_ln18156_4_fu_581_p1;
assign v14174_ce0 = v14174_ce0_local;
assign v14175_1_address0 = zext_ln18156_4_reg_791_pp0_iter5_reg;
assign v14175_1_ce0 = v14175_1_ce0_local;
assign v14175_1_d0 = select_ln18145_fu_642_p3;
assign v14175_1_we0 = v14175_1_we0_local;
assign v14175_2_address0 = zext_ln18156_4_reg_791_pp0_iter5_reg;
assign v14175_2_ce0 = v14175_2_ce0_local;
assign v14175_2_d0 = select_ln18134_fu_622_p3;
assign v14175_2_we0 = v14175_2_we0_local;
assign v14175_3_address0 = zext_ln18156_4_reg_791_pp0_iter5_reg;
assign v14175_3_ce0 = v14175_3_ce0_local;
assign v14175_3_d0 = select_ln18123_fu_602_p3;
assign v14175_3_we0 = v14175_3_we0_local;
assign v14175_address0 = zext_ln18156_4_reg_791_pp0_iter5_reg;
assign v14175_ce0 = v14175_ce0_local;
assign v14175_d0 = select_ln18156_fu_662_p3;
assign v14175_we0 = v14175_we0_local;
assign zext_ln18108_fu_544_p1 = v14083_reg_752;
assign zext_ln18156_1_fu_451_p1 = lshr_ln_fu_441_p4;
assign zext_ln18156_2_fu_562_p1 = tmp_219_fu_548_p3;
assign zext_ln18156_3_fu_572_p1 = lshr_ln38_reg_767;
assign zext_ln18156_4_fu_581_p1 = add_ln18156_1_fu_575_p2;
assign zext_ln18156_fu_431_p1 = tmp_fu_423_p3;
always @ (posedge ap_clk) begin
    zext_ln18156_4_reg_791[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln18156_4_reg_791_pp0_iter3_reg[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln18156_4_reg_791_pp0_iter4_reg[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln18156_4_reg_791_pp0_iter5_reg[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
end
endmodule 