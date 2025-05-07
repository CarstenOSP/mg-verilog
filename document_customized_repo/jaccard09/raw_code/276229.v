module bicg_bicg_node1_Pipeline_label_25 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v137_1_address0,v137_1_ce0,v137_1_q0,v137_1_address1,v137_1_ce1,v137_1_q1,v137_17_address0,v137_17_ce0,v137_17_q0,v137_17_address1,v137_17_ce1,v137_17_q1,v10_1_address0,v10_1_ce0,v10_1_we0,v10_1_d0,v10_1_q0,v10_1_address1,v10_1_ce1,v10_1_we1,v10_1_d1,v10_1_q1,v10_0_address0,v10_0_ce0,v10_0_we0,v10_0_d0,v10_0_q0,v10_0_address1,v10_0_ce1,v10_0_we1,v10_0_d1,v10_0_q1,icmp_ln46,v17_3,grp_fu_2154_p_din0,grp_fu_2154_p_din1,grp_fu_2154_p_opcode,grp_fu_2154_p_dout0,grp_fu_2154_p_ce,grp_fu_2158_p_din0,grp_fu_2158_p_din1,grp_fu_2158_p_opcode,grp_fu_2158_p_dout0,grp_fu_2158_p_ce,grp_fu_2162_p_din0,grp_fu_2162_p_din1,grp_fu_2162_p_dout0,grp_fu_2162_p_ce,grp_fu_2166_p_din0,grp_fu_2166_p_din1,grp_fu_2166_p_dout0,grp_fu_2166_p_ce); 
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
output  [6:0] v137_1_address0;
output   v137_1_ce0;
input  [31:0] v137_1_q0;
output  [6:0] v137_1_address1;
output   v137_1_ce1;
input  [31:0] v137_1_q1;
output  [6:0] v137_17_address0;
output   v137_17_ce0;
input  [31:0] v137_17_q0;
output  [6:0] v137_17_address1;
output   v137_17_ce1;
input  [31:0] v137_17_q1;
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
input  [0:0] icmp_ln46;
input  [31:0] v17_3;
output  [31:0] grp_fu_2154_p_din0;
output  [31:0] grp_fu_2154_p_din1;
output  [1:0] grp_fu_2154_p_opcode;
input  [31:0] grp_fu_2154_p_dout0;
output   grp_fu_2154_p_ce;
output  [31:0] grp_fu_2158_p_din0;
output  [31:0] grp_fu_2158_p_din1;
output  [1:0] grp_fu_2158_p_opcode;
input  [31:0] grp_fu_2158_p_dout0;
output   grp_fu_2158_p_ce;
output  [31:0] grp_fu_2162_p_din0;
output  [31:0] grp_fu_2162_p_din1;
input  [31:0] grp_fu_2162_p_dout0;
output   grp_fu_2162_p_ce;
output  [31:0] grp_fu_2166_p_din0;
output  [31:0] grp_fu_2166_p_din1;
input  [31:0] grp_fu_2166_p_dout0;
output   grp_fu_2166_p_ce;
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
reg   [0:0] tmp_reg_684;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_350_p3;
reg   [31:0] reg_364;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] grp_fu_357_p3;
reg   [31:0] reg_368;
reg   [31:0] reg_372;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_377;
reg   [6:0] v12_reg_677;
wire   [0:0] tmp_fu_390_p3;
wire   [4:0] lshr_ln42_3_fu_416_p4;
reg   [4:0] lshr_ln42_3_reg_698;
wire   [3:0] tmp_46_fu_451_p4;
reg   [3:0] tmp_46_reg_713;
reg   [2:0] tmp_49_reg_738;
reg   [0:0] tmp_9_reg_748;
wire   [31:0] v16_fu_504_p1;
wire   [31:0] v23_fu_509_p1;
wire   [31:0] v29_fu_543_p1;
wire   [31:0] v35_fu_548_p1;
reg   [4:0] v10_0_addr_12_reg_814;
reg   [4:0] v10_0_addr_12_reg_814_pp0_iter2_reg;
reg   [4:0] v10_0_addr_12_reg_814_pp0_iter3_reg;
reg   [4:0] v10_1_addr_12_reg_819;
reg   [4:0] v10_1_addr_12_reg_819_pp0_iter2_reg;
reg   [4:0] v10_1_addr_12_reg_819_pp0_iter3_reg;
reg   [4:0] v10_0_addr_reg_824;
reg   [4:0] v10_0_addr_reg_824_pp0_iter2_reg;
reg   [4:0] v10_0_addr_reg_824_pp0_iter3_reg;
reg   [4:0] v10_1_addr_reg_829;
reg   [4:0] v10_1_addr_reg_829_pp0_iter2_reg;
reg   [4:0] v10_1_addr_reg_829_pp0_iter3_reg;
wire   [31:0] v41_fu_597_p1;
wire   [31:0] v47_fu_602_p1;
wire   [31:0] select_ln89_fu_607_p3;
reg   [31:0] select_ln89_reg_844;
wire   [31:0] select_ln96_fu_614_p3;
reg   [31:0] select_ln96_reg_849;
reg   [31:0] v14_reg_854;
reg   [31:0] v18_reg_859;
reg   [31:0] v24_reg_864;
reg   [4:0] v10_0_addr_13_reg_869;
reg   [4:0] v10_0_addr_13_reg_869_pp0_iter2_reg;
reg   [4:0] v10_0_addr_13_reg_869_pp0_iter3_reg;
reg   [4:0] v10_1_addr_13_reg_874;
reg   [4:0] v10_1_addr_13_reg_874_pp0_iter2_reg;
reg   [4:0] v10_1_addr_13_reg_874_pp0_iter3_reg;
reg   [4:0] v10_0_addr_14_reg_879;
reg   [4:0] v10_0_addr_14_reg_879_pp0_iter2_reg;
reg   [4:0] v10_0_addr_14_reg_879_pp0_iter3_reg;
reg   [4:0] v10_0_addr_14_reg_879_pp0_iter4_reg;
wire   [31:0] v53_fu_648_p1;
reg   [4:0] v10_1_addr_14_reg_889;
reg   [4:0] v10_1_addr_14_reg_889_pp0_iter2_reg;
reg   [4:0] v10_1_addr_14_reg_889_pp0_iter3_reg;
reg   [4:0] v10_1_addr_14_reg_889_pp0_iter4_reg;
wire   [31:0] v59_fu_652_p1;
reg   [31:0] v21_reg_899;
reg   [31:0] v27_reg_904;
reg   [31:0] v33_reg_909;
reg   [31:0] v30_reg_914;
reg   [31:0] v36_reg_919;
reg   [31:0] v39_1_reg_924;
reg   [31:0] v45_reg_929;
reg   [31:0] v51_reg_934;
reg   [31:0] v57_reg_939;
reg   [31:0] v42_reg_944;
reg   [31:0] v48_reg_949;
reg   [31:0] v54_reg_954;
reg   [31:0] v60_reg_959;
reg   [31:0] v31_reg_964;
reg   [31:0] v37_1_reg_969;
reg   [31:0] v55_reg_974;
reg   [31:0] v61_reg_979;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln46_fu_410_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_434_p1;
wire   [63:0] zext_ln61_fu_468_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln68_fu_482_p1;
wire   [63:0] zext_ln75_fu_521_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln82_fu_537_p1;
wire   [63:0] zext_ln89_fu_560_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln96_fu_573_p1;
wire   [63:0] zext_ln42_fu_579_p1;
wire   [63:0] zext_ln59_fu_591_p1;
wire   [63:0] zext_ln73_fu_629_p1;
wire   [63:0] zext_ln87_fu_642_p1;
reg   [6:0] v12_3_fu_90;
wire   [6:0] add_ln42_fu_440_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v12;
reg    v137_1_ce1_local;
reg   [6:0] v137_1_address1_local;
reg    v137_1_ce0_local;
reg   [6:0] v137_1_address0_local;
reg    v137_17_ce1_local;
reg   [6:0] v137_17_address1_local;
reg    v137_17_ce0_local;
reg   [6:0] v137_17_address0_local;
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
reg   [31:0] grp_fu_334_p0;
reg   [31:0] grp_fu_334_p1;
reg   [31:0] grp_fu_338_p0;
reg   [31:0] grp_fu_338_p1;
reg   [31:0] grp_fu_342_p0;
reg   [31:0] grp_fu_346_p0;
wire   [5:0] trunc_ln42_fu_398_p1;
wire   [6:0] tmp_s_fu_402_p3;
wire   [6:0] tmp_45_fu_426_p3;
wire   [6:0] tmp_47_fu_460_p3;
wire   [6:0] tmp_48_fu_474_p3;
wire   [6:0] tmp_50_fu_514_p3;
wire   [6:0] tmp_51_fu_527_p5;
wire   [6:0] tmp_52_fu_553_p3;
wire   [6:0] tmp_53_fu_566_p3;
wire   [4:0] or_ln59_5_fu_584_p3;
wire   [4:0] or_ln73_5_fu_621_p4;
wire   [4:0] or_ln87_5_fu_635_p3;
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
#0 v12_3_fu_90 = 7'd0;
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_390_p3 == 1'd0))) begin
            v12_3_fu_90 <= add_ln42_fu_440_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v12_3_fu_90 <= 7'd0;
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
        lshr_ln42_3_reg_698 <= {{ap_sig_allocacmp_v12[5:1]}};
        select_ln89_reg_844 <= select_ln89_fu_607_p3;
        select_ln96_reg_849 <= select_ln96_fu_614_p3;
        tmp_reg_684 <= ap_sig_allocacmp_v12[32'd6];
        v10_0_addr_12_reg_814 <= zext_ln42_fu_579_p1;
        v10_0_addr_12_reg_814_pp0_iter2_reg <= v10_0_addr_12_reg_814;
        v10_0_addr_12_reg_814_pp0_iter3_reg <= v10_0_addr_12_reg_814_pp0_iter2_reg;
        v10_0_addr_reg_824[4 : 1] <= zext_ln59_fu_591_p1[4 : 1];
        v10_0_addr_reg_824_pp0_iter2_reg[4 : 1] <= v10_0_addr_reg_824[4 : 1];
        v10_0_addr_reg_824_pp0_iter3_reg[4 : 1] <= v10_0_addr_reg_824_pp0_iter2_reg[4 : 1];
        v10_1_addr_12_reg_819 <= zext_ln42_fu_579_p1;
        v10_1_addr_12_reg_819_pp0_iter2_reg <= v10_1_addr_12_reg_819;
        v10_1_addr_12_reg_819_pp0_iter3_reg <= v10_1_addr_12_reg_819_pp0_iter2_reg;
        v10_1_addr_reg_829[4 : 1] <= zext_ln59_fu_591_p1[4 : 1];
        v10_1_addr_reg_829_pp0_iter2_reg[4 : 1] <= v10_1_addr_reg_829[4 : 1];
        v10_1_addr_reg_829_pp0_iter3_reg[4 : 1] <= v10_1_addr_reg_829_pp0_iter2_reg[4 : 1];
        v12_reg_677 <= ap_sig_allocacmp_v12;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_364 <= grp_fu_350_p3;
        reg_368 <= grp_fu_357_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_372 <= grp_fu_2154_p_dout0;
        reg_377 <= grp_fu_2158_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_46_reg_713 <= {{v12_reg_677[5:2]}};
        tmp_49_reg_738 <= {{v12_reg_677[5:3]}};
        tmp_9_reg_748 <= v12_reg_677[32'd1];
        v10_0_addr_13_reg_869[0] <= zext_ln73_fu_629_p1[0];
v10_0_addr_13_reg_869[4 : 2] <= zext_ln73_fu_629_p1[4 : 2];
        v10_0_addr_13_reg_869_pp0_iter2_reg[0] <= v10_0_addr_13_reg_869[0];
v10_0_addr_13_reg_869_pp0_iter2_reg[4 : 2] <= v10_0_addr_13_reg_869[4 : 2];
        v10_0_addr_13_reg_869_pp0_iter3_reg[0] <= v10_0_addr_13_reg_869_pp0_iter2_reg[0];
v10_0_addr_13_reg_869_pp0_iter3_reg[4 : 2] <= v10_0_addr_13_reg_869_pp0_iter2_reg[4 : 2];
        v10_0_addr_14_reg_879[4 : 2] <= zext_ln87_fu_642_p1[4 : 2];
        v10_0_addr_14_reg_879_pp0_iter2_reg[4 : 2] <= v10_0_addr_14_reg_879[4 : 2];
        v10_0_addr_14_reg_879_pp0_iter3_reg[4 : 2] <= v10_0_addr_14_reg_879_pp0_iter2_reg[4 : 2];
        v10_0_addr_14_reg_879_pp0_iter4_reg[4 : 2] <= v10_0_addr_14_reg_879_pp0_iter3_reg[4 : 2];
        v10_1_addr_13_reg_874[0] <= zext_ln73_fu_629_p1[0];
v10_1_addr_13_reg_874[4 : 2] <= zext_ln73_fu_629_p1[4 : 2];
        v10_1_addr_13_reg_874_pp0_iter2_reg[0] <= v10_1_addr_13_reg_874[0];
v10_1_addr_13_reg_874_pp0_iter2_reg[4 : 2] <= v10_1_addr_13_reg_874[4 : 2];
        v10_1_addr_13_reg_874_pp0_iter3_reg[0] <= v10_1_addr_13_reg_874_pp0_iter2_reg[0];
v10_1_addr_13_reg_874_pp0_iter3_reg[4 : 2] <= v10_1_addr_13_reg_874_pp0_iter2_reg[4 : 2];
        v10_1_addr_14_reg_889[4 : 2] <= zext_ln87_fu_642_p1[4 : 2];
        v10_1_addr_14_reg_889_pp0_iter2_reg[4 : 2] <= v10_1_addr_14_reg_889[4 : 2];
        v10_1_addr_14_reg_889_pp0_iter3_reg[4 : 2] <= v10_1_addr_14_reg_889_pp0_iter2_reg[4 : 2];
        v10_1_addr_14_reg_889_pp0_iter4_reg[4 : 2] <= v10_1_addr_14_reg_889_pp0_iter3_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v14_reg_854 <= v10_0_q1;
        v18_reg_859 <= grp_fu_2162_p_dout0;
        v21_reg_899 <= v10_1_q1;
        v24_reg_864 <= grp_fu_2166_p_dout0;
        v27_reg_904 <= v10_0_q0;
        v33_reg_909 <= v10_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v30_reg_914 <= grp_fu_2162_p_dout0;
        v36_reg_919 <= grp_fu_2166_p_dout0;
        v39_1_reg_924 <= v10_0_q1;
        v45_reg_929 <= v10_1_q1;
        v51_reg_934 <= v10_0_q0;
        v57_reg_939 <= v10_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v31_reg_964 <= grp_fu_2154_p_dout0;
        v37_1_reg_969 <= grp_fu_2158_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v42_reg_944 <= grp_fu_2162_p_dout0;
        v48_reg_949 <= grp_fu_2166_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v54_reg_954 <= grp_fu_2162_p_dout0;
        v60_reg_959 <= grp_fu_2166_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v55_reg_974 <= grp_fu_2154_p_dout0;
        v61_reg_979 <= grp_fu_2158_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_684 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v12 = v12_3_fu_90;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_334_p0 = v51_reg_934;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_334_p0 = v39_1_reg_924;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_334_p0 = v27_reg_904;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_334_p0 = v14_reg_854;
    end else begin
        grp_fu_334_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_334_p1 = v54_reg_954;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_334_p1 = v42_reg_944;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_334_p1 = v30_reg_914;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_334_p1 = v18_reg_859;
    end else begin
        grp_fu_334_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_338_p0 = v57_reg_939;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_338_p0 = v45_reg_929;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_338_p0 = v33_reg_909;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_338_p0 = v21_reg_899;
    end else begin
        grp_fu_338_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_338_p1 = v60_reg_959;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_338_p1 = v48_reg_949;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_338_p1 = v36_reg_919;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_338_p1 = v24_reg_864;
    end else begin
        grp_fu_338_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_342_p0 = v53_fu_648_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_342_p0 = v41_fu_597_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_342_p0 = v29_fu_543_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_342_p0 = v16_fu_504_p1;
    end else begin
        grp_fu_342_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_346_p0 = v59_fu_652_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_346_p0 = v47_fu_602_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_346_p0 = v35_fu_548_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_346_p0 = v23_fu_509_p1;
    end else begin
        grp_fu_346_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_address0_local = v10_0_addr_14_reg_879_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_address0_local = v10_0_addr_reg_824_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_0_address0_local = zext_ln87_fu_642_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_0_address0_local = zext_ln59_fu_591_p1;
    end else begin
        v10_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_address1_local = v10_0_addr_13_reg_869_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_address1_local = v10_0_addr_12_reg_814_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_0_address1_local = zext_ln73_fu_629_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_0_address1_local = zext_ln42_fu_579_p1;
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
        v10_0_d0_local = v55_reg_974;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_d0_local = v31_reg_964;
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
        v10_1_address0_local = v10_1_addr_14_reg_889_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_address0_local = v10_1_addr_reg_829_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_1_address0_local = zext_ln87_fu_642_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_1_address0_local = zext_ln59_fu_591_p1;
    end else begin
        v10_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_1_address1_local = v10_1_addr_13_reg_874_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_address1_local = v10_1_addr_12_reg_819_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_1_address1_local = zext_ln73_fu_629_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_1_address1_local = zext_ln42_fu_579_p1;
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
        v10_1_d0_local = v61_reg_979;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_d0_local = v37_1_reg_969;
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
            v137_17_address0_local = zext_ln96_fu_573_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_17_address0_local = zext_ln82_fu_537_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_17_address0_local = zext_ln68_fu_482_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_17_address0_local = zext_ln54_fu_434_p1;
        end else begin
            v137_17_address0_local = 'bx;
        end
    end else begin
        v137_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v137_17_address1_local = zext_ln89_fu_560_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_17_address1_local = zext_ln75_fu_521_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_17_address1_local = zext_ln61_fu_468_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_17_address1_local = zext_ln46_fu_410_p1;
        end else begin
            v137_17_address1_local = 'bx;
        end
    end else begin
        v137_17_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_17_ce0_local = 1'b1;
    end else begin
        v137_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_17_ce1_local = 1'b1;
    end else begin
        v137_17_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v137_1_address0_local = zext_ln96_fu_573_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_1_address0_local = zext_ln82_fu_537_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_1_address0_local = zext_ln68_fu_482_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_1_address0_local = zext_ln54_fu_434_p1;
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
            v137_1_address1_local = zext_ln89_fu_560_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_1_address1_local = zext_ln75_fu_521_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_1_address1_local = zext_ln61_fu_468_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_1_address1_local = zext_ln46_fu_410_p1;
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
assign add_ln42_fu_440_p2 = (ap_sig_allocacmp_v12 + 7'd8);
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
assign grp_fu_2154_p_ce = 1'b1;
assign grp_fu_2154_p_din0 = grp_fu_334_p0;
assign grp_fu_2154_p_din1 = grp_fu_334_p1;
assign grp_fu_2154_p_opcode = 2'd0;
assign grp_fu_2158_p_ce = 1'b1;
assign grp_fu_2158_p_din0 = grp_fu_338_p0;
assign grp_fu_2158_p_din1 = grp_fu_338_p1;
assign grp_fu_2158_p_opcode = 2'd0;
assign grp_fu_2162_p_ce = 1'b1;
assign grp_fu_2162_p_din0 = grp_fu_342_p0;
assign grp_fu_2162_p_din1 = v17_3;
assign grp_fu_2166_p_ce = 1'b1;
assign grp_fu_2166_p_din0 = grp_fu_346_p0;
assign grp_fu_2166_p_din1 = v17_3;
assign grp_fu_350_p3 = ((icmp_ln46[0:0] == 1'b1) ? v137_17_q1 : v137_1_q1);
assign grp_fu_357_p3 = ((icmp_ln46[0:0] == 1'b1) ? v137_17_q0 : v137_1_q0);
assign lshr_ln42_3_fu_416_p4 = {{ap_sig_allocacmp_v12[5:1]}};
assign or_ln59_5_fu_584_p3 = {{tmp_46_reg_713}, {1'd1}};
assign or_ln73_5_fu_621_p4 = {{{tmp_49_reg_738}, {1'd1}}, {tmp_9_reg_748}};
assign or_ln87_5_fu_635_p3 = {{tmp_49_reg_738}, {2'd3}};
assign select_ln89_fu_607_p3 = ((icmp_ln46[0:0] == 1'b1) ? v137_17_q1 : v137_1_q1);
assign select_ln96_fu_614_p3 = ((icmp_ln46[0:0] == 1'b1) ? v137_17_q0 : v137_1_q0);
assign tmp_45_fu_426_p3 = {{lshr_ln42_3_fu_416_p4}, {2'd3}};
assign tmp_46_fu_451_p4 = {{v12_reg_677[5:2]}};
assign tmp_47_fu_460_p3 = {{tmp_46_fu_451_p4}, {3'd5}};
assign tmp_48_fu_474_p3 = {{tmp_46_fu_451_p4}, {3'd7}};
assign tmp_50_fu_514_p3 = {{tmp_49_reg_738}, {4'd9}};
assign tmp_51_fu_527_p5 = {{{{tmp_49_reg_738}, {1'd1}}, {tmp_9_reg_748}}, {2'd3}};
assign tmp_52_fu_553_p3 = {{tmp_49_reg_738}, {4'd13}};
assign tmp_53_fu_566_p3 = {{tmp_49_reg_738}, {4'd15}};
assign tmp_fu_390_p3 = ap_sig_allocacmp_v12[32'd6];
assign tmp_s_fu_402_p3 = {{trunc_ln42_fu_398_p1}, {1'd1}};
assign trunc_ln42_fu_398_p1 = ap_sig_allocacmp_v12[5:0];
assign v10_0_address0 = v10_0_address0_local;
assign v10_0_address1 = v10_0_address1_local;
assign v10_0_ce0 = v10_0_ce0_local;
assign v10_0_ce1 = v10_0_ce1_local;
assign v10_0_d0 = v10_0_d0_local;
assign v10_0_d1 = reg_372;
assign v10_0_we0 = v10_0_we0_local;
assign v10_0_we1 = v10_0_we1_local;
assign v10_1_address0 = v10_1_address0_local;
assign v10_1_address1 = v10_1_address1_local;
assign v10_1_ce0 = v10_1_ce0_local;
assign v10_1_ce1 = v10_1_ce1_local;
assign v10_1_d0 = v10_1_d0_local;
assign v10_1_d1 = reg_377;
assign v10_1_we0 = v10_1_we0_local;
assign v10_1_we1 = v10_1_we1_local;
assign v137_17_address0 = v137_17_address0_local;
assign v137_17_address1 = v137_17_address1_local;
assign v137_17_ce0 = v137_17_ce0_local;
assign v137_17_ce1 = v137_17_ce1_local;
assign v137_1_address0 = v137_1_address0_local;
assign v137_1_address1 = v137_1_address1_local;
assign v137_1_ce0 = v137_1_ce0_local;
assign v137_1_ce1 = v137_1_ce1_local;
assign v16_fu_504_p1 = reg_364;
assign v23_fu_509_p1 = reg_368;
assign v29_fu_543_p1 = reg_364;
assign v35_fu_548_p1 = reg_368;
assign v41_fu_597_p1 = reg_364;
assign v47_fu_602_p1 = reg_368;
assign v53_fu_648_p1 = select_ln89_reg_844;
assign v59_fu_652_p1 = select_ln96_reg_849;
assign zext_ln42_fu_579_p1 = lshr_ln42_3_reg_698;
assign zext_ln46_fu_410_p1 = tmp_s_fu_402_p3;
assign zext_ln54_fu_434_p1 = tmp_45_fu_426_p3;
assign zext_ln59_fu_591_p1 = or_ln59_5_fu_584_p3;
assign zext_ln61_fu_468_p1 = tmp_47_fu_460_p3;
assign zext_ln68_fu_482_p1 = tmp_48_fu_474_p3;
assign zext_ln73_fu_629_p1 = or_ln73_5_fu_621_p4;
assign zext_ln75_fu_521_p1 = tmp_50_fu_514_p3;
assign zext_ln82_fu_537_p1 = tmp_51_fu_527_p5;
assign zext_ln87_fu_642_p1 = or_ln87_5_fu_635_p3;
assign zext_ln89_fu_560_p1 = tmp_52_fu_553_p3;
assign zext_ln96_fu_573_p1 = tmp_53_fu_566_p3;
always @ (posedge ap_clk) begin
    v10_0_addr_reg_824[0] <= 1'b1;
    v10_0_addr_reg_824_pp0_iter2_reg[0] <= 1'b1;
    v10_0_addr_reg_824_pp0_iter3_reg[0] <= 1'b1;
    v10_1_addr_reg_829[0] <= 1'b1;
    v10_1_addr_reg_829_pp0_iter2_reg[0] <= 1'b1;
    v10_1_addr_reg_829_pp0_iter3_reg[0] <= 1'b1;
    v10_0_addr_13_reg_869[1] <= 1'b1;
    v10_0_addr_13_reg_869_pp0_iter2_reg[1] <= 1'b1;
    v10_0_addr_13_reg_869_pp0_iter3_reg[1] <= 1'b1;
    v10_1_addr_13_reg_874[1] <= 1'b1;
    v10_1_addr_13_reg_874_pp0_iter2_reg[1] <= 1'b1;
    v10_1_addr_13_reg_874_pp0_iter3_reg[1] <= 1'b1;
    v10_0_addr_14_reg_879[1:0] <= 2'b11;
    v10_0_addr_14_reg_879_pp0_iter2_reg[1:0] <= 2'b11;
    v10_0_addr_14_reg_879_pp0_iter3_reg[1:0] <= 2'b11;
    v10_0_addr_14_reg_879_pp0_iter4_reg[1:0] <= 2'b11;
    v10_1_addr_14_reg_889[1:0] <= 2'b11;
    v10_1_addr_14_reg_889_pp0_iter2_reg[1:0] <= 2'b11;
    v10_1_addr_14_reg_889_pp0_iter3_reg[1:0] <= 2'b11;
    v10_1_addr_14_reg_889_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 