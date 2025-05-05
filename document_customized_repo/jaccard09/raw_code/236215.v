module atax_atax_node1_Pipeline_label_36 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,tmp_97,empty,v114_0_address0,v114_0_ce0,v114_0_q0,v114_0_address1,v114_0_ce1,v114_0_q1,v58_1_address0,v58_1_ce0,v58_1_we0,v58_1_d0,v58_1_q0,v58_1_address1,v58_1_ce1,v58_1_we1,v58_1_d1,v58_1_q1,v58_0_address0,v58_0_ce0,v58_0_we0,v58_0_d0,v58_0_q0,v58_0_address1,v58_0_ce1,v58_0_we1,v58_0_d1,v58_0_q1,v65_4,grp_fu_630_p_din0,grp_fu_630_p_din1,grp_fu_630_p_opcode,grp_fu_630_p_dout0,grp_fu_630_p_ce,grp_fu_634_p_din0,grp_fu_634_p_din1,grp_fu_634_p_opcode,grp_fu_634_p_dout0,grp_fu_634_p_ce,grp_fu_638_p_din0,grp_fu_638_p_din1,grp_fu_638_p_dout0,grp_fu_638_p_ce,grp_fu_642_p_din0,grp_fu_642_p_din1,grp_fu_642_p_dout0,grp_fu_642_p_ce); 
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
input  [2:0] tmp_97;
input  [0:0] empty;
output  [10:0] v114_0_address0;
output   v114_0_ce0;
input  [31:0] v114_0_q0;
output  [10:0] v114_0_address1;
output   v114_0_ce1;
input  [31:0] v114_0_q1;
output  [4:0] v58_1_address0;
output   v58_1_ce0;
output   v58_1_we0;
output  [31:0] v58_1_d0;
input  [31:0] v58_1_q0;
output  [4:0] v58_1_address1;
output   v58_1_ce1;
output   v58_1_we1;
output  [31:0] v58_1_d1;
input  [31:0] v58_1_q1;
output  [4:0] v58_0_address0;
output   v58_0_ce0;
output   v58_0_we0;
output  [31:0] v58_0_d0;
input  [31:0] v58_0_q0;
output  [4:0] v58_0_address1;
output   v58_0_ce1;
output   v58_0_we1;
output  [31:0] v58_0_d1;
input  [31:0] v58_0_q1;
input  [31:0] v65_4;
output  [31:0] grp_fu_630_p_din0;
output  [31:0] grp_fu_630_p_din1;
output  [1:0] grp_fu_630_p_opcode;
input  [31:0] grp_fu_630_p_dout0;
output   grp_fu_630_p_ce;
output  [31:0] grp_fu_634_p_din0;
output  [31:0] grp_fu_634_p_din1;
output  [1:0] grp_fu_634_p_opcode;
input  [31:0] grp_fu_634_p_dout0;
output   grp_fu_634_p_ce;
output  [31:0] grp_fu_638_p_din0;
output  [31:0] grp_fu_638_p_din1;
input  [31:0] grp_fu_638_p_dout0;
output   grp_fu_638_p_ce;
output  [31:0] grp_fu_642_p_din0;
output  [31:0] grp_fu_642_p_din1;
input  [31:0] grp_fu_642_p_dout0;
output   grp_fu_642_p_ce;
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
reg   [0:0] tmp_11_reg_629;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_283;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_287;
reg   [31:0] reg_291;
reg   [31:0] reg_296;
reg   [6:0] v60_4_reg_622;
wire   [0:0] tmp_11_fu_309_p3;
wire   [4:0] lshr_ln98_5_fu_338_p4;
reg   [4:0] lshr_ln98_5_reg_638;
wire   [3:0] tmp_30_fu_378_p4;
reg   [3:0] tmp_30_reg_648;
reg   [2:0] tmp_33_reg_663;
reg   [0:0] tmp_12_reg_673;
wire   [31:0] v64_fu_437_p1;
wire   [31:0] v71_fu_442_p1;
wire   [31:0] v77_fu_482_p1;
wire   [31:0] v83_fu_487_p1;
reg   [4:0] v58_0_addr_reg_719;
reg   [4:0] v58_0_addr_reg_719_pp0_iter2_reg;
reg   [4:0] v58_0_addr_reg_719_pp0_iter3_reg;
reg   [4:0] v58_1_addr_reg_724;
reg   [4:0] v58_1_addr_reg_724_pp0_iter2_reg;
reg   [4:0] v58_1_addr_reg_724_pp0_iter3_reg;
reg   [4:0] v58_0_addr_10_reg_729;
reg   [4:0] v58_0_addr_10_reg_729_pp0_iter2_reg;
reg   [4:0] v58_0_addr_10_reg_729_pp0_iter3_reg;
reg   [4:0] v58_1_addr_10_reg_734;
reg   [4:0] v58_1_addr_10_reg_734_pp0_iter2_reg;
reg   [4:0] v58_1_addr_10_reg_734_pp0_iter3_reg;
wire   [31:0] v89_fu_542_p1;
wire   [31:0] v95_fu_547_p1;
reg   [31:0] v62_reg_749;
reg   [31:0] v66_reg_754;
reg   [31:0] v72_reg_759;
reg   [4:0] v58_0_addr_11_reg_764;
reg   [4:0] v58_0_addr_11_reg_764_pp0_iter2_reg;
reg   [4:0] v58_0_addr_11_reg_764_pp0_iter3_reg;
reg   [4:0] v58_1_addr_11_reg_769;
reg   [4:0] v58_1_addr_11_reg_769_pp0_iter2_reg;
reg   [4:0] v58_1_addr_11_reg_769_pp0_iter3_reg;
reg   [4:0] v58_0_addr_12_reg_774;
reg   [4:0] v58_0_addr_12_reg_774_pp0_iter2_reg;
reg   [4:0] v58_0_addr_12_reg_774_pp0_iter3_reg;
reg   [4:0] v58_0_addr_12_reg_774_pp0_iter4_reg;
wire   [31:0] v101_fu_579_p1;
reg   [4:0] v58_1_addr_12_reg_784;
reg   [4:0] v58_1_addr_12_reg_784_pp0_iter2_reg;
reg   [4:0] v58_1_addr_12_reg_784_pp0_iter3_reg;
reg   [4:0] v58_1_addr_12_reg_784_pp0_iter4_reg;
wire   [31:0] v107_fu_584_p1;
reg   [31:0] v69_reg_794;
reg   [31:0] v75_reg_799;
reg   [31:0] v81_reg_804;
reg   [31:0] v78_reg_809;
reg   [31:0] v84_reg_814;
reg   [31:0] v87_reg_819;
reg   [31:0] v93_reg_824;
reg   [31:0] v99_reg_829;
reg   [31:0] v105_reg_834;
reg   [31:0] v90_reg_839;
reg   [31:0] v96_reg_844;
reg   [31:0] v102_reg_849;
reg   [31:0] v108_reg_854;
reg   [31:0] v79_reg_859;
reg   [31:0] v85_reg_864;
reg   [31:0] v103_reg_869;
reg   [31:0] v109_reg_874;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln102_fu_333_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln110_fu_362_p1;
wire   [63:0] zext_ln117_fu_399_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln124_fu_416_p1;
wire   [63:0] zext_ln131_fu_458_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln138_fu_477_p1;
wire   [63:0] zext_ln145_fu_503_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln152_fu_519_p1;
wire   [63:0] zext_ln98_fu_524_p1;
wire   [63:0] zext_ln115_fu_536_p1;
wire   [63:0] zext_ln129_fu_560_p1;
wire   [63:0] zext_ln143_fu_573_p1;
reg   [6:0] v60_fu_90;
wire   [6:0] add_ln98_fu_367_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v60_4;
reg    v114_0_ce1_local;
reg   [10:0] v114_0_address1_local;
reg    v114_0_ce0_local;
reg   [10:0] v114_0_address0_local;
reg    v58_0_ce1_local;
reg   [4:0] v58_0_address1_local;
reg    v58_0_ce0_local;
reg   [4:0] v58_0_address0_local;
reg    v58_0_we1_local;
reg    v58_0_we0_local;
reg   [31:0] v58_0_d0_local;
reg    v58_1_ce1_local;
reg   [4:0] v58_1_address1_local;
reg    v58_1_ce0_local;
reg   [4:0] v58_1_address0_local;
reg    v58_1_we1_local;
reg    v58_1_we0_local;
reg   [31:0] v58_1_d0_local;
reg   [31:0] grp_fu_267_p0;
reg   [31:0] grp_fu_267_p1;
reg   [31:0] grp_fu_271_p0;
reg   [31:0] grp_fu_271_p1;
reg   [31:0] grp_fu_275_p0;
reg   [31:0] grp_fu_279_p0;
wire   [5:0] trunc_ln98_fu_317_p1;
wire   [10:0] tmp_s_fu_321_p5;
wire   [10:0] tmp_29_fu_348_p6;
wire   [10:0] tmp_31_fu_387_p6;
wire   [10:0] tmp_32_fu_404_p6;
wire   [10:0] tmp_34_fu_447_p6;
wire   [10:0] tmp_35_fu_463_p8;
wire   [10:0] tmp_36_fu_492_p6;
wire   [10:0] tmp_37_fu_508_p6;
wire   [4:0] or_ln115_7_fu_529_p3;
wire   [4:0] or_ln129_7_fu_552_p4;
wire   [4:0] or_ln143_7_fu_566_p3;
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
#0 v60_fu_90 = 7'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_11_fu_309_p3 == 1'd0))) begin
            v60_fu_90 <= add_ln98_fu_367_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v60_fu_90 <= 7'd0;
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
        lshr_ln98_5_reg_638 <= {{ap_sig_allocacmp_v60_4[5:1]}};
        tmp_11_reg_629 <= ap_sig_allocacmp_v60_4[32'd6];
        v58_0_addr_10_reg_729[4 : 1] <= zext_ln115_fu_536_p1[4 : 1];
        v58_0_addr_10_reg_729_pp0_iter2_reg[4 : 1] <= v58_0_addr_10_reg_729[4 : 1];
        v58_0_addr_10_reg_729_pp0_iter3_reg[4 : 1] <= v58_0_addr_10_reg_729_pp0_iter2_reg[4 : 1];
        v58_0_addr_reg_719 <= zext_ln98_fu_524_p1;
        v58_0_addr_reg_719_pp0_iter2_reg <= v58_0_addr_reg_719;
        v58_0_addr_reg_719_pp0_iter3_reg <= v58_0_addr_reg_719_pp0_iter2_reg;
        v58_1_addr_10_reg_734[4 : 1] <= zext_ln115_fu_536_p1[4 : 1];
        v58_1_addr_10_reg_734_pp0_iter2_reg[4 : 1] <= v58_1_addr_10_reg_734[4 : 1];
        v58_1_addr_10_reg_734_pp0_iter3_reg[4 : 1] <= v58_1_addr_10_reg_734_pp0_iter2_reg[4 : 1];
        v58_1_addr_reg_724 <= zext_ln98_fu_524_p1;
        v58_1_addr_reg_724_pp0_iter2_reg <= v58_1_addr_reg_724;
        v58_1_addr_reg_724_pp0_iter3_reg <= v58_1_addr_reg_724_pp0_iter2_reg;
        v60_4_reg_622 <= ap_sig_allocacmp_v60_4;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_283 <= v114_0_q1;
        reg_287 <= v114_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_291 <= grp_fu_630_p_dout0;
        reg_296 <= grp_fu_634_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_12_reg_673 <= v60_4_reg_622[32'd1];
        tmp_30_reg_648 <= {{v60_4_reg_622[5:2]}};
        tmp_33_reg_663 <= {{v60_4_reg_622[5:3]}};
        v58_0_addr_11_reg_764[0] <= zext_ln129_fu_560_p1[0];
v58_0_addr_11_reg_764[4 : 2] <= zext_ln129_fu_560_p1[4 : 2];
        v58_0_addr_11_reg_764_pp0_iter2_reg[0] <= v58_0_addr_11_reg_764[0];
v58_0_addr_11_reg_764_pp0_iter2_reg[4 : 2] <= v58_0_addr_11_reg_764[4 : 2];
        v58_0_addr_11_reg_764_pp0_iter3_reg[0] <= v58_0_addr_11_reg_764_pp0_iter2_reg[0];
v58_0_addr_11_reg_764_pp0_iter3_reg[4 : 2] <= v58_0_addr_11_reg_764_pp0_iter2_reg[4 : 2];
        v58_0_addr_12_reg_774[4 : 2] <= zext_ln143_fu_573_p1[4 : 2];
        v58_0_addr_12_reg_774_pp0_iter2_reg[4 : 2] <= v58_0_addr_12_reg_774[4 : 2];
        v58_0_addr_12_reg_774_pp0_iter3_reg[4 : 2] <= v58_0_addr_12_reg_774_pp0_iter2_reg[4 : 2];
        v58_0_addr_12_reg_774_pp0_iter4_reg[4 : 2] <= v58_0_addr_12_reg_774_pp0_iter3_reg[4 : 2];
        v58_1_addr_11_reg_769[0] <= zext_ln129_fu_560_p1[0];
v58_1_addr_11_reg_769[4 : 2] <= zext_ln129_fu_560_p1[4 : 2];
        v58_1_addr_11_reg_769_pp0_iter2_reg[0] <= v58_1_addr_11_reg_769[0];
v58_1_addr_11_reg_769_pp0_iter2_reg[4 : 2] <= v58_1_addr_11_reg_769[4 : 2];
        v58_1_addr_11_reg_769_pp0_iter3_reg[0] <= v58_1_addr_11_reg_769_pp0_iter2_reg[0];
v58_1_addr_11_reg_769_pp0_iter3_reg[4 : 2] <= v58_1_addr_11_reg_769_pp0_iter2_reg[4 : 2];
        v58_1_addr_12_reg_784[4 : 2] <= zext_ln143_fu_573_p1[4 : 2];
        v58_1_addr_12_reg_784_pp0_iter2_reg[4 : 2] <= v58_1_addr_12_reg_784[4 : 2];
        v58_1_addr_12_reg_784_pp0_iter3_reg[4 : 2] <= v58_1_addr_12_reg_784_pp0_iter2_reg[4 : 2];
        v58_1_addr_12_reg_784_pp0_iter4_reg[4 : 2] <= v58_1_addr_12_reg_784_pp0_iter3_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v102_reg_849 <= grp_fu_638_p_dout0;
        v108_reg_854 <= grp_fu_642_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v103_reg_869 <= grp_fu_630_p_dout0;
        v109_reg_874 <= grp_fu_634_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v105_reg_834 <= v58_1_q0;
        v78_reg_809 <= grp_fu_638_p_dout0;
        v84_reg_814 <= grp_fu_642_p_dout0;
        v87_reg_819 <= v58_0_q1;
        v93_reg_824 <= v58_1_q1;
        v99_reg_829 <= v58_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v62_reg_749 <= v58_0_q1;
        v66_reg_754 <= grp_fu_638_p_dout0;
        v69_reg_794 <= v58_1_q1;
        v72_reg_759 <= grp_fu_642_p_dout0;
        v75_reg_799 <= v58_0_q0;
        v81_reg_804 <= v58_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v79_reg_859 <= grp_fu_630_p_dout0;
        v85_reg_864 <= grp_fu_634_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v90_reg_839 <= grp_fu_638_p_dout0;
        v96_reg_844 <= grp_fu_642_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_11_reg_629 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v60_4 = 7'd0;
    end else begin
        ap_sig_allocacmp_v60_4 = v60_fu_90;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_267_p0 = v99_reg_829;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_267_p0 = v87_reg_819;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_267_p0 = v75_reg_799;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_267_p0 = v62_reg_749;
    end else begin
        grp_fu_267_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_267_p1 = v102_reg_849;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_267_p1 = v90_reg_839;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_267_p1 = v78_reg_809;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_267_p1 = v66_reg_754;
    end else begin
        grp_fu_267_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_271_p0 = v105_reg_834;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_271_p0 = v93_reg_824;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_271_p0 = v81_reg_804;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_271_p0 = v69_reg_794;
    end else begin
        grp_fu_271_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_271_p1 = v108_reg_854;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_271_p1 = v96_reg_844;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_271_p1 = v84_reg_814;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_271_p1 = v72_reg_759;
    end else begin
        grp_fu_271_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_275_p0 = v101_fu_579_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_275_p0 = v89_fu_542_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_275_p0 = v77_fu_482_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_275_p0 = v64_fu_437_p1;
    end else begin
        grp_fu_275_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_279_p0 = v107_fu_584_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_279_p0 = v95_fu_547_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_279_p0 = v83_fu_487_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_279_p0 = v71_fu_442_p1;
    end else begin
        grp_fu_279_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v114_0_address0_local = zext_ln152_fu_519_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v114_0_address0_local = zext_ln138_fu_477_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v114_0_address0_local = zext_ln124_fu_416_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v114_0_address0_local = zext_ln110_fu_362_p1;
        end else begin
            v114_0_address0_local = 'bx;
        end
    end else begin
        v114_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v114_0_address1_local = zext_ln145_fu_503_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v114_0_address1_local = zext_ln131_fu_458_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v114_0_address1_local = zext_ln117_fu_399_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v114_0_address1_local = zext_ln102_fu_333_p1;
        end else begin
            v114_0_address1_local = 'bx;
        end
    end else begin
        v114_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v114_0_ce0_local = 1'b1;
    end else begin
        v114_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v114_0_ce1_local = 1'b1;
    end else begin
        v114_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_0_address0_local = v58_0_addr_12_reg_774_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_address0_local = v58_0_addr_10_reg_729_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_address0_local = zext_ln143_fu_573_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address0_local = zext_ln115_fu_536_p1;
    end else begin
        v58_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_0_address1_local = v58_0_addr_11_reg_764_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_address1_local = v58_0_addr_reg_719_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_address1_local = zext_ln129_fu_560_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address1_local = zext_ln98_fu_524_p1;
    end else begin
        v58_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_0_ce0_local = 1'b1;
    end else begin
        v58_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_0_ce1_local = 1'b1;
    end else begin
        v58_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_0_d0_local = v103_reg_869;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_d0_local = v79_reg_859;
    end else begin
        v58_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_0_we0_local = 1'b1;
    end else begin
        v58_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_0_we1_local = 1'b1;
    end else begin
        v58_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_1_address0_local = v58_1_addr_12_reg_784_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_address0_local = v58_1_addr_10_reg_734_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_address0_local = zext_ln143_fu_573_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address0_local = zext_ln115_fu_536_p1;
    end else begin
        v58_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_1_address1_local = v58_1_addr_11_reg_769_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_address1_local = v58_1_addr_reg_724_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_address1_local = zext_ln129_fu_560_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address1_local = zext_ln98_fu_524_p1;
    end else begin
        v58_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_1_ce0_local = 1'b1;
    end else begin
        v58_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_1_ce1_local = 1'b1;
    end else begin
        v58_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_1_d0_local = v109_reg_874;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_d0_local = v85_reg_864;
    end else begin
        v58_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_1_we0_local = 1'b1;
    end else begin
        v58_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_1_we1_local = 1'b1;
    end else begin
        v58_1_we1_local = 1'b0;
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
assign add_ln98_fu_367_p2 = (ap_sig_allocacmp_v60_4 + 7'd8);
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
assign grp_fu_630_p_ce = 1'b1;
assign grp_fu_630_p_din0 = grp_fu_267_p0;
assign grp_fu_630_p_din1 = grp_fu_267_p1;
assign grp_fu_630_p_opcode = 2'd0;
assign grp_fu_634_p_ce = 1'b1;
assign grp_fu_634_p_din0 = grp_fu_271_p0;
assign grp_fu_634_p_din1 = grp_fu_271_p1;
assign grp_fu_634_p_opcode = 2'd0;
assign grp_fu_638_p_ce = 1'b1;
assign grp_fu_638_p_din0 = grp_fu_275_p0;
assign grp_fu_638_p_din1 = v65_4;
assign grp_fu_642_p_ce = 1'b1;
assign grp_fu_642_p_din0 = grp_fu_279_p0;
assign grp_fu_642_p_din1 = v65_4;
assign lshr_ln98_5_fu_338_p4 = {{ap_sig_allocacmp_v60_4[5:1]}};
assign or_ln115_7_fu_529_p3 = {{tmp_30_reg_648}, {1'd1}};
assign or_ln129_7_fu_552_p4 = {{{tmp_33_reg_663}, {1'd1}}, {tmp_12_reg_673}};
assign or_ln143_7_fu_566_p3 = {{tmp_33_reg_663}, {2'd3}};
assign tmp_11_fu_309_p3 = ap_sig_allocacmp_v60_4[32'd6];
assign tmp_29_fu_348_p6 = {{{{{lshr_ln98_5_fu_338_p4}, {1'd1}}, {tmp_97}}, {1'd1}}, {empty}};
assign tmp_30_fu_378_p4 = {{v60_4_reg_622[5:2]}};
assign tmp_31_fu_387_p6 = {{{{{tmp_30_fu_378_p4}, {2'd2}}, {tmp_97}}, {1'd1}}, {empty}};
assign tmp_32_fu_404_p6 = {{{{{tmp_30_fu_378_p4}, {2'd3}}, {tmp_97}}, {1'd1}}, {empty}};
assign tmp_34_fu_447_p6 = {{{{{tmp_33_reg_663}, {3'd4}}, {tmp_97}}, {1'd1}}, {empty}};
assign tmp_35_fu_463_p8 = {{{{{{{tmp_33_reg_663}, {1'd1}}, {tmp_12_reg_673}}, {1'd1}}, {tmp_97}}, {1'd1}}, {empty}};
assign tmp_36_fu_492_p6 = {{{{{tmp_33_reg_663}, {3'd6}}, {tmp_97}}, {1'd1}}, {empty}};
assign tmp_37_fu_508_p6 = {{{{{tmp_33_reg_663}, {3'd7}}, {tmp_97}}, {1'd1}}, {empty}};
assign tmp_s_fu_321_p5 = {{{{trunc_ln98_fu_317_p1}, {tmp_97}}, {1'd1}}, {empty}};
assign trunc_ln98_fu_317_p1 = ap_sig_allocacmp_v60_4[5:0];
assign v101_fu_579_p1 = reg_283;
assign v107_fu_584_p1 = reg_287;
assign v114_0_address0 = v114_0_address0_local;
assign v114_0_address1 = v114_0_address1_local;
assign v114_0_ce0 = v114_0_ce0_local;
assign v114_0_ce1 = v114_0_ce1_local;
assign v58_0_address0 = v58_0_address0_local;
assign v58_0_address1 = v58_0_address1_local;
assign v58_0_ce0 = v58_0_ce0_local;
assign v58_0_ce1 = v58_0_ce1_local;
assign v58_0_d0 = v58_0_d0_local;
assign v58_0_d1 = reg_291;
assign v58_0_we0 = v58_0_we0_local;
assign v58_0_we1 = v58_0_we1_local;
assign v58_1_address0 = v58_1_address0_local;
assign v58_1_address1 = v58_1_address1_local;
assign v58_1_ce0 = v58_1_ce0_local;
assign v58_1_ce1 = v58_1_ce1_local;
assign v58_1_d0 = v58_1_d0_local;
assign v58_1_d1 = reg_296;
assign v58_1_we0 = v58_1_we0_local;
assign v58_1_we1 = v58_1_we1_local;
assign v64_fu_437_p1 = reg_283;
assign v71_fu_442_p1 = reg_287;
assign v77_fu_482_p1 = reg_283;
assign v83_fu_487_p1 = reg_287;
assign v89_fu_542_p1 = reg_283;
assign v95_fu_547_p1 = reg_287;
assign zext_ln102_fu_333_p1 = tmp_s_fu_321_p5;
assign zext_ln110_fu_362_p1 = tmp_29_fu_348_p6;
assign zext_ln115_fu_536_p1 = or_ln115_7_fu_529_p3;
assign zext_ln117_fu_399_p1 = tmp_31_fu_387_p6;
assign zext_ln124_fu_416_p1 = tmp_32_fu_404_p6;
assign zext_ln129_fu_560_p1 = or_ln129_7_fu_552_p4;
assign zext_ln131_fu_458_p1 = tmp_34_fu_447_p6;
assign zext_ln138_fu_477_p1 = tmp_35_fu_463_p8;
assign zext_ln143_fu_573_p1 = or_ln143_7_fu_566_p3;
assign zext_ln145_fu_503_p1 = tmp_36_fu_492_p6;
assign zext_ln152_fu_519_p1 = tmp_37_fu_508_p6;
assign zext_ln98_fu_524_p1 = lshr_ln98_5_reg_638;
always @ (posedge ap_clk) begin
    v58_0_addr_10_reg_729[0] <= 1'b1;
    v58_0_addr_10_reg_729_pp0_iter2_reg[0] <= 1'b1;
    v58_0_addr_10_reg_729_pp0_iter3_reg[0] <= 1'b1;
    v58_1_addr_10_reg_734[0] <= 1'b1;
    v58_1_addr_10_reg_734_pp0_iter2_reg[0] <= 1'b1;
    v58_1_addr_10_reg_734_pp0_iter3_reg[0] <= 1'b1;
    v58_0_addr_11_reg_764[1] <= 1'b1;
    v58_0_addr_11_reg_764_pp0_iter2_reg[1] <= 1'b1;
    v58_0_addr_11_reg_764_pp0_iter3_reg[1] <= 1'b1;
    v58_1_addr_11_reg_769[1] <= 1'b1;
    v58_1_addr_11_reg_769_pp0_iter2_reg[1] <= 1'b1;
    v58_1_addr_11_reg_769_pp0_iter3_reg[1] <= 1'b1;
    v58_0_addr_12_reg_774[1:0] <= 2'b11;
    v58_0_addr_12_reg_774_pp0_iter2_reg[1:0] <= 2'b11;
    v58_0_addr_12_reg_774_pp0_iter3_reg[1:0] <= 2'b11;
    v58_0_addr_12_reg_774_pp0_iter4_reg[1:0] <= 2'b11;
    v58_1_addr_12_reg_784[1:0] <= 2'b11;
    v58_1_addr_12_reg_784_pp0_iter2_reg[1:0] <= 2'b11;
    v58_1_addr_12_reg_784_pp0_iter3_reg[1:0] <= 2'b11;
    v58_1_addr_12_reg_784_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 