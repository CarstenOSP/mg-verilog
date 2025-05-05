module atax_atax_Pipeline_label_0_label_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v124_address0,v124_ce0,v124_q0,v113_address0,v113_ce0,v113_q0,v113_address1,v113_ce1,v113_q1,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_2_address0,v116_2_ce0,v116_2_we0,v116_2_d0,v116_2_q0,v116_3_address0,v116_3_ce0,v116_3_we0,v116_3_d0,v116_3_q0,v116_4_address0,v116_4_ce0,v116_4_we0,v116_4_d0,v116_4_address1,v116_4_ce1,v116_4_q1,v116_5_address0,v116_5_ce0,v116_5_we0,v116_5_d0,v116_5_address1,v116_5_ce1,v116_5_q1,v116_6_address0,v116_6_ce0,v116_6_we0,v116_6_d0,v116_6_q0,v116_7_address0,v116_7_ce0,v116_7_we0,v116_7_d0,v116_7_q0,grp_fu_160_p_din0,grp_fu_160_p_din1,grp_fu_160_p_opcode,grp_fu_160_p_dout0,grp_fu_160_p_ce,grp_fu_164_p_din0,grp_fu_164_p_din1,grp_fu_164_p_dout0,grp_fu_164_p_ce); 
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
output  [5:0] v124_address0;
output   v124_ce0;
input  [31:0] v124_q0;
output  [11:0] v113_address0;
output   v113_ce0;
input  [31:0] v113_q0;
output  [11:0] v113_address1;
output   v113_ce1;
input  [31:0] v113_q1;
output  [2:0] v116_0_address0;
output   v116_0_ce0;
output   v116_0_we0;
output  [31:0] v116_0_d0;
input  [31:0] v116_0_q0;
output  [2:0] v116_1_address0;
output   v116_1_ce0;
output   v116_1_we0;
output  [31:0] v116_1_d0;
input  [31:0] v116_1_q0;
output  [2:0] v116_2_address0;
output   v116_2_ce0;
output   v116_2_we0;
output  [31:0] v116_2_d0;
input  [31:0] v116_2_q0;
output  [2:0] v116_3_address0;
output   v116_3_ce0;
output   v116_3_we0;
output  [31:0] v116_3_d0;
input  [31:0] v116_3_q0;
output  [2:0] v116_4_address0;
output   v116_4_ce0;
output   v116_4_we0;
output  [31:0] v116_4_d0;
output  [2:0] v116_4_address1;
output   v116_4_ce1;
input  [31:0] v116_4_q1;
output  [2:0] v116_5_address0;
output   v116_5_ce0;
output   v116_5_we0;
output  [31:0] v116_5_d0;
output  [2:0] v116_5_address1;
output   v116_5_ce1;
input  [31:0] v116_5_q1;
output  [2:0] v116_6_address0;
output   v116_6_ce0;
output   v116_6_we0;
output  [31:0] v116_6_d0;
input  [31:0] v116_6_q0;
output  [2:0] v116_7_address0;
output   v116_7_ce0;
output   v116_7_we0;
output  [31:0] v116_7_d0;
input  [31:0] v116_7_q0;
output  [31:0] grp_fu_160_p_din0;
output  [31:0] grp_fu_160_p_din1;
output  [1:0] grp_fu_160_p_opcode;
input  [31:0] grp_fu_160_p_dout0;
output   grp_fu_160_p_ce;
output  [31:0] grp_fu_164_p_din0;
output  [31:0] grp_fu_164_p_din1;
input  [31:0] grp_fu_164_p_dout0;
output   grp_fu_164_p_ce;
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
reg   [0:0] icmp_ln27_reg_772;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_324;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_328;
reg   [31:0] reg_332;
wire   [31:0] grp_fu_312_p2;
reg   [31:0] reg_336;
wire   [0:0] icmp_ln27_fu_358_p2;
reg   [0:0] icmp_ln27_reg_772_pp0_iter1_reg;
reg   [0:0] icmp_ln27_reg_772_pp0_iter2_reg;
reg   [0:0] icmp_ln27_reg_772_pp0_iter3_reg;
reg   [6:0] v4_load_reg_776;
wire   [6:0] add_ln27_fu_373_p2;
reg   [6:0] add_ln27_reg_781;
wire   [6:0] select_ln26_fu_395_p3;
reg   [6:0] select_ln26_reg_786;
wire   [5:0] trunc_ln27_fu_409_p1;
reg   [5:0] trunc_ln27_reg_792;
reg   [2:0] lshr_ln2_reg_812;
reg   [3:0] tmp_12_reg_826;
wire   [0:0] trunc_ln46_fu_486_p1;
reg   [0:0] trunc_ln46_reg_832;
wire   [1:0] trunc_ln60_fu_490_p1;
reg   [1:0] trunc_ln60_reg_838;
reg   [0:0] tmp_8_reg_843;
wire   [31:0] v3_fu_515_p3;
reg   [31:0] v3_reg_848;
wire   [31:0] v10_fu_555_p1;
wire   [31:0] v16_fu_560_p1;
reg   [2:0] v116_0_addr_reg_884;
reg   [2:0] v116_0_addr_reg_884_pp0_iter2_reg;
reg   [2:0] v116_0_addr_reg_884_pp0_iter3_reg;
wire   [31:0] v22_fu_606_p1;
wire   [31:0] v28_fu_611_p1;
reg   [2:0] v116_1_addr_reg_909;
reg   [2:0] v116_1_addr_reg_909_pp0_iter2_reg;
reg   [2:0] v116_1_addr_reg_909_pp0_iter3_reg;
reg   [2:0] v116_2_addr_reg_914;
reg   [2:0] v116_2_addr_reg_914_pp0_iter2_reg;
reg   [2:0] v116_2_addr_reg_914_pp0_iter3_reg;
reg   [2:0] v116_3_addr_reg_919;
reg   [2:0] v116_3_addr_reg_919_pp0_iter2_reg;
reg   [2:0] v116_3_addr_reg_919_pp0_iter3_reg;
reg   [2:0] v116_4_addr_reg_924;
reg   [2:0] v116_4_addr_reg_924_pp0_iter2_reg;
reg   [2:0] v116_4_addr_reg_924_pp0_iter3_reg;
reg   [2:0] v116_5_addr_reg_930;
reg   [2:0] v116_5_addr_reg_930_pp0_iter2_reg;
reg   [2:0] v116_5_addr_reg_930_pp0_iter3_reg;
reg   [2:0] v116_6_addr_reg_936;
reg   [2:0] v116_6_addr_reg_936_pp0_iter2_reg;
reg   [2:0] v116_6_addr_reg_936_pp0_iter3_reg;
reg   [2:0] v116_6_addr_reg_936_pp0_iter4_reg;
reg   [2:0] v116_7_addr_reg_941;
reg   [2:0] v116_7_addr_reg_941_pp0_iter2_reg;
reg   [2:0] v116_7_addr_reg_941_pp0_iter3_reg;
reg   [2:0] v116_7_addr_reg_941_pp0_iter4_reg;
reg   [31:0] v116_0_load_reg_946;
wire   [31:0] v34_fu_653_p1;
wire   [31:0] v40_fu_658_p1;
reg   [31:0] v116_1_load_reg_961;
reg   [31:0] v116_2_load_reg_966;
reg   [31:0] v116_3_load_reg_971;
reg   [31:0] v116_4_load_reg_976;
reg   [31:0] v116_5_load_reg_981;
reg   [31:0] v11_reg_986;
wire   [31:0] grp_fu_320_p2;
reg   [31:0] v17_reg_991;
wire   [31:0] v46_fu_663_p1;
wire   [31:0] v52_fu_668_p1;
wire   [31:0] v9_fu_673_p1;
reg   [31:0] v23_reg_1011;
reg   [31:0] v29_reg_1016;
wire   [31:0] v15_1_fu_677_p1;
reg   [31:0] v35_reg_1026;
reg   [31:0] v41_reg_1031;
wire   [31:0] v21_fu_681_p1;
wire   [31:0] v27_fu_685_p1;
reg   [31:0] v47_reg_1046;
reg   [31:0] v53_reg_1051;
wire   [31:0] v33_fu_689_p1;
wire   [31:0] v39_fu_693_p1;
reg   [31:0] v116_6_load_reg_1066;
reg   [31:0] v116_7_load_reg_1071;
wire   [31:0] v45_fu_697_p1;
wire   [31:0] v51_fu_701_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln27_fu_413_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln33_1_fu_436_p1;
wire   [63:0] zext_ln40_fu_471_p1;
wire   [63:0] zext_ln47_fu_532_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln54_fu_545_p1;
wire   [63:0] zext_ln61_fu_574_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln68_fu_590_p1;
wire   [63:0] zext_ln29_fu_595_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln75_fu_625_p1;
wire   [63:0] zext_ln83_fu_638_p1;
reg   [31:0] v3_1_fu_96;
reg   [6:0] v49_fu_100;
wire   [6:0] add_ln28_fu_643_p2;
wire    ap_loop_init;
reg   [6:0] v4_fu_104;
wire   [6:0] select_ln27_fu_403_p3;
reg   [6:0] ap_sig_allocacmp_v4_load;
reg   [9:0] indvar_flatten_fu_108;
wire   [9:0] add_ln27_1_fu_364_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v124_ce0_local;
reg    v113_ce1_local;
reg   [11:0] v113_address1_local;
reg    v113_ce0_local;
reg   [11:0] v113_address0_local;
reg    v116_0_ce0_local;
reg   [2:0] v116_0_address0_local;
reg    v116_0_we0_local;
wire   [31:0] bitcast_ln36_fu_705_p1;
reg    v116_1_ce0_local;
reg   [2:0] v116_1_address0_local;
reg    v116_1_we0_local;
wire   [31:0] bitcast_ln43_fu_710_p1;
reg    v116_2_ce0_local;
reg   [2:0] v116_2_address0_local;
reg    v116_2_we0_local;
wire   [31:0] bitcast_ln50_fu_715_p1;
reg    v116_3_ce0_local;
reg   [2:0] v116_3_address0_local;
reg    v116_3_we0_local;
wire   [31:0] bitcast_ln57_fu_720_p1;
reg    v116_4_ce1_local;
reg    v116_4_we0_local;
wire   [31:0] bitcast_ln64_fu_725_p1;
reg    v116_4_ce0_local;
reg    v116_5_ce1_local;
reg    v116_5_we0_local;
wire   [31:0] bitcast_ln71_fu_730_p1;
reg    v116_5_ce0_local;
reg    v116_6_ce0_local;
reg   [2:0] v116_6_address0_local;
reg    v116_6_we0_local;
wire   [31:0] bitcast_ln78_fu_735_p1;
reg    v116_7_ce0_local;
reg   [2:0] v116_7_address0_local;
reg    v116_7_we0_local;
wire   [31:0] bitcast_ln86_fu_740_p1;
reg   [31:0] grp_fu_308_p0;
reg   [31:0] grp_fu_308_p1;
reg   [31:0] grp_fu_312_p0;
reg   [31:0] grp_fu_312_p1;
reg   [31:0] grp_fu_316_p0;
reg   [31:0] grp_fu_320_p0;
wire   [0:0] tmp_7_fu_387_p3;
wire   [11:0] tmp_fu_418_p3;
wire   [11:0] zext_ln33_fu_426_p1;
wire   [11:0] add_ln33_fu_430_p2;
wire   [4:0] tmp_s_fu_451_p4;
wire   [11:0] tmp_11_fu_461_p4;
wire   [0:0] icmp_ln31_fu_510_p2;
wire   [11:0] tmp_13_fu_523_p5;
wire   [11:0] tmp_14_fu_537_p4;
wire   [11:0] tmp_15_fu_565_p5;
wire   [11:0] tmp_16_fu_579_p6;
wire   [11:0] tmp_17_fu_616_p5;
wire   [11:0] tmp_18_fu_630_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage1;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v3_1_fu_96 = 32'd0;
#0 v49_fu_100 = 7'd0;
#0 v4_fu_104 = 7'd0;
#0 indvar_flatten_fu_108 = 10'd0;
#0 ap_done_reg = 1'b0;
end
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U35(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_312_p0),.din1(grp_fu_312_p1),.ce(1'b1),.dout(grp_fu_312_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U37(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_320_p0),.din1(v3_reg_848),.ce(1'b1),.dout(grp_fu_320_p2));
atax_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln27_fu_358_p2 == 1'd0))) begin
            indvar_flatten_fu_108 <= add_ln27_1_fu_364_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_108 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v49_fu_100 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v49_fu_100 <= add_ln28_fu_643_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4_fu_104 <= 7'd0;
    end else if (((icmp_ln27_reg_772 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v4_fu_104 <= select_ln27_fu_403_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln27_reg_781 <= add_ln27_fu_373_p2;
        icmp_ln27_reg_772 <= icmp_ln27_fu_358_p2;
        icmp_ln27_reg_772_pp0_iter1_reg <= icmp_ln27_reg_772;
        icmp_ln27_reg_772_pp0_iter2_reg <= icmp_ln27_reg_772_pp0_iter1_reg;
        icmp_ln27_reg_772_pp0_iter3_reg <= icmp_ln27_reg_772_pp0_iter2_reg;
        v116_0_addr_reg_884 <= zext_ln29_fu_595_p1;
        v116_0_addr_reg_884_pp0_iter2_reg <= v116_0_addr_reg_884;
        v116_0_addr_reg_884_pp0_iter3_reg <= v116_0_addr_reg_884_pp0_iter2_reg;
        v116_1_addr_reg_909 <= zext_ln29_fu_595_p1;
        v116_1_addr_reg_909_pp0_iter2_reg <= v116_1_addr_reg_909;
        v116_1_addr_reg_909_pp0_iter3_reg <= v116_1_addr_reg_909_pp0_iter2_reg;
        v116_2_addr_reg_914 <= zext_ln29_fu_595_p1;
        v116_2_addr_reg_914_pp0_iter2_reg <= v116_2_addr_reg_914;
        v116_2_addr_reg_914_pp0_iter3_reg <= v116_2_addr_reg_914_pp0_iter2_reg;
        v116_3_addr_reg_919 <= zext_ln29_fu_595_p1;
        v116_3_addr_reg_919_pp0_iter2_reg <= v116_3_addr_reg_919;
        v116_3_addr_reg_919_pp0_iter3_reg <= v116_3_addr_reg_919_pp0_iter2_reg;
        v116_4_addr_reg_924 <= zext_ln29_fu_595_p1;
        v116_4_addr_reg_924_pp0_iter2_reg <= v116_4_addr_reg_924;
        v116_4_addr_reg_924_pp0_iter3_reg <= v116_4_addr_reg_924_pp0_iter2_reg;
        v116_5_addr_reg_930 <= zext_ln29_fu_595_p1;
        v116_5_addr_reg_930_pp0_iter2_reg <= v116_5_addr_reg_930;
        v116_5_addr_reg_930_pp0_iter3_reg <= v116_5_addr_reg_930_pp0_iter2_reg;
        v116_6_addr_reg_936 <= zext_ln29_fu_595_p1;
        v116_6_addr_reg_936_pp0_iter2_reg <= v116_6_addr_reg_936;
        v116_6_addr_reg_936_pp0_iter3_reg <= v116_6_addr_reg_936_pp0_iter2_reg;
        v116_6_addr_reg_936_pp0_iter4_reg <= v116_6_addr_reg_936_pp0_iter3_reg;
        v116_7_addr_reg_941 <= zext_ln29_fu_595_p1;
        v116_7_addr_reg_941_pp0_iter2_reg <= v116_7_addr_reg_941;
        v116_7_addr_reg_941_pp0_iter3_reg <= v116_7_addr_reg_941_pp0_iter2_reg;
        v116_7_addr_reg_941_pp0_iter4_reg <= v116_7_addr_reg_941_pp0_iter3_reg;
        v4_load_reg_776 <= ap_sig_allocacmp_v4_load;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln2_reg_812 <= {{select_ln26_fu_395_p3[5:3]}};
        select_ln26_reg_786 <= select_ln26_fu_395_p3;
        tmp_12_reg_826 <= {{select_ln26_fu_395_p3[5:2]}};
        tmp_8_reg_843 <= select_ln26_fu_395_p3[32'd1];
        trunc_ln27_reg_792 <= trunc_ln27_fu_409_p1;
        trunc_ln46_reg_832 <= trunc_ln46_fu_486_p1;
        trunc_ln60_reg_838 <= trunc_ln60_fu_490_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_324 <= v113_q1;
        reg_328 <= v113_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_332 <= grp_fu_160_p_dout0;
        reg_336 <= grp_fu_312_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_load_reg_946 <= v116_0_q0;
        v116_1_load_reg_961 <= v116_1_q0;
        v116_2_load_reg_966 <= v116_2_q0;
        v116_3_load_reg_971 <= v116_3_q0;
        v116_4_load_reg_976 <= v116_4_q1;
        v116_5_load_reg_981 <= v116_5_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_6_load_reg_1066 <= v116_6_q0;
        v116_7_load_reg_1071 <= v116_7_q0;
        v47_reg_1046 <= grp_fu_164_p_dout0;
        v53_reg_1051 <= grp_fu_320_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v11_reg_986 <= grp_fu_164_p_dout0;
        v17_reg_991 <= grp_fu_320_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v23_reg_1011 <= grp_fu_164_p_dout0;
        v29_reg_1016 <= grp_fu_320_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v35_reg_1026 <= grp_fu_164_p_dout0;
        v41_reg_1031 <= grp_fu_320_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln27_reg_772 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_1_fu_96 <= v3_fu_515_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_reg_848 <= v3_fu_515_p3;
    end
end
always @ (*) begin
    if (((icmp_ln27_reg_772 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln27_reg_772_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter3_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
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
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_108;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v4_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v4_load = v4_fu_104;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_308_p0 = v45_fu_697_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_308_p0 = v33_fu_689_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_308_p0 = v21_fu_681_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_308_p0 = v9_fu_673_p1;
    end else begin
        grp_fu_308_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_308_p1 = v47_reg_1046;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_308_p1 = v35_reg_1026;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_308_p1 = v23_reg_1011;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_308_p1 = v11_reg_986;
    end else begin
        grp_fu_308_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_312_p0 = v51_fu_701_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_312_p0 = v39_fu_693_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_312_p0 = v27_fu_685_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_312_p0 = v15_1_fu_677_p1;
    end else begin
        grp_fu_312_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_312_p1 = v53_reg_1051;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_312_p1 = v41_reg_1031;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_312_p1 = v29_reg_1016;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_312_p1 = v17_reg_991;
    end else begin
        grp_fu_312_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_316_p0 = v46_fu_663_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_316_p0 = v34_fu_653_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_316_p0 = v22_fu_606_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_316_p0 = v10_fu_555_p1;
    end else begin
        grp_fu_316_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_320_p0 = v52_fu_668_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_320_p0 = v40_fu_658_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_320_p0 = v28_fu_611_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_320_p0 = v16_fu_560_p1;
    end else begin
        grp_fu_320_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_address0_local = zext_ln83_fu_638_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v113_address0_local = zext_ln68_fu_590_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v113_address0_local = zext_ln54_fu_545_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_address0_local = zext_ln40_fu_471_p1;
    end else begin
        v113_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_address1_local = zext_ln75_fu_625_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v113_address1_local = zext_ln61_fu_574_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v113_address1_local = zext_ln47_fu_532_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_address1_local = zext_ln33_1_fu_436_p1;
    end else begin
        v113_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v113_ce0_local = 1'b1;
    end else begin
        v113_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v113_ce1_local = 1'b1;
    end else begin
        v113_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_address0_local = v116_0_addr_reg_884_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address0_local = zext_ln29_fu_595_p1;
    end else begin
        v116_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_0_ce0_local = 1'b1;
    end else begin
        v116_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_we0_local = 1'b1;
    end else begin
        v116_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_address0_local = v116_1_addr_reg_909_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address0_local = zext_ln29_fu_595_p1;
    end else begin
        v116_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_1_ce0_local = 1'b1;
    end else begin
        v116_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_we0_local = 1'b1;
    end else begin
        v116_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_2_address0_local = v116_2_addr_reg_914_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_address0_local = zext_ln29_fu_595_p1;
    end else begin
        v116_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v116_2_ce0_local = 1'b1;
    end else begin
        v116_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_2_we0_local = 1'b1;
    end else begin
        v116_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_3_address0_local = v116_3_addr_reg_919_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_address0_local = zext_ln29_fu_595_p1;
    end else begin
        v116_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v116_3_ce0_local = 1'b1;
    end else begin
        v116_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_3_we0_local = 1'b1;
    end else begin
        v116_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_4_ce0_local = 1'b1;
    end else begin
        v116_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_4_ce1_local = 1'b1;
    end else begin
        v116_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_4_we0_local = 1'b1;
    end else begin
        v116_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_5_ce0_local = 1'b1;
    end else begin
        v116_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_5_ce1_local = 1'b1;
    end else begin
        v116_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_5_we0_local = 1'b1;
    end else begin
        v116_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_6_address0_local = v116_6_addr_reg_936_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_6_address0_local = v116_6_addr_reg_936;
    end else begin
        v116_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_6_ce0_local = 1'b1;
    end else begin
        v116_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_6_we0_local = 1'b1;
    end else begin
        v116_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_7_address0_local = v116_7_addr_reg_941_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_7_address0_local = v116_7_addr_reg_941;
    end else begin
        v116_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_7_ce0_local = 1'b1;
    end else begin
        v116_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_7_we0_local = 1'b1;
    end else begin
        v116_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v124_ce0_local = 1'b1;
    end else begin
        v124_ce0_local = 1'b0;
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
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage1))) begin
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
assign add_ln27_1_fu_364_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln27_fu_373_p2 = (ap_sig_allocacmp_v4_load + 7'd1);
assign add_ln28_fu_643_p2 = (select_ln26_reg_786 + 7'd8);
assign add_ln33_fu_430_p2 = (tmp_fu_418_p3 + zext_ln33_fu_426_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign bitcast_ln36_fu_705_p1 = reg_332;
assign bitcast_ln43_fu_710_p1 = reg_336;
assign bitcast_ln50_fu_715_p1 = reg_332;
assign bitcast_ln57_fu_720_p1 = reg_336;
assign bitcast_ln64_fu_725_p1 = reg_332;
assign bitcast_ln71_fu_730_p1 = reg_336;
assign bitcast_ln78_fu_735_p1 = reg_332;
assign bitcast_ln86_fu_740_p1 = reg_336;
assign grp_fu_160_p_ce = 1'b1;
assign grp_fu_160_p_din0 = grp_fu_308_p0;
assign grp_fu_160_p_din1 = grp_fu_308_p1;
assign grp_fu_160_p_opcode = 2'd0;
assign grp_fu_164_p_ce = 1'b1;
assign grp_fu_164_p_din0 = grp_fu_316_p0;
assign grp_fu_164_p_din1 = v3_reg_848;
assign icmp_ln27_fu_358_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign icmp_ln31_fu_510_p2 = ((select_ln26_reg_786 == 7'd0) ? 1'b1 : 1'b0);
assign select_ln26_fu_395_p3 = ((tmp_7_fu_387_p3[0:0] == 1'b1) ? 7'd0 : v49_fu_100);
assign select_ln27_fu_403_p3 = ((tmp_7_fu_387_p3[0:0] == 1'b1) ? add_ln27_reg_781 : v4_load_reg_776);
assign tmp_11_fu_461_p4 = {{{trunc_ln27_fu_409_p1}, {tmp_s_fu_451_p4}}, {1'd1}};
assign tmp_13_fu_523_p5 = {{{{trunc_ln27_reg_792}, {tmp_12_reg_826}}, {1'd1}}, {trunc_ln46_reg_832}};
assign tmp_14_fu_537_p4 = {{{trunc_ln27_reg_792}, {tmp_12_reg_826}}, {2'd3}};
assign tmp_15_fu_565_p5 = {{{{trunc_ln27_reg_792}, {lshr_ln2_reg_812}}, {1'd1}}, {trunc_ln60_reg_838}};
assign tmp_16_fu_579_p6 = {{{{{trunc_ln27_reg_792}, {lshr_ln2_reg_812}}, {1'd1}}, {tmp_8_reg_843}}, {1'd1}};
assign tmp_17_fu_616_p5 = {{{{trunc_ln27_reg_792}, {lshr_ln2_reg_812}}, {2'd3}}, {trunc_ln46_reg_832}};
assign tmp_18_fu_630_p4 = {{{trunc_ln27_reg_792}, {lshr_ln2_reg_812}}, {3'd7}};
assign tmp_7_fu_387_p3 = v49_fu_100[32'd6];
assign tmp_fu_418_p3 = {{trunc_ln27_fu_409_p1}, {6'd0}};
assign tmp_s_fu_451_p4 = {{select_ln26_fu_395_p3[5:1]}};
assign trunc_ln27_fu_409_p1 = select_ln27_fu_403_p3[5:0];
assign trunc_ln46_fu_486_p1 = select_ln26_fu_395_p3[0:0];
assign trunc_ln60_fu_490_p1 = select_ln26_fu_395_p3[1:0];
assign v10_fu_555_p1 = reg_324;
assign v113_address0 = v113_address0_local;
assign v113_address1 = v113_address1_local;
assign v113_ce0 = v113_ce0_local;
assign v113_ce1 = v113_ce1_local;
assign v116_0_address0 = v116_0_address0_local;
assign v116_0_ce0 = v116_0_ce0_local;
assign v116_0_d0 = bitcast_ln36_fu_705_p1;
assign v116_0_we0 = v116_0_we0_local;
assign v116_1_address0 = v116_1_address0_local;
assign v116_1_ce0 = v116_1_ce0_local;
assign v116_1_d0 = bitcast_ln43_fu_710_p1;
assign v116_1_we0 = v116_1_we0_local;
assign v116_2_address0 = v116_2_address0_local;
assign v116_2_ce0 = v116_2_ce0_local;
assign v116_2_d0 = bitcast_ln50_fu_715_p1;
assign v116_2_we0 = v116_2_we0_local;
assign v116_3_address0 = v116_3_address0_local;
assign v116_3_ce0 = v116_3_ce0_local;
assign v116_3_d0 = bitcast_ln57_fu_720_p1;
assign v116_3_we0 = v116_3_we0_local;
assign v116_4_address0 = v116_4_addr_reg_924_pp0_iter3_reg;
assign v116_4_address1 = zext_ln29_fu_595_p1;
assign v116_4_ce0 = v116_4_ce0_local;
assign v116_4_ce1 = v116_4_ce1_local;
assign v116_4_d0 = bitcast_ln64_fu_725_p1;
assign v116_4_we0 = v116_4_we0_local;
assign v116_5_address0 = v116_5_addr_reg_930_pp0_iter3_reg;
assign v116_5_address1 = zext_ln29_fu_595_p1;
assign v116_5_ce0 = v116_5_ce0_local;
assign v116_5_ce1 = v116_5_ce1_local;
assign v116_5_d0 = bitcast_ln71_fu_730_p1;
assign v116_5_we0 = v116_5_we0_local;
assign v116_6_address0 = v116_6_address0_local;
assign v116_6_ce0 = v116_6_ce0_local;
assign v116_6_d0 = bitcast_ln78_fu_735_p1;
assign v116_6_we0 = v116_6_we0_local;
assign v116_7_address0 = v116_7_address0_local;
assign v116_7_ce0 = v116_7_ce0_local;
assign v116_7_d0 = bitcast_ln86_fu_740_p1;
assign v116_7_we0 = v116_7_we0_local;
assign v124_address0 = zext_ln27_fu_413_p1;
assign v124_ce0 = v124_ce0_local;
assign v15_1_fu_677_p1 = v116_1_load_reg_961;
assign v16_fu_560_p1 = reg_328;
assign v21_fu_681_p1 = v116_2_load_reg_966;
assign v22_fu_606_p1 = reg_324;
assign v27_fu_685_p1 = v116_3_load_reg_971;
assign v28_fu_611_p1 = reg_328;
assign v33_fu_689_p1 = v116_4_load_reg_976;
assign v34_fu_653_p1 = reg_324;
assign v39_fu_693_p1 = v116_5_load_reg_981;
assign v3_fu_515_p3 = ((icmp_ln31_fu_510_p2[0:0] == 1'b1) ? v124_q0 : v3_1_fu_96);
assign v40_fu_658_p1 = reg_328;
assign v45_fu_697_p1 = v116_6_load_reg_1066;
assign v46_fu_663_p1 = reg_324;
assign v51_fu_701_p1 = v116_7_load_reg_1071;
assign v52_fu_668_p1 = reg_328;
assign v9_fu_673_p1 = v116_0_load_reg_946;
assign zext_ln27_fu_413_p1 = select_ln27_fu_403_p3;
assign zext_ln29_fu_595_p1 = lshr_ln2_reg_812;
assign zext_ln33_1_fu_436_p1 = add_ln33_fu_430_p2;
assign zext_ln33_fu_426_p1 = select_ln26_fu_395_p3;
assign zext_ln40_fu_471_p1 = tmp_11_fu_461_p4;
assign zext_ln47_fu_532_p1 = tmp_13_fu_523_p5;
assign zext_ln54_fu_545_p1 = tmp_14_fu_537_p4;
assign zext_ln61_fu_574_p1 = tmp_15_fu_565_p5;
assign zext_ln68_fu_590_p1 = tmp_16_fu_579_p6;
assign zext_ln75_fu_625_p1 = tmp_17_fu_616_p5;
assign zext_ln83_fu_638_p1 = tmp_18_fu_630_p4;
endmodule 