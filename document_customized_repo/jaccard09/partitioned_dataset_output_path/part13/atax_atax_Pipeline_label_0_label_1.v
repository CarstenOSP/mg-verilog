
module atax_atax_Pipeline_label_0_label_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v124_address0,v124_ce0,v124_q0,v113_address0,v113_ce0,v113_q0,v113_address1,v113_ce1,v113_q1,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v116_0_address1,v116_0_ce1,v116_0_we1,v116_0_d1,v116_0_q1,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_1_address1,v116_1_ce1,v116_1_we1,v116_1_d1,v116_1_q1,grp_fu_98_p_din0,grp_fu_98_p_din1,grp_fu_98_p_opcode,grp_fu_98_p_dout0,grp_fu_98_p_ce,grp_fu_102_p_din0,grp_fu_102_p_din1,grp_fu_102_p_dout0,grp_fu_102_p_ce);  
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
output  [4:0] v116_0_address0;
output   v116_0_ce0;
output   v116_0_we0;
output  [31:0] v116_0_d0;
input  [31:0] v116_0_q0;
output  [4:0] v116_0_address1;
output   v116_0_ce1;
output   v116_0_we1;
output  [31:0] v116_0_d1;
input  [31:0] v116_0_q1;
output  [4:0] v116_1_address0;
output   v116_1_ce0;
output   v116_1_we0;
output  [31:0] v116_1_d0;
input  [31:0] v116_1_q0;
output  [4:0] v116_1_address1;
output   v116_1_ce1;
output   v116_1_we1;
output  [31:0] v116_1_d1;
input  [31:0] v116_1_q1;
output  [31:0] grp_fu_98_p_din0;
output  [31:0] grp_fu_98_p_din1;
output  [1:0] grp_fu_98_p_opcode;
input  [31:0] grp_fu_98_p_dout0;
output   grp_fu_98_p_ce;
output  [31:0] grp_fu_102_p_din0;
output  [31:0] grp_fu_102_p_din1;
input  [31:0] grp_fu_102_p_dout0;
output   grp_fu_102_p_ce;
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
reg   [0:0] icmp_ln27_reg_768;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_290;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_294;
reg   [31:0] reg_298;
wire   [31:0] grp_fu_278_p2;
reg   [31:0] reg_302;
wire   [0:0] icmp_ln27_fu_324_p2;
reg   [6:0] v4_load_reg_772;
wire   [6:0] add_ln27_fu_339_p2;
reg   [6:0] add_ln27_reg_777;
wire   [6:0] select_ln26_fu_361_p3;
reg   [6:0] select_ln26_reg_782;
wire   [5:0] trunc_ln27_fu_375_p1;
reg   [5:0] trunc_ln27_reg_788;
wire   [4:0] lshr_ln2_fu_407_p4;
reg   [4:0] lshr_ln2_reg_808;
reg   [3:0] tmp_15_reg_818;
wire   [0:0] trunc_ln46_fu_442_p1;
reg   [0:0] trunc_ln46_reg_825;
reg   [2:0] tmp_18_reg_831;
wire   [1:0] trunc_ln60_fu_456_p1;
reg   [1:0] trunc_ln60_reg_841;
reg   [0:0] tmp_20_reg_846;
wire   [31:0] v3_fu_481_p3;
reg   [31:0] v3_reg_852;
wire   [31:0] v10_fu_521_p1;
wire   [31:0] v16_fu_526_p1;
reg   [4:0] v116_0_addr_reg_888;
reg   [4:0] v116_0_addr_reg_888_pp0_iter2_reg;
reg   [4:0] v116_0_addr_reg_888_pp0_iter3_reg;
wire   [31:0] v22_fu_579_p1;
wire   [31:0] v28_fu_584_p1;
reg   [4:0] v116_1_addr_reg_913;
reg   [4:0] v116_1_addr_reg_913_pp0_iter2_reg;
reg   [4:0] v116_1_addr_reg_913_pp0_iter3_reg;
reg   [4:0] v116_0_addr_1_reg_918;
reg   [4:0] v116_0_addr_1_reg_918_pp0_iter2_reg;
reg   [4:0] v116_0_addr_1_reg_918_pp0_iter3_reg;
reg   [4:0] v116_1_addr_1_reg_924;
reg   [4:0] v116_1_addr_1_reg_924_pp0_iter2_reg;
reg   [4:0] v116_1_addr_1_reg_924_pp0_iter3_reg;
reg   [31:0] v116_0_load_reg_930;
wire   [31:0] v34_fu_640_p1;
wire   [31:0] v40_fu_645_p1;
reg   [31:0] v116_1_load_reg_945;
reg   [31:0] v116_0_load_1_reg_950;
reg   [31:0] v116_1_load_1_reg_955;
reg   [4:0] v116_0_addr_2_reg_960;
reg   [4:0] v116_0_addr_2_reg_960_pp0_iter2_reg;
reg   [4:0] v116_0_addr_2_reg_960_pp0_iter3_reg;
reg   [4:0] v116_0_addr_2_reg_960_pp0_iter4_reg;
reg   [4:0] v116_1_addr_2_reg_966;
reg   [4:0] v116_1_addr_2_reg_966_pp0_iter2_reg;
reg   [4:0] v116_1_addr_2_reg_966_pp0_iter3_reg;
reg   [4:0] v116_1_addr_2_reg_966_pp0_iter4_reg;
reg   [4:0] v116_0_addr_3_reg_972;
reg   [4:0] v116_0_addr_3_reg_972_pp0_iter2_reg;
reg   [4:0] v116_0_addr_3_reg_972_pp0_iter3_reg;
reg   [4:0] v116_0_addr_3_reg_972_pp0_iter4_reg;
reg   [4:0] v116_1_addr_3_reg_977;
reg   [4:0] v116_1_addr_3_reg_977_pp0_iter2_reg;
reg   [4:0] v116_1_addr_3_reg_977_pp0_iter3_reg;
reg   [4:0] v116_1_addr_3_reg_977_pp0_iter4_reg;
reg   [31:0] v11_reg_982;
wire   [31:0] grp_fu_286_p2;
reg   [31:0] v17_reg_987;
wire   [31:0] v46_fu_663_p1;
wire   [31:0] v52_fu_668_p1;
reg   [31:0] v116_0_load_2_reg_1002;
reg   [31:0] v116_1_load_2_reg_1007;
reg   [31:0] v116_0_load_3_reg_1012;
reg   [31:0] v116_1_load_3_reg_1017;
wire   [31:0] v9_fu_673_p1;
reg   [31:0] v23_reg_1027;
reg   [31:0] v29_reg_1032;
wire   [31:0] v15_1_fu_677_p1;
reg   [31:0] v35_reg_1042;
reg   [31:0] v41_reg_1047;
wire   [31:0] v21_fu_681_p1;
wire   [31:0] v27_fu_685_p1;
reg   [31:0] v47_reg_1062;
reg   [31:0] v53_reg_1067;
wire   [31:0] v33_fu_689_p1;
wire   [31:0] v39_fu_693_p1;
wire   [31:0] v45_fu_697_p1;
wire   [31:0] v51_fu_701_p1;
reg   [31:0] v36_reg_1092;
reg   [31:0] v42_reg_1097;
reg   [31:0] v48_reg_1102;
reg   [31:0] v54_reg_1107;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln27_fu_379_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln33_1_fu_402_p1;
wire   [63:0] zext_ln40_fu_427_p1;
wire   [63:0] zext_ln47_fu_498_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln54_fu_511_p1;
wire   [63:0] zext_ln61_fu_540_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln68_fu_556_p1;
wire   [63:0] zext_ln29_fu_561_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln75_fu_598_p1;
wire   [63:0] zext_ln83_fu_611_p1;
wire   [63:0] zext_ln46_fu_573_p1;
wire   [63:0] zext_ln60_fu_634_p1;
wire   [63:0] zext_ln74_fu_657_p1;
reg   [31:0] v3_1_fu_90;
reg   [6:0] v49_fu_94;
wire   [6:0] add_ln28_fu_616_p2;
wire    ap_loop_init;
reg   [6:0] v4_fu_98;
wire   [6:0] select_ln27_fu_369_p3;
reg   [6:0] ap_sig_allocacmp_v4_load;
reg   [9:0] indvar_flatten_fu_102;
wire   [9:0] add_ln27_1_fu_330_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v124_ce0_local;
reg    v113_ce1_local;
reg   [11:0] v113_address1_local;
reg    v113_ce0_local;
reg   [11:0] v113_address0_local;
reg    v116_0_ce1_local;
reg   [4:0] v116_0_address1_local;
reg    v116_0_ce0_local;
reg   [4:0] v116_0_address0_local;
reg    v116_0_we1_local;
reg   [31:0] v116_0_d1_local;
wire   [31:0] bitcast_ln36_fu_705_p1;
wire   [31:0] bitcast_ln50_fu_715_p1;
reg    v116_0_we0_local;
reg   [31:0] v116_0_d0_local;
wire   [31:0] bitcast_ln64_fu_725_p1;
wire   [31:0] bitcast_ln78_fu_733_p1;
reg    v116_1_ce1_local;
reg   [4:0] v116_1_address1_local;
reg    v116_1_ce0_local;
reg   [4:0] v116_1_address0_local;
reg    v116_1_we1_local;
reg   [31:0] v116_1_d1_local;
wire   [31:0] bitcast_ln43_fu_710_p1;
wire   [31:0] bitcast_ln57_fu_720_p1;
reg    v116_1_we0_local;
reg   [31:0] v116_1_d0_local;
wire   [31:0] bitcast_ln71_fu_729_p1;
wire   [31:0] bitcast_ln86_fu_737_p1;
reg   [31:0] grp_fu_274_p0;
reg   [31:0] grp_fu_274_p1;
reg   [31:0] grp_fu_278_p0;
reg   [31:0] grp_fu_278_p1;
reg   [31:0] grp_fu_282_p0;
reg   [31:0] grp_fu_286_p0;
wire   [0:0] tmp_fu_353_p3;
wire   [11:0] tmp_s_fu_384_p3;
wire   [11:0] zext_ln33_fu_392_p1;
wire   [11:0] add_ln33_fu_396_p2;
wire   [11:0] tmp_14_fu_417_p4;
wire   [0:0] icmp_ln31_fu_476_p2;
wire   [11:0] tmp_16_fu_489_p5;
wire   [11:0] tmp_17_fu_503_p4;
wire   [11:0] tmp_19_fu_531_p5;
wire   [11:0] tmp_21_fu_545_p6;
wire   [4:0] or_ln46_1_fu_566_p3;
wire   [11:0] tmp_22_fu_589_p5;
wire   [11:0] tmp_23_fu_603_p4;
wire   [4:0] or_ln60_1_fu_626_p4;
wire   [4:0] or_ln74_1_fu_650_p3;
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
#0 v3_1_fu_90 = 32'd0;
#0 v49_fu_94 = 7'd0;
#0 v4_fu_98 = 7'd0;
#0 indvar_flatten_fu_102 = 10'd0;
#0 ap_done_reg = 1'b0;
end
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U34(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_278_p0),.din1(grp_fu_278_p1),.ce(1'b1),.dout(grp_fu_278_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U36(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_286_p0),.din1(v3_reg_852),.ce(1'b1),.dout(grp_fu_286_p2));
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln27_fu_324_p2 == 1'd0))) begin
            indvar_flatten_fu_102 <= add_ln27_1_fu_330_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_102 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v49_fu_94 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v49_fu_94 <= add_ln28_fu_616_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4_fu_98 <= 7'd0;
    end else if (((icmp_ln27_reg_768 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v4_fu_98 <= select_ln27_fu_369_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln27_reg_777 <= add_ln27_fu_339_p2;
        icmp_ln27_reg_768 <= icmp_ln27_fu_324_p2;
        v116_0_addr_1_reg_918[4 : 1] <= zext_ln46_fu_573_p1[4 : 1];
        v116_0_addr_1_reg_918_pp0_iter2_reg[4 : 1] <= v116_0_addr_1_reg_918[4 : 1];
        v116_0_addr_1_reg_918_pp0_iter3_reg[4 : 1] <= v116_0_addr_1_reg_918_pp0_iter2_reg[4 : 1];
        v116_0_addr_reg_888 <= zext_ln29_fu_561_p1;
        v116_0_addr_reg_888_pp0_iter2_reg <= v116_0_addr_reg_888;
        v116_0_addr_reg_888_pp0_iter3_reg <= v116_0_addr_reg_888_pp0_iter2_reg;
        v116_1_addr_1_reg_924[4 : 1] <= zext_ln46_fu_573_p1[4 : 1];
        v116_1_addr_1_reg_924_pp0_iter2_reg[4 : 1] <= v116_1_addr_1_reg_924[4 : 1];
        v116_1_addr_1_reg_924_pp0_iter3_reg[4 : 1] <= v116_1_addr_1_reg_924_pp0_iter2_reg[4 : 1];
        v116_1_addr_reg_913 <= zext_ln29_fu_561_p1;
        v116_1_addr_reg_913_pp0_iter2_reg <= v116_1_addr_reg_913;
        v116_1_addr_reg_913_pp0_iter3_reg <= v116_1_addr_reg_913_pp0_iter2_reg;
        v4_load_reg_772 <= ap_sig_allocacmp_v4_load;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln2_reg_808 <= {{select_ln26_fu_361_p3[5:1]}};
        select_ln26_reg_782 <= select_ln26_fu_361_p3;
        tmp_15_reg_818 <= {{select_ln26_fu_361_p3[5:2]}};
        tmp_18_reg_831 <= {{select_ln26_fu_361_p3[5:3]}};
        tmp_20_reg_846 <= select_ln26_fu_361_p3[32'd1];
        trunc_ln27_reg_788 <= trunc_ln27_fu_375_p1;
        trunc_ln46_reg_825 <= trunc_ln46_fu_442_p1;
        trunc_ln60_reg_841 <= trunc_ln60_fu_456_p1;
        v116_0_addr_2_reg_960[0] <= zext_ln60_fu_634_p1[0];
v116_0_addr_2_reg_960[4 : 2] <= zext_ln60_fu_634_p1[4 : 2];
        v116_0_addr_2_reg_960_pp0_iter2_reg[0] <= v116_0_addr_2_reg_960[0];
v116_0_addr_2_reg_960_pp0_iter2_reg[4 : 2] <= v116_0_addr_2_reg_960[4 : 2];
        v116_0_addr_2_reg_960_pp0_iter3_reg[0] <= v116_0_addr_2_reg_960_pp0_iter2_reg[0];
v116_0_addr_2_reg_960_pp0_iter3_reg[4 : 2] <= v116_0_addr_2_reg_960_pp0_iter2_reg[4 : 2];
        v116_0_addr_2_reg_960_pp0_iter4_reg[0] <= v116_0_addr_2_reg_960_pp0_iter3_reg[0];
v116_0_addr_2_reg_960_pp0_iter4_reg[4 : 2] <= v116_0_addr_2_reg_960_pp0_iter3_reg[4 : 2];
        v116_0_addr_3_reg_972[4 : 2] <= zext_ln74_fu_657_p1[4 : 2];
        v116_0_addr_3_reg_972_pp0_iter2_reg[4 : 2] <= v116_0_addr_3_reg_972[4 : 2];
        v116_0_addr_3_reg_972_pp0_iter3_reg[4 : 2] <= v116_0_addr_3_reg_972_pp0_iter2_reg[4 : 2];
        v116_0_addr_3_reg_972_pp0_iter4_reg[4 : 2] <= v116_0_addr_3_reg_972_pp0_iter3_reg[4 : 2];
        v116_1_addr_2_reg_966[0] <= zext_ln60_fu_634_p1[0];
v116_1_addr_2_reg_966[4 : 2] <= zext_ln60_fu_634_p1[4 : 2];
        v116_1_addr_2_reg_966_pp0_iter2_reg[0] <= v116_1_addr_2_reg_966[0];
v116_1_addr_2_reg_966_pp0_iter2_reg[4 : 2] <= v116_1_addr_2_reg_966[4 : 2];
        v116_1_addr_2_reg_966_pp0_iter3_reg[0] <= v116_1_addr_2_reg_966_pp0_iter2_reg[0];
v116_1_addr_2_reg_966_pp0_iter3_reg[4 : 2] <= v116_1_addr_2_reg_966_pp0_iter2_reg[4 : 2];
        v116_1_addr_2_reg_966_pp0_iter4_reg[0] <= v116_1_addr_2_reg_966_pp0_iter3_reg[0];
v116_1_addr_2_reg_966_pp0_iter4_reg[4 : 2] <= v116_1_addr_2_reg_966_pp0_iter3_reg[4 : 2];
        v116_1_addr_3_reg_977[4 : 2] <= zext_ln74_fu_657_p1[4 : 2];
        v116_1_addr_3_reg_977_pp0_iter2_reg[4 : 2] <= v116_1_addr_3_reg_977[4 : 2];
        v116_1_addr_3_reg_977_pp0_iter3_reg[4 : 2] <= v116_1_addr_3_reg_977_pp0_iter2_reg[4 : 2];
        v116_1_addr_3_reg_977_pp0_iter4_reg[4 : 2] <= v116_1_addr_3_reg_977_pp0_iter3_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_290 <= v113_q1;
        reg_294 <= v113_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_298 <= grp_fu_98_p_dout0;
        reg_302 <= grp_fu_278_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_load_1_reg_950 <= v116_0_q0;
        v116_0_load_reg_930 <= v116_0_q1;
        v116_1_load_1_reg_955 <= v116_1_q0;
        v116_1_load_reg_945 <= v116_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_load_2_reg_1002 <= v116_0_q1;
        v116_0_load_3_reg_1012 <= v116_0_q0;
        v116_1_load_2_reg_1007 <= v116_1_q1;
        v116_1_load_3_reg_1017 <= v116_1_q0;
        v11_reg_982 <= grp_fu_102_p_dout0;
        v17_reg_987 <= grp_fu_286_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v23_reg_1027 <= grp_fu_102_p_dout0;
        v29_reg_1032 <= grp_fu_286_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v35_reg_1042 <= grp_fu_102_p_dout0;
        v41_reg_1047 <= grp_fu_286_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v36_reg_1092 <= grp_fu_98_p_dout0;
        v42_reg_1097 <= grp_fu_278_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln27_reg_768 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_1_fu_90 <= v3_fu_481_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_reg_852 <= v3_fu_481_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v47_reg_1062 <= grp_fu_102_p_dout0;
        v53_reg_1067 <= grp_fu_286_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v48_reg_1102 <= grp_fu_98_p_dout0;
        v54_reg_1107 <= grp_fu_278_p2;
    end
end
always @ (*) begin
    if (((icmp_ln27_reg_768 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_102;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v4_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v4_load = v4_fu_98;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_274_p0 = v45_fu_697_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_274_p0 = v33_fu_689_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_274_p0 = v21_fu_681_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_274_p0 = v9_fu_673_p1;
    end else begin
        grp_fu_274_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_274_p1 = v47_reg_1062;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_274_p1 = v35_reg_1042;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_274_p1 = v23_reg_1027;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_274_p1 = v11_reg_982;
    end else begin
        grp_fu_274_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_278_p0 = v51_fu_701_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_278_p0 = v39_fu_693_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_278_p0 = v27_fu_685_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_278_p0 = v15_1_fu_677_p1;
    end else begin
        grp_fu_278_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_278_p1 = v53_reg_1067;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_278_p1 = v41_reg_1047;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_278_p1 = v29_reg_1032;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_278_p1 = v17_reg_987;
    end else begin
        grp_fu_278_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_282_p0 = v46_fu_663_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_282_p0 = v34_fu_640_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_282_p0 = v22_fu_579_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_282_p0 = v10_fu_521_p1;
    end else begin
        grp_fu_282_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_286_p0 = v52_fu_668_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_286_p0 = v40_fu_645_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_286_p0 = v28_fu_584_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_286_p0 = v16_fu_526_p1;
    end else begin
        grp_fu_286_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_address0_local = zext_ln83_fu_611_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v113_address0_local = zext_ln68_fu_556_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v113_address0_local = zext_ln54_fu_511_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_address0_local = zext_ln40_fu_427_p1;
    end else begin
        v113_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_address1_local = zext_ln75_fu_598_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v113_address1_local = zext_ln61_fu_540_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v113_address1_local = zext_ln47_fu_498_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_address1_local = zext_ln33_1_fu_402_p1;
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
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_0_address0_local = v116_0_addr_3_reg_972_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_address0_local = v116_0_addr_2_reg_960_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_address0_local = zext_ln74_fu_657_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address0_local = zext_ln46_fu_573_p1;
    end else begin
        v116_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_0_address1_local = v116_0_addr_1_reg_918_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_address1_local = v116_0_addr_reg_888_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_address1_local = zext_ln60_fu_634_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address1_local = zext_ln29_fu_561_p1;
    end else begin
        v116_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_0_ce0_local = 1'b1;
    end else begin
        v116_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_0_ce1_local = 1'b1;
    end else begin
        v116_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v116_0_d0_local = bitcast_ln78_fu_733_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v116_0_d0_local = bitcast_ln64_fu_725_p1;
        end else begin
            v116_0_d0_local = 'bx;
        end
    end else begin
        v116_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v116_0_d1_local = bitcast_ln50_fu_715_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v116_0_d1_local = bitcast_ln36_fu_705_p1;
        end else begin
            v116_0_d1_local = 'bx;
        end
    end else begin
        v116_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_0_we0_local = 1'b1;
    end else begin
        v116_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_0_we1_local = 1'b1;
    end else begin
        v116_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_1_address0_local = v116_1_addr_3_reg_977_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_address0_local = v116_1_addr_2_reg_966_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_address0_local = zext_ln74_fu_657_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address0_local = zext_ln46_fu_573_p1;
    end else begin
        v116_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_1_address1_local = v116_1_addr_1_reg_924_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_address1_local = v116_1_addr_reg_913_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_address1_local = zext_ln60_fu_634_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address1_local = zext_ln29_fu_561_p1;
    end else begin
        v116_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_1_ce0_local = 1'b1;
    end else begin
        v116_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_1_ce1_local = 1'b1;
    end else begin
        v116_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v116_1_d0_local = bitcast_ln86_fu_737_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v116_1_d0_local = bitcast_ln71_fu_729_p1;
        end else begin
            v116_1_d0_local = 'bx;
        end
    end else begin
        v116_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v116_1_d1_local = bitcast_ln57_fu_720_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v116_1_d1_local = bitcast_ln43_fu_710_p1;
        end else begin
            v116_1_d1_local = 'bx;
        end
    end else begin
        v116_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_1_we0_local = 1'b1;
    end else begin
        v116_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_1_we1_local = 1'b1;
    end else begin
        v116_1_we1_local = 1'b0;
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
assign add_ln27_1_fu_330_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln27_fu_339_p2 = (ap_sig_allocacmp_v4_load + 7'd1);
assign add_ln28_fu_616_p2 = (select_ln26_reg_782 + 7'd8);
assign add_ln33_fu_396_p2 = (tmp_s_fu_384_p3 + zext_ln33_fu_392_p1);
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
assign bitcast_ln36_fu_705_p1 = reg_298;
assign bitcast_ln43_fu_710_p1 = reg_302;
assign bitcast_ln50_fu_715_p1 = reg_298;
assign bitcast_ln57_fu_720_p1 = reg_302;
assign bitcast_ln64_fu_725_p1 = v36_reg_1092;
assign bitcast_ln71_fu_729_p1 = v42_reg_1097;
assign bitcast_ln78_fu_733_p1 = v48_reg_1102;
assign bitcast_ln86_fu_737_p1 = v54_reg_1107;
assign grp_fu_102_p_ce = 1'b1;
assign grp_fu_102_p_din0 = grp_fu_282_p0;
assign grp_fu_102_p_din1 = v3_reg_852;
assign grp_fu_98_p_ce = 1'b1;
assign grp_fu_98_p_din0 = grp_fu_274_p0;
assign grp_fu_98_p_din1 = grp_fu_274_p1;
assign grp_fu_98_p_opcode = 2'd0;
assign icmp_ln27_fu_324_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign icmp_ln31_fu_476_p2 = ((select_ln26_reg_782 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln2_fu_407_p4 = {{select_ln26_fu_361_p3[5:1]}};
assign or_ln46_1_fu_566_p3 = {{tmp_15_reg_818}, {1'd1}};
assign or_ln60_1_fu_626_p4 = {{{tmp_18_reg_831}, {1'd1}}, {tmp_20_reg_846}};
assign or_ln74_1_fu_650_p3 = {{tmp_18_reg_831}, {2'd3}};
assign select_ln26_fu_361_p3 = ((tmp_fu_353_p3[0:0] == 1'b1) ? 7'd0 : v49_fu_94);
assign select_ln27_fu_369_p3 = ((tmp_fu_353_p3[0:0] == 1'b1) ? add_ln27_reg_777 : v4_load_reg_772);
assign tmp_14_fu_417_p4 = {{{trunc_ln27_fu_375_p1}, {lshr_ln2_fu_407_p4}}, {1'd1}};
assign tmp_16_fu_489_p5 = {{{{trunc_ln27_reg_788}, {tmp_15_reg_818}}, {1'd1}}, {trunc_ln46_reg_825}};
assign tmp_17_fu_503_p4 = {{{trunc_ln27_reg_788}, {tmp_15_reg_818}}, {2'd3}};
assign tmp_19_fu_531_p5 = {{{{trunc_ln27_reg_788}, {tmp_18_reg_831}}, {1'd1}}, {trunc_ln60_reg_841}};
assign tmp_21_fu_545_p6 = {{{{{trunc_ln27_reg_788}, {tmp_18_reg_831}}, {1'd1}}, {tmp_20_reg_846}}, {1'd1}};
assign tmp_22_fu_589_p5 = {{{{trunc_ln27_reg_788}, {tmp_18_reg_831}}, {2'd3}}, {trunc_ln46_reg_825}};
assign tmp_23_fu_603_p4 = {{{trunc_ln27_reg_788}, {tmp_18_reg_831}}, {3'd7}};
assign tmp_fu_353_p3 = v49_fu_94[32'd6];
assign tmp_s_fu_384_p3 = {{trunc_ln27_fu_375_p1}, {6'd0}};
assign trunc_ln27_fu_375_p1 = select_ln27_fu_369_p3[5:0];
assign trunc_ln46_fu_442_p1 = select_ln26_fu_361_p3[0:0];
assign trunc_ln60_fu_456_p1 = select_ln26_fu_361_p3[1:0];
assign v10_fu_521_p1 = reg_290;
assign v113_address0 = v113_address0_local;
assign v113_address1 = v113_address1_local;
assign v113_ce0 = v113_ce0_local;
assign v113_ce1 = v113_ce1_local;
assign v116_0_address0 = v116_0_address0_local;
assign v116_0_address1 = v116_0_address1_local;
assign v116_0_ce0 = v116_0_ce0_local;
assign v116_0_ce1 = v116_0_ce1_local;
assign v116_0_d0 = v116_0_d0_local;
assign v116_0_d1 = v116_0_d1_local;
assign v116_0_we0 = v116_0_we0_local;
assign v116_0_we1 = v116_0_we1_local;
assign v116_1_address0 = v116_1_address0_local;
assign v116_1_address1 = v116_1_address1_local;
assign v116_1_ce0 = v116_1_ce0_local;
assign v116_1_ce1 = v116_1_ce1_local;
assign v116_1_d0 = v116_1_d0_local;
assign v116_1_d1 = v116_1_d1_local;
assign v116_1_we0 = v116_1_we0_local;
assign v116_1_we1 = v116_1_we1_local;
assign v124_address0 = zext_ln27_fu_379_p1;
assign v124_ce0 = v124_ce0_local;
assign v15_1_fu_677_p1 = v116_1_load_reg_945;
assign v16_fu_526_p1 = reg_294;
assign v21_fu_681_p1 = v116_0_load_1_reg_950;
assign v22_fu_579_p1 = reg_290;
assign v27_fu_685_p1 = v116_1_load_1_reg_955;
assign v28_fu_584_p1 = reg_294;
assign v33_fu_689_p1 = v116_0_load_2_reg_1002;
assign v34_fu_640_p1 = reg_290;
assign v39_fu_693_p1 = v116_1_load_2_reg_1007;
assign v3_fu_481_p3 = ((icmp_ln31_fu_476_p2[0:0] == 1'b1) ? v124_q0 : v3_1_fu_90);
assign v40_fu_645_p1 = reg_294;
assign v45_fu_697_p1 = v116_0_load_3_reg_1012;
assign v46_fu_663_p1 = reg_290;
assign v51_fu_701_p1 = v116_1_load_3_reg_1017;
assign v52_fu_668_p1 = reg_294;
assign v9_fu_673_p1 = v116_0_load_reg_930;
assign zext_ln27_fu_379_p1 = select_ln27_fu_369_p3;
assign zext_ln29_fu_561_p1 = lshr_ln2_reg_808;
assign zext_ln33_1_fu_402_p1 = add_ln33_fu_396_p2;
assign zext_ln33_fu_392_p1 = select_ln26_fu_361_p3;
assign zext_ln40_fu_427_p1 = tmp_14_fu_417_p4;
assign zext_ln46_fu_573_p1 = or_ln46_1_fu_566_p3;
assign zext_ln47_fu_498_p1 = tmp_16_fu_489_p5;
assign zext_ln54_fu_511_p1 = tmp_17_fu_503_p4;
assign zext_ln60_fu_634_p1 = or_ln60_1_fu_626_p4;
assign zext_ln61_fu_540_p1 = tmp_19_fu_531_p5;
assign zext_ln68_fu_556_p1 = tmp_21_fu_545_p6;
assign zext_ln74_fu_657_p1 = or_ln74_1_fu_650_p3;
assign zext_ln75_fu_598_p1 = tmp_22_fu_589_p5;
assign zext_ln83_fu_611_p1 = tmp_23_fu_603_p4;
always @ (posedge ap_clk) begin
    v116_0_addr_1_reg_918[0] <= 1'b1;
    v116_0_addr_1_reg_918_pp0_iter2_reg[0] <= 1'b1;
    v116_0_addr_1_reg_918_pp0_iter3_reg[0] <= 1'b1;
    v116_1_addr_1_reg_924[0] <= 1'b1;
    v116_1_addr_1_reg_924_pp0_iter2_reg[0] <= 1'b1;
    v116_1_addr_1_reg_924_pp0_iter3_reg[0] <= 1'b1;
    v116_0_addr_2_reg_960[1] <= 1'b1;
    v116_0_addr_2_reg_960_pp0_iter2_reg[1] <= 1'b1;
    v116_0_addr_2_reg_960_pp0_iter3_reg[1] <= 1'b1;
    v116_0_addr_2_reg_960_pp0_iter4_reg[1] <= 1'b1;
    v116_1_addr_2_reg_966[1] <= 1'b1;
    v116_1_addr_2_reg_966_pp0_iter2_reg[1] <= 1'b1;
    v116_1_addr_2_reg_966_pp0_iter3_reg[1] <= 1'b1;
    v116_1_addr_2_reg_966_pp0_iter4_reg[1] <= 1'b1;
    v116_0_addr_3_reg_972[1:0] <= 2'b11;
    v116_0_addr_3_reg_972_pp0_iter2_reg[1:0] <= 2'b11;
    v116_0_addr_3_reg_972_pp0_iter3_reg[1:0] <= 2'b11;
    v116_0_addr_3_reg_972_pp0_iter4_reg[1:0] <= 2'b11;
    v116_1_addr_3_reg_977[1:0] <= 2'b11;
    v116_1_addr_3_reg_977_pp0_iter2_reg[1:0] <= 2'b11;
    v116_1_addr_3_reg_977_pp0_iter3_reg[1:0] <= 2'b11;
    v116_1_addr_3_reg_977_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 
