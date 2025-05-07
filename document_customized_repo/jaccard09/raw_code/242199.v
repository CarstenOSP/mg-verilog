module atax_atax_Pipeline_label_0_label_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v124_address0,v124_ce0,v124_q0,v124_1_address0,v124_1_ce0,v124_1_q0,v124_2_address0,v124_2_ce0,v124_2_q0,v124_3_address0,v124_3_ce0,v124_3_q0,v113_0_address0,v113_0_ce0,v113_0_q0,v113_1_address0,v113_1_ce0,v113_1_q0,v113_2_address0,v113_2_ce0,v113_2_q0,v113_3_address0,v113_3_ce0,v113_3_q0,v113_4_address0,v113_4_ce0,v113_4_q0,v113_5_address0,v113_5_ce0,v113_5_q0,v113_6_address0,v113_6_ce0,v113_6_q0,v113_7_address0,v113_7_ce0,v113_7_q0,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v116_0_address1,v116_0_ce1,v116_0_we1,v116_0_d1,v116_0_q1,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_1_address1,v116_1_ce1,v116_1_we1,v116_1_d1,v116_1_q1,grp_fu_184_p_din0,grp_fu_184_p_din1,grp_fu_184_p_opcode,grp_fu_184_p_dout0,grp_fu_184_p_ce,grp_fu_188_p_din0,grp_fu_188_p_din1,grp_fu_188_p_opcode,grp_fu_188_p_dout0,grp_fu_188_p_ce,grp_fu_192_p_din0,grp_fu_192_p_din1,grp_fu_192_p_dout0,grp_fu_192_p_ce,grp_fu_196_p_din0,grp_fu_196_p_din1,grp_fu_196_p_dout0,grp_fu_196_p_ce); 
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
output  [3:0] v124_address0;
output   v124_ce0;
input  [31:0] v124_q0;
output  [3:0] v124_1_address0;
output   v124_1_ce0;
input  [31:0] v124_1_q0;
output  [3:0] v124_2_address0;
output   v124_2_ce0;
input  [31:0] v124_2_q0;
output  [3:0] v124_3_address0;
output   v124_3_ce0;
input  [31:0] v124_3_q0;
output  [8:0] v113_0_address0;
output   v113_0_ce0;
input  [31:0] v113_0_q0;
output  [8:0] v113_1_address0;
output   v113_1_ce0;
input  [31:0] v113_1_q0;
output  [8:0] v113_2_address0;
output   v113_2_ce0;
input  [31:0] v113_2_q0;
output  [8:0] v113_3_address0;
output   v113_3_ce0;
input  [31:0] v113_3_q0;
output  [8:0] v113_4_address0;
output   v113_4_ce0;
input  [31:0] v113_4_q0;
output  [8:0] v113_5_address0;
output   v113_5_ce0;
input  [31:0] v113_5_q0;
output  [8:0] v113_6_address0;
output   v113_6_ce0;
input  [31:0] v113_6_q0;
output  [8:0] v113_7_address0;
output   v113_7_ce0;
input  [31:0] v113_7_q0;
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
output  [31:0] grp_fu_184_p_din0;
output  [31:0] grp_fu_184_p_din1;
output  [1:0] grp_fu_184_p_opcode;
input  [31:0] grp_fu_184_p_dout0;
output   grp_fu_184_p_ce;
output  [31:0] grp_fu_188_p_din0;
output  [31:0] grp_fu_188_p_din1;
output  [1:0] grp_fu_188_p_opcode;
input  [31:0] grp_fu_188_p_dout0;
output   grp_fu_188_p_ce;
output  [31:0] grp_fu_192_p_din0;
output  [31:0] grp_fu_192_p_din1;
input  [31:0] grp_fu_192_p_dout0;
output   grp_fu_192_p_ce;
output  [31:0] grp_fu_196_p_din0;
output  [31:0] grp_fu_196_p_din1;
input  [31:0] grp_fu_196_p_dout0;
output   grp_fu_196_p_ce;
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
reg   [0:0] icmp_ln27_reg_762;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_372;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_376;
wire   [0:0] icmp_ln27_fu_398_p2;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] v49_load_reg_766;
wire   [0:0] tmp_fu_422_p3;
reg   [0:0] tmp_reg_771;
wire   [5:0] trunc_ln27_fu_438_p1;
reg   [5:0] trunc_ln27_reg_776;
wire   [1:0] trunc_ln27_1_fu_442_p1;
reg   [1:0] trunc_ln27_1_reg_781;
wire   [6:0] select_ln26_fu_474_p3;
reg   [6:0] select_ln26_reg_806;
wire   [31:0] v6_fu_480_p11;
reg   [31:0] v6_reg_812;
wire   [2:0] lshr_ln3_fu_503_p4;
reg   [2:0] lshr_ln3_reg_817;
reg   [4:0] lshr_ln29_1_reg_863;
reg   [3:0] tmp_118_reg_868;
reg   [0:0] tmp_33_reg_873;
wire   [31:0] v3_fu_568_p3;
reg   [31:0] v3_reg_878;
reg   [31:0] v113_0_load_reg_884;
reg   [31:0] v113_1_load_reg_889;
reg   [31:0] v113_2_load_reg_894;
reg   [31:0] v113_3_load_reg_899;
reg   [31:0] v113_4_load_reg_904;
reg   [31:0] v113_5_load_reg_909;
reg   [31:0] v113_6_load_reg_914;
reg   [31:0] v113_7_load_reg_919;
wire   [31:0] v10_fu_580_p1;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] v16_fu_584_p1;
reg   [4:0] v116_0_addr_reg_934;
reg   [4:0] v116_0_addr_reg_934_pp0_iter2_reg;
reg   [4:0] v116_0_addr_reg_934_pp0_iter3_reg;
wire   [31:0] v22_fu_616_p1;
wire   [31:0] v28_fu_620_p1;
reg   [4:0] v116_1_addr_reg_949;
reg   [4:0] v116_1_addr_reg_949_pp0_iter2_reg;
reg   [4:0] v116_1_addr_reg_949_pp0_iter3_reg;
reg   [4:0] v116_0_addr_1_reg_954;
reg   [4:0] v116_0_addr_1_reg_954_pp0_iter2_reg;
reg   [4:0] v116_0_addr_1_reg_954_pp0_iter3_reg;
reg   [4:0] v116_1_addr_1_reg_960;
reg   [4:0] v116_1_addr_1_reg_960_pp0_iter2_reg;
reg   [4:0] v116_1_addr_1_reg_960_pp0_iter3_reg;
reg   [31:0] v116_0_load_reg_966;
wire   [31:0] v34_fu_638_p1;
wire   [31:0] v40_fu_642_p1;
reg   [31:0] v116_1_load_reg_981;
reg   [31:0] v116_0_load_1_reg_986;
reg   [31:0] v116_1_load_1_reg_991;
reg   [4:0] v116_0_addr_2_reg_996;
reg   [4:0] v116_0_addr_2_reg_996_pp0_iter2_reg;
reg   [4:0] v116_0_addr_2_reg_996_pp0_iter3_reg;
reg   [4:0] v116_0_addr_2_reg_996_pp0_iter4_reg;
reg   [4:0] v116_1_addr_2_reg_1002;
reg   [4:0] v116_1_addr_2_reg_1002_pp0_iter2_reg;
reg   [4:0] v116_1_addr_2_reg_1002_pp0_iter3_reg;
reg   [4:0] v116_1_addr_2_reg_1002_pp0_iter4_reg;
reg   [4:0] v116_0_addr_3_reg_1008;
reg   [4:0] v116_0_addr_3_reg_1008_pp0_iter2_reg;
reg   [4:0] v116_0_addr_3_reg_1008_pp0_iter3_reg;
reg   [4:0] v116_0_addr_3_reg_1008_pp0_iter4_reg;
reg   [4:0] v116_1_addr_3_reg_1013;
reg   [4:0] v116_1_addr_3_reg_1013_pp0_iter2_reg;
reg   [4:0] v116_1_addr_3_reg_1013_pp0_iter3_reg;
reg   [4:0] v116_1_addr_3_reg_1013_pp0_iter4_reg;
reg   [31:0] v11_reg_1018;
reg   [31:0] v17_reg_1023;
wire   [31:0] v46_fu_659_p1;
wire   [31:0] v52_fu_663_p1;
reg   [31:0] v116_0_load_2_reg_1038;
reg   [31:0] v116_1_load_2_reg_1043;
reg   [31:0] v116_0_load_3_reg_1048;
reg   [31:0] v116_1_load_3_reg_1053;
wire   [31:0] v9_fu_667_p1;
reg   [31:0] v23_reg_1063;
reg   [31:0] v29_reg_1068;
wire   [31:0] v15_fu_671_p1;
reg   [31:0] v35_reg_1078;
reg   [31:0] v41_reg_1083;
wire   [31:0] v21_fu_675_p1;
wire   [31:0] v27_fu_679_p1;
reg   [31:0] v47_reg_1098;
reg   [31:0] v53_reg_1103;
wire   [31:0] v33_fu_683_p1;
wire   [31:0] v39_fu_687_p1;
wire   [31:0] v45_fu_691_p1;
wire   [31:0] v51_fu_695_p1;
reg   [31:0] v36_reg_1128;
reg   [31:0] v42_reg_1133;
reg   [31:0] v48_reg_1138;
reg   [31:0] v54_reg_1143;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln26_fu_456_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln33_fu_520_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln29_fu_598_p1;
wire   [63:0] zext_ln46_fu_610_p1;
wire   [63:0] zext_ln60_fu_632_p1;
wire   [63:0] zext_ln74_fu_653_p1;
reg   [31:0] v3_1_fu_102;
wire    ap_block_pp0_stage2;
reg   [6:0] v49_fu_106;
wire   [6:0] add_ln28_fu_588_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v49_load;
reg   [6:0] v4_fu_110;
wire   [6:0] select_ln27_fu_430_p3;
reg   [6:0] ap_sig_allocacmp_v4_load;
reg   [9:0] indvar_flatten_fu_114;
wire   [9:0] add_ln27_1_fu_404_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v124_ce0_local;
reg    v124_1_ce0_local;
reg    v124_2_ce0_local;
reg    v124_3_ce0_local;
reg    v113_0_ce0_local;
reg    v113_1_ce0_local;
reg    v113_2_ce0_local;
reg    v113_3_ce0_local;
reg    v113_4_ce0_local;
reg    v113_5_ce0_local;
reg    v113_6_ce0_local;
reg    v113_7_ce0_local;
reg    v116_0_ce1_local;
reg   [4:0] v116_0_address1_local;
reg    v116_0_ce0_local;
reg   [4:0] v116_0_address0_local;
reg    v116_0_we1_local;
reg   [31:0] v116_0_d1_local;
wire   [31:0] bitcast_ln36_fu_699_p1;
wire   [31:0] bitcast_ln50_fu_709_p1;
wire    ap_block_pp0_stage3;
reg    v116_0_we0_local;
reg   [31:0] v116_0_d0_local;
wire   [31:0] bitcast_ln64_fu_719_p1;
wire   [31:0] bitcast_ln78_fu_727_p1;
reg    v116_1_ce1_local;
reg   [4:0] v116_1_address1_local;
reg    v116_1_ce0_local;
reg   [4:0] v116_1_address0_local;
reg    v116_1_we1_local;
reg   [31:0] v116_1_d1_local;
wire   [31:0] bitcast_ln43_fu_704_p1;
wire   [31:0] bitcast_ln57_fu_714_p1;
reg    v116_1_we0_local;
reg   [31:0] v116_1_d0_local;
wire   [31:0] bitcast_ln71_fu_723_p1;
wire   [31:0] bitcast_ln86_fu_731_p1;
reg   [31:0] grp_fu_356_p0;
reg   [31:0] grp_fu_356_p1;
reg   [31:0] grp_fu_360_p0;
reg   [31:0] grp_fu_360_p1;
reg   [31:0] grp_fu_364_p0;
reg   [31:0] grp_fu_368_p0;
wire   [6:0] add_ln27_fu_416_p2;
wire   [3:0] lshr_ln2_fu_446_p4;
wire   [31:0] v6_fu_480_p9;
wire   [8:0] tmp_s_fu_513_p3;
wire   [0:0] icmp_ln31_fu_563_p2;
wire   [4:0] or_ln3_fu_603_p3;
wire   [4:0] or_ln4_fu_624_p4;
wire   [4:0] or_ln5_fu_646_p3;
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
wire   [1:0] v6_fu_480_p1;
wire   [1:0] v6_fu_480_p3;
wire  signed [1:0] v6_fu_480_p5;
wire  signed [1:0] v6_fu_480_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v3_1_fu_102 = 32'd0;
#0 v49_fu_106 = 7'd0;
#0 v4_fu_110 = 7'd0;
#0 indvar_flatten_fu_114 = 10'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U135(.din0(v124_q0),.din1(v124_1_q0),.din2(v124_2_q0),.din3(v124_3_q0),.def(v6_fu_480_p9),.sel(trunc_ln27_1_reg_781),.dout(v6_fu_480_p11));
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln27_fu_398_p2 == 1'd0))) begin
            indvar_flatten_fu_114 <= add_ln27_1_fu_404_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_114 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v49_fu_106 <= 7'd0;
    end else if (((icmp_ln27_reg_762 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v49_fu_106 <= add_ln28_fu_588_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln27_fu_398_p2 == 1'd0))) begin
            v4_fu_110 <= select_ln27_fu_430_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v4_fu_110 <= 7'd0;
        end
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln27_reg_762 <= icmp_ln27_fu_398_p2;
        tmp_reg_771 <= ap_sig_allocacmp_v49_load[32'd6];
        trunc_ln27_1_reg_781 <= trunc_ln27_1_fu_442_p1;
        trunc_ln27_reg_776 <= trunc_ln27_fu_438_p1;
        v116_0_addr_1_reg_954[4 : 1] <= zext_ln46_fu_610_p1[4 : 1];
        v116_0_addr_1_reg_954_pp0_iter2_reg[4 : 1] <= v116_0_addr_1_reg_954[4 : 1];
        v116_0_addr_1_reg_954_pp0_iter3_reg[4 : 1] <= v116_0_addr_1_reg_954_pp0_iter2_reg[4 : 1];
        v116_0_addr_reg_934 <= zext_ln29_fu_598_p1;
        v116_0_addr_reg_934_pp0_iter2_reg <= v116_0_addr_reg_934;
        v116_0_addr_reg_934_pp0_iter3_reg <= v116_0_addr_reg_934_pp0_iter2_reg;
        v116_1_addr_1_reg_960[4 : 1] <= zext_ln46_fu_610_p1[4 : 1];
        v116_1_addr_1_reg_960_pp0_iter2_reg[4 : 1] <= v116_1_addr_1_reg_960[4 : 1];
        v116_1_addr_1_reg_960_pp0_iter3_reg[4 : 1] <= v116_1_addr_1_reg_960_pp0_iter2_reg[4 : 1];
        v116_1_addr_reg_949 <= zext_ln29_fu_598_p1;
        v116_1_addr_reg_949_pp0_iter2_reg <= v116_1_addr_reg_949;
        v116_1_addr_reg_949_pp0_iter3_reg <= v116_1_addr_reg_949_pp0_iter2_reg;
        v49_load_reg_766 <= ap_sig_allocacmp_v49_load;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln29_1_reg_863 <= {{select_ln26_fu_474_p3[5:1]}};
        lshr_ln3_reg_817 <= {{select_ln26_fu_474_p3[5:3]}};
        select_ln26_reg_806 <= select_ln26_fu_474_p3;
        tmp_118_reg_868 <= {{select_ln26_fu_474_p3[5:2]}};
        tmp_33_reg_873 <= select_ln26_fu_474_p3[32'd1];
        v116_0_addr_2_reg_996[0] <= zext_ln60_fu_632_p1[0];
v116_0_addr_2_reg_996[4 : 2] <= zext_ln60_fu_632_p1[4 : 2];
        v116_0_addr_2_reg_996_pp0_iter2_reg[0] <= v116_0_addr_2_reg_996[0];
v116_0_addr_2_reg_996_pp0_iter2_reg[4 : 2] <= v116_0_addr_2_reg_996[4 : 2];
        v116_0_addr_2_reg_996_pp0_iter3_reg[0] <= v116_0_addr_2_reg_996_pp0_iter2_reg[0];
v116_0_addr_2_reg_996_pp0_iter3_reg[4 : 2] <= v116_0_addr_2_reg_996_pp0_iter2_reg[4 : 2];
        v116_0_addr_2_reg_996_pp0_iter4_reg[0] <= v116_0_addr_2_reg_996_pp0_iter3_reg[0];
v116_0_addr_2_reg_996_pp0_iter4_reg[4 : 2] <= v116_0_addr_2_reg_996_pp0_iter3_reg[4 : 2];
        v116_0_addr_3_reg_1008[4 : 2] <= zext_ln74_fu_653_p1[4 : 2];
        v116_0_addr_3_reg_1008_pp0_iter2_reg[4 : 2] <= v116_0_addr_3_reg_1008[4 : 2];
        v116_0_addr_3_reg_1008_pp0_iter3_reg[4 : 2] <= v116_0_addr_3_reg_1008_pp0_iter2_reg[4 : 2];
        v116_0_addr_3_reg_1008_pp0_iter4_reg[4 : 2] <= v116_0_addr_3_reg_1008_pp0_iter3_reg[4 : 2];
        v116_1_addr_2_reg_1002[0] <= zext_ln60_fu_632_p1[0];
v116_1_addr_2_reg_1002[4 : 2] <= zext_ln60_fu_632_p1[4 : 2];
        v116_1_addr_2_reg_1002_pp0_iter2_reg[0] <= v116_1_addr_2_reg_1002[0];
v116_1_addr_2_reg_1002_pp0_iter2_reg[4 : 2] <= v116_1_addr_2_reg_1002[4 : 2];
        v116_1_addr_2_reg_1002_pp0_iter3_reg[0] <= v116_1_addr_2_reg_1002_pp0_iter2_reg[0];
v116_1_addr_2_reg_1002_pp0_iter3_reg[4 : 2] <= v116_1_addr_2_reg_1002_pp0_iter2_reg[4 : 2];
        v116_1_addr_2_reg_1002_pp0_iter4_reg[0] <= v116_1_addr_2_reg_1002_pp0_iter3_reg[0];
v116_1_addr_2_reg_1002_pp0_iter4_reg[4 : 2] <= v116_1_addr_2_reg_1002_pp0_iter3_reg[4 : 2];
        v116_1_addr_3_reg_1013[4 : 2] <= zext_ln74_fu_653_p1[4 : 2];
        v116_1_addr_3_reg_1013_pp0_iter2_reg[4 : 2] <= v116_1_addr_3_reg_1013[4 : 2];
        v116_1_addr_3_reg_1013_pp0_iter3_reg[4 : 2] <= v116_1_addr_3_reg_1013_pp0_iter2_reg[4 : 2];
        v116_1_addr_3_reg_1013_pp0_iter4_reg[4 : 2] <= v116_1_addr_3_reg_1013_pp0_iter3_reg[4 : 2];
        v6_reg_812 <= v6_fu_480_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_372 <= grp_fu_184_p_dout0;
        reg_376 <= grp_fu_188_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v113_0_load_reg_884 <= v113_0_q0;
        v113_1_load_reg_889 <= v113_1_q0;
        v113_2_load_reg_894 <= v113_2_q0;
        v113_3_load_reg_899 <= v113_3_q0;
        v113_4_load_reg_904 <= v113_4_q0;
        v113_5_load_reg_909 <= v113_5_q0;
        v113_6_load_reg_914 <= v113_6_q0;
        v113_7_load_reg_919 <= v113_7_q0;
        v3_reg_878 <= v3_fu_568_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_load_1_reg_986 <= v116_0_q0;
        v116_0_load_reg_966 <= v116_0_q1;
        v116_1_load_1_reg_991 <= v116_1_q0;
        v116_1_load_reg_981 <= v116_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_load_2_reg_1038 <= v116_0_q1;
        v116_0_load_3_reg_1048 <= v116_0_q0;
        v116_1_load_2_reg_1043 <= v116_1_q1;
        v116_1_load_3_reg_1053 <= v116_1_q0;
        v11_reg_1018 <= grp_fu_192_p_dout0;
        v17_reg_1023 <= grp_fu_196_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v23_reg_1063 <= grp_fu_192_p_dout0;
        v29_reg_1068 <= grp_fu_196_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v35_reg_1078 <= grp_fu_192_p_dout0;
        v41_reg_1083 <= grp_fu_196_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v36_reg_1128 <= grp_fu_184_p_dout0;
        v42_reg_1133 <= grp_fu_188_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln27_reg_762 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_1_fu_102 <= v3_fu_568_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v47_reg_1098 <= grp_fu_192_p_dout0;
        v53_reg_1103 <= grp_fu_196_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v48_reg_1138 <= grp_fu_184_p_dout0;
        v54_reg_1143 <= grp_fu_188_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln27_reg_762 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_114;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v49_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v49_load = v49_fu_106;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v4_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v4_load = v4_fu_110;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_356_p0 = v45_fu_691_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_356_p0 = v33_fu_683_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_356_p0 = v21_fu_675_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_356_p0 = v9_fu_667_p1;
    end else begin
        grp_fu_356_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_356_p1 = v47_reg_1098;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_356_p1 = v35_reg_1078;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_356_p1 = v23_reg_1063;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_356_p1 = v11_reg_1018;
    end else begin
        grp_fu_356_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_360_p0 = v51_fu_695_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_360_p0 = v39_fu_687_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_360_p0 = v27_fu_679_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_360_p0 = v15_fu_671_p1;
    end else begin
        grp_fu_360_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_360_p1 = v53_reg_1103;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_360_p1 = v41_reg_1083;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_360_p1 = v29_reg_1068;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_360_p1 = v17_reg_1023;
    end else begin
        grp_fu_360_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_364_p0 = v46_fu_659_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_364_p0 = v34_fu_638_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_364_p0 = v22_fu_616_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_364_p0 = v10_fu_580_p1;
    end else begin
        grp_fu_364_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_368_p0 = v52_fu_663_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_368_p0 = v40_fu_642_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_368_p0 = v28_fu_620_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_368_p0 = v16_fu_584_p1;
    end else begin
        grp_fu_368_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_0_ce0_local = 1'b1;
    end else begin
        v113_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_1_ce0_local = 1'b1;
    end else begin
        v113_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_2_ce0_local = 1'b1;
    end else begin
        v113_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_3_ce0_local = 1'b1;
    end else begin
        v113_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_4_ce0_local = 1'b1;
    end else begin
        v113_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_5_ce0_local = 1'b1;
    end else begin
        v113_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_6_ce0_local = 1'b1;
    end else begin
        v113_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_7_ce0_local = 1'b1;
    end else begin
        v113_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_0_address0_local = v116_0_addr_3_reg_1008_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_address0_local = v116_0_addr_2_reg_996_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_address0_local = zext_ln74_fu_653_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address0_local = zext_ln46_fu_610_p1;
    end else begin
        v116_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_0_address1_local = v116_0_addr_1_reg_954_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_address1_local = v116_0_addr_reg_934_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_address1_local = zext_ln60_fu_632_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address1_local = zext_ln29_fu_598_p1;
    end else begin
        v116_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_0_ce0_local = 1'b1;
    end else begin
        v116_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_0_ce1_local = 1'b1;
    end else begin
        v116_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v116_0_d0_local = bitcast_ln78_fu_727_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v116_0_d0_local = bitcast_ln64_fu_719_p1;
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
            v116_0_d1_local = bitcast_ln50_fu_709_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v116_0_d1_local = bitcast_ln36_fu_699_p1;
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
        v116_1_address0_local = v116_1_addr_3_reg_1013_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_address0_local = v116_1_addr_2_reg_1002_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_address0_local = zext_ln74_fu_653_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address0_local = zext_ln46_fu_610_p1;
    end else begin
        v116_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_1_address1_local = v116_1_addr_1_reg_960_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_address1_local = v116_1_addr_reg_949_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_address1_local = zext_ln60_fu_632_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address1_local = zext_ln29_fu_598_p1;
    end else begin
        v116_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_1_ce0_local = 1'b1;
    end else begin
        v116_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_1_ce1_local = 1'b1;
    end else begin
        v116_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v116_1_d0_local = bitcast_ln86_fu_731_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v116_1_d0_local = bitcast_ln71_fu_723_p1;
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
            v116_1_d1_local = bitcast_ln57_fu_714_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v116_1_d1_local = bitcast_ln43_fu_704_p1;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v124_1_ce0_local = 1'b1;
    end else begin
        v124_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v124_2_ce0_local = 1'b1;
    end else begin
        v124_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v124_3_ce0_local = 1'b1;
    end else begin
        v124_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
assign add_ln27_1_fu_404_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln27_fu_416_p2 = (ap_sig_allocacmp_v4_load + 7'd1);
assign add_ln28_fu_588_p2 = (select_ln26_reg_806 + 7'd8);
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
assign bitcast_ln36_fu_699_p1 = reg_372;
assign bitcast_ln43_fu_704_p1 = reg_376;
assign bitcast_ln50_fu_709_p1 = reg_372;
assign bitcast_ln57_fu_714_p1 = reg_376;
assign bitcast_ln64_fu_719_p1 = v36_reg_1128;
assign bitcast_ln71_fu_723_p1 = v42_reg_1133;
assign bitcast_ln78_fu_727_p1 = v48_reg_1138;
assign bitcast_ln86_fu_731_p1 = v54_reg_1143;
assign grp_fu_184_p_ce = 1'b1;
assign grp_fu_184_p_din0 = grp_fu_356_p0;
assign grp_fu_184_p_din1 = grp_fu_356_p1;
assign grp_fu_184_p_opcode = 2'd0;
assign grp_fu_188_p_ce = 1'b1;
assign grp_fu_188_p_din0 = grp_fu_360_p0;
assign grp_fu_188_p_din1 = grp_fu_360_p1;
assign grp_fu_188_p_opcode = 2'd0;
assign grp_fu_192_p_ce = 1'b1;
assign grp_fu_192_p_din0 = grp_fu_364_p0;
assign grp_fu_192_p_din1 = v3_reg_878;
assign grp_fu_196_p_ce = 1'b1;
assign grp_fu_196_p_din0 = grp_fu_368_p0;
assign grp_fu_196_p_din1 = v3_reg_878;
assign icmp_ln27_fu_398_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign icmp_ln31_fu_563_p2 = ((select_ln26_reg_806 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln2_fu_446_p4 = {{select_ln27_fu_430_p3[5:2]}};
assign lshr_ln3_fu_503_p4 = {{select_ln26_fu_474_p3[5:3]}};
assign or_ln3_fu_603_p3 = {{tmp_118_reg_868}, {1'd1}};
assign or_ln4_fu_624_p4 = {{{lshr_ln3_reg_817}, {1'd1}}, {tmp_33_reg_873}};
assign or_ln5_fu_646_p3 = {{lshr_ln3_reg_817}, {2'd3}};
assign select_ln26_fu_474_p3 = ((tmp_reg_771[0:0] == 1'b1) ? 7'd0 : v49_load_reg_766);
assign select_ln27_fu_430_p3 = ((tmp_fu_422_p3[0:0] == 1'b1) ? add_ln27_fu_416_p2 : ap_sig_allocacmp_v4_load);
assign tmp_fu_422_p3 = ap_sig_allocacmp_v49_load[32'd6];
assign tmp_s_fu_513_p3 = {{trunc_ln27_reg_776}, {lshr_ln3_fu_503_p4}};
assign trunc_ln27_1_fu_442_p1 = select_ln27_fu_430_p3[1:0];
assign trunc_ln27_fu_438_p1 = select_ln27_fu_430_p3[5:0];
assign v10_fu_580_p1 = v113_0_load_reg_884;
assign v113_0_address0 = zext_ln33_fu_520_p1;
assign v113_0_ce0 = v113_0_ce0_local;
assign v113_1_address0 = zext_ln33_fu_520_p1;
assign v113_1_ce0 = v113_1_ce0_local;
assign v113_2_address0 = zext_ln33_fu_520_p1;
assign v113_2_ce0 = v113_2_ce0_local;
assign v113_3_address0 = zext_ln33_fu_520_p1;
assign v113_3_ce0 = v113_3_ce0_local;
assign v113_4_address0 = zext_ln33_fu_520_p1;
assign v113_4_ce0 = v113_4_ce0_local;
assign v113_5_address0 = zext_ln33_fu_520_p1;
assign v113_5_ce0 = v113_5_ce0_local;
assign v113_6_address0 = zext_ln33_fu_520_p1;
assign v113_6_ce0 = v113_6_ce0_local;
assign v113_7_address0 = zext_ln33_fu_520_p1;
assign v113_7_ce0 = v113_7_ce0_local;
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
assign v124_1_address0 = zext_ln26_fu_456_p1;
assign v124_1_ce0 = v124_1_ce0_local;
assign v124_2_address0 = zext_ln26_fu_456_p1;
assign v124_2_ce0 = v124_2_ce0_local;
assign v124_3_address0 = zext_ln26_fu_456_p1;
assign v124_3_ce0 = v124_3_ce0_local;
assign v124_address0 = zext_ln26_fu_456_p1;
assign v124_ce0 = v124_ce0_local;
assign v15_fu_671_p1 = v116_1_load_reg_981;
assign v16_fu_584_p1 = v113_1_load_reg_889;
assign v21_fu_675_p1 = v116_0_load_1_reg_986;
assign v22_fu_616_p1 = v113_2_load_reg_894;
assign v27_fu_679_p1 = v116_1_load_1_reg_991;
assign v28_fu_620_p1 = v113_3_load_reg_899;
assign v33_fu_683_p1 = v116_0_load_2_reg_1038;
assign v34_fu_638_p1 = v113_4_load_reg_904;
assign v39_fu_687_p1 = v116_1_load_2_reg_1043;
assign v3_fu_568_p3 = ((icmp_ln31_fu_563_p2[0:0] == 1'b1) ? v6_reg_812 : v3_1_fu_102);
assign v40_fu_642_p1 = v113_5_load_reg_909;
assign v45_fu_691_p1 = v116_0_load_3_reg_1048;
assign v46_fu_659_p1 = v113_6_load_reg_914;
assign v51_fu_695_p1 = v116_1_load_3_reg_1053;
assign v52_fu_663_p1 = v113_7_load_reg_919;
assign v6_fu_480_p9 = 'bx;
assign v9_fu_667_p1 = v116_0_load_reg_966;
assign zext_ln26_fu_456_p1 = lshr_ln2_fu_446_p4;
assign zext_ln29_fu_598_p1 = lshr_ln29_1_reg_863;
assign zext_ln33_fu_520_p1 = tmp_s_fu_513_p3;
assign zext_ln46_fu_610_p1 = or_ln3_fu_603_p3;
assign zext_ln60_fu_632_p1 = or_ln4_fu_624_p4;
assign zext_ln74_fu_653_p1 = or_ln5_fu_646_p3;
always @ (posedge ap_clk) begin
    v116_0_addr_1_reg_954[0] <= 1'b1;
    v116_0_addr_1_reg_954_pp0_iter2_reg[0] <= 1'b1;
    v116_0_addr_1_reg_954_pp0_iter3_reg[0] <= 1'b1;
    v116_1_addr_1_reg_960[0] <= 1'b1;
    v116_1_addr_1_reg_960_pp0_iter2_reg[0] <= 1'b1;
    v116_1_addr_1_reg_960_pp0_iter3_reg[0] <= 1'b1;
    v116_0_addr_2_reg_996[1] <= 1'b1;
    v116_0_addr_2_reg_996_pp0_iter2_reg[1] <= 1'b1;
    v116_0_addr_2_reg_996_pp0_iter3_reg[1] <= 1'b1;
    v116_0_addr_2_reg_996_pp0_iter4_reg[1] <= 1'b1;
    v116_1_addr_2_reg_1002[1] <= 1'b1;
    v116_1_addr_2_reg_1002_pp0_iter2_reg[1] <= 1'b1;
    v116_1_addr_2_reg_1002_pp0_iter3_reg[1] <= 1'b1;
    v116_1_addr_2_reg_1002_pp0_iter4_reg[1] <= 1'b1;
    v116_0_addr_3_reg_1008[1:0] <= 2'b11;
    v116_0_addr_3_reg_1008_pp0_iter2_reg[1:0] <= 2'b11;
    v116_0_addr_3_reg_1008_pp0_iter3_reg[1:0] <= 2'b11;
    v116_0_addr_3_reg_1008_pp0_iter4_reg[1:0] <= 2'b11;
    v116_1_addr_3_reg_1013[1:0] <= 2'b11;
    v116_1_addr_3_reg_1013_pp0_iter2_reg[1:0] <= 2'b11;
    v116_1_addr_3_reg_1013_pp0_iter3_reg[1:0] <= 2'b11;
    v116_1_addr_3_reg_1013_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 