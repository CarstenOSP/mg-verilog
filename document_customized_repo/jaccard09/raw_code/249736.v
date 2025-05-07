module atax_atax_Pipeline_label_0_label_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v124_address0,v124_ce0,v124_q0,v124_1_address0,v124_1_ce0,v124_1_q0,v124_2_address0,v124_2_ce0,v124_2_q0,v124_3_address0,v124_3_ce0,v124_3_q0,v113_address0,v113_ce0,v113_q0,v113_address1,v113_ce1,v113_q1,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v116_0_address1,v116_0_ce1,v116_0_we1,v116_0_d1,v116_0_q1,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_1_address1,v116_1_ce1,v116_1_we1,v116_1_d1,v116_1_q1,v116_2_address0,v116_2_ce0,v116_2_we0,v116_2_d0,v116_2_q0,v116_2_address1,v116_2_ce1,v116_2_we1,v116_2_d1,v116_2_q1,v116_3_address0,v116_3_ce0,v116_3_we0,v116_3_d0,v116_3_q0,v116_3_address1,v116_3_ce1,v116_3_we1,v116_3_d1,v116_3_q1,grp_fu_99_p_din0,grp_fu_99_p_din1,grp_fu_99_p_opcode,grp_fu_99_p_dout0,grp_fu_99_p_ce,grp_fu_103_p_din0,grp_fu_103_p_din1,grp_fu_103_p_opcode,grp_fu_103_p_dout0,grp_fu_103_p_ce,grp_fu_107_p_din0,grp_fu_107_p_din1,grp_fu_107_p_dout0,grp_fu_107_p_ce,grp_fu_111_p_din0,grp_fu_111_p_din1,grp_fu_111_p_dout0,grp_fu_111_p_ce); 
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
output  [11:0] v113_address0;
output   v113_ce0;
input  [31:0] v113_q0;
output  [11:0] v113_address1;
output   v113_ce1;
input  [31:0] v113_q1;
output  [3:0] v116_0_address0;
output   v116_0_ce0;
output   v116_0_we0;
output  [31:0] v116_0_d0;
input  [31:0] v116_0_q0;
output  [3:0] v116_0_address1;
output   v116_0_ce1;
output   v116_0_we1;
output  [31:0] v116_0_d1;
input  [31:0] v116_0_q1;
output  [3:0] v116_1_address0;
output   v116_1_ce0;
output   v116_1_we0;
output  [31:0] v116_1_d0;
input  [31:0] v116_1_q0;
output  [3:0] v116_1_address1;
output   v116_1_ce1;
output   v116_1_we1;
output  [31:0] v116_1_d1;
input  [31:0] v116_1_q1;
output  [3:0] v116_2_address0;
output   v116_2_ce0;
output   v116_2_we0;
output  [31:0] v116_2_d0;
input  [31:0] v116_2_q0;
output  [3:0] v116_2_address1;
output   v116_2_ce1;
output   v116_2_we1;
output  [31:0] v116_2_d1;
input  [31:0] v116_2_q1;
output  [3:0] v116_3_address0;
output   v116_3_ce0;
output   v116_3_we0;
output  [31:0] v116_3_d0;
input  [31:0] v116_3_q0;
output  [3:0] v116_3_address1;
output   v116_3_ce1;
output   v116_3_we1;
output  [31:0] v116_3_d1;
input  [31:0] v116_3_q1;
output  [31:0] grp_fu_99_p_din0;
output  [31:0] grp_fu_99_p_din1;
output  [1:0] grp_fu_99_p_opcode;
input  [31:0] grp_fu_99_p_dout0;
output   grp_fu_99_p_ce;
output  [31:0] grp_fu_103_p_din0;
output  [31:0] grp_fu_103_p_din1;
output  [1:0] grp_fu_103_p_opcode;
input  [31:0] grp_fu_103_p_dout0;
output   grp_fu_103_p_ce;
output  [31:0] grp_fu_107_p_din0;
output  [31:0] grp_fu_107_p_din1;
input  [31:0] grp_fu_107_p_dout0;
output   grp_fu_107_p_ce;
output  [31:0] grp_fu_111_p_din0;
output  [31:0] grp_fu_111_p_din1;
input  [31:0] grp_fu_111_p_dout0;
output   grp_fu_111_p_ce;
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
reg   [0:0] icmp_ln27_reg_855;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_361;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_365;
reg   [31:0] reg_369;
reg   [31:0] reg_373;
wire   [0:0] icmp_ln27_fu_395_p2;
reg   [0:0] icmp_ln27_reg_855_pp0_iter1_reg;
reg   [0:0] icmp_ln27_reg_855_pp0_iter2_reg;
reg   [0:0] icmp_ln27_reg_855_pp0_iter3_reg;
reg   [6:0] v49_load_reg_859;
wire   [0:0] tmp_fu_419_p3;
reg   [0:0] tmp_reg_864;
wire   [5:0] trunc_ln33_fu_435_p1;
reg   [5:0] trunc_ln33_reg_869;
wire   [1:0] trunc_ln27_fu_439_p1;
reg   [1:0] trunc_ln27_reg_881;
wire   [6:0] select_ln26_fu_471_p3;
reg   [6:0] select_ln26_reg_906;
wire   [31:0] v6_fu_484_p11;
reg   [31:0] v6_reg_912;
reg   [3:0] lshr_ln1_reg_922;
wire   [0:0] trunc_ln46_fu_556_p1;
reg   [0:0] trunc_ln46_reg_934;
reg   [2:0] tmp_15_reg_940;
wire   [1:0] trunc_ln60_fu_570_p1;
reg   [1:0] trunc_ln60_reg_949;
reg   [0:0] tmp_6_reg_954;
wire   [31:0] v3_fu_590_p3;
reg   [31:0] v3_reg_959;
wire   [31:0] v10_fu_629_p1;
wire   [31:0] v16_fu_634_p1;
reg   [3:0] v116_0_addr_reg_995;
reg   [3:0] v116_0_addr_reg_995_pp0_iter2_reg;
reg   [3:0] v116_0_addr_reg_995_pp0_iter3_reg;
wire   [31:0] v22_fu_686_p1;
wire   [31:0] v28_fu_691_p1;
reg   [3:0] v116_1_addr_reg_1020;
reg   [3:0] v116_1_addr_reg_1020_pp0_iter2_reg;
reg   [3:0] v116_1_addr_reg_1020_pp0_iter3_reg;
reg   [3:0] v116_2_addr_reg_1025;
reg   [3:0] v116_2_addr_reg_1025_pp0_iter2_reg;
reg   [3:0] v116_2_addr_reg_1025_pp0_iter3_reg;
reg   [3:0] v116_3_addr_reg_1030;
reg   [3:0] v116_3_addr_reg_1030_pp0_iter2_reg;
reg   [3:0] v116_3_addr_reg_1030_pp0_iter3_reg;
reg   [3:0] v116_0_addr_1_reg_1035;
reg   [3:0] v116_0_addr_1_reg_1035_pp0_iter2_reg;
reg   [3:0] v116_0_addr_1_reg_1035_pp0_iter3_reg;
reg   [3:0] v116_0_addr_1_reg_1035_pp0_iter4_reg;
reg   [3:0] v116_1_addr_1_reg_1040;
reg   [3:0] v116_1_addr_1_reg_1040_pp0_iter2_reg;
reg   [3:0] v116_1_addr_1_reg_1040_pp0_iter3_reg;
reg   [3:0] v116_1_addr_1_reg_1040_pp0_iter4_reg;
reg   [3:0] v116_2_addr_1_reg_1045;
reg   [3:0] v116_2_addr_1_reg_1045_pp0_iter2_reg;
reg   [3:0] v116_2_addr_1_reg_1045_pp0_iter3_reg;
reg   [3:0] v116_2_addr_1_reg_1045_pp0_iter4_reg;
reg   [3:0] v116_3_addr_1_reg_1050;
reg   [3:0] v116_3_addr_1_reg_1050_pp0_iter2_reg;
reg   [3:0] v116_3_addr_1_reg_1050_pp0_iter3_reg;
reg   [3:0] v116_3_addr_1_reg_1050_pp0_iter4_reg;
reg   [31:0] v116_0_load_reg_1055;
wire   [31:0] v34_fu_738_p1;
wire   [31:0] v40_fu_743_p1;
reg   [31:0] v116_1_load_reg_1070;
reg   [31:0] v116_2_load_reg_1075;
reg   [31:0] v116_3_load_reg_1080;
reg   [31:0] v116_0_load_1_reg_1085;
reg   [31:0] v116_1_load_1_reg_1090;
reg   [31:0] v11_reg_1095;
reg   [31:0] v17_reg_1100;
wire   [31:0] v46_fu_748_p1;
wire   [31:0] v52_fu_753_p1;
wire   [31:0] v9_fu_758_p1;
reg   [31:0] v23_reg_1120;
reg   [31:0] v29_reg_1125;
wire   [31:0] v15_1_fu_762_p1;
reg   [31:0] v35_reg_1135;
reg   [31:0] v41_reg_1140;
wire   [31:0] v21_fu_766_p1;
wire   [31:0] v27_fu_770_p1;
reg   [31:0] v47_reg_1155;
reg   [31:0] v53_reg_1160;
wire   [31:0] v33_fu_774_p1;
wire   [31:0] v39_fu_778_p1;
reg   [31:0] v116_2_load_1_reg_1175;
reg   [31:0] v116_3_load_1_reg_1180;
wire   [31:0] v45_fu_782_p1;
wire   [31:0] v51_fu_786_p1;
reg   [31:0] v48_reg_1195;
reg   [31:0] v54_reg_1200;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln26_fu_453_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln33_1_fu_517_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln40_fu_551_p1;
wire   [63:0] zext_ln47_fu_606_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln54_fu_619_p1;
wire   [63:0] zext_ln61_fu_648_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln68_fu_664_p1;
wire   [63:0] zext_ln29_fu_679_p1;
wire   [63:0] zext_ln75_fu_720_p1;
wire   [63:0] zext_ln83_fu_733_p1;
wire   [63:0] zext_ln60_fu_703_p1;
reg   [31:0] v3_1_fu_106;
reg   [6:0] v49_fu_110;
wire   [6:0] add_ln28_fu_669_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v49_load;
reg   [6:0] v4_fu_114;
wire   [6:0] select_ln27_fu_427_p3;
reg   [6:0] ap_sig_allocacmp_v4_load;
reg   [9:0] indvar_flatten_fu_118;
wire   [9:0] add_ln27_1_fu_401_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v124_ce0_local;
reg    v124_1_ce0_local;
reg    v124_2_ce0_local;
reg    v124_3_ce0_local;
reg    v113_ce1_local;
reg   [11:0] v113_address1_local;
reg    v113_ce0_local;
reg   [11:0] v113_address0_local;
reg    v116_0_ce1_local;
reg   [3:0] v116_0_address1_local;
reg    v116_0_ce0_local;
reg   [3:0] v116_0_address0_local;
reg    v116_0_we1_local;
wire   [31:0] bitcast_ln36_fu_790_p1;
reg    v116_0_we0_local;
wire   [31:0] bitcast_ln64_fu_810_p1;
reg    v116_1_ce1_local;
reg   [3:0] v116_1_address1_local;
reg    v116_1_ce0_local;
reg   [3:0] v116_1_address0_local;
reg    v116_1_we1_local;
wire   [31:0] bitcast_ln43_fu_795_p1;
reg    v116_1_we0_local;
wire   [31:0] bitcast_ln71_fu_815_p1;
reg    v116_2_ce1_local;
reg   [3:0] v116_2_address1_local;
reg    v116_2_ce0_local;
reg   [3:0] v116_2_address0_local;
reg    v116_2_we1_local;
wire   [31:0] bitcast_ln50_fu_800_p1;
reg    v116_2_we0_local;
wire   [31:0] bitcast_ln78_fu_820_p1;
reg    v116_3_ce1_local;
reg   [3:0] v116_3_address1_local;
reg    v116_3_ce0_local;
reg   [3:0] v116_3_address0_local;
reg    v116_3_we1_local;
wire   [31:0] bitcast_ln57_fu_805_p1;
reg    v116_3_we0_local;
wire   [31:0] bitcast_ln86_fu_824_p1;
reg   [31:0] grp_fu_345_p0;
reg   [31:0] grp_fu_345_p1;
reg   [31:0] grp_fu_349_p0;
reg   [31:0] grp_fu_349_p1;
reg   [31:0] grp_fu_353_p0;
reg   [31:0] grp_fu_357_p0;
wire   [6:0] add_ln27_fu_413_p2;
wire   [3:0] lshr_ln_fu_443_p4;
wire   [31:0] v6_fu_484_p9;
wire   [11:0] tmp_s_fu_477_p3;
wire   [11:0] zext_ln33_fu_507_p1;
wire   [11:0] add_ln33_fu_511_p2;
wire   [4:0] tmp_11_fu_532_p4;
wire   [11:0] tmp_12_fu_542_p4;
wire   [0:0] icmp_ln31_fu_585_p2;
wire   [11:0] tmp_13_fu_597_p5;
wire   [11:0] tmp_14_fu_611_p4;
wire   [11:0] tmp_16_fu_639_p5;
wire   [11:0] tmp_17_fu_653_p6;
wire   [3:0] or_ln60_1_fu_696_p3;
wire   [11:0] tmp_18_fu_711_p5;
wire   [11:0] tmp_19_fu_725_p4;
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
wire   [1:0] v6_fu_484_p1;
wire   [1:0] v6_fu_484_p3;
wire  signed [1:0] v6_fu_484_p5;
wire  signed [1:0] v6_fu_484_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v3_1_fu_106 = 32'd0;
#0 v49_fu_110 = 7'd0;
#0 v4_fu_114 = 7'd0;
#0 indvar_flatten_fu_118 = 10'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U18(.din0(v124_q0),.din1(v124_1_q0),.din2(v124_2_q0),.din3(v124_3_q0),.def(v6_fu_484_p9),.sel(trunc_ln27_reg_881),.dout(v6_fu_484_p11));
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln27_fu_395_p2 == 1'd0))) begin
            indvar_flatten_fu_118 <= add_ln27_1_fu_401_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_118 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v49_fu_110 <= 7'd0;
    end else if (((icmp_ln27_reg_855 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v49_fu_110 <= add_ln28_fu_669_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln27_fu_395_p2 == 1'd0))) begin
            v4_fu_114 <= select_ln27_fu_427_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v4_fu_114 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln27_reg_855 <= icmp_ln27_fu_395_p2;
        icmp_ln27_reg_855_pp0_iter1_reg <= icmp_ln27_reg_855;
        icmp_ln27_reg_855_pp0_iter2_reg <= icmp_ln27_reg_855_pp0_iter1_reg;
        icmp_ln27_reg_855_pp0_iter3_reg <= icmp_ln27_reg_855_pp0_iter2_reg;
        tmp_reg_864 <= ap_sig_allocacmp_v49_load[32'd6];
        trunc_ln27_reg_881 <= trunc_ln27_fu_439_p1;
        trunc_ln33_reg_869 <= trunc_ln33_fu_435_p1;
        v116_0_addr_1_reg_1035[3 : 1] <= zext_ln60_fu_703_p1[3 : 1];
        v116_0_addr_1_reg_1035_pp0_iter2_reg[3 : 1] <= v116_0_addr_1_reg_1035[3 : 1];
        v116_0_addr_1_reg_1035_pp0_iter3_reg[3 : 1] <= v116_0_addr_1_reg_1035_pp0_iter2_reg[3 : 1];
        v116_0_addr_1_reg_1035_pp0_iter4_reg[3 : 1] <= v116_0_addr_1_reg_1035_pp0_iter3_reg[3 : 1];
        v116_0_addr_reg_995 <= zext_ln29_fu_679_p1;
        v116_0_addr_reg_995_pp0_iter2_reg <= v116_0_addr_reg_995;
        v116_0_addr_reg_995_pp0_iter3_reg <= v116_0_addr_reg_995_pp0_iter2_reg;
        v116_1_addr_1_reg_1040[3 : 1] <= zext_ln60_fu_703_p1[3 : 1];
        v116_1_addr_1_reg_1040_pp0_iter2_reg[3 : 1] <= v116_1_addr_1_reg_1040[3 : 1];
        v116_1_addr_1_reg_1040_pp0_iter3_reg[3 : 1] <= v116_1_addr_1_reg_1040_pp0_iter2_reg[3 : 1];
        v116_1_addr_1_reg_1040_pp0_iter4_reg[3 : 1] <= v116_1_addr_1_reg_1040_pp0_iter3_reg[3 : 1];
        v116_1_addr_reg_1020 <= zext_ln29_fu_679_p1;
        v116_1_addr_reg_1020_pp0_iter2_reg <= v116_1_addr_reg_1020;
        v116_1_addr_reg_1020_pp0_iter3_reg <= v116_1_addr_reg_1020_pp0_iter2_reg;
        v116_2_addr_1_reg_1045[3 : 1] <= zext_ln60_fu_703_p1[3 : 1];
        v116_2_addr_1_reg_1045_pp0_iter2_reg[3 : 1] <= v116_2_addr_1_reg_1045[3 : 1];
        v116_2_addr_1_reg_1045_pp0_iter3_reg[3 : 1] <= v116_2_addr_1_reg_1045_pp0_iter2_reg[3 : 1];
        v116_2_addr_1_reg_1045_pp0_iter4_reg[3 : 1] <= v116_2_addr_1_reg_1045_pp0_iter3_reg[3 : 1];
        v116_2_addr_reg_1025 <= zext_ln29_fu_679_p1;
        v116_2_addr_reg_1025_pp0_iter2_reg <= v116_2_addr_reg_1025;
        v116_2_addr_reg_1025_pp0_iter3_reg <= v116_2_addr_reg_1025_pp0_iter2_reg;
        v116_3_addr_1_reg_1050[3 : 1] <= zext_ln60_fu_703_p1[3 : 1];
        v116_3_addr_1_reg_1050_pp0_iter2_reg[3 : 1] <= v116_3_addr_1_reg_1050[3 : 1];
        v116_3_addr_1_reg_1050_pp0_iter3_reg[3 : 1] <= v116_3_addr_1_reg_1050_pp0_iter2_reg[3 : 1];
        v116_3_addr_1_reg_1050_pp0_iter4_reg[3 : 1] <= v116_3_addr_1_reg_1050_pp0_iter3_reg[3 : 1];
        v116_3_addr_reg_1030 <= zext_ln29_fu_679_p1;
        v116_3_addr_reg_1030_pp0_iter2_reg <= v116_3_addr_reg_1030;
        v116_3_addr_reg_1030_pp0_iter3_reg <= v116_3_addr_reg_1030_pp0_iter2_reg;
        v49_load_reg_859 <= ap_sig_allocacmp_v49_load;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln1_reg_922 <= {{select_ln26_fu_471_p3[5:2]}};
        select_ln26_reg_906 <= select_ln26_fu_471_p3;
        tmp_15_reg_940 <= {{select_ln26_fu_471_p3[5:3]}};
        tmp_6_reg_954 <= select_ln26_fu_471_p3[32'd1];
        trunc_ln46_reg_934 <= trunc_ln46_fu_556_p1;
        trunc_ln60_reg_949 <= trunc_ln60_fu_570_p1;
        v6_reg_912 <= v6_fu_484_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_361 <= v113_q1;
        reg_365 <= v113_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_369 <= grp_fu_99_p_dout0;
        reg_373 <= grp_fu_103_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_load_1_reg_1085 <= v116_0_q0;
        v116_0_load_reg_1055 <= v116_0_q1;
        v116_1_load_1_reg_1090 <= v116_1_q0;
        v116_1_load_reg_1070 <= v116_1_q1;
        v116_2_load_reg_1075 <= v116_2_q1;
        v116_3_load_reg_1080 <= v116_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_2_load_1_reg_1175 <= v116_2_q0;
        v116_3_load_1_reg_1180 <= v116_3_q0;
        v47_reg_1155 <= grp_fu_107_p_dout0;
        v53_reg_1160 <= grp_fu_111_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v11_reg_1095 <= grp_fu_107_p_dout0;
        v17_reg_1100 <= grp_fu_111_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v23_reg_1120 <= grp_fu_107_p_dout0;
        v29_reg_1125 <= grp_fu_111_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v35_reg_1135 <= grp_fu_107_p_dout0;
        v41_reg_1140 <= grp_fu_111_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln27_reg_855 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_1_fu_106 <= v3_fu_590_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_reg_959 <= v3_fu_590_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v48_reg_1195 <= grp_fu_99_p_dout0;
        v54_reg_1200 <= grp_fu_103_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln27_reg_855 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln27_reg_855_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_118;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v49_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v49_load = v49_fu_110;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v4_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v4_load = v4_fu_114;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_345_p0 = v45_fu_782_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_345_p0 = v33_fu_774_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_345_p0 = v21_fu_766_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_345_p0 = v9_fu_758_p1;
    end else begin
        grp_fu_345_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_345_p1 = v47_reg_1155;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_345_p1 = v35_reg_1135;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_345_p1 = v23_reg_1120;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_345_p1 = v11_reg_1095;
    end else begin
        grp_fu_345_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_349_p0 = v51_fu_786_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_349_p0 = v39_fu_778_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_349_p0 = v27_fu_770_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_349_p0 = v15_1_fu_762_p1;
    end else begin
        grp_fu_349_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_349_p1 = v53_reg_1160;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_349_p1 = v41_reg_1140;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_349_p1 = v29_reg_1125;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_349_p1 = v17_reg_1100;
    end else begin
        grp_fu_349_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_353_p0 = v46_fu_748_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_353_p0 = v34_fu_738_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_353_p0 = v22_fu_686_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_353_p0 = v10_fu_629_p1;
    end else begin
        grp_fu_353_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_357_p0 = v52_fu_753_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_357_p0 = v40_fu_743_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_357_p0 = v28_fu_691_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_357_p0 = v16_fu_634_p1;
    end else begin
        grp_fu_357_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_address0_local = zext_ln83_fu_733_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v113_address0_local = zext_ln68_fu_664_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v113_address0_local = zext_ln54_fu_619_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_address0_local = zext_ln40_fu_551_p1;
    end else begin
        v113_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_address1_local = zext_ln75_fu_720_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v113_address1_local = zext_ln61_fu_648_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v113_address1_local = zext_ln47_fu_606_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_address1_local = zext_ln33_1_fu_517_p1;
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
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_address0_local = v116_0_addr_1_reg_1035_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address0_local = zext_ln60_fu_703_p1;
    end else begin
        v116_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_address1_local = v116_0_addr_reg_995_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address1_local = zext_ln29_fu_679_p1;
    end else begin
        v116_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_0_ce0_local = 1'b1;
    end else begin
        v116_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_0_ce1_local = 1'b1;
    end else begin
        v116_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_we0_local = 1'b1;
    end else begin
        v116_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_we1_local = 1'b1;
    end else begin
        v116_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_address0_local = v116_1_addr_1_reg_1040_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address0_local = zext_ln60_fu_703_p1;
    end else begin
        v116_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_address1_local = v116_1_addr_reg_1020_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address1_local = zext_ln29_fu_679_p1;
    end else begin
        v116_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_1_ce0_local = 1'b1;
    end else begin
        v116_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_1_ce1_local = 1'b1;
    end else begin
        v116_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_we0_local = 1'b1;
    end else begin
        v116_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_we1_local = 1'b1;
    end else begin
        v116_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_2_address0_local = v116_2_addr_1_reg_1045_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_address0_local = v116_2_addr_1_reg_1045;
    end else begin
        v116_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_2_address1_local = v116_2_addr_reg_1025_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_address1_local = zext_ln29_fu_679_p1;
    end else begin
        v116_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_2_ce0_local = 1'b1;
    end else begin
        v116_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v116_2_ce1_local = 1'b1;
    end else begin
        v116_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_2_we0_local = 1'b1;
    end else begin
        v116_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_2_we1_local = 1'b1;
    end else begin
        v116_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_3_address0_local = v116_3_addr_1_reg_1050_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_address0_local = v116_3_addr_1_reg_1050;
    end else begin
        v116_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_3_address1_local = v116_3_addr_reg_1030_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_address1_local = zext_ln29_fu_679_p1;
    end else begin
        v116_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_3_ce0_local = 1'b1;
    end else begin
        v116_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v116_3_ce1_local = 1'b1;
    end else begin
        v116_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_3_we0_local = 1'b1;
    end else begin
        v116_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_3_we1_local = 1'b1;
    end else begin
        v116_3_we1_local = 1'b0;
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
assign add_ln27_1_fu_401_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln27_fu_413_p2 = (ap_sig_allocacmp_v4_load + 7'd1);
assign add_ln28_fu_669_p2 = (select_ln26_reg_906 + 7'd8);
assign add_ln33_fu_511_p2 = (tmp_s_fu_477_p3 + zext_ln33_fu_507_p1);
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
assign bitcast_ln36_fu_790_p1 = reg_369;
assign bitcast_ln43_fu_795_p1 = reg_373;
assign bitcast_ln50_fu_800_p1 = reg_369;
assign bitcast_ln57_fu_805_p1 = reg_373;
assign bitcast_ln64_fu_810_p1 = reg_369;
assign bitcast_ln71_fu_815_p1 = reg_373;
assign bitcast_ln78_fu_820_p1 = v48_reg_1195;
assign bitcast_ln86_fu_824_p1 = v54_reg_1200;
assign grp_fu_103_p_ce = 1'b1;
assign grp_fu_103_p_din0 = grp_fu_349_p0;
assign grp_fu_103_p_din1 = grp_fu_349_p1;
assign grp_fu_103_p_opcode = 2'd0;
assign grp_fu_107_p_ce = 1'b1;
assign grp_fu_107_p_din0 = grp_fu_353_p0;
assign grp_fu_107_p_din1 = v3_reg_959;
assign grp_fu_111_p_ce = 1'b1;
assign grp_fu_111_p_din0 = grp_fu_357_p0;
assign grp_fu_111_p_din1 = v3_reg_959;
assign grp_fu_99_p_ce = 1'b1;
assign grp_fu_99_p_din0 = grp_fu_345_p0;
assign grp_fu_99_p_din1 = grp_fu_345_p1;
assign grp_fu_99_p_opcode = 2'd0;
assign icmp_ln27_fu_395_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign icmp_ln31_fu_585_p2 = ((select_ln26_reg_906 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln_fu_443_p4 = {{select_ln27_fu_427_p3[5:2]}};
assign or_ln60_1_fu_696_p3 = {{tmp_15_reg_940}, {1'd1}};
assign select_ln26_fu_471_p3 = ((tmp_reg_864[0:0] == 1'b1) ? 7'd0 : v49_load_reg_859);
assign select_ln27_fu_427_p3 = ((tmp_fu_419_p3[0:0] == 1'b1) ? add_ln27_fu_413_p2 : ap_sig_allocacmp_v4_load);
assign tmp_11_fu_532_p4 = {{select_ln26_fu_471_p3[5:1]}};
assign tmp_12_fu_542_p4 = {{{trunc_ln33_reg_869}, {tmp_11_fu_532_p4}}, {1'd1}};
assign tmp_13_fu_597_p5 = {{{{trunc_ln33_reg_869}, {lshr_ln1_reg_922}}, {1'd1}}, {trunc_ln46_reg_934}};
assign tmp_14_fu_611_p4 = {{{trunc_ln33_reg_869}, {lshr_ln1_reg_922}}, {2'd3}};
assign tmp_16_fu_639_p5 = {{{{trunc_ln33_reg_869}, {tmp_15_reg_940}}, {1'd1}}, {trunc_ln60_reg_949}};
assign tmp_17_fu_653_p6 = {{{{{trunc_ln33_reg_869}, {tmp_15_reg_940}}, {1'd1}}, {tmp_6_reg_954}}, {1'd1}};
assign tmp_18_fu_711_p5 = {{{{trunc_ln33_reg_869}, {tmp_15_reg_940}}, {2'd3}}, {trunc_ln46_reg_934}};
assign tmp_19_fu_725_p4 = {{{trunc_ln33_reg_869}, {tmp_15_reg_940}}, {3'd7}};
assign tmp_fu_419_p3 = ap_sig_allocacmp_v49_load[32'd6];
assign tmp_s_fu_477_p3 = {{trunc_ln33_reg_869}, {6'd0}};
assign trunc_ln27_fu_439_p1 = select_ln27_fu_427_p3[1:0];
assign trunc_ln33_fu_435_p1 = select_ln27_fu_427_p3[5:0];
assign trunc_ln46_fu_556_p1 = select_ln26_fu_471_p3[0:0];
assign trunc_ln60_fu_570_p1 = select_ln26_fu_471_p3[1:0];
assign v10_fu_629_p1 = reg_361;
assign v113_address0 = v113_address0_local;
assign v113_address1 = v113_address1_local;
assign v113_ce0 = v113_ce0_local;
assign v113_ce1 = v113_ce1_local;
assign v116_0_address0 = v116_0_address0_local;
assign v116_0_address1 = v116_0_address1_local;
assign v116_0_ce0 = v116_0_ce0_local;
assign v116_0_ce1 = v116_0_ce1_local;
assign v116_0_d0 = bitcast_ln64_fu_810_p1;
assign v116_0_d1 = bitcast_ln36_fu_790_p1;
assign v116_0_we0 = v116_0_we0_local;
assign v116_0_we1 = v116_0_we1_local;
assign v116_1_address0 = v116_1_address0_local;
assign v116_1_address1 = v116_1_address1_local;
assign v116_1_ce0 = v116_1_ce0_local;
assign v116_1_ce1 = v116_1_ce1_local;
assign v116_1_d0 = bitcast_ln71_fu_815_p1;
assign v116_1_d1 = bitcast_ln43_fu_795_p1;
assign v116_1_we0 = v116_1_we0_local;
assign v116_1_we1 = v116_1_we1_local;
assign v116_2_address0 = v116_2_address0_local;
assign v116_2_address1 = v116_2_address1_local;
assign v116_2_ce0 = v116_2_ce0_local;
assign v116_2_ce1 = v116_2_ce1_local;
assign v116_2_d0 = bitcast_ln78_fu_820_p1;
assign v116_2_d1 = bitcast_ln50_fu_800_p1;
assign v116_2_we0 = v116_2_we0_local;
assign v116_2_we1 = v116_2_we1_local;
assign v116_3_address0 = v116_3_address0_local;
assign v116_3_address1 = v116_3_address1_local;
assign v116_3_ce0 = v116_3_ce0_local;
assign v116_3_ce1 = v116_3_ce1_local;
assign v116_3_d0 = bitcast_ln86_fu_824_p1;
assign v116_3_d1 = bitcast_ln57_fu_805_p1;
assign v116_3_we0 = v116_3_we0_local;
assign v116_3_we1 = v116_3_we1_local;
assign v124_1_address0 = zext_ln26_fu_453_p1;
assign v124_1_ce0 = v124_1_ce0_local;
assign v124_2_address0 = zext_ln26_fu_453_p1;
assign v124_2_ce0 = v124_2_ce0_local;
assign v124_3_address0 = zext_ln26_fu_453_p1;
assign v124_3_ce0 = v124_3_ce0_local;
assign v124_address0 = zext_ln26_fu_453_p1;
assign v124_ce0 = v124_ce0_local;
assign v15_1_fu_762_p1 = v116_1_load_reg_1070;
assign v16_fu_634_p1 = reg_365;
assign v21_fu_766_p1 = v116_2_load_reg_1075;
assign v22_fu_686_p1 = reg_361;
assign v27_fu_770_p1 = v116_3_load_reg_1080;
assign v28_fu_691_p1 = reg_365;
assign v33_fu_774_p1 = v116_0_load_1_reg_1085;
assign v34_fu_738_p1 = reg_361;
assign v39_fu_778_p1 = v116_1_load_1_reg_1090;
assign v3_fu_590_p3 = ((icmp_ln31_fu_585_p2[0:0] == 1'b1) ? v6_reg_912 : v3_1_fu_106);
assign v40_fu_743_p1 = reg_365;
assign v45_fu_782_p1 = v116_2_load_1_reg_1175;
assign v46_fu_748_p1 = reg_361;
assign v51_fu_786_p1 = v116_3_load_1_reg_1180;
assign v52_fu_753_p1 = reg_365;
assign v6_fu_484_p9 = 'bx;
assign v9_fu_758_p1 = v116_0_load_reg_1055;
assign zext_ln26_fu_453_p1 = lshr_ln_fu_443_p4;
assign zext_ln29_fu_679_p1 = lshr_ln1_reg_922;
assign zext_ln33_1_fu_517_p1 = add_ln33_fu_511_p2;
assign zext_ln33_fu_507_p1 = select_ln26_fu_471_p3;
assign zext_ln40_fu_551_p1 = tmp_12_fu_542_p4;
assign zext_ln47_fu_606_p1 = tmp_13_fu_597_p5;
assign zext_ln54_fu_619_p1 = tmp_14_fu_611_p4;
assign zext_ln60_fu_703_p1 = or_ln60_1_fu_696_p3;
assign zext_ln61_fu_648_p1 = tmp_16_fu_639_p5;
assign zext_ln68_fu_664_p1 = tmp_17_fu_653_p6;
assign zext_ln75_fu_720_p1 = tmp_18_fu_711_p5;
assign zext_ln83_fu_733_p1 = tmp_19_fu_725_p4;
always @ (posedge ap_clk) begin
    v116_0_addr_1_reg_1035[0] <= 1'b1;
    v116_0_addr_1_reg_1035_pp0_iter2_reg[0] <= 1'b1;
    v116_0_addr_1_reg_1035_pp0_iter3_reg[0] <= 1'b1;
    v116_0_addr_1_reg_1035_pp0_iter4_reg[0] <= 1'b1;
    v116_1_addr_1_reg_1040[0] <= 1'b1;
    v116_1_addr_1_reg_1040_pp0_iter2_reg[0] <= 1'b1;
    v116_1_addr_1_reg_1040_pp0_iter3_reg[0] <= 1'b1;
    v116_1_addr_1_reg_1040_pp0_iter4_reg[0] <= 1'b1;
    v116_2_addr_1_reg_1045[0] <= 1'b1;
    v116_2_addr_1_reg_1045_pp0_iter2_reg[0] <= 1'b1;
    v116_2_addr_1_reg_1045_pp0_iter3_reg[0] <= 1'b1;
    v116_2_addr_1_reg_1045_pp0_iter4_reg[0] <= 1'b1;
    v116_3_addr_1_reg_1050[0] <= 1'b1;
    v116_3_addr_1_reg_1050_pp0_iter2_reg[0] <= 1'b1;
    v116_3_addr_1_reg_1050_pp0_iter3_reg[0] <= 1'b1;
    v116_3_addr_1_reg_1050_pp0_iter4_reg[0] <= 1'b1;
end
endmodule 