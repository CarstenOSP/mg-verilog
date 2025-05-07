module atax_atax_Pipeline_label_0_label_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v124_address0,v124_ce0,v124_q0,v113_0_address0,v113_0_ce0,v113_0_q0,v113_0_address1,v113_0_ce1,v113_0_q1,v113_1_address0,v113_1_ce0,v113_1_q0,v113_1_address1,v113_1_ce1,v113_1_q1,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v116_0_address1,v116_0_ce1,v116_0_we1,v116_0_d1,v116_0_q1,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_1_address1,v116_1_ce1,v116_1_we1,v116_1_d1,v116_1_q1,grp_fu_88_p_din0,grp_fu_88_p_din1,grp_fu_88_p_opcode,grp_fu_88_p_dout0,grp_fu_88_p_ce,grp_fu_92_p_din0,grp_fu_92_p_din1,grp_fu_92_p_opcode,grp_fu_92_p_dout0,grp_fu_92_p_ce,grp_fu_96_p_din0,grp_fu_96_p_din1,grp_fu_96_p_dout0,grp_fu_96_p_ce,grp_fu_100_p_din0,grp_fu_100_p_din1,grp_fu_100_p_dout0,grp_fu_100_p_ce); 
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
output  [10:0] v113_0_address0;
output   v113_0_ce0;
input  [31:0] v113_0_q0;
output  [10:0] v113_0_address1;
output   v113_0_ce1;
input  [31:0] v113_0_q1;
output  [10:0] v113_1_address0;
output   v113_1_ce0;
input  [31:0] v113_1_q0;
output  [10:0] v113_1_address1;
output   v113_1_ce1;
input  [31:0] v113_1_q1;
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
output  [31:0] grp_fu_88_p_din0;
output  [31:0] grp_fu_88_p_din1;
output  [1:0] grp_fu_88_p_opcode;
input  [31:0] grp_fu_88_p_dout0;
output   grp_fu_88_p_ce;
output  [31:0] grp_fu_92_p_din0;
output  [31:0] grp_fu_92_p_din1;
output  [1:0] grp_fu_92_p_opcode;
input  [31:0] grp_fu_92_p_dout0;
output   grp_fu_92_p_ce;
output  [31:0] grp_fu_96_p_din0;
output  [31:0] grp_fu_96_p_din1;
input  [31:0] grp_fu_96_p_dout0;
output   grp_fu_96_p_ce;
output  [31:0] grp_fu_100_p_din0;
output  [31:0] grp_fu_100_p_din1;
input  [31:0] grp_fu_100_p_dout0;
output   grp_fu_100_p_ce;
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
reg   [0:0] icmp_ln27_reg_694;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_289;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] reg_293;
reg   [31:0] reg_297;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_301;
wire   [0:0] icmp_ln27_fu_323_p2;
wire   [6:0] select_ln26_fu_355_p3;
reg   [6:0] select_ln26_reg_698;
wire   [5:0] trunc_ln27_fu_371_p1;
reg   [5:0] trunc_ln27_reg_704;
wire   [4:0] lshr_ln1_fu_380_p4;
reg   [4:0] lshr_ln1_reg_715;
wire   [3:0] tmp_2_fu_404_p4;
reg   [3:0] tmp_2_reg_730;
reg   [2:0] tmp_4_reg_745;
reg   [0:0] tmp_1_reg_753;
wire   [31:0] v3_2_fu_466_p3;
reg   [31:0] v3_2_reg_759;
reg   [31:0] v113_0_load_1_reg_765;
reg   [31:0] v113_1_load_1_reg_770;
wire   [31:0] v10_fu_508_p1;
wire   [31:0] v16_fu_513_p1;
reg   [31:0] v113_0_load_3_reg_805;
reg   [31:0] v113_1_load_3_reg_810;
reg   [4:0] v116_0_addr_reg_815;
wire    ap_block_pp0_stage0_11001;
reg   [4:0] v116_0_addr_reg_815_pp0_iter2_reg;
reg   [4:0] v116_0_addr_reg_815_pp0_iter3_reg;
wire   [31:0] v22_fu_536_p1;
wire   [31:0] v28_fu_540_p1;
reg   [4:0] v116_1_addr_reg_830;
reg   [4:0] v116_1_addr_reg_830_pp0_iter2_reg;
reg   [4:0] v116_1_addr_reg_830_pp0_iter3_reg;
reg   [4:0] v116_0_addr_1_reg_835;
reg   [4:0] v116_0_addr_1_reg_835_pp0_iter2_reg;
reg   [4:0] v116_0_addr_1_reg_835_pp0_iter3_reg;
reg   [4:0] v116_1_addr_1_reg_841;
reg   [4:0] v116_1_addr_1_reg_841_pp0_iter2_reg;
reg   [4:0] v116_1_addr_1_reg_841_pp0_iter3_reg;
reg   [31:0] v116_0_load_reg_847;
wire   [31:0] v34_fu_568_p1;
wire   [31:0] v40_fu_573_p1;
reg   [31:0] v116_1_load_reg_862;
reg   [31:0] v116_0_load_1_reg_867;
reg   [31:0] v116_1_load_1_reg_872;
reg   [4:0] v116_0_addr_2_reg_877;
reg   [4:0] v116_0_addr_2_reg_877_pp0_iter2_reg;
reg   [4:0] v116_0_addr_2_reg_877_pp0_iter3_reg;
reg   [4:0] v116_0_addr_2_reg_877_pp0_iter4_reg;
reg   [4:0] v116_1_addr_2_reg_883;
reg   [4:0] v116_1_addr_2_reg_883_pp0_iter2_reg;
reg   [4:0] v116_1_addr_2_reg_883_pp0_iter3_reg;
reg   [4:0] v116_1_addr_2_reg_883_pp0_iter4_reg;
reg   [4:0] v116_0_addr_3_reg_889;
reg   [4:0] v116_0_addr_3_reg_889_pp0_iter2_reg;
reg   [4:0] v116_0_addr_3_reg_889_pp0_iter3_reg;
reg   [4:0] v116_0_addr_3_reg_889_pp0_iter4_reg;
reg   [4:0] v116_1_addr_3_reg_894;
reg   [4:0] v116_1_addr_3_reg_894_pp0_iter2_reg;
reg   [4:0] v116_1_addr_3_reg_894_pp0_iter3_reg;
reg   [4:0] v116_1_addr_3_reg_894_pp0_iter4_reg;
reg   [31:0] v11_reg_899;
reg   [31:0] v17_reg_904;
wire   [31:0] v46_fu_591_p1;
wire   [31:0] v52_fu_595_p1;
reg   [31:0] v116_0_load_2_reg_919;
reg   [31:0] v116_1_load_2_reg_924;
reg   [31:0] v116_0_load_3_reg_929;
reg   [31:0] v116_1_load_3_reg_934;
wire   [31:0] v9_fu_599_p1;
reg   [31:0] v23_reg_944;
reg   [31:0] v29_reg_949;
wire   [31:0] v15_fu_603_p1;
reg   [31:0] v35_reg_959;
reg   [31:0] v41_reg_964;
wire   [31:0] v21_fu_607_p1;
wire   [31:0] v27_fu_611_p1;
reg   [31:0] v47_reg_979;
reg   [31:0] v53_reg_984;
wire   [31:0] v33_fu_615_p1;
wire   [31:0] v39_fu_619_p1;
wire   [31:0] v45_fu_623_p1;
wire   [31:0] v51_fu_627_p1;
reg   [31:0] v36_reg_1009;
reg   [31:0] v42_reg_1014;
reg   [31:0] v48_reg_1019;
reg   [31:0] v54_reg_1024;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln27_fu_375_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln33_fu_398_p1;
wire   [63:0] zext_ln47_fu_424_p1;
wire   [63:0] zext_ln61_fu_483_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln75_fu_497_p1;
wire   [63:0] zext_ln29_fu_518_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln46_fu_530_p1;
wire   [63:0] zext_ln60_fu_562_p1;
wire   [63:0] zext_ln74_fu_585_p1;
reg   [31:0] v3_fu_80;
reg   [6:0] v49_fu_84;
wire   [6:0] add_ln28_fu_544_p2;
wire    ap_loop_init;
reg   [6:0] v4_fu_88;
wire   [6:0] select_ln27_fu_363_p3;
reg   [9:0] indvar_flatten_fu_92;
wire   [9:0] add_ln27_1_fu_329_p2;
reg    v124_ce0_local;
reg    v113_0_ce1_local;
reg   [10:0] v113_0_address1_local;
reg    v113_0_ce0_local;
reg   [10:0] v113_0_address0_local;
reg    v113_1_ce1_local;
reg   [10:0] v113_1_address1_local;
reg    v113_1_ce0_local;
reg   [10:0] v113_1_address0_local;
reg    v116_0_ce1_local;
reg   [4:0] v116_0_address1_local;
reg    v116_0_ce0_local;
reg   [4:0] v116_0_address0_local;
reg    v116_0_we1_local;
reg   [31:0] v116_0_d1_local;
wire   [31:0] bitcast_ln36_fu_631_p1;
wire   [31:0] bitcast_ln50_fu_641_p1;
wire    ap_block_pp0_stage3;
reg    v116_0_we0_local;
reg   [31:0] v116_0_d0_local;
wire   [31:0] bitcast_ln64_fu_651_p1;
wire   [31:0] bitcast_ln78_fu_659_p1;
reg    v116_1_ce1_local;
reg   [4:0] v116_1_address1_local;
reg    v116_1_ce0_local;
reg   [4:0] v116_1_address0_local;
reg    v116_1_we1_local;
reg   [31:0] v116_1_d1_local;
wire   [31:0] bitcast_ln43_fu_636_p1;
wire   [31:0] bitcast_ln57_fu_646_p1;
reg    v116_1_we0_local;
reg   [31:0] v116_1_d0_local;
wire   [31:0] bitcast_ln71_fu_655_p1;
wire   [31:0] bitcast_ln86_fu_663_p1;
reg   [31:0] grp_fu_273_p0;
reg   [31:0] grp_fu_273_p1;
reg   [31:0] grp_fu_277_p0;
reg   [31:0] grp_fu_277_p1;
reg   [31:0] grp_fu_281_p0;
reg   [31:0] grp_fu_285_p0;
wire   [0:0] tmp_fu_347_p3;
wire   [6:0] add_ln27_fu_341_p2;
wire   [10:0] tmp_s_fu_390_p3;
wire   [10:0] tmp_3_fu_414_p4;
wire   [0:0] icmp_ln31_fu_461_p2;
wire   [10:0] tmp_5_fu_474_p5;
wire   [10:0] tmp_6_fu_489_p4;
wire   [4:0] or_ln1_fu_523_p3;
wire   [4:0] or_ln2_fu_554_p4;
wire   [4:0] or_ln3_fu_578_p3;
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
#0 v3_fu_80 = 32'd0;
#0 v49_fu_84 = 7'd0;
#0 v4_fu_88 = 7'd0;
#0 indvar_flatten_fu_92 = 10'd0;
#0 ap_done_reg = 1'b0;
end
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_fu_92 <= 10'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln27_fu_323_p2 == 1'd0))) begin
        indvar_flatten_fu_92 <= add_ln27_1_fu_329_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v49_fu_84 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v49_fu_84 <= add_ln28_fu_544_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4_fu_88 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln27_fu_323_p2 == 1'd0))) begin
        v4_fu_88 <= select_ln27_fu_363_p3;
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
        icmp_ln27_reg_694 <= icmp_ln27_fu_323_p2;
        lshr_ln1_reg_715 <= {{select_ln26_fu_355_p3[5:1]}};
        select_ln26_reg_698 <= select_ln26_fu_355_p3;
        tmp_1_reg_753 <= select_ln26_fu_355_p3[32'd1];
        tmp_2_reg_730 <= {{select_ln26_fu_355_p3[5:2]}};
        tmp_4_reg_745 <= {{select_ln26_fu_355_p3[5:3]}};
        trunc_ln27_reg_704 <= trunc_ln27_fu_371_p1;
        v116_0_addr_2_reg_877[0] <= zext_ln60_fu_562_p1[0];
v116_0_addr_2_reg_877[4 : 2] <= zext_ln60_fu_562_p1[4 : 2];
        v116_0_addr_2_reg_877_pp0_iter2_reg[0] <= v116_0_addr_2_reg_877[0];
v116_0_addr_2_reg_877_pp0_iter2_reg[4 : 2] <= v116_0_addr_2_reg_877[4 : 2];
        v116_0_addr_2_reg_877_pp0_iter3_reg[0] <= v116_0_addr_2_reg_877_pp0_iter2_reg[0];
v116_0_addr_2_reg_877_pp0_iter3_reg[4 : 2] <= v116_0_addr_2_reg_877_pp0_iter2_reg[4 : 2];
        v116_0_addr_2_reg_877_pp0_iter4_reg[0] <= v116_0_addr_2_reg_877_pp0_iter3_reg[0];
v116_0_addr_2_reg_877_pp0_iter4_reg[4 : 2] <= v116_0_addr_2_reg_877_pp0_iter3_reg[4 : 2];
        v116_0_addr_3_reg_889[4 : 2] <= zext_ln74_fu_585_p1[4 : 2];
        v116_0_addr_3_reg_889_pp0_iter2_reg[4 : 2] <= v116_0_addr_3_reg_889[4 : 2];
        v116_0_addr_3_reg_889_pp0_iter3_reg[4 : 2] <= v116_0_addr_3_reg_889_pp0_iter2_reg[4 : 2];
        v116_0_addr_3_reg_889_pp0_iter4_reg[4 : 2] <= v116_0_addr_3_reg_889_pp0_iter3_reg[4 : 2];
        v116_1_addr_2_reg_883[0] <= zext_ln60_fu_562_p1[0];
v116_1_addr_2_reg_883[4 : 2] <= zext_ln60_fu_562_p1[4 : 2];
        v116_1_addr_2_reg_883_pp0_iter2_reg[0] <= v116_1_addr_2_reg_883[0];
v116_1_addr_2_reg_883_pp0_iter2_reg[4 : 2] <= v116_1_addr_2_reg_883[4 : 2];
        v116_1_addr_2_reg_883_pp0_iter3_reg[0] <= v116_1_addr_2_reg_883_pp0_iter2_reg[0];
v116_1_addr_2_reg_883_pp0_iter3_reg[4 : 2] <= v116_1_addr_2_reg_883_pp0_iter2_reg[4 : 2];
        v116_1_addr_2_reg_883_pp0_iter4_reg[0] <= v116_1_addr_2_reg_883_pp0_iter3_reg[0];
v116_1_addr_2_reg_883_pp0_iter4_reg[4 : 2] <= v116_1_addr_2_reg_883_pp0_iter3_reg[4 : 2];
        v116_1_addr_3_reg_894[4 : 2] <= zext_ln74_fu_585_p1[4 : 2];
        v116_1_addr_3_reg_894_pp0_iter2_reg[4 : 2] <= v116_1_addr_3_reg_894[4 : 2];
        v116_1_addr_3_reg_894_pp0_iter3_reg[4 : 2] <= v116_1_addr_3_reg_894_pp0_iter2_reg[4 : 2];
        v116_1_addr_3_reg_894_pp0_iter4_reg[4 : 2] <= v116_1_addr_3_reg_894_pp0_iter3_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_289 <= v113_0_q1;
        reg_293 <= v113_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_297 <= grp_fu_88_p_dout0;
        reg_301 <= grp_fu_92_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v113_0_load_1_reg_765 <= v113_0_q0;
        v113_1_load_1_reg_770 <= v113_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v113_0_load_3_reg_805 <= v113_0_q0;
        v113_1_load_3_reg_810 <= v113_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_addr_1_reg_835[4 : 1] <= zext_ln46_fu_530_p1[4 : 1];
        v116_0_addr_1_reg_835_pp0_iter2_reg[4 : 1] <= v116_0_addr_1_reg_835[4 : 1];
        v116_0_addr_1_reg_835_pp0_iter3_reg[4 : 1] <= v116_0_addr_1_reg_835_pp0_iter2_reg[4 : 1];
        v116_0_addr_reg_815 <= zext_ln29_fu_518_p1;
        v116_0_addr_reg_815_pp0_iter2_reg <= v116_0_addr_reg_815;
        v116_0_addr_reg_815_pp0_iter3_reg <= v116_0_addr_reg_815_pp0_iter2_reg;
        v116_1_addr_1_reg_841[4 : 1] <= zext_ln46_fu_530_p1[4 : 1];
        v116_1_addr_1_reg_841_pp0_iter2_reg[4 : 1] <= v116_1_addr_1_reg_841[4 : 1];
        v116_1_addr_1_reg_841_pp0_iter3_reg[4 : 1] <= v116_1_addr_1_reg_841_pp0_iter2_reg[4 : 1];
        v116_1_addr_reg_830 <= zext_ln29_fu_518_p1;
        v116_1_addr_reg_830_pp0_iter2_reg <= v116_1_addr_reg_830;
        v116_1_addr_reg_830_pp0_iter3_reg <= v116_1_addr_reg_830_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_load_1_reg_867 <= v116_0_q0;
        v116_0_load_reg_847 <= v116_0_q1;
        v116_1_load_1_reg_872 <= v116_1_q0;
        v116_1_load_reg_862 <= v116_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_load_2_reg_919 <= v116_0_q1;
        v116_0_load_3_reg_929 <= v116_0_q0;
        v116_1_load_2_reg_924 <= v116_1_q1;
        v116_1_load_3_reg_934 <= v116_1_q0;
        v11_reg_899 <= grp_fu_96_p_dout0;
        v17_reg_904 <= grp_fu_100_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v23_reg_944 <= grp_fu_96_p_dout0;
        v29_reg_949 <= grp_fu_100_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v35_reg_959 <= grp_fu_96_p_dout0;
        v41_reg_964 <= grp_fu_100_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v36_reg_1009 <= grp_fu_88_p_dout0;
        v42_reg_1014 <= grp_fu_92_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_2_reg_759 <= v3_2_fu_466_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln27_reg_694 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_fu_80 <= v3_2_fu_466_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v47_reg_979 <= grp_fu_96_p_dout0;
        v53_reg_984 <= grp_fu_100_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v48_reg_1019 <= grp_fu_88_p_dout0;
        v54_reg_1024 <= grp_fu_92_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln27_reg_694 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_273_p0 = v45_fu_623_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_273_p0 = v33_fu_615_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_273_p0 = v21_fu_607_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_273_p0 = v9_fu_599_p1;
    end else begin
        grp_fu_273_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_273_p1 = v47_reg_979;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_273_p1 = v35_reg_959;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_273_p1 = v23_reg_944;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_273_p1 = v11_reg_899;
    end else begin
        grp_fu_273_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_277_p0 = v51_fu_627_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_277_p0 = v39_fu_619_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_277_p0 = v27_fu_611_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_277_p0 = v15_fu_603_p1;
    end else begin
        grp_fu_277_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_277_p1 = v53_reg_984;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_277_p1 = v41_reg_964;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_277_p1 = v29_reg_949;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_277_p1 = v17_reg_904;
    end else begin
        grp_fu_277_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_281_p0 = v46_fu_591_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_281_p0 = v34_fu_568_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_281_p0 = v22_fu_536_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_281_p0 = v10_fu_508_p1;
    end else begin
        grp_fu_281_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_285_p0 = v52_fu_595_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_285_p0 = v40_fu_573_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_285_p0 = v28_fu_540_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_285_p0 = v16_fu_513_p1;
    end else begin
        grp_fu_285_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v113_0_address0_local = zext_ln75_fu_497_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_0_address0_local = zext_ln47_fu_424_p1;
        end else begin
            v113_0_address0_local = 'bx;
        end
    end else begin
        v113_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v113_0_address1_local = zext_ln61_fu_483_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_0_address1_local = zext_ln33_fu_398_p1;
        end else begin
            v113_0_address1_local = 'bx;
        end
    end else begin
        v113_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v113_0_ce0_local = 1'b1;
    end else begin
        v113_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v113_0_ce1_local = 1'b1;
    end else begin
        v113_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v113_1_address0_local = zext_ln75_fu_497_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_1_address0_local = zext_ln47_fu_424_p1;
        end else begin
            v113_1_address0_local = 'bx;
        end
    end else begin
        v113_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v113_1_address1_local = zext_ln61_fu_483_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_1_address1_local = zext_ln33_fu_398_p1;
        end else begin
            v113_1_address1_local = 'bx;
        end
    end else begin
        v113_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v113_1_ce0_local = 1'b1;
    end else begin
        v113_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v113_1_ce1_local = 1'b1;
    end else begin
        v113_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_0_address0_local = v116_0_addr_3_reg_889_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_address0_local = v116_0_addr_2_reg_877_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_address0_local = zext_ln74_fu_585_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address0_local = zext_ln46_fu_530_p1;
    end else begin
        v116_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_0_address1_local = v116_0_addr_1_reg_835_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_address1_local = v116_0_addr_reg_815_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_address1_local = zext_ln60_fu_562_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address1_local = zext_ln29_fu_518_p1;
    end else begin
        v116_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_0_ce0_local = 1'b1;
    end else begin
        v116_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_0_ce1_local = 1'b1;
    end else begin
        v116_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v116_0_d0_local = bitcast_ln78_fu_659_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v116_0_d0_local = bitcast_ln64_fu_651_p1;
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
            v116_0_d1_local = bitcast_ln50_fu_641_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v116_0_d1_local = bitcast_ln36_fu_631_p1;
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
        v116_1_address0_local = v116_1_addr_3_reg_894_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_address0_local = v116_1_addr_2_reg_883_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_address0_local = zext_ln74_fu_585_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address0_local = zext_ln46_fu_530_p1;
    end else begin
        v116_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_1_address1_local = v116_1_addr_1_reg_841_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_address1_local = v116_1_addr_reg_830_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_address1_local = zext_ln60_fu_562_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address1_local = zext_ln29_fu_518_p1;
    end else begin
        v116_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_1_ce0_local = 1'b1;
    end else begin
        v116_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_1_ce1_local = 1'b1;
    end else begin
        v116_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v116_1_d0_local = bitcast_ln86_fu_663_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v116_1_d0_local = bitcast_ln71_fu_655_p1;
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
            v116_1_d1_local = bitcast_ln57_fu_646_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v116_1_d1_local = bitcast_ln43_fu_636_p1;
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
assign add_ln27_1_fu_329_p2 = (indvar_flatten_fu_92 + 10'd1);
assign add_ln27_fu_341_p2 = (v4_fu_88 + 7'd1);
assign add_ln28_fu_544_p2 = (select_ln26_reg_698 + 7'd8);
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
assign bitcast_ln36_fu_631_p1 = reg_297;
assign bitcast_ln43_fu_636_p1 = reg_301;
assign bitcast_ln50_fu_641_p1 = reg_297;
assign bitcast_ln57_fu_646_p1 = reg_301;
assign bitcast_ln64_fu_651_p1 = v36_reg_1009;
assign bitcast_ln71_fu_655_p1 = v42_reg_1014;
assign bitcast_ln78_fu_659_p1 = v48_reg_1019;
assign bitcast_ln86_fu_663_p1 = v54_reg_1024;
assign grp_fu_100_p_ce = 1'b1;
assign grp_fu_100_p_din0 = grp_fu_285_p0;
assign grp_fu_100_p_din1 = v3_2_reg_759;
assign grp_fu_88_p_ce = 1'b1;
assign grp_fu_88_p_din0 = grp_fu_273_p0;
assign grp_fu_88_p_din1 = grp_fu_273_p1;
assign grp_fu_88_p_opcode = 2'd0;
assign grp_fu_92_p_ce = 1'b1;
assign grp_fu_92_p_din0 = grp_fu_277_p0;
assign grp_fu_92_p_din1 = grp_fu_277_p1;
assign grp_fu_92_p_opcode = 2'd0;
assign grp_fu_96_p_ce = 1'b1;
assign grp_fu_96_p_din0 = grp_fu_281_p0;
assign grp_fu_96_p_din1 = v3_2_reg_759;
assign icmp_ln27_fu_323_p2 = ((indvar_flatten_fu_92 == 10'd512) ? 1'b1 : 1'b0);
assign icmp_ln31_fu_461_p2 = ((select_ln26_reg_698 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_380_p4 = {{select_ln26_fu_355_p3[5:1]}};
assign or_ln1_fu_523_p3 = {{tmp_2_reg_730}, {1'd1}};
assign or_ln2_fu_554_p4 = {{{tmp_4_reg_745}, {1'd1}}, {tmp_1_reg_753}};
assign or_ln3_fu_578_p3 = {{tmp_4_reg_745}, {2'd3}};
assign select_ln26_fu_355_p3 = ((tmp_fu_347_p3[0:0] == 1'b1) ? 7'd0 : v49_fu_84);
assign select_ln27_fu_363_p3 = ((tmp_fu_347_p3[0:0] == 1'b1) ? add_ln27_fu_341_p2 : v4_fu_88);
assign tmp_2_fu_404_p4 = {{select_ln26_fu_355_p3[5:2]}};
assign tmp_3_fu_414_p4 = {{{trunc_ln27_fu_371_p1}, {tmp_2_fu_404_p4}}, {1'd1}};
assign tmp_5_fu_474_p5 = {{{{trunc_ln27_reg_704}, {tmp_4_reg_745}}, {1'd1}}, {tmp_1_reg_753}};
assign tmp_6_fu_489_p4 = {{{trunc_ln27_reg_704}, {tmp_4_reg_745}}, {2'd3}};
assign tmp_fu_347_p3 = v49_fu_84[32'd6];
assign tmp_s_fu_390_p3 = {{trunc_ln27_fu_371_p1}, {lshr_ln1_fu_380_p4}};
assign trunc_ln27_fu_371_p1 = select_ln27_fu_363_p3[5:0];
assign v10_fu_508_p1 = reg_289;
assign v113_0_address0 = v113_0_address0_local;
assign v113_0_address1 = v113_0_address1_local;
assign v113_0_ce0 = v113_0_ce0_local;
assign v113_0_ce1 = v113_0_ce1_local;
assign v113_1_address0 = v113_1_address0_local;
assign v113_1_address1 = v113_1_address1_local;
assign v113_1_ce0 = v113_1_ce0_local;
assign v113_1_ce1 = v113_1_ce1_local;
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
assign v124_address0 = zext_ln27_fu_375_p1;
assign v124_ce0 = v124_ce0_local;
assign v15_fu_603_p1 = v116_1_load_reg_862;
assign v16_fu_513_p1 = reg_293;
assign v21_fu_607_p1 = v116_0_load_1_reg_867;
assign v22_fu_536_p1 = v113_0_load_1_reg_765;
assign v27_fu_611_p1 = v116_1_load_1_reg_872;
assign v28_fu_540_p1 = v113_1_load_1_reg_770;
assign v33_fu_615_p1 = v116_0_load_2_reg_919;
assign v34_fu_568_p1 = reg_289;
assign v39_fu_619_p1 = v116_1_load_2_reg_924;
assign v3_2_fu_466_p3 = ((icmp_ln31_fu_461_p2[0:0] == 1'b1) ? v124_q0 : v3_fu_80);
assign v40_fu_573_p1 = reg_293;
assign v45_fu_623_p1 = v116_0_load_3_reg_929;
assign v46_fu_591_p1 = v113_0_load_3_reg_805;
assign v51_fu_627_p1 = v116_1_load_3_reg_934;
assign v52_fu_595_p1 = v113_1_load_3_reg_810;
assign v9_fu_599_p1 = v116_0_load_reg_847;
assign zext_ln27_fu_375_p1 = select_ln27_fu_363_p3;
assign zext_ln29_fu_518_p1 = lshr_ln1_reg_715;
assign zext_ln33_fu_398_p1 = tmp_s_fu_390_p3;
assign zext_ln46_fu_530_p1 = or_ln1_fu_523_p3;
assign zext_ln47_fu_424_p1 = tmp_3_fu_414_p4;
assign zext_ln60_fu_562_p1 = or_ln2_fu_554_p4;
assign zext_ln61_fu_483_p1 = tmp_5_fu_474_p5;
assign zext_ln74_fu_585_p1 = or_ln3_fu_578_p3;
assign zext_ln75_fu_497_p1 = tmp_6_fu_489_p4;
always @ (posedge ap_clk) begin
    v116_0_addr_1_reg_835[0] <= 1'b1;
    v116_0_addr_1_reg_835_pp0_iter2_reg[0] <= 1'b1;
    v116_0_addr_1_reg_835_pp0_iter3_reg[0] <= 1'b1;
    v116_1_addr_1_reg_841[0] <= 1'b1;
    v116_1_addr_1_reg_841_pp0_iter2_reg[0] <= 1'b1;
    v116_1_addr_1_reg_841_pp0_iter3_reg[0] <= 1'b1;
    v116_0_addr_2_reg_877[1] <= 1'b1;
    v116_0_addr_2_reg_877_pp0_iter2_reg[1] <= 1'b1;
    v116_0_addr_2_reg_877_pp0_iter3_reg[1] <= 1'b1;
    v116_0_addr_2_reg_877_pp0_iter4_reg[1] <= 1'b1;
    v116_1_addr_2_reg_883[1] <= 1'b1;
    v116_1_addr_2_reg_883_pp0_iter2_reg[1] <= 1'b1;
    v116_1_addr_2_reg_883_pp0_iter3_reg[1] <= 1'b1;
    v116_1_addr_2_reg_883_pp0_iter4_reg[1] <= 1'b1;
    v116_0_addr_3_reg_889[1:0] <= 2'b11;
    v116_0_addr_3_reg_889_pp0_iter2_reg[1:0] <= 2'b11;
    v116_0_addr_3_reg_889_pp0_iter3_reg[1:0] <= 2'b11;
    v116_0_addr_3_reg_889_pp0_iter4_reg[1:0] <= 2'b11;
    v116_1_addr_3_reg_894[1:0] <= 2'b11;
    v116_1_addr_3_reg_894_pp0_iter2_reg[1:0] <= 2'b11;
    v116_1_addr_3_reg_894_pp0_iter3_reg[1:0] <= 2'b11;
    v116_1_addr_3_reg_894_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 