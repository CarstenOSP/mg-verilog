module bicg_bicg_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v137_address0,v137_ce0,v137_q0,v137_address1,v137_ce1,v137_q1,v139_address0,v139_ce0,v139_q0,v10_0_address0,v10_0_ce0,v10_0_we0,v10_0_d0,v10_0_q0,v10_0_address1,v10_0_ce1,v10_0_we1,v10_0_d1,v10_0_q1,v10_1_address0,v10_1_ce0,v10_1_we0,v10_1_d0,v10_1_q0,v10_1_address1,v10_1_ce1,v10_1_we1,v10_1_d1,v10_1_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] v137_address0;
output   v137_ce0;
input  [31:0] v137_q0;
output  [11:0] v137_address1;
output   v137_ce1;
input  [31:0] v137_q1;
output  [5:0] v139_address0;
output   v139_ce0;
input  [31:0] v139_q0;
output  [4:0] v10_0_address0;
output   v10_0_ce0;
output   v10_0_we0;
output  [31:0] v10_0_d0;
input  [31:0] v10_0_q0;
output  [4:0] v10_0_address1;
output   v10_0_ce1;
output   v10_0_we1;
output  [31:0] v10_0_d1;
input  [31:0] v10_0_q1;
output  [4:0] v10_1_address0;
output   v10_1_ce0;
output   v10_1_we0;
output  [31:0] v10_1_d0;
input  [31:0] v10_1_q0;
output  [4:0] v10_1_address1;
output   v10_1_ce1;
output   v10_1_we1;
output  [31:0] v10_1_d1;
input  [31:0] v10_1_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln41_reg_774;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_292;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_296;
wire   [31:0] grp_fu_276_p2;
reg   [31:0] reg_300;
wire   [31:0] grp_fu_280_p2;
reg   [31:0] reg_305;
wire   [0:0] icmp_ln41_fu_328_p2;
reg   [6:0] v11_load_reg_778;
wire   [6:0] add_ln41_fu_343_p2;
reg   [6:0] add_ln41_reg_783;
wire   [6:0] select_ln41_fu_365_p3;
reg   [6:0] select_ln41_reg_788;
wire   [11:0] select_ln41_1_cast_fu_388_p1;
reg   [11:0] select_ln41_1_cast_reg_793;
wire   [0:0] cmp7_fu_392_p2;
reg   [0:0] cmp7_reg_803;
reg   [0:0] cmp7_reg_803_pp0_iter1_reg;
wire   [4:0] lshr_ln_fu_417_p4;
reg   [4:0] lshr_ln_reg_825;
reg   [3:0] tmp_1_reg_835;
wire   [0:0] trunc_ln58_fu_456_p1;
reg   [0:0] trunc_ln58_reg_842;
reg   [2:0] tmp_4_reg_848;
wire   [1:0] trunc_ln72_fu_470_p1;
reg   [1:0] trunc_ln72_reg_858;
reg   [0:0] tmp_7_reg_863;
reg   [31:0] v139_load_reg_869;
wire   [31:0] v17_fu_524_p1;
reg   [31:0] v17_reg_884;
wire   [31:0] v16_fu_529_p1;
wire   [31:0] v23_fu_534_p1;
reg   [4:0] v10_0_addr_reg_910;
reg   [4:0] v10_0_addr_reg_910_pp0_iter2_reg;
reg   [4:0] v10_0_addr_reg_910_pp0_iter3_reg;
reg   [4:0] v10_1_addr_reg_915;
reg   [4:0] v10_1_addr_reg_915_pp0_iter2_reg;
reg   [4:0] v10_1_addr_reg_915_pp0_iter3_reg;
reg   [4:0] v10_0_addr_1_reg_920;
reg   [4:0] v10_0_addr_1_reg_920_pp0_iter2_reg;
reg   [4:0] v10_0_addr_1_reg_920_pp0_iter3_reg;
wire   [31:0] v29_fu_597_p1;
reg   [4:0] v10_1_addr_1_reg_931;
reg   [4:0] v10_1_addr_1_reg_931_pp0_iter2_reg;
reg   [4:0] v10_1_addr_1_reg_931_pp0_iter3_reg;
wire   [31:0] v35_fu_602_p1;
reg   [31:0] v14_reg_952;
reg   [4:0] v10_0_addr_2_reg_957;
reg   [4:0] v10_0_addr_2_reg_957_pp0_iter2_reg;
reg   [4:0] v10_0_addr_2_reg_957_pp0_iter3_reg;
reg   [4:0] v10_0_addr_2_reg_957_pp0_iter4_reg;
wire   [31:0] v41_fu_668_p1;
reg   [4:0] v10_1_addr_2_reg_968;
reg   [4:0] v10_1_addr_2_reg_968_pp0_iter2_reg;
reg   [4:0] v10_1_addr_2_reg_968_pp0_iter3_reg;
reg   [4:0] v10_1_addr_2_reg_968_pp0_iter4_reg;
wire   [31:0] v47_fu_673_p1;
reg   [4:0] v10_0_addr_3_reg_979;
reg   [4:0] v10_0_addr_3_reg_979_pp0_iter2_reg;
reg   [4:0] v10_0_addr_3_reg_979_pp0_iter3_reg;
reg   [4:0] v10_0_addr_3_reg_979_pp0_iter4_reg;
reg   [4:0] v10_1_addr_3_reg_984;
reg   [4:0] v10_1_addr_3_reg_984_pp0_iter2_reg;
reg   [4:0] v10_1_addr_3_reg_984_pp0_iter3_reg;
reg   [4:0] v10_1_addr_3_reg_984_pp0_iter4_reg;
reg   [31:0] v21_reg_989;
reg   [31:0] v27_reg_994;
reg   [31:0] v33_reg_999;
wire   [31:0] v15_fu_691_p3;
reg   [31:0] v15_reg_1004;
wire   [31:0] grp_fu_284_p2;
reg   [31:0] v18_reg_1009;
wire   [31:0] grp_fu_288_p2;
reg   [31:0] v24_reg_1014;
wire   [31:0] v53_fu_697_p1;
wire   [31:0] v59_fu_702_p1;
wire   [31:0] v22_fu_707_p3;
reg   [31:0] v22_reg_1029;
wire   [31:0] v28_fu_713_p3;
reg   [31:0] v28_reg_1034;
wire   [31:0] v34_fu_719_p3;
reg   [31:0] v34_reg_1039;
wire   [31:0] v40_fu_725_p3;
reg   [31:0] v40_reg_1044;
wire   [31:0] v46_fu_732_p3;
reg   [31:0] v46_reg_1049;
wire   [31:0] v52_fu_739_p3;
reg   [31:0] v52_reg_1054;
wire   [31:0] v58_fu_746_p3;
reg   [31:0] v58_reg_1059;
reg   [31:0] v30_reg_1064;
reg   [31:0] v36_reg_1069;
reg   [31:0] v42_reg_1074;
reg   [31:0] v48_reg_1079;
reg   [31:0] v54_reg_1084;
reg   [31:0] v60_reg_1089;
reg   [31:0] v43_reg_1094;
reg   [31:0] v49_reg_1099;
reg   [31:0] v55_reg_1104;
reg   [31:0] v61_reg_1109;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln41_fu_383_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln46_fu_412_p1;
wire   [63:0] zext_ln54_fu_441_p1;
wire   [63:0] zext_ln61_fu_502_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln68_fu_519_p1;
wire   [63:0] zext_ln75_fu_554_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln82_fu_574_p1;
wire   [63:0] zext_ln42_fu_579_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln59_fu_591_p1;
wire   [63:0] zext_ln89_fu_622_p1;
wire   [63:0] zext_ln96_fu_639_p1;
wire   [63:0] zext_ln73_fu_662_p1;
wire   [63:0] zext_ln87_fu_685_p1;
reg   [6:0] v12_fu_96;
wire   [6:0] add_ln42_fu_644_p2;
wire    ap_loop_init;
reg   [6:0] v11_fu_100;
wire   [6:0] select_ln41_1_fu_377_p3;
reg   [6:0] ap_sig_allocacmp_v11_load;
reg   [9:0] indvar_flatten_fu_104;
wire   [9:0] add_ln41_1_fu_334_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v139_ce0_local;
reg    v137_ce1_local;
reg   [11:0] v137_address1_local;
reg    v137_ce0_local;
reg   [11:0] v137_address0_local;
reg    v10_0_ce1_local;
reg   [4:0] v10_0_address1_local;
reg    v10_0_ce0_local;
reg   [4:0] v10_0_address0_local;
reg    v10_0_we1_local;
reg    v10_0_we0_local;
reg   [31:0] v10_0_d0_local;
reg    v10_1_ce1_local;
reg   [4:0] v10_1_address1_local;
reg    v10_1_ce0_local;
reg   [4:0] v10_1_address0_local;
reg    v10_1_we1_local;
reg    v10_1_we0_local;
reg   [31:0] v10_1_d0_local;
reg   [31:0] grp_fu_276_p0;
reg   [31:0] grp_fu_276_p1;
reg   [31:0] grp_fu_280_p0;
reg   [31:0] grp_fu_280_p1;
reg   [31:0] grp_fu_284_p0;
reg   [31:0] grp_fu_284_p1;
reg   [31:0] grp_fu_288_p0;
reg   [31:0] grp_fu_288_p1;
wire   [0:0] tmp_5_fu_357_p3;
wire   [5:0] trunc_ln41_fu_373_p1;
wire   [11:0] tmp_fu_398_p3;
wire   [11:0] add_ln46_fu_406_p2;
wire   [11:0] tmp_s_fu_427_p3;
wire   [11:0] add_ln54_fu_435_p2;
wire   [11:0] tmp_2_fu_487_p5;
wire   [11:0] add_ln61_fu_497_p2;
wire   [11:0] tmp_3_fu_507_p3;
wire   [11:0] add_ln68_fu_514_p2;
wire   [11:0] tmp_6_fu_539_p5;
wire   [11:0] add_ln75_fu_549_p2;
wire   [11:0] tmp_8_fu_559_p5;
wire   [11:0] add_ln82_fu_569_p2;
wire   [4:0] or_ln58_1_fu_584_p3;
wire   [11:0] tmp_9_fu_607_p5;
wire   [11:0] add_ln89_fu_617_p2;
wire   [11:0] tmp_10_fu_627_p3;
wire   [11:0] add_ln96_fu_634_p2;
wire   [4:0] or_ln72_1_fu_654_p4;
wire   [4:0] or_ln86_1_fu_678_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v12_fu_96 = 7'd0;
#0 v11_fu_100 = 7'd0;
#0 indvar_flatten_fu_104 = 10'd0;
#0 ap_done_reg = 1'b0;
end
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U18(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_276_p0),.din1(grp_fu_276_p1),.ce(1'b1),.dout(grp_fu_276_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U19(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_280_p0),.din1(grp_fu_280_p1),.ce(1'b1),.dout(grp_fu_280_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U20(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_284_p0),.din1(grp_fu_284_p1),.ce(1'b1),.dout(grp_fu_284_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U21(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_288_p0),.din1(grp_fu_288_p1),.ce(1'b1),.dout(grp_fu_288_p2));
bicg_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln41_fu_328_p2 == 1'd0))) begin
            indvar_flatten_fu_104 <= add_ln41_1_fu_334_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_104 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v11_fu_100 <= 7'd0;
    end else if (((icmp_ln41_reg_774 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v11_fu_100 <= select_ln41_1_fu_377_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v12_fu_96 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v12_fu_96 <= add_ln42_fu_644_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln41_reg_783 <= add_ln41_fu_343_p2;
        icmp_ln41_reg_774 <= icmp_ln41_fu_328_p2;
        v10_0_addr_1_reg_920[4 : 1] <= zext_ln59_fu_591_p1[4 : 1];
        v10_0_addr_1_reg_920_pp0_iter2_reg[4 : 1] <= v10_0_addr_1_reg_920[4 : 1];
        v10_0_addr_1_reg_920_pp0_iter3_reg[4 : 1] <= v10_0_addr_1_reg_920_pp0_iter2_reg[4 : 1];
        v10_0_addr_reg_910 <= zext_ln42_fu_579_p1;
        v10_0_addr_reg_910_pp0_iter2_reg <= v10_0_addr_reg_910;
        v10_0_addr_reg_910_pp0_iter3_reg <= v10_0_addr_reg_910_pp0_iter2_reg;
        v10_1_addr_1_reg_931[4 : 1] <= zext_ln59_fu_591_p1[4 : 1];
        v10_1_addr_1_reg_931_pp0_iter2_reg[4 : 1] <= v10_1_addr_1_reg_931[4 : 1];
        v10_1_addr_1_reg_931_pp0_iter3_reg[4 : 1] <= v10_1_addr_1_reg_931_pp0_iter2_reg[4 : 1];
        v10_1_addr_reg_915 <= zext_ln42_fu_579_p1;
        v10_1_addr_reg_915_pp0_iter2_reg <= v10_1_addr_reg_915;
        v10_1_addr_reg_915_pp0_iter3_reg <= v10_1_addr_reg_915_pp0_iter2_reg;
        v11_load_reg_778 <= ap_sig_allocacmp_v11_load;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        v17_reg_884 <= v17_fu_524_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        cmp7_reg_803 <= cmp7_fu_392_p2;
        cmp7_reg_803_pp0_iter1_reg <= cmp7_reg_803;
        lshr_ln_reg_825 <= {{select_ln41_fu_365_p3[5:1]}};
        select_ln41_1_cast_reg_793[6 : 0] <= select_ln41_1_cast_fu_388_p1[6 : 0];
        select_ln41_reg_788 <= select_ln41_fu_365_p3;
        tmp_1_reg_835 <= {{select_ln41_fu_365_p3[5:2]}};
        tmp_4_reg_848 <= {{select_ln41_fu_365_p3[5:3]}};
        tmp_7_reg_863 <= select_ln41_fu_365_p3[32'd1];
        trunc_ln58_reg_842 <= trunc_ln58_fu_456_p1;
        trunc_ln72_reg_858 <= trunc_ln72_fu_470_p1;
        v10_0_addr_2_reg_957[0] <= zext_ln73_fu_662_p1[0];
v10_0_addr_2_reg_957[4 : 2] <= zext_ln73_fu_662_p1[4 : 2];
        v10_0_addr_2_reg_957_pp0_iter2_reg[0] <= v10_0_addr_2_reg_957[0];
v10_0_addr_2_reg_957_pp0_iter2_reg[4 : 2] <= v10_0_addr_2_reg_957[4 : 2];
        v10_0_addr_2_reg_957_pp0_iter3_reg[0] <= v10_0_addr_2_reg_957_pp0_iter2_reg[0];
v10_0_addr_2_reg_957_pp0_iter3_reg[4 : 2] <= v10_0_addr_2_reg_957_pp0_iter2_reg[4 : 2];
        v10_0_addr_2_reg_957_pp0_iter4_reg[0] <= v10_0_addr_2_reg_957_pp0_iter3_reg[0];
v10_0_addr_2_reg_957_pp0_iter4_reg[4 : 2] <= v10_0_addr_2_reg_957_pp0_iter3_reg[4 : 2];
        v10_0_addr_3_reg_979[4 : 2] <= zext_ln87_fu_685_p1[4 : 2];
        v10_0_addr_3_reg_979_pp0_iter2_reg[4 : 2] <= v10_0_addr_3_reg_979[4 : 2];
        v10_0_addr_3_reg_979_pp0_iter3_reg[4 : 2] <= v10_0_addr_3_reg_979_pp0_iter2_reg[4 : 2];
        v10_0_addr_3_reg_979_pp0_iter4_reg[4 : 2] <= v10_0_addr_3_reg_979_pp0_iter3_reg[4 : 2];
        v10_1_addr_2_reg_968[0] <= zext_ln73_fu_662_p1[0];
v10_1_addr_2_reg_968[4 : 2] <= zext_ln73_fu_662_p1[4 : 2];
        v10_1_addr_2_reg_968_pp0_iter2_reg[0] <= v10_1_addr_2_reg_968[0];
v10_1_addr_2_reg_968_pp0_iter2_reg[4 : 2] <= v10_1_addr_2_reg_968[4 : 2];
        v10_1_addr_2_reg_968_pp0_iter3_reg[0] <= v10_1_addr_2_reg_968_pp0_iter2_reg[0];
v10_1_addr_2_reg_968_pp0_iter3_reg[4 : 2] <= v10_1_addr_2_reg_968_pp0_iter2_reg[4 : 2];
        v10_1_addr_2_reg_968_pp0_iter4_reg[0] <= v10_1_addr_2_reg_968_pp0_iter3_reg[0];
v10_1_addr_2_reg_968_pp0_iter4_reg[4 : 2] <= v10_1_addr_2_reg_968_pp0_iter3_reg[4 : 2];
        v10_1_addr_3_reg_984[4 : 2] <= zext_ln87_fu_685_p1[4 : 2];
        v10_1_addr_3_reg_984_pp0_iter2_reg[4 : 2] <= v10_1_addr_3_reg_984[4 : 2];
        v10_1_addr_3_reg_984_pp0_iter3_reg[4 : 2] <= v10_1_addr_3_reg_984_pp0_iter2_reg[4 : 2];
        v10_1_addr_3_reg_984_pp0_iter4_reg[4 : 2] <= v10_1_addr_3_reg_984_pp0_iter3_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_292 <= v137_q1;
        reg_296 <= v137_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_300 <= grp_fu_276_p2;
        reg_305 <= grp_fu_280_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v139_load_reg_869 <= v139_q0;
        v15_reg_1004 <= v15_fu_691_p3;
        v22_reg_1029 <= v22_fu_707_p3;
        v28_reg_1034 <= v28_fu_713_p3;
        v34_reg_1039 <= v34_fu_719_p3;
        v40_reg_1044 <= v40_fu_725_p3;
        v46_reg_1049 <= v46_fu_732_p3;
        v52_reg_1054 <= v52_fu_739_p3;
        v58_reg_1059 <= v58_fu_746_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v14_reg_952 <= v10_0_q1;
        v21_reg_989 <= v10_1_q1;
        v27_reg_994 <= v10_0_q0;
        v33_reg_999 <= v10_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v18_reg_1009 <= grp_fu_284_p2;
        v24_reg_1014 <= grp_fu_288_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v30_reg_1064 <= grp_fu_284_p2;
        v36_reg_1069 <= grp_fu_288_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v42_reg_1074 <= grp_fu_284_p2;
        v48_reg_1079 <= grp_fu_288_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v43_reg_1094 <= grp_fu_276_p2;
        v49_reg_1099 <= grp_fu_280_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v54_reg_1084 <= grp_fu_284_p2;
        v60_reg_1089 <= grp_fu_288_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v55_reg_1104 <= grp_fu_276_p2;
        v61_reg_1109 <= grp_fu_280_p2;
    end
end
always @ (*) begin
    if (((icmp_ln41_reg_774 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_104;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v11_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v11_load = v11_fu_100;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_276_p0 = v52_reg_1054;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_276_p0 = v40_reg_1044;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_276_p0 = v28_reg_1034;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_276_p0 = v15_reg_1004;
    end else begin
        grp_fu_276_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_276_p1 = v54_reg_1084;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_276_p1 = v42_reg_1074;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_276_p1 = v30_reg_1064;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_276_p1 = v18_reg_1009;
    end else begin
        grp_fu_276_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_280_p0 = v58_reg_1059;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_280_p0 = v46_reg_1049;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_280_p0 = v34_reg_1039;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_280_p0 = v22_reg_1029;
    end else begin
        grp_fu_280_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_280_p1 = v60_reg_1089;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_280_p1 = v48_reg_1079;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_280_p1 = v36_reg_1069;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_280_p1 = v24_reg_1014;
    end else begin
        grp_fu_280_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_284_p0 = v53_fu_697_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_284_p0 = v41_fu_668_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_284_p0 = v29_fu_597_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_284_p0 = v16_fu_529_p1;
    end else begin
        grp_fu_284_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_284_p1 = v17_reg_884;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_284_p1 = v17_fu_524_p1;
    end else begin
        grp_fu_284_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_288_p0 = v59_fu_702_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_288_p0 = v47_fu_673_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_288_p0 = v35_fu_602_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_288_p0 = v23_fu_534_p1;
    end else begin
        grp_fu_288_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_288_p1 = v17_reg_884;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_288_p1 = v17_fu_524_p1;
    end else begin
        grp_fu_288_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_address0_local = v10_0_addr_3_reg_979_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_address0_local = v10_0_addr_2_reg_957_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_0_address0_local = zext_ln87_fu_685_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_0_address0_local = zext_ln59_fu_591_p1;
    end else begin
        v10_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_address1_local = v10_0_addr_1_reg_920_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_address1_local = v10_0_addr_reg_910_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_0_address1_local = zext_ln73_fu_662_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_0_address1_local = zext_ln42_fu_579_p1;
    end else begin
        v10_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v10_0_ce0_local = 1'b1;
    end else begin
        v10_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v10_0_ce1_local = 1'b1;
    end else begin
        v10_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v10_0_d0_local = v55_reg_1104;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v10_0_d0_local = v43_reg_1094;
        end else begin
            v10_0_d0_local = 'bx;
        end
    end else begin
        v10_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v10_0_we0_local = 1'b1;
    end else begin
        v10_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v10_0_we1_local = 1'b1;
    end else begin
        v10_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_1_address0_local = v10_1_addr_3_reg_984_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_address0_local = v10_1_addr_2_reg_968_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_1_address0_local = zext_ln87_fu_685_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_1_address0_local = zext_ln59_fu_591_p1;
    end else begin
        v10_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_1_address1_local = v10_1_addr_1_reg_931_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_address1_local = v10_1_addr_reg_915_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_1_address1_local = zext_ln73_fu_662_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_1_address1_local = zext_ln42_fu_579_p1;
    end else begin
        v10_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v10_1_ce0_local = 1'b1;
    end else begin
        v10_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v10_1_ce1_local = 1'b1;
    end else begin
        v10_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v10_1_d0_local = v61_reg_1109;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v10_1_d0_local = v49_reg_1099;
        end else begin
            v10_1_d0_local = 'bx;
        end
    end else begin
        v10_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v10_1_we0_local = 1'b1;
    end else begin
        v10_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v10_1_we1_local = 1'b1;
    end else begin
        v10_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v137_address0_local = zext_ln96_fu_639_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v137_address0_local = zext_ln82_fu_574_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v137_address0_local = zext_ln68_fu_519_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v137_address0_local = zext_ln54_fu_441_p1;
    end else begin
        v137_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v137_address1_local = zext_ln89_fu_622_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v137_address1_local = zext_ln75_fu_554_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v137_address1_local = zext_ln61_fu_502_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v137_address1_local = zext_ln46_fu_412_p1;
    end else begin
        v137_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v137_ce0_local = 1'b1;
    end else begin
        v137_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v137_ce1_local = 1'b1;
    end else begin
        v137_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v139_ce0_local = 1'b1;
    end else begin
        v139_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln41_1_fu_334_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln41_fu_343_p2 = (ap_sig_allocacmp_v11_load + 7'd1);
assign add_ln42_fu_644_p2 = (select_ln41_reg_788 + 7'd8);
assign add_ln46_fu_406_p2 = (tmp_fu_398_p3 + select_ln41_1_cast_fu_388_p1);
assign add_ln54_fu_435_p2 = (tmp_s_fu_427_p3 + select_ln41_1_cast_fu_388_p1);
assign add_ln61_fu_497_p2 = (tmp_2_fu_487_p5 + select_ln41_1_cast_reg_793);
assign add_ln68_fu_514_p2 = (tmp_3_fu_507_p3 + select_ln41_1_cast_reg_793);
assign add_ln75_fu_549_p2 = (tmp_6_fu_539_p5 + select_ln41_1_cast_reg_793);
assign add_ln82_fu_569_p2 = (tmp_8_fu_559_p5 + select_ln41_1_cast_reg_793);
assign add_ln89_fu_617_p2 = (tmp_9_fu_607_p5 + select_ln41_1_cast_reg_793);
assign add_ln96_fu_634_p2 = (tmp_10_fu_627_p3 + select_ln41_1_cast_reg_793);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign cmp7_fu_392_p2 = ((select_ln41_1_fu_377_p3 == 7'd0) ? 1'b1 : 1'b0);
assign icmp_ln41_fu_328_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln_fu_417_p4 = {{select_ln41_fu_365_p3[5:1]}};
assign or_ln58_1_fu_584_p3 = {{tmp_1_reg_835}, {1'd1}};
assign or_ln72_1_fu_654_p4 = {{{tmp_4_reg_848}, {1'd1}}, {tmp_7_reg_863}};
assign or_ln86_1_fu_678_p3 = {{tmp_4_reg_848}, {2'd3}};
assign select_ln41_1_cast_fu_388_p1 = select_ln41_1_fu_377_p3;
assign select_ln41_1_fu_377_p3 = ((tmp_5_fu_357_p3[0:0] == 1'b1) ? add_ln41_reg_783 : v11_load_reg_778);
assign select_ln41_fu_365_p3 = ((tmp_5_fu_357_p3[0:0] == 1'b1) ? 7'd0 : v12_fu_96);
assign tmp_10_fu_627_p3 = {{tmp_4_reg_848}, {9'd448}};
assign tmp_2_fu_487_p5 = {{{{tmp_1_reg_835}, {1'd1}}, {trunc_ln58_reg_842}}, {6'd0}};
assign tmp_3_fu_507_p3 = {{tmp_1_reg_835}, {8'd192}};
assign tmp_5_fu_357_p3 = v12_fu_96[32'd6];
assign tmp_6_fu_539_p5 = {{{{tmp_4_reg_848}, {1'd1}}, {trunc_ln72_reg_858}}, {6'd0}};
assign tmp_8_fu_559_p5 = {{{{tmp_4_reg_848}, {1'd1}}, {tmp_7_reg_863}}, {7'd64}};
assign tmp_9_fu_607_p5 = {{{{tmp_4_reg_848}, {2'd3}}, {trunc_ln58_reg_842}}, {6'd0}};
assign tmp_fu_398_p3 = {{trunc_ln41_fu_373_p1}, {6'd0}};
assign tmp_s_fu_427_p3 = {{lshr_ln_fu_417_p4}, {7'd64}};
assign trunc_ln41_fu_373_p1 = select_ln41_fu_365_p3[5:0];
assign trunc_ln58_fu_456_p1 = select_ln41_fu_365_p3[0:0];
assign trunc_ln72_fu_470_p1 = select_ln41_fu_365_p3[1:0];
assign v10_0_address0 = v10_0_address0_local;
assign v10_0_address1 = v10_0_address1_local;
assign v10_0_ce0 = v10_0_ce0_local;
assign v10_0_ce1 = v10_0_ce1_local;
assign v10_0_d0 = v10_0_d0_local;
assign v10_0_d1 = reg_300;
assign v10_0_we0 = v10_0_we0_local;
assign v10_0_we1 = v10_0_we1_local;
assign v10_1_address0 = v10_1_address0_local;
assign v10_1_address1 = v10_1_address1_local;
assign v10_1_ce0 = v10_1_ce0_local;
assign v10_1_ce1 = v10_1_ce1_local;
assign v10_1_d0 = v10_1_d0_local;
assign v10_1_d1 = reg_305;
assign v10_1_we0 = v10_1_we0_local;
assign v10_1_we1 = v10_1_we1_local;
assign v137_address0 = v137_address0_local;
assign v137_address1 = v137_address1_local;
assign v137_ce0 = v137_ce0_local;
assign v137_ce1 = v137_ce1_local;
assign v139_address0 = zext_ln41_fu_383_p1;
assign v139_ce0 = v139_ce0_local;
assign v15_fu_691_p3 = ((cmp7_reg_803_pp0_iter1_reg[0:0] == 1'b1) ? 32'd0 : v14_reg_952);
assign v16_fu_529_p1 = reg_292;
assign v17_fu_524_p1 = v139_load_reg_869;
assign v22_fu_707_p3 = ((cmp7_reg_803_pp0_iter1_reg[0:0] == 1'b1) ? 32'd0 : v21_reg_989);
assign v23_fu_534_p1 = reg_296;
assign v28_fu_713_p3 = ((cmp7_reg_803_pp0_iter1_reg[0:0] == 1'b1) ? 32'd0 : v27_reg_994);
assign v29_fu_597_p1 = reg_292;
assign v34_fu_719_p3 = ((cmp7_reg_803_pp0_iter1_reg[0:0] == 1'b1) ? 32'd0 : v33_reg_999);
assign v35_fu_602_p1 = reg_296;
assign v40_fu_725_p3 = ((cmp7_reg_803_pp0_iter1_reg[0:0] == 1'b1) ? 32'd0 : v10_0_q1);
assign v41_fu_668_p1 = reg_292;
assign v46_fu_732_p3 = ((cmp7_reg_803_pp0_iter1_reg[0:0] == 1'b1) ? 32'd0 : v10_1_q1);
assign v47_fu_673_p1 = reg_296;
assign v52_fu_739_p3 = ((cmp7_reg_803_pp0_iter1_reg[0:0] == 1'b1) ? 32'd0 : v10_0_q0);
assign v53_fu_697_p1 = reg_292;
assign v58_fu_746_p3 = ((cmp7_reg_803_pp0_iter1_reg[0:0] == 1'b1) ? 32'd0 : v10_1_q0);
assign v59_fu_702_p1 = reg_296;
assign zext_ln41_fu_383_p1 = select_ln41_1_fu_377_p3;
assign zext_ln42_fu_579_p1 = lshr_ln_reg_825;
assign zext_ln46_fu_412_p1 = add_ln46_fu_406_p2;
assign zext_ln54_fu_441_p1 = add_ln54_fu_435_p2;
assign zext_ln59_fu_591_p1 = or_ln58_1_fu_584_p3;
assign zext_ln61_fu_502_p1 = add_ln61_fu_497_p2;
assign zext_ln68_fu_519_p1 = add_ln68_fu_514_p2;
assign zext_ln73_fu_662_p1 = or_ln72_1_fu_654_p4;
assign zext_ln75_fu_554_p1 = add_ln75_fu_549_p2;
assign zext_ln82_fu_574_p1 = add_ln82_fu_569_p2;
assign zext_ln87_fu_685_p1 = or_ln86_1_fu_678_p3;
assign zext_ln89_fu_622_p1 = add_ln89_fu_617_p2;
assign zext_ln96_fu_639_p1 = add_ln96_fu_634_p2;
always @ (posedge ap_clk) begin
    select_ln41_1_cast_reg_793[11:7] <= 5'b00000;
    v10_0_addr_1_reg_920[0] <= 1'b1;
    v10_0_addr_1_reg_920_pp0_iter2_reg[0] <= 1'b1;
    v10_0_addr_1_reg_920_pp0_iter3_reg[0] <= 1'b1;
    v10_1_addr_1_reg_931[0] <= 1'b1;
    v10_1_addr_1_reg_931_pp0_iter2_reg[0] <= 1'b1;
    v10_1_addr_1_reg_931_pp0_iter3_reg[0] <= 1'b1;
    v10_0_addr_2_reg_957[1] <= 1'b1;
    v10_0_addr_2_reg_957_pp0_iter2_reg[1] <= 1'b1;
    v10_0_addr_2_reg_957_pp0_iter3_reg[1] <= 1'b1;
    v10_0_addr_2_reg_957_pp0_iter4_reg[1] <= 1'b1;
    v10_1_addr_2_reg_968[1] <= 1'b1;
    v10_1_addr_2_reg_968_pp0_iter2_reg[1] <= 1'b1;
    v10_1_addr_2_reg_968_pp0_iter3_reg[1] <= 1'b1;
    v10_1_addr_2_reg_968_pp0_iter4_reg[1] <= 1'b1;
    v10_0_addr_3_reg_979[1:0] <= 2'b11;
    v10_0_addr_3_reg_979_pp0_iter2_reg[1:0] <= 2'b11;
    v10_0_addr_3_reg_979_pp0_iter3_reg[1:0] <= 2'b11;
    v10_0_addr_3_reg_979_pp0_iter4_reg[1:0] <= 2'b11;
    v10_1_addr_3_reg_984[1:0] <= 2'b11;
    v10_1_addr_3_reg_984_pp0_iter2_reg[1:0] <= 2'b11;
    v10_1_addr_3_reg_984_pp0_iter3_reg[1:0] <= 2'b11;
    v10_1_addr_3_reg_984_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 