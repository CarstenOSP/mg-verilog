module bicg_bicg_node1_Pipeline_label_211 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v137_0_address0,v137_0_ce0,v137_0_q0,v137_0_address1,v137_0_ce1,v137_0_q1,v137_1_address0,v137_1_ce0,v137_1_q0,v137_1_address1,v137_1_ce1,v137_1_q1,v10_1_address0,v10_1_ce0,v10_1_we0,v10_1_d0,v10_1_q0,v10_1_address1,v10_1_ce1,v10_1_we1,v10_1_d1,v10_1_q1,v10_0_address0,v10_0_ce0,v10_0_we0,v10_0_d0,v10_0_q0,v10_0_address1,v10_0_ce1,v10_0_we1,v10_0_d1,v10_0_q1,empty,v17_10,grp_fu_2080_p_din0,grp_fu_2080_p_din1,grp_fu_2080_p_opcode,grp_fu_2080_p_dout0,grp_fu_2080_p_ce,grp_fu_2084_p_din0,grp_fu_2084_p_din1,grp_fu_2084_p_opcode,grp_fu_2084_p_dout0,grp_fu_2084_p_ce,grp_fu_2088_p_din0,grp_fu_2088_p_din1,grp_fu_2088_p_dout0,grp_fu_2088_p_ce,grp_fu_2092_p_din0,grp_fu_2092_p_din1,grp_fu_2092_p_dout0,grp_fu_2092_p_ce); 
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
output  [10:0] v137_0_address0;
output   v137_0_ce0;
input  [31:0] v137_0_q0;
output  [10:0] v137_0_address1;
output   v137_0_ce1;
input  [31:0] v137_0_q1;
output  [10:0] v137_1_address0;
output   v137_1_ce0;
input  [31:0] v137_1_q0;
output  [10:0] v137_1_address1;
output   v137_1_ce1;
input  [31:0] v137_1_q1;
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
input  [0:0] empty;
input  [31:0] v17_10;
output  [31:0] grp_fu_2080_p_din0;
output  [31:0] grp_fu_2080_p_din1;
output  [1:0] grp_fu_2080_p_opcode;
input  [31:0] grp_fu_2080_p_dout0;
output   grp_fu_2080_p_ce;
output  [31:0] grp_fu_2084_p_din0;
output  [31:0] grp_fu_2084_p_din1;
output  [1:0] grp_fu_2084_p_opcode;
input  [31:0] grp_fu_2084_p_dout0;
output   grp_fu_2084_p_ce;
output  [31:0] grp_fu_2088_p_din0;
output  [31:0] grp_fu_2088_p_din1;
input  [31:0] grp_fu_2088_p_dout0;
output   grp_fu_2088_p_ce;
output  [31:0] grp_fu_2092_p_din0;
output  [31:0] grp_fu_2092_p_din1;
input  [31:0] grp_fu_2092_p_dout0;
output   grp_fu_2092_p_ce;
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
reg   [0:0] tmp_74_reg_688;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_354_p3;
reg   [31:0] reg_368;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] grp_fu_361_p3;
reg   [31:0] reg_372;
reg   [31:0] reg_376;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_381;
reg   [6:0] v12_reg_681;
wire   [0:0] tmp_74_fu_394_p3;
wire   [4:0] lshr_ln42_s_fu_420_p4;
reg   [4:0] lshr_ln42_s_reg_702;
wire   [3:0] tmp_265_fu_455_p4;
reg   [3:0] tmp_265_reg_717;
reg   [2:0] tmp_268_reg_742;
reg   [0:0] tmp_75_reg_752;
wire   [31:0] v16_fu_508_p1;
wire   [31:0] v23_fu_513_p1;
wire   [31:0] v29_fu_547_p1;
wire   [31:0] v35_fu_552_p1;
reg   [4:0] v10_0_addr_40_reg_818;
reg   [4:0] v10_0_addr_40_reg_818_pp0_iter2_reg;
reg   [4:0] v10_0_addr_40_reg_818_pp0_iter3_reg;
reg   [4:0] v10_1_addr_40_reg_823;
reg   [4:0] v10_1_addr_40_reg_823_pp0_iter2_reg;
reg   [4:0] v10_1_addr_40_reg_823_pp0_iter3_reg;
reg   [4:0] v10_0_addr_41_reg_828;
reg   [4:0] v10_0_addr_41_reg_828_pp0_iter2_reg;
reg   [4:0] v10_0_addr_41_reg_828_pp0_iter3_reg;
reg   [4:0] v10_1_addr_41_reg_833;
reg   [4:0] v10_1_addr_41_reg_833_pp0_iter2_reg;
reg   [4:0] v10_1_addr_41_reg_833_pp0_iter3_reg;
wire   [31:0] v41_fu_601_p1;
wire   [31:0] v47_fu_606_p1;
wire   [31:0] select_ln89_fu_611_p3;
reg   [31:0] select_ln89_reg_848;
wire   [31:0] select_ln96_fu_618_p3;
reg   [31:0] select_ln96_reg_853;
reg   [31:0] v14_reg_858;
reg   [31:0] v18_reg_863;
reg   [31:0] v24_reg_868;
reg   [4:0] v10_0_addr_42_reg_873;
reg   [4:0] v10_0_addr_42_reg_873_pp0_iter2_reg;
reg   [4:0] v10_0_addr_42_reg_873_pp0_iter3_reg;
reg   [4:0] v10_1_addr_42_reg_878;
reg   [4:0] v10_1_addr_42_reg_878_pp0_iter2_reg;
reg   [4:0] v10_1_addr_42_reg_878_pp0_iter3_reg;
reg   [4:0] v10_0_addr_43_reg_883;
reg   [4:0] v10_0_addr_43_reg_883_pp0_iter2_reg;
reg   [4:0] v10_0_addr_43_reg_883_pp0_iter3_reg;
reg   [4:0] v10_0_addr_43_reg_883_pp0_iter4_reg;
wire   [31:0] v53_fu_652_p1;
reg   [4:0] v10_1_addr_43_reg_893;
reg   [4:0] v10_1_addr_43_reg_893_pp0_iter2_reg;
reg   [4:0] v10_1_addr_43_reg_893_pp0_iter3_reg;
reg   [4:0] v10_1_addr_43_reg_893_pp0_iter4_reg;
wire   [31:0] v59_fu_656_p1;
reg   [31:0] v21_reg_903;
reg   [31:0] v27_reg_908;
reg   [31:0] v33_reg_913;
reg   [31:0] v30_reg_918;
reg   [31:0] v36_reg_923;
reg   [31:0] v39_reg_928;
reg   [31:0] v45_reg_933;
reg   [31:0] v51_reg_938;
reg   [31:0] v57_reg_943;
reg   [31:0] v42_reg_948;
reg   [31:0] v48_reg_953;
reg   [31:0] v54_reg_958;
reg   [31:0] v60_reg_963;
reg   [31:0] v31_reg_968;
reg   [31:0] v37_reg_973;
reg   [31:0] v55_reg_978;
reg   [31:0] v61_reg_983;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln46_fu_414_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_438_p1;
wire   [63:0] zext_ln61_fu_472_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln68_fu_486_p1;
wire   [63:0] zext_ln75_fu_525_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln82_fu_541_p1;
wire   [63:0] zext_ln89_fu_564_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln96_fu_577_p1;
wire   [63:0] zext_ln42_fu_583_p1;
wire   [63:0] zext_ln59_fu_595_p1;
wire   [63:0] zext_ln73_fu_633_p1;
wire   [63:0] zext_ln87_fu_646_p1;
reg   [6:0] v12_10_fu_94;
wire   [6:0] add_ln42_fu_444_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v12;
reg    v137_0_ce1_local;
reg   [10:0] v137_0_address1_local;
reg    v137_0_ce0_local;
reg   [10:0] v137_0_address0_local;
reg    v137_1_ce1_local;
reg   [10:0] v137_1_address1_local;
reg    v137_1_ce0_local;
reg   [10:0] v137_1_address0_local;
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
reg   [31:0] grp_fu_338_p0;
reg   [31:0] grp_fu_338_p1;
reg   [31:0] grp_fu_342_p0;
reg   [31:0] grp_fu_342_p1;
reg   [31:0] grp_fu_346_p0;
reg   [31:0] grp_fu_350_p0;
wire   [5:0] trunc_ln42_fu_402_p1;
wire   [10:0] tmp_s_fu_406_p3;
wire   [10:0] tmp_264_fu_430_p3;
wire   [10:0] tmp_266_fu_464_p3;
wire   [10:0] tmp_267_fu_478_p3;
wire   [10:0] tmp_269_fu_518_p3;
wire   [10:0] tmp_270_fu_531_p5;
wire   [10:0] tmp_271_fu_557_p3;
wire   [10:0] tmp_272_fu_570_p3;
wire   [4:0] or_ln59_8_fu_588_p3;
wire   [4:0] or_ln73_8_fu_625_p4;
wire   [4:0] or_ln87_8_fu_639_p3;
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
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v12_10_fu_94 = 7'd0;
#0 ap_done_reg = 1'b0;
end
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_74_fu_394_p3 == 1'd0))) begin
            v12_10_fu_94 <= add_ln42_fu_444_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v12_10_fu_94 <= 7'd0;
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
        lshr_ln42_s_reg_702 <= {{ap_sig_allocacmp_v12[5:1]}};
        select_ln89_reg_848 <= select_ln89_fu_611_p3;
        select_ln96_reg_853 <= select_ln96_fu_618_p3;
        tmp_74_reg_688 <= ap_sig_allocacmp_v12[32'd6];
        v10_0_addr_40_reg_818 <= zext_ln42_fu_583_p1;
        v10_0_addr_40_reg_818_pp0_iter2_reg <= v10_0_addr_40_reg_818;
        v10_0_addr_40_reg_818_pp0_iter3_reg <= v10_0_addr_40_reg_818_pp0_iter2_reg;
        v10_0_addr_41_reg_828[4 : 1] <= zext_ln59_fu_595_p1[4 : 1];
        v10_0_addr_41_reg_828_pp0_iter2_reg[4 : 1] <= v10_0_addr_41_reg_828[4 : 1];
        v10_0_addr_41_reg_828_pp0_iter3_reg[4 : 1] <= v10_0_addr_41_reg_828_pp0_iter2_reg[4 : 1];
        v10_1_addr_40_reg_823 <= zext_ln42_fu_583_p1;
        v10_1_addr_40_reg_823_pp0_iter2_reg <= v10_1_addr_40_reg_823;
        v10_1_addr_40_reg_823_pp0_iter3_reg <= v10_1_addr_40_reg_823_pp0_iter2_reg;
        v10_1_addr_41_reg_833[4 : 1] <= zext_ln59_fu_595_p1[4 : 1];
        v10_1_addr_41_reg_833_pp0_iter2_reg[4 : 1] <= v10_1_addr_41_reg_833[4 : 1];
        v10_1_addr_41_reg_833_pp0_iter3_reg[4 : 1] <= v10_1_addr_41_reg_833_pp0_iter2_reg[4 : 1];
        v12_reg_681 <= ap_sig_allocacmp_v12;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_368 <= grp_fu_354_p3;
        reg_372 <= grp_fu_361_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_376 <= grp_fu_2080_p_dout0;
        reg_381 <= grp_fu_2084_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_265_reg_717 <= {{v12_reg_681[5:2]}};
        tmp_268_reg_742 <= {{v12_reg_681[5:3]}};
        tmp_75_reg_752 <= v12_reg_681[32'd1];
        v10_0_addr_42_reg_873[0] <= zext_ln73_fu_633_p1[0];
v10_0_addr_42_reg_873[4 : 2] <= zext_ln73_fu_633_p1[4 : 2];
        v10_0_addr_42_reg_873_pp0_iter2_reg[0] <= v10_0_addr_42_reg_873[0];
v10_0_addr_42_reg_873_pp0_iter2_reg[4 : 2] <= v10_0_addr_42_reg_873[4 : 2];
        v10_0_addr_42_reg_873_pp0_iter3_reg[0] <= v10_0_addr_42_reg_873_pp0_iter2_reg[0];
v10_0_addr_42_reg_873_pp0_iter3_reg[4 : 2] <= v10_0_addr_42_reg_873_pp0_iter2_reg[4 : 2];
        v10_0_addr_43_reg_883[4 : 2] <= zext_ln87_fu_646_p1[4 : 2];
        v10_0_addr_43_reg_883_pp0_iter2_reg[4 : 2] <= v10_0_addr_43_reg_883[4 : 2];
        v10_0_addr_43_reg_883_pp0_iter3_reg[4 : 2] <= v10_0_addr_43_reg_883_pp0_iter2_reg[4 : 2];
        v10_0_addr_43_reg_883_pp0_iter4_reg[4 : 2] <= v10_0_addr_43_reg_883_pp0_iter3_reg[4 : 2];
        v10_1_addr_42_reg_878[0] <= zext_ln73_fu_633_p1[0];
v10_1_addr_42_reg_878[4 : 2] <= zext_ln73_fu_633_p1[4 : 2];
        v10_1_addr_42_reg_878_pp0_iter2_reg[0] <= v10_1_addr_42_reg_878[0];
v10_1_addr_42_reg_878_pp0_iter2_reg[4 : 2] <= v10_1_addr_42_reg_878[4 : 2];
        v10_1_addr_42_reg_878_pp0_iter3_reg[0] <= v10_1_addr_42_reg_878_pp0_iter2_reg[0];
v10_1_addr_42_reg_878_pp0_iter3_reg[4 : 2] <= v10_1_addr_42_reg_878_pp0_iter2_reg[4 : 2];
        v10_1_addr_43_reg_893[4 : 2] <= zext_ln87_fu_646_p1[4 : 2];
        v10_1_addr_43_reg_893_pp0_iter2_reg[4 : 2] <= v10_1_addr_43_reg_893[4 : 2];
        v10_1_addr_43_reg_893_pp0_iter3_reg[4 : 2] <= v10_1_addr_43_reg_893_pp0_iter2_reg[4 : 2];
        v10_1_addr_43_reg_893_pp0_iter4_reg[4 : 2] <= v10_1_addr_43_reg_893_pp0_iter3_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v14_reg_858 <= v10_0_q1;
        v18_reg_863 <= grp_fu_2088_p_dout0;
        v21_reg_903 <= v10_1_q1;
        v24_reg_868 <= grp_fu_2092_p_dout0;
        v27_reg_908 <= v10_0_q0;
        v33_reg_913 <= v10_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v30_reg_918 <= grp_fu_2088_p_dout0;
        v36_reg_923 <= grp_fu_2092_p_dout0;
        v39_reg_928 <= v10_0_q1;
        v45_reg_933 <= v10_1_q1;
        v51_reg_938 <= v10_0_q0;
        v57_reg_943 <= v10_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v31_reg_968 <= grp_fu_2080_p_dout0;
        v37_reg_973 <= grp_fu_2084_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v42_reg_948 <= grp_fu_2088_p_dout0;
        v48_reg_953 <= grp_fu_2092_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v54_reg_958 <= grp_fu_2088_p_dout0;
        v60_reg_963 <= grp_fu_2092_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v55_reg_978 <= grp_fu_2080_p_dout0;
        v61_reg_983 <= grp_fu_2084_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_74_reg_688 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v12 = 7'd0;
    end else begin
        ap_sig_allocacmp_v12 = v12_10_fu_94;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_338_p0 = v51_reg_938;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_338_p0 = v39_reg_928;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_338_p0 = v27_reg_908;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_338_p0 = v14_reg_858;
    end else begin
        grp_fu_338_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_338_p1 = v54_reg_958;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_338_p1 = v42_reg_948;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_338_p1 = v30_reg_918;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_338_p1 = v18_reg_863;
    end else begin
        grp_fu_338_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_342_p0 = v57_reg_943;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_342_p0 = v45_reg_933;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_342_p0 = v33_reg_913;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_342_p0 = v21_reg_903;
    end else begin
        grp_fu_342_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_342_p1 = v60_reg_963;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_342_p1 = v48_reg_953;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_342_p1 = v36_reg_923;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_342_p1 = v24_reg_868;
    end else begin
        grp_fu_342_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_346_p0 = v53_fu_652_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_346_p0 = v41_fu_601_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_346_p0 = v29_fu_547_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_346_p0 = v16_fu_508_p1;
    end else begin
        grp_fu_346_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_350_p0 = v59_fu_656_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_350_p0 = v47_fu_606_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_350_p0 = v35_fu_552_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_350_p0 = v23_fu_513_p1;
    end else begin
        grp_fu_350_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_address0_local = v10_0_addr_43_reg_883_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_address0_local = v10_0_addr_41_reg_828_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_0_address0_local = zext_ln87_fu_646_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_0_address0_local = zext_ln59_fu_595_p1;
    end else begin
        v10_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_address1_local = v10_0_addr_42_reg_873_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_address1_local = v10_0_addr_40_reg_818_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_0_address1_local = zext_ln73_fu_633_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_0_address1_local = zext_ln42_fu_583_p1;
    end else begin
        v10_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v10_0_ce0_local = 1'b1;
    end else begin
        v10_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v10_0_ce1_local = 1'b1;
    end else begin
        v10_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_d0_local = v55_reg_978;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_d0_local = v31_reg_968;
    end else begin
        v10_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
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
        v10_1_address0_local = v10_1_addr_43_reg_893_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_address0_local = v10_1_addr_41_reg_833_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_1_address0_local = zext_ln87_fu_646_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_1_address0_local = zext_ln59_fu_595_p1;
    end else begin
        v10_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_1_address1_local = v10_1_addr_42_reg_878_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_address1_local = v10_1_addr_40_reg_823_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_1_address1_local = zext_ln73_fu_633_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_1_address1_local = zext_ln42_fu_583_p1;
    end else begin
        v10_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v10_1_ce0_local = 1'b1;
    end else begin
        v10_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v10_1_ce1_local = 1'b1;
    end else begin
        v10_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_1_d0_local = v61_reg_983;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_d0_local = v37_reg_973;
    end else begin
        v10_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
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
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v137_0_address0_local = zext_ln96_fu_577_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_0_address0_local = zext_ln82_fu_541_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_0_address0_local = zext_ln68_fu_486_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_0_address0_local = zext_ln54_fu_438_p1;
        end else begin
            v137_0_address0_local = 'bx;
        end
    end else begin
        v137_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v137_0_address1_local = zext_ln89_fu_564_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_0_address1_local = zext_ln75_fu_525_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_0_address1_local = zext_ln61_fu_472_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_0_address1_local = zext_ln46_fu_414_p1;
        end else begin
            v137_0_address1_local = 'bx;
        end
    end else begin
        v137_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_0_ce0_local = 1'b1;
    end else begin
        v137_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_0_ce1_local = 1'b1;
    end else begin
        v137_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v137_1_address0_local = zext_ln96_fu_577_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_1_address0_local = zext_ln82_fu_541_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_1_address0_local = zext_ln68_fu_486_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_1_address0_local = zext_ln54_fu_438_p1;
        end else begin
            v137_1_address0_local = 'bx;
        end
    end else begin
        v137_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v137_1_address1_local = zext_ln89_fu_564_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_1_address1_local = zext_ln75_fu_525_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_1_address1_local = zext_ln61_fu_472_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_1_address1_local = zext_ln46_fu_414_p1;
        end else begin
            v137_1_address1_local = 'bx;
        end
    end else begin
        v137_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_1_ce0_local = 1'b1;
    end else begin
        v137_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_1_ce1_local = 1'b1;
    end else begin
        v137_1_ce1_local = 1'b0;
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
assign add_ln42_fu_444_p2 = (ap_sig_allocacmp_v12 + 7'd8);
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
assign grp_fu_2080_p_ce = 1'b1;
assign grp_fu_2080_p_din0 = grp_fu_338_p0;
assign grp_fu_2080_p_din1 = grp_fu_338_p1;
assign grp_fu_2080_p_opcode = 2'd0;
assign grp_fu_2084_p_ce = 1'b1;
assign grp_fu_2084_p_din0 = grp_fu_342_p0;
assign grp_fu_2084_p_din1 = grp_fu_342_p1;
assign grp_fu_2084_p_opcode = 2'd0;
assign grp_fu_2088_p_ce = 1'b1;
assign grp_fu_2088_p_din0 = grp_fu_346_p0;
assign grp_fu_2088_p_din1 = v17_10;
assign grp_fu_2092_p_ce = 1'b1;
assign grp_fu_2092_p_din0 = grp_fu_350_p0;
assign grp_fu_2092_p_din1 = v17_10;
assign grp_fu_354_p3 = ((empty[0:0] == 1'b1) ? v137_1_q1 : v137_0_q1);
assign grp_fu_361_p3 = ((empty[0:0] == 1'b1) ? v137_1_q0 : v137_0_q0);
assign lshr_ln42_s_fu_420_p4 = {{ap_sig_allocacmp_v12[5:1]}};
assign or_ln59_8_fu_588_p3 = {{tmp_265_reg_717}, {1'd1}};
assign or_ln73_8_fu_625_p4 = {{{tmp_268_reg_742}, {1'd1}}, {tmp_75_reg_752}};
assign or_ln87_8_fu_639_p3 = {{tmp_268_reg_742}, {2'd3}};
assign select_ln89_fu_611_p3 = ((empty[0:0] == 1'b1) ? v137_1_q1 : v137_0_q1);
assign select_ln96_fu_618_p3 = ((empty[0:0] == 1'b1) ? v137_1_q0 : v137_0_q0);
assign tmp_264_fu_430_p3 = {{lshr_ln42_s_fu_420_p4}, {6'd42}};
assign tmp_265_fu_455_p4 = {{v12_reg_681[5:2]}};
assign tmp_266_fu_464_p3 = {{tmp_265_fu_455_p4}, {7'd74}};
assign tmp_267_fu_478_p3 = {{tmp_265_fu_455_p4}, {7'd106}};
assign tmp_269_fu_518_p3 = {{tmp_268_reg_742}, {8'd138}};
assign tmp_270_fu_531_p5 = {{{{tmp_268_reg_742}, {1'd1}}, {tmp_75_reg_752}}, {6'd42}};
assign tmp_271_fu_557_p3 = {{tmp_268_reg_742}, {8'd202}};
assign tmp_272_fu_570_p3 = {{tmp_268_reg_742}, {8'd234}};
assign tmp_74_fu_394_p3 = ap_sig_allocacmp_v12[32'd6];
assign tmp_s_fu_406_p3 = {{trunc_ln42_fu_402_p1}, {5'd10}};
assign trunc_ln42_fu_402_p1 = ap_sig_allocacmp_v12[5:0];
assign v10_0_address0 = v10_0_address0_local;
assign v10_0_address1 = v10_0_address1_local;
assign v10_0_ce0 = v10_0_ce0_local;
assign v10_0_ce1 = v10_0_ce1_local;
assign v10_0_d0 = v10_0_d0_local;
assign v10_0_d1 = reg_376;
assign v10_0_we0 = v10_0_we0_local;
assign v10_0_we1 = v10_0_we1_local;
assign v10_1_address0 = v10_1_address0_local;
assign v10_1_address1 = v10_1_address1_local;
assign v10_1_ce0 = v10_1_ce0_local;
assign v10_1_ce1 = v10_1_ce1_local;
assign v10_1_d0 = v10_1_d0_local;
assign v10_1_d1 = reg_381;
assign v10_1_we0 = v10_1_we0_local;
assign v10_1_we1 = v10_1_we1_local;
assign v137_0_address0 = v137_0_address0_local;
assign v137_0_address1 = v137_0_address1_local;
assign v137_0_ce0 = v137_0_ce0_local;
assign v137_0_ce1 = v137_0_ce1_local;
assign v137_1_address0 = v137_1_address0_local;
assign v137_1_address1 = v137_1_address1_local;
assign v137_1_ce0 = v137_1_ce0_local;
assign v137_1_ce1 = v137_1_ce1_local;
assign v16_fu_508_p1 = reg_368;
assign v23_fu_513_p1 = reg_372;
assign v29_fu_547_p1 = reg_368;
assign v35_fu_552_p1 = reg_372;
assign v41_fu_601_p1 = reg_368;
assign v47_fu_606_p1 = reg_372;
assign v53_fu_652_p1 = select_ln89_reg_848;
assign v59_fu_656_p1 = select_ln96_reg_853;
assign zext_ln42_fu_583_p1 = lshr_ln42_s_reg_702;
assign zext_ln46_fu_414_p1 = tmp_s_fu_406_p3;
assign zext_ln54_fu_438_p1 = tmp_264_fu_430_p3;
assign zext_ln59_fu_595_p1 = or_ln59_8_fu_588_p3;
assign zext_ln61_fu_472_p1 = tmp_266_fu_464_p3;
assign zext_ln68_fu_486_p1 = tmp_267_fu_478_p3;
assign zext_ln73_fu_633_p1 = or_ln73_8_fu_625_p4;
assign zext_ln75_fu_525_p1 = tmp_269_fu_518_p3;
assign zext_ln82_fu_541_p1 = tmp_270_fu_531_p5;
assign zext_ln87_fu_646_p1 = or_ln87_8_fu_639_p3;
assign zext_ln89_fu_564_p1 = tmp_271_fu_557_p3;
assign zext_ln96_fu_577_p1 = tmp_272_fu_570_p3;
always @ (posedge ap_clk) begin
    v10_0_addr_41_reg_828[0] <= 1'b1;
    v10_0_addr_41_reg_828_pp0_iter2_reg[0] <= 1'b1;
    v10_0_addr_41_reg_828_pp0_iter3_reg[0] <= 1'b1;
    v10_1_addr_41_reg_833[0] <= 1'b1;
    v10_1_addr_41_reg_833_pp0_iter2_reg[0] <= 1'b1;
    v10_1_addr_41_reg_833_pp0_iter3_reg[0] <= 1'b1;
    v10_0_addr_42_reg_873[1] <= 1'b1;
    v10_0_addr_42_reg_873_pp0_iter2_reg[1] <= 1'b1;
    v10_0_addr_42_reg_873_pp0_iter3_reg[1] <= 1'b1;
    v10_1_addr_42_reg_878[1] <= 1'b1;
    v10_1_addr_42_reg_878_pp0_iter2_reg[1] <= 1'b1;
    v10_1_addr_42_reg_878_pp0_iter3_reg[1] <= 1'b1;
    v10_0_addr_43_reg_883[1:0] <= 2'b11;
    v10_0_addr_43_reg_883_pp0_iter2_reg[1:0] <= 2'b11;
    v10_0_addr_43_reg_883_pp0_iter3_reg[1:0] <= 2'b11;
    v10_0_addr_43_reg_883_pp0_iter4_reg[1:0] <= 2'b11;
    v10_1_addr_43_reg_893[1:0] <= 2'b11;
    v10_1_addr_43_reg_893_pp0_iter2_reg[1:0] <= 2'b11;
    v10_1_addr_43_reg_893_pp0_iter3_reg[1:0] <= 2'b11;
    v10_1_addr_43_reg_893_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 