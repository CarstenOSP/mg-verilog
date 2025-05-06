
module forward_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v243_1_i_address0,v243_1_i_ce0,v243_1_i_q0,v243_i_address0,v243_i_ce0,v243_i_q0,mul_i47_i_i,v242_7_i_address0,v242_7_i_ce0,v242_7_i_q0,v242_6_i_address0,v242_6_i_ce0,v242_6_i_q0,v242_5_i_address0,v242_5_i_ce0,v242_5_i_q0,v242_4_i_address0,v242_4_i_ce0,v242_4_i_q0,v242_3_i_address0,v242_3_i_ce0,v242_3_i_q0,v242_2_i_address0,v242_2_i_ce0,v242_2_i_q0,v242_1_i_address0,v242_1_i_ce0,v242_1_i_q0,v242_i_address0,v242_i_ce0,v242_i_q0,v241_3_i_address0,v241_3_i_ce0,v241_3_i_q0,v244_3_i_address0,v244_3_i_ce0,v244_3_i_we0,v244_3_i_d0,v244_3_i_address1,v244_3_i_ce1,v244_3_i_q1,v241_2_i_address0,v241_2_i_ce0,v241_2_i_q0,v244_2_i_address0,v244_2_i_ce0,v244_2_i_we0,v244_2_i_d0,v244_2_i_address1,v244_2_i_ce1,v244_2_i_q1,v241_1_i_address0,v241_1_i_ce0,v241_1_i_q0,v244_1_i_address0,v244_1_i_ce0,v244_1_i_we0,v244_1_i_d0,v244_1_i_address1,v244_1_i_ce1,v244_1_i_q1,v241_i_address0,v241_i_ce0,v241_i_q0,v244_i_address0,v244_i_ce0,v244_i_we0,v244_i_d0,v244_i_address1,v244_i_ce1,v244_i_q1,v240_3_i_address0,v240_3_i_ce0,v240_3_i_q0,v240_2_i_address0,v240_2_i_ce0,v240_2_i_q0,v240_1_i_address0,v240_1_i_ce0,v240_1_i_q0,v240_i_address0,v240_i_ce0,v240_i_q0,v239_3_i_address0,v239_3_i_ce0,v239_3_i_we0,v239_3_i_d0,v239_2_i_address0,v239_2_i_ce0,v239_2_i_we0,v239_2_i_d0,v239_1_i_address0,v239_1_i_ce0,v239_1_i_we0,v239_1_i_d0,v239_i_address0,v239_i_ce0,v239_i_we0,v239_i_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] v243_1_i_address0;
output   v243_1_i_ce0;
input  [7:0] v243_1_i_q0;
output  [3:0] v243_i_address0;
output   v243_i_ce0;
input  [7:0] v243_i_q0;
input  [12:0] mul_i47_i_i;
output  [6:0] v242_7_i_address0;
output   v242_7_i_ce0;
input  [7:0] v242_7_i_q0;
output  [6:0] v242_6_i_address0;
output   v242_6_i_ce0;
input  [7:0] v242_6_i_q0;
output  [6:0] v242_5_i_address0;
output   v242_5_i_ce0;
input  [7:0] v242_5_i_q0;
output  [6:0] v242_4_i_address0;
output   v242_4_i_ce0;
input  [7:0] v242_4_i_q0;
output  [6:0] v242_3_i_address0;
output   v242_3_i_ce0;
input  [7:0] v242_3_i_q0;
output  [6:0] v242_2_i_address0;
output   v242_2_i_ce0;
input  [7:0] v242_2_i_q0;
output  [6:0] v242_1_i_address0;
output   v242_1_i_ce0;
input  [7:0] v242_1_i_q0;
output  [6:0] v242_i_address0;
output   v242_i_ce0;
input  [7:0] v242_i_q0;
output  [2:0] v241_3_i_address0;
output   v241_3_i_ce0;
input  [7:0] v241_3_i_q0;
output  [2:0] v244_3_i_address0;
output   v244_3_i_ce0;
output   v244_3_i_we0;
output  [7:0] v244_3_i_d0;
output  [2:0] v244_3_i_address1;
output   v244_3_i_ce1;
input  [7:0] v244_3_i_q1;
output  [2:0] v241_2_i_address0;
output   v241_2_i_ce0;
input  [7:0] v241_2_i_q0;
output  [2:0] v244_2_i_address0;
output   v244_2_i_ce0;
output   v244_2_i_we0;
output  [7:0] v244_2_i_d0;
output  [2:0] v244_2_i_address1;
output   v244_2_i_ce1;
input  [7:0] v244_2_i_q1;
output  [2:0] v241_1_i_address0;
output   v241_1_i_ce0;
input  [7:0] v241_1_i_q0;
output  [2:0] v244_1_i_address0;
output   v244_1_i_ce0;
output   v244_1_i_we0;
output  [7:0] v244_1_i_d0;
output  [2:0] v244_1_i_address1;
output   v244_1_i_ce1;
input  [7:0] v244_1_i_q1;
output  [2:0] v241_i_address0;
output   v241_i_ce0;
input  [7:0] v241_i_q0;
output  [2:0] v244_i_address0;
output   v244_i_ce0;
output   v244_i_we0;
output  [7:0] v244_i_d0;
output  [2:0] v244_i_address1;
output   v244_i_ce1;
input  [7:0] v244_i_q1;
output  [2:0] v240_3_i_address0;
output   v240_3_i_ce0;
input  [7:0] v240_3_i_q0;
output  [2:0] v240_2_i_address0;
output   v240_2_i_ce0;
input  [7:0] v240_2_i_q0;
output  [2:0] v240_1_i_address0;
output   v240_1_i_ce0;
input  [7:0] v240_1_i_q0;
output  [2:0] v240_i_address0;
output   v240_i_ce0;
input  [7:0] v240_i_q0;
output  [2:0] v239_3_i_address0;
output   v239_3_i_ce0;
output   v239_3_i_we0;
output  [6:0] v239_3_i_d0;
output  [2:0] v239_2_i_address0;
output   v239_2_i_ce0;
output   v239_2_i_we0;
output  [6:0] v239_2_i_d0;
output  [2:0] v239_1_i_address0;
output   v239_1_i_ce0;
output   v239_1_i_we0;
output  [6:0] v239_1_i_d0;
output  [2:0] v239_i_address0;
output   v239_i_ce0;
output   v239_i_we0;
output  [6:0] v239_i_d0;
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
wire   [0:0] icmp_ln264_fu_637_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] zext_ln264_fu_558_p1;
reg   [63:0] zext_ln264_reg_894;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] cmp13_i_i_i_fu_563_p2;
reg   [0:0] cmp13_i_i_i_reg_899;
reg   [0:0] cmp13_i_i_i_reg_899_pp0_iter1_reg;
reg   [0:0] cmp13_i_i_i_reg_899_pp0_iter2_reg;
reg   [0:0] cmp13_i_i_i_reg_899_pp0_iter3_reg;
wire   [0:0] cmp105_i_i_i_fu_579_p2;
reg   [0:0] cmp105_i_i_i_reg_912;
reg   [0:0] cmp105_i_i_i_reg_912_pp0_iter1_reg;
reg   [0:0] cmp105_i_i_i_reg_912_pp0_iter2_reg;
reg   [0:0] cmp105_i_i_i_reg_912_pp0_iter3_reg;
reg   [0:0] cmp105_i_i_i_reg_912_pp0_iter4_reg;
wire   [2:0] lshr_ln7_fu_585_p4;
reg   [2:0] lshr_ln7_reg_916;
reg   [2:0] lshr_ln7_reg_916_pp0_iter1_reg;
reg   [2:0] lshr_ln7_reg_916_pp0_iter2_reg;
wire   [63:0] zext_ln269_fu_603_p1;
reg   [63:0] zext_ln269_reg_921;
wire   [0:0] xor_ln266_fu_631_p2;
reg   [0:0] xor_ln266_reg_949;
reg   [0:0] icmp_ln264_reg_954;
wire   [7:0] mul_ln313_fu_658_p2;
reg   [7:0] mul_ln313_reg_1011;
wire   [7:0] mul_ln331_fu_664_p2;
reg   [7:0] mul_ln331_reg_1016;
wire   [7:0] mul_ln349_fu_670_p2;
reg   [7:0] mul_ln349_reg_1021;
wire   [7:0] mul_ln367_fu_676_p2;
reg   [7:0] mul_ln367_reg_1026;
wire   [63:0] zext_ln268_fu_682_p1;
reg   [63:0] zext_ln268_reg_1031;
reg   [63:0] zext_ln268_reg_1031_pp0_iter4_reg;
reg   [2:0] v244_3_i_addr_reg_1044;
reg   [2:0] v244_2_i_addr_reg_1055;
reg   [2:0] v244_1_i_addr_reg_1066;
reg   [2:0] v244_i_addr_reg_1077;
wire   [0:0] icmp_ln320_fu_755_p2;
reg   [0:0] icmp_ln320_reg_1103;
wire   [6:0] trunc_ln320_fu_761_p1;
reg   [6:0] trunc_ln320_reg_1108;
wire   [0:0] v162_fu_771_p2;
reg   [0:0] v162_reg_1113;
wire   [6:0] trunc_ln338_fu_777_p1;
reg   [6:0] trunc_ln338_reg_1118;
wire   [0:0] v176_fu_787_p2;
reg   [0:0] v176_reg_1123;
wire   [6:0] trunc_ln356_fu_793_p1;
reg   [6:0] trunc_ln356_reg_1128;
wire   [0:0] v190_fu_803_p2;
reg   [0:0] v190_reg_1133;
wire   [6:0] trunc_ln374_fu_809_p1;
reg   [6:0] trunc_ln374_reg_1138;
reg   [0:0] ap_phi_mux_icmp_ln266156_phi_fu_491_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [6:0] indvar_flatten153_fu_116;
wire   [6:0] add_ln264_1_fu_611_p2;
reg   [6:0] ap_sig_allocacmp_indvar_flatten153_load;
reg   [5:0] v95154_fu_120;
wire   [5:0] v95_fu_536_p3;
reg   [5:0] ap_sig_allocacmp_v95154_load;
reg   [5:0] v96155_fu_124;
wire   [5:0] v96_fu_617_p2;
reg   [5:0] ap_sig_allocacmp_v96155_load;
reg    v243_i_ce0_local;
reg    v242_3_i_ce0_local;
reg    v242_2_i_ce0_local;
reg    v242_1_i_ce0_local;
reg    v242_i_ce0_local;
reg    v243_1_i_ce0_local;
reg    v242_7_i_ce0_local;
reg    v242_6_i_ce0_local;
reg    v242_5_i_ce0_local;
reg    v242_4_i_ce0_local;
reg    v241_3_i_ce0_local;
reg    v244_3_i_ce1_local;
reg    v244_3_i_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v142_fu_725_p2;
reg    v244_3_i_ce0_local;
reg    v241_2_i_ce0_local;
reg    v244_2_i_ce1_local;
reg    v244_2_i_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v156_fu_731_p2;
reg    v244_2_i_ce0_local;
reg    v241_1_i_ce0_local;
reg    v244_1_i_ce1_local;
reg    v244_1_i_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v170_fu_737_p2;
reg    v244_1_i_ce0_local;
reg    v241_i_ce0_local;
reg    v244_i_ce1_local;
reg    v244_i_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v184_fu_743_p2;
reg    v244_i_ce0_local;
reg    v240_3_i_ce0_local;
reg    v240_2_i_ce0_local;
reg    v240_1_i_ce0_local;
reg    v240_i_ce0_local;
reg    v239_3_i_we0_local;
wire   [6:0] select_ln321_fu_813_p3;
reg    v239_3_i_ce0_local;
reg    v239_2_i_we0_local;
wire   [6:0] v163_1_fu_820_p3;
reg    v239_2_i_ce0_local;
reg    v239_1_i_we0_local;
wire   [6:0] v177_1_fu_827_p3;
reg    v239_1_i_ce0_local;
reg    v239_i_we0_local;
wire   [6:0] v191_1_fu_834_p3;
reg    v239_i_ce0_local;
wire   [5:0] add_ln264_fu_522_p2;
wire   [3:0] lshr_ln_fu_548_p4;
wire   [4:0] trunc_ln264_fu_544_p1;
wire   [12:0] v95_cast10_cast_i_i_fu_569_p1;
wire   [12:0] empty_fu_573_p2;
wire   [5:0] select_ln264_fu_528_p3;
wire   [6:0] tmp_s_fu_595_p3;
wire   [0:0] tmp_fu_623_p3;
wire  signed [7:0] v142_fu_725_p0;
wire   [7:0] grp_fu_841_p3;
wire   [7:0] v101_fu_697_p3;
wire  signed [7:0] v156_fu_731_p0;
wire   [7:0] grp_fu_849_p3;
wire   [7:0] v110_fu_704_p3;
wire  signed [7:0] v170_fu_737_p0;
wire   [7:0] grp_fu_857_p3;
wire   [7:0] v119_fu_711_p3;
wire  signed [7:0] v184_fu_743_p0;
wire   [7:0] grp_fu_865_p3;
wire   [7:0] v128_fu_718_p3;
wire   [7:0] add_ln318_fu_749_p2;
wire   [7:0] v161_fu_765_p2;
wire   [7:0] v175_fu_781_p2;
wire   [7:0] v189_fu_797_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_751;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 indvar_flatten153_fu_116 = 7'd0;
#0 v95154_fu_120 = 6'd0;
#0 v96155_fu_124 = 6'd0;
#0 ap_done_reg = 1'b0;
end
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U9963(.din0(v242_7_i_q0),.din1(v243_1_i_q0),.dout(mul_ln313_fu_658_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U9964(.din0(v242_6_i_q0),.din1(v243_1_i_q0),.dout(mul_ln331_fu_664_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U9965(.din0(v242_5_i_q0),.din1(v243_1_i_q0),.dout(mul_ln349_fu_670_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U9966(.din0(v242_4_i_q0),.din1(v243_1_i_q0),.dout(mul_ln367_fu_676_p2));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9967(.clk(ap_clk),.reset(ap_rst),.din0(v242_3_i_q0),.din1(v243_i_q0),.din2(mul_ln313_reg_1011),.ce(1'b1),.dout(grp_fu_841_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9968(.clk(ap_clk),.reset(ap_rst),.din0(v242_2_i_q0),.din1(v243_i_q0),.din2(mul_ln331_reg_1016),.ce(1'b1),.dout(grp_fu_849_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9969(.clk(ap_clk),.reset(ap_rst),.din0(v242_1_i_q0),.din1(v243_i_q0),.din2(mul_ln349_reg_1021),.ce(1'b1),.dout(grp_fu_857_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9970(.clk(ap_clk),.reset(ap_rst),.din0(v242_i_q0),.din1(v243_i_q0),.din2(mul_ln367_reg_1026),.ce(1'b1),.dout(grp_fu_865_p3));
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter5_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten153_fu_116 <= add_ln264_1_fu_611_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten153_fu_116 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v95154_fu_120 <= v95_fu_536_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v95154_fu_120 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v96155_fu_124 <= v96_fu_617_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v96155_fu_124 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        cmp105_i_i_i_reg_912 <= cmp105_i_i_i_fu_579_p2;
        cmp105_i_i_i_reg_912_pp0_iter1_reg <= cmp105_i_i_i_reg_912;
        cmp13_i_i_i_reg_899 <= cmp13_i_i_i_fu_563_p2;
        cmp13_i_i_i_reg_899_pp0_iter1_reg <= cmp13_i_i_i_reg_899;
        icmp_ln264_reg_954 <= icmp_ln264_fu_637_p2;
        lshr_ln7_reg_916 <= {{select_ln264_fu_528_p3[4:2]}};
        lshr_ln7_reg_916_pp0_iter1_reg <= lshr_ln7_reg_916;
        zext_ln264_reg_894[3 : 0] <= zext_ln264_fu_558_p1[3 : 0];
        zext_ln269_reg_921[6 : 0] <= zext_ln269_fu_603_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        cmp105_i_i_i_reg_912_pp0_iter2_reg <= cmp105_i_i_i_reg_912_pp0_iter1_reg;
        cmp105_i_i_i_reg_912_pp0_iter3_reg <= cmp105_i_i_i_reg_912_pp0_iter2_reg;
        cmp105_i_i_i_reg_912_pp0_iter4_reg <= cmp105_i_i_i_reg_912_pp0_iter3_reg;
        cmp13_i_i_i_reg_899_pp0_iter2_reg <= cmp13_i_i_i_reg_899_pp0_iter1_reg;
        cmp13_i_i_i_reg_899_pp0_iter3_reg <= cmp13_i_i_i_reg_899_pp0_iter2_reg;
        icmp_ln320_reg_1103 <= icmp_ln320_fu_755_p2;
        lshr_ln7_reg_916_pp0_iter2_reg <= lshr_ln7_reg_916_pp0_iter1_reg;
        mul_ln313_reg_1011 <= mul_ln313_fu_658_p2;
        mul_ln331_reg_1016 <= mul_ln331_fu_664_p2;
        mul_ln349_reg_1021 <= mul_ln349_fu_670_p2;
        mul_ln367_reg_1026 <= mul_ln367_fu_676_p2;
        trunc_ln320_reg_1108 <= trunc_ln320_fu_761_p1;
        trunc_ln338_reg_1118 <= trunc_ln338_fu_777_p1;
        trunc_ln356_reg_1128 <= trunc_ln356_fu_793_p1;
        trunc_ln374_reg_1138 <= trunc_ln374_fu_809_p1;
        v162_reg_1113 <= v162_fu_771_p2;
        v176_reg_1123 <= v176_fu_787_p2;
        v190_reg_1133 <= v190_fu_803_p2;
        v244_1_i_addr_reg_1066 <= zext_ln268_fu_682_p1;
        v244_2_i_addr_reg_1055 <= zext_ln268_fu_682_p1;
        v244_3_i_addr_reg_1044 <= zext_ln268_fu_682_p1;
        v244_i_addr_reg_1077 <= zext_ln268_fu_682_p1;
        zext_ln268_reg_1031[2 : 0] <= zext_ln268_fu_682_p1[2 : 0];
        zext_ln268_reg_1031_pp0_iter4_reg[2 : 0] <= zext_ln268_reg_1031[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xor_ln266_reg_949 <= xor_ln266_fu_631_p2;
    end
end
always @ (*) begin
    if (((icmp_ln264_fu_637_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter5_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_751)) begin
            ap_phi_mux_icmp_ln266156_phi_fu_491_p4 = xor_ln266_reg_949;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln266156_phi_fu_491_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln266156_phi_fu_491_p4 = xor_ln266_reg_949;
        end
    end else begin
        ap_phi_mux_icmp_ln266156_phi_fu_491_p4 = xor_ln266_reg_949;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten153_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten153_load = indvar_flatten153_fu_116;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v95154_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v95154_load = v95154_fu_120;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v96155_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v96155_load = v96155_fu_124;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v239_1_i_ce0_local = 1'b1;
    end else begin
        v239_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (cmp105_i_i_i_reg_912_pp0_iter4_reg == 1'd1))) begin
        v239_1_i_we0_local = 1'b1;
    end else begin
        v239_1_i_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v239_2_i_ce0_local = 1'b1;
    end else begin
        v239_2_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (cmp105_i_i_i_reg_912_pp0_iter4_reg == 1'd1))) begin
        v239_2_i_we0_local = 1'b1;
    end else begin
        v239_2_i_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v239_3_i_ce0_local = 1'b1;
    end else begin
        v239_3_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (cmp105_i_i_i_reg_912_pp0_iter4_reg == 1'd1))) begin
        v239_3_i_we0_local = 1'b1;
    end else begin
        v239_3_i_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v239_i_ce0_local = 1'b1;
    end else begin
        v239_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (cmp105_i_i_i_reg_912_pp0_iter4_reg == 1'd1))) begin
        v239_i_we0_local = 1'b1;
    end else begin
        v239_i_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v240_1_i_ce0_local = 1'b1;
    end else begin
        v240_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v240_2_i_ce0_local = 1'b1;
    end else begin
        v240_2_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v240_3_i_ce0_local = 1'b1;
    end else begin
        v240_3_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v240_i_ce0_local = 1'b1;
    end else begin
        v240_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v241_1_i_ce0_local = 1'b1;
    end else begin
        v241_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v241_2_i_ce0_local = 1'b1;
    end else begin
        v241_2_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v241_3_i_ce0_local = 1'b1;
    end else begin
        v241_3_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v241_i_ce0_local = 1'b1;
    end else begin
        v241_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v242_1_i_ce0_local = 1'b1;
    end else begin
        v242_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v242_2_i_ce0_local = 1'b1;
    end else begin
        v242_2_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v242_3_i_ce0_local = 1'b1;
    end else begin
        v242_3_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v242_4_i_ce0_local = 1'b1;
    end else begin
        v242_4_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v242_5_i_ce0_local = 1'b1;
    end else begin
        v242_5_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v242_6_i_ce0_local = 1'b1;
    end else begin
        v242_6_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v242_7_i_ce0_local = 1'b1;
    end else begin
        v242_7_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v242_i_ce0_local = 1'b1;
    end else begin
        v242_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v243_1_i_ce0_local = 1'b1;
    end else begin
        v243_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v243_i_ce0_local = 1'b1;
    end else begin
        v243_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v244_1_i_ce0_local = 1'b1;
    end else begin
        v244_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v244_1_i_ce1_local = 1'b1;
    end else begin
        v244_1_i_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v244_1_i_we0_local = 1'b1;
    end else begin
        v244_1_i_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v244_2_i_ce0_local = 1'b1;
    end else begin
        v244_2_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v244_2_i_ce1_local = 1'b1;
    end else begin
        v244_2_i_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v244_2_i_we0_local = 1'b1;
    end else begin
        v244_2_i_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v244_3_i_ce0_local = 1'b1;
    end else begin
        v244_3_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v244_3_i_ce1_local = 1'b1;
    end else begin
        v244_3_i_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v244_3_i_we0_local = 1'b1;
    end else begin
        v244_3_i_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v244_i_ce0_local = 1'b1;
    end else begin
        v244_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v244_i_ce1_local = 1'b1;
    end else begin
        v244_i_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v244_i_we0_local = 1'b1;
    end else begin
        v244_i_we0_local = 1'b0;
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
assign add_ln264_1_fu_611_p2 = (ap_sig_allocacmp_indvar_flatten153_load + 7'd1);
assign add_ln264_fu_522_p2 = (ap_sig_allocacmp_v95154_load + 6'd2);
assign add_ln318_fu_749_p2 = (v240_3_i_q0 + v142_fu_725_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_751 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln264_reg_954 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign cmp105_i_i_i_fu_579_p2 = ((empty_fu_573_p2 == 13'd4098) ? 1'b1 : 1'b0);
assign cmp13_i_i_i_fu_563_p2 = ((v95_fu_536_p3 == 6'd0) ? 1'b1 : 1'b0);
assign empty_fu_573_p2 = (mul_i47_i_i - v95_cast10_cast_i_i_fu_569_p1);
assign icmp_ln264_fu_637_p2 = ((ap_sig_allocacmp_indvar_flatten153_load == 7'd127) ? 1'b1 : 1'b0);
assign icmp_ln320_fu_755_p2 = (($signed(add_ln318_fu_749_p2) > $signed(8'd89)) ? 1'b1 : 1'b0);
assign lshr_ln7_fu_585_p4 = {{select_ln264_fu_528_p3[4:2]}};
assign lshr_ln_fu_548_p4 = {{v95_fu_536_p3[4:1]}};
assign select_ln264_fu_528_p3 = ((ap_phi_mux_icmp_ln266156_phi_fu_491_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v96155_load : 6'd0);
assign select_ln321_fu_813_p3 = ((icmp_ln320_reg_1103[0:0] == 1'b1) ? trunc_ln320_reg_1108 : 7'd89);
assign tmp_fu_623_p3 = v96_fu_617_p2[32'd5];
assign tmp_s_fu_595_p3 = {{lshr_ln_fu_548_p4}, {lshr_ln7_fu_585_p4}};
assign trunc_ln264_fu_544_p1 = v95_fu_536_p3[4:0];
assign trunc_ln320_fu_761_p1 = add_ln318_fu_749_p2[6:0];
assign trunc_ln338_fu_777_p1 = v161_fu_765_p2[6:0];
assign trunc_ln356_fu_793_p1 = v175_fu_781_p2[6:0];
assign trunc_ln374_fu_809_p1 = v189_fu_797_p2[6:0];
assign v101_fu_697_p3 = ((cmp13_i_i_i_reg_899_pp0_iter3_reg[0:0] == 1'b1) ? v241_3_i_q0 : v244_3_i_q1);
assign v110_fu_704_p3 = ((cmp13_i_i_i_reg_899_pp0_iter3_reg[0:0] == 1'b1) ? v241_2_i_q0 : v244_2_i_q1);
assign v119_fu_711_p3 = ((cmp13_i_i_i_reg_899_pp0_iter3_reg[0:0] == 1'b1) ? v241_1_i_q0 : v244_1_i_q1);
assign v128_fu_718_p3 = ((cmp13_i_i_i_reg_899_pp0_iter3_reg[0:0] == 1'b1) ? v241_i_q0 : v244_i_q1);
assign v142_fu_725_p0 = grp_fu_841_p3;
assign v142_fu_725_p2 = ($signed(v142_fu_725_p0) + $signed(v101_fu_697_p3));
assign v156_fu_731_p0 = grp_fu_849_p3;
assign v156_fu_731_p2 = ($signed(v156_fu_731_p0) + $signed(v110_fu_704_p3));
assign v161_fu_765_p2 = (v240_2_i_q0 + v156_fu_731_p2);
assign v162_fu_771_p2 = (($signed(v161_fu_765_p2) > $signed(8'd89)) ? 1'b1 : 1'b0);
assign v163_1_fu_820_p3 = ((v162_reg_1113[0:0] == 1'b1) ? trunc_ln338_reg_1118 : 7'd89);
assign v170_fu_737_p0 = grp_fu_857_p3;
assign v170_fu_737_p2 = ($signed(v170_fu_737_p0) + $signed(v119_fu_711_p3));
assign v175_fu_781_p2 = (v240_1_i_q0 + v170_fu_737_p2);
assign v176_fu_787_p2 = (($signed(v175_fu_781_p2) > $signed(8'd89)) ? 1'b1 : 1'b0);
assign v177_1_fu_827_p3 = ((v176_reg_1123[0:0] == 1'b1) ? trunc_ln356_reg_1128 : 7'd89);
assign v184_fu_743_p0 = grp_fu_865_p3;
assign v184_fu_743_p2 = ($signed(v184_fu_743_p0) + $signed(v128_fu_718_p3));
assign v189_fu_797_p2 = (v240_i_q0 + v184_fu_743_p2);
assign v190_fu_803_p2 = (($signed(v189_fu_797_p2) > $signed(8'd89)) ? 1'b1 : 1'b0);
assign v191_1_fu_834_p3 = ((v190_reg_1133[0:0] == 1'b1) ? trunc_ln374_reg_1138 : 7'd89);
assign v239_1_i_address0 = zext_ln268_reg_1031_pp0_iter4_reg;
assign v239_1_i_ce0 = v239_1_i_ce0_local;
assign v239_1_i_d0 = v177_1_fu_827_p3;
assign v239_1_i_we0 = v239_1_i_we0_local;
assign v239_2_i_address0 = zext_ln268_reg_1031_pp0_iter4_reg;
assign v239_2_i_ce0 = v239_2_i_ce0_local;
assign v239_2_i_d0 = v163_1_fu_820_p3;
assign v239_2_i_we0 = v239_2_i_we0_local;
assign v239_3_i_address0 = zext_ln268_reg_1031_pp0_iter4_reg;
assign v239_3_i_ce0 = v239_3_i_ce0_local;
assign v239_3_i_d0 = select_ln321_fu_813_p3;
assign v239_3_i_we0 = v239_3_i_we0_local;
assign v239_i_address0 = zext_ln268_reg_1031_pp0_iter4_reg;
assign v239_i_ce0 = v239_i_ce0_local;
assign v239_i_d0 = v191_1_fu_834_p3;
assign v239_i_we0 = v239_i_we0_local;
assign v240_1_i_address0 = zext_ln268_fu_682_p1;
assign v240_1_i_ce0 = v240_1_i_ce0_local;
assign v240_2_i_address0 = zext_ln268_fu_682_p1;
assign v240_2_i_ce0 = v240_2_i_ce0_local;
assign v240_3_i_address0 = zext_ln268_fu_682_p1;
assign v240_3_i_ce0 = v240_3_i_ce0_local;
assign v240_i_address0 = zext_ln268_fu_682_p1;
assign v240_i_ce0 = v240_i_ce0_local;
assign v241_1_i_address0 = zext_ln268_fu_682_p1;
assign v241_1_i_ce0 = v241_1_i_ce0_local;
assign v241_2_i_address0 = zext_ln268_fu_682_p1;
assign v241_2_i_ce0 = v241_2_i_ce0_local;
assign v241_3_i_address0 = zext_ln268_fu_682_p1;
assign v241_3_i_ce0 = v241_3_i_ce0_local;
assign v241_i_address0 = zext_ln268_fu_682_p1;
assign v241_i_ce0 = v241_i_ce0_local;
assign v242_1_i_address0 = zext_ln269_fu_603_p1;
assign v242_1_i_ce0 = v242_1_i_ce0_local;
assign v242_2_i_address0 = zext_ln269_fu_603_p1;
assign v242_2_i_ce0 = v242_2_i_ce0_local;
assign v242_3_i_address0 = zext_ln269_fu_603_p1;
assign v242_3_i_ce0 = v242_3_i_ce0_local;
assign v242_4_i_address0 = zext_ln269_reg_921;
assign v242_4_i_ce0 = v242_4_i_ce0_local;
assign v242_5_i_address0 = zext_ln269_reg_921;
assign v242_5_i_ce0 = v242_5_i_ce0_local;
assign v242_6_i_address0 = zext_ln269_reg_921;
assign v242_6_i_ce0 = v242_6_i_ce0_local;
assign v242_7_i_address0 = zext_ln269_reg_921;
assign v242_7_i_ce0 = v242_7_i_ce0_local;
assign v242_i_address0 = zext_ln269_fu_603_p1;
assign v242_i_ce0 = v242_i_ce0_local;
assign v243_1_i_address0 = zext_ln264_reg_894;
assign v243_1_i_ce0 = v243_1_i_ce0_local;
assign v243_i_address0 = zext_ln264_fu_558_p1;
assign v243_i_ce0 = v243_i_ce0_local;
assign v244_1_i_address0 = v244_1_i_addr_reg_1066;
assign v244_1_i_address1 = zext_ln268_fu_682_p1;
assign v244_1_i_ce0 = v244_1_i_ce0_local;
assign v244_1_i_ce1 = v244_1_i_ce1_local;
assign v244_1_i_d0 = v170_fu_737_p2;
assign v244_1_i_we0 = v244_1_i_we0_local;
assign v244_2_i_address0 = v244_2_i_addr_reg_1055;
assign v244_2_i_address1 = zext_ln268_fu_682_p1;
assign v244_2_i_ce0 = v244_2_i_ce0_local;
assign v244_2_i_ce1 = v244_2_i_ce1_local;
assign v244_2_i_d0 = v156_fu_731_p2;
assign v244_2_i_we0 = v244_2_i_we0_local;
assign v244_3_i_address0 = v244_3_i_addr_reg_1044;
assign v244_3_i_address1 = zext_ln268_fu_682_p1;
assign v244_3_i_ce0 = v244_3_i_ce0_local;
assign v244_3_i_ce1 = v244_3_i_ce1_local;
assign v244_3_i_d0 = v142_fu_725_p2;
assign v244_3_i_we0 = v244_3_i_we0_local;
assign v244_i_address0 = v244_i_addr_reg_1077;
assign v244_i_address1 = zext_ln268_fu_682_p1;
assign v244_i_ce0 = v244_i_ce0_local;
assign v244_i_ce1 = v244_i_ce1_local;
assign v244_i_d0 = v184_fu_743_p2;
assign v244_i_we0 = v244_i_we0_local;
assign v95_cast10_cast_i_i_fu_569_p1 = trunc_ln264_fu_544_p1;
assign v95_fu_536_p3 = ((ap_phi_mux_icmp_ln266156_phi_fu_491_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v95154_load : add_ln264_fu_522_p2);
assign v96_fu_617_p2 = (select_ln264_fu_528_p3 + 6'd4);
assign xor_ln266_fu_631_p2 = (tmp_fu_623_p3 ^ 1'd1);
assign zext_ln264_fu_558_p1 = lshr_ln_fu_548_p4;
assign zext_ln268_fu_682_p1 = lshr_ln7_reg_916_pp0_iter2_reg;
assign zext_ln269_fu_603_p1 = tmp_s_fu_595_p3;
always @ (posedge ap_clk) begin
    zext_ln264_reg_894[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln269_reg_921[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln268_reg_1031[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln268_reg_1031_pp0_iter4_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
end
endmodule 
