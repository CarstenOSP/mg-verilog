
module atax_atax_node0_Pipeline_label_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v3,v4,v113_0_address0,v113_0_ce0,v113_0_q0,v113_0_address1,v113_0_ce1,v113_0_q1,v113_1_address0,v113_1_ce0,v113_1_q0,v113_1_address1,v113_1_ce1,v113_1_q1,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_1_address1,v116_1_ce1,v116_1_we1,v116_1_d1,v116_1_q1,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v116_0_address1,v116_0_ce1,v116_0_we1,v116_0_d1,v116_0_q1,v6,v7_out,v7_out_ap_vld,grp_fu_674_p_din0,grp_fu_674_p_din1,grp_fu_674_p_opcode,grp_fu_674_p_dout0,grp_fu_674_p_ce,grp_fu_678_p_din0,grp_fu_678_p_din1,grp_fu_678_p_opcode,grp_fu_678_p_dout0,grp_fu_678_p_ce,grp_fu_682_p_din0,grp_fu_682_p_din1,grp_fu_682_p_dout0,grp_fu_682_p_ce,grp_fu_686_p_din0,grp_fu_686_p_din1,grp_fu_686_p_dout0,grp_fu_686_p_ce);  
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
input  [31:0] v3;
input  [5:0] v4;
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
input  [31:0] v6;
output  [31:0] v7_out;
output   v7_out_ap_vld;
output  [31:0] grp_fu_674_p_din0;
output  [31:0] grp_fu_674_p_din1;
output  [1:0] grp_fu_674_p_opcode;
input  [31:0] grp_fu_674_p_dout0;
output   grp_fu_674_p_ce;
output  [31:0] grp_fu_678_p_din0;
output  [31:0] grp_fu_678_p_din1;
output  [1:0] grp_fu_678_p_opcode;
input  [31:0] grp_fu_678_p_dout0;
output   grp_fu_678_p_ce;
output  [31:0] grp_fu_682_p_din0;
output  [31:0] grp_fu_682_p_din1;
input  [31:0] grp_fu_682_p_dout0;
output   grp_fu_682_p_ce;
output  [31:0] grp_fu_686_p_din0;
output  [31:0] grp_fu_686_p_din1;
input  [31:0] grp_fu_686_p_dout0;
output   grp_fu_686_p_ce;
reg ap_idle;
reg v7_out_ap_vld;
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
reg   [0:0] tmp_reg_671;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_301;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_305;
reg   [31:0] reg_309;
reg   [31:0] reg_313;
reg   [31:0] reg_317;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_321;
wire   [0:0] tmp_fu_338_p3;
reg   [0:0] tmp_reg_671_pp0_iter1_reg;
reg   [0:0] tmp_reg_671_pp0_iter2_reg;
reg   [0:0] tmp_reg_671_pp0_iter3_reg;
wire   [4:0] lshr_ln2_fu_346_p4;
reg   [4:0] lshr_ln2_reg_675;
wire   [0:0] icmp_ln31_fu_382_p2;
reg   [0:0] icmp_ln31_reg_690;
wire   [3:0] tmp_45_fu_388_p4;
reg   [3:0] tmp_45_reg_695;
reg   [2:0] tmp_47_reg_710;
reg   [2:0] tmp_47_reg_710_pp0_iter1_reg;
reg   [0:0] tmp_24_reg_718;
reg   [0:0] tmp_24_reg_718_pp0_iter1_reg;
reg   [31:0] v113_0_load_1_reg_724;
reg   [31:0] v113_1_load_1_reg_729;
wire   [31:0] v8_fu_475_p3;
reg   [31:0] v8_reg_754;
wire   [31:0] v10_fu_483_p1;
wire   [31:0] v16_fu_488_p1;
reg   [31:0] v113_0_load_3_reg_770;
reg   [31:0] v113_1_load_3_reg_775;
wire   [31:0] v22_fu_498_p1;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] v28_fu_502_p1;
reg   [4:0] v116_0_addr_reg_790;
reg   [4:0] v116_0_addr_reg_790_pp0_iter2_reg;
reg   [4:0] v116_0_addr_reg_790_pp0_iter3_reg;
wire   [31:0] v34_fu_524_p1;
wire   [31:0] v40_fu_529_p1;
reg   [4:0] v116_1_addr_reg_805;
reg   [4:0] v116_1_addr_reg_805_pp0_iter2_reg;
reg   [4:0] v116_1_addr_reg_805_pp0_iter3_reg;
reg   [4:0] v116_0_addr_1_reg_810;
reg   [4:0] v116_0_addr_1_reg_810_pp0_iter2_reg;
reg   [4:0] v116_0_addr_1_reg_810_pp0_iter3_reg;
reg   [4:0] v116_1_addr_1_reg_815;
reg   [4:0] v116_1_addr_1_reg_815_pp0_iter2_reg;
reg   [4:0] v116_1_addr_1_reg_815_pp0_iter3_reg;
reg   [31:0] v11_reg_820;
reg   [31:0] v17_reg_825;
wire   [31:0] v46_fu_561_p1;
wire   [31:0] v52_fu_565_p1;
reg   [31:0] v116_0_load_1_reg_840;
reg   [31:0] v116_1_load_1_reg_845;
reg   [4:0] v116_0_addr_2_reg_850;
reg   [4:0] v116_0_addr_2_reg_850_pp0_iter2_reg;
reg   [4:0] v116_0_addr_2_reg_850_pp0_iter3_reg;
reg   [4:0] v116_1_addr_2_reg_855;
reg   [4:0] v116_1_addr_2_reg_855_pp0_iter2_reg;
reg   [4:0] v116_1_addr_2_reg_855_pp0_iter3_reg;
reg   [4:0] v116_0_addr_3_reg_860;
reg   [4:0] v116_0_addr_3_reg_860_pp0_iter2_reg;
reg   [4:0] v116_0_addr_3_reg_860_pp0_iter3_reg;
reg   [4:0] v116_0_addr_3_reg_860_pp0_iter4_reg;
reg   [4:0] v116_1_addr_3_reg_865;
reg   [4:0] v116_1_addr_3_reg_865_pp0_iter2_reg;
reg   [4:0] v116_1_addr_3_reg_865_pp0_iter3_reg;
reg   [4:0] v116_1_addr_3_reg_865_pp0_iter4_reg;
wire   [31:0] v9_fu_569_p1;
reg   [31:0] v23_reg_875;
reg   [31:0] v29_reg_880;
wire   [31:0] v15_fu_574_p1;
reg   [31:0] v116_0_load_3_reg_890;
reg   [31:0] v116_1_load_3_reg_895;
reg   [31:0] v35_reg_900;
reg   [31:0] v41_reg_905;
wire   [31:0] v21_fu_579_p1;
wire   [31:0] v27_fu_583_p1;
reg   [31:0] v47_reg_920;
reg   [31:0] v53_reg_925;
wire   [31:0] v33_fu_587_p1;
wire   [31:0] v39_fu_592_p1;
wire   [31:0] v45_fu_597_p1;
wire   [31:0] v51_fu_601_p1;
reg   [31:0] v24_reg_950;
reg   [31:0] v30_reg_955;
reg   [31:0] v48_reg_960;
reg   [31:0] v54_reg_965;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln33_fu_376_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln47_fu_408_p1;
wire   [63:0] zext_ln61_fu_452_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln75_fu_466_p1;
wire   [63:0] zext_ln29_fu_506_p1;
wire   [63:0] zext_ln46_fu_518_p1;
wire   [63:0] zext_ln60_fu_542_p1;
wire   [63:0] zext_ln74_fu_555_p1;
reg   [31:0] v3_7_fu_88;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
wire    ap_block_pp0_stage3;
reg   [6:0] v49_fu_92;
wire   [6:0] add_ln28_fu_432_p2;
reg   [6:0] ap_sig_allocacmp_v5;
wire    ap_block_pp0_stage3_01001;
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
wire   [31:0] bitcast_ln36_fu_605_p1;
reg    v116_0_we0_local;
reg   [31:0] v116_0_d0_local;
wire   [31:0] bitcast_ln50_fu_610_p1;
wire   [31:0] bitcast_ln64_fu_623_p1;
wire   [31:0] bitcast_ln78_fu_633_p1;
reg    v116_1_ce1_local;
reg   [4:0] v116_1_address1_local;
reg    v116_1_ce0_local;
reg   [4:0] v116_1_address0_local;
reg    v116_1_we1_local;
reg   [31:0] v116_1_d1_local;
wire   [31:0] bitcast_ln43_fu_614_p1;
reg    v116_1_we0_local;
reg   [31:0] v116_1_d0_local;
wire   [31:0] bitcast_ln57_fu_619_p1;
wire   [31:0] bitcast_ln71_fu_628_p1;
wire   [31:0] bitcast_ln86_fu_637_p1;
reg   [31:0] grp_fu_285_p0;
reg   [31:0] grp_fu_285_p1;
reg   [31:0] grp_fu_289_p0;
reg   [31:0] grp_fu_289_p1;
reg   [31:0] grp_fu_293_p0;
reg   [31:0] grp_fu_293_p1;
reg   [31:0] grp_fu_297_p0;
reg   [31:0] grp_fu_297_p1;
wire   [4:0] tmp_cast_fu_356_p4;
wire   [10:0] tmp_44_fu_366_p4;
wire   [10:0] tmp_46_fu_398_p4;
wire   [10:0] tmp_49_fu_443_p5;
wire   [10:0] tmp_51_fu_458_p4;
wire   [4:0] or_ln_fu_511_p3;
wire   [4:0] or_ln1_fu_534_p4;
wire   [4:0] or_ln2_fu_548_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
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
#0 v3_7_fu_88 = 32'd0;
#0 v49_fu_92 = 7'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        v3_7_fu_88 <= v3;
    end else if (((tmp_reg_671 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_7_fu_88 <= v8_fu_475_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_338_p3 == 1'd0))) begin
            v49_fu_92 <= add_ln28_fu_432_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v49_fu_92 <= 7'd0;
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
        icmp_ln31_reg_690 <= icmp_ln31_fu_382_p2;
        lshr_ln2_reg_675 <= {{ap_sig_allocacmp_v5[5:1]}};
        tmp_24_reg_718 <= ap_sig_allocacmp_v5[32'd1];
        tmp_24_reg_718_pp0_iter1_reg <= tmp_24_reg_718;
        tmp_45_reg_695 <= {{ap_sig_allocacmp_v5[5:2]}};
        tmp_47_reg_710 <= {{ap_sig_allocacmp_v5[5:3]}};
        tmp_47_reg_710_pp0_iter1_reg <= tmp_47_reg_710;
        tmp_reg_671 <= ap_sig_allocacmp_v5[32'd6];
        tmp_reg_671_pp0_iter1_reg <= tmp_reg_671;
        tmp_reg_671_pp0_iter2_reg <= tmp_reg_671_pp0_iter1_reg;
        tmp_reg_671_pp0_iter3_reg <= tmp_reg_671_pp0_iter2_reg;
        v116_0_addr_1_reg_810[4 : 1] <= zext_ln46_fu_518_p1[4 : 1];
        v116_0_addr_1_reg_810_pp0_iter2_reg[4 : 1] <= v116_0_addr_1_reg_810[4 : 1];
        v116_0_addr_1_reg_810_pp0_iter3_reg[4 : 1] <= v116_0_addr_1_reg_810_pp0_iter2_reg[4 : 1];
        v116_0_addr_reg_790 <= zext_ln29_fu_506_p1;
        v116_0_addr_reg_790_pp0_iter2_reg <= v116_0_addr_reg_790;
        v116_0_addr_reg_790_pp0_iter3_reg <= v116_0_addr_reg_790_pp0_iter2_reg;
        v116_1_addr_1_reg_815[4 : 1] <= zext_ln46_fu_518_p1[4 : 1];
        v116_1_addr_1_reg_815_pp0_iter2_reg[4 : 1] <= v116_1_addr_1_reg_815[4 : 1];
        v116_1_addr_1_reg_815_pp0_iter3_reg[4 : 1] <= v116_1_addr_1_reg_815_pp0_iter2_reg[4 : 1];
        v116_1_addr_reg_805 <= zext_ln29_fu_506_p1;
        v116_1_addr_reg_805_pp0_iter2_reg <= v116_1_addr_reg_805;
        v116_1_addr_reg_805_pp0_iter3_reg <= v116_1_addr_reg_805_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_301 <= v113_0_q1;
        reg_305 <= v113_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_309 <= v116_0_q1;
        reg_313 <= v116_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_317 <= grp_fu_674_p_dout0;
        reg_321 <= grp_fu_678_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_0_load_1_reg_724 <= v113_0_q0;
        v113_1_load_1_reg_729 <= v113_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v113_0_load_3_reg_770 <= v113_0_q0;
        v113_1_load_3_reg_775 <= v113_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_addr_2_reg_850[0] <= zext_ln60_fu_542_p1[0];
v116_0_addr_2_reg_850[4 : 2] <= zext_ln60_fu_542_p1[4 : 2];
        v116_0_addr_2_reg_850_pp0_iter2_reg[0] <= v116_0_addr_2_reg_850[0];
v116_0_addr_2_reg_850_pp0_iter2_reg[4 : 2] <= v116_0_addr_2_reg_850[4 : 2];
        v116_0_addr_2_reg_850_pp0_iter3_reg[0] <= v116_0_addr_2_reg_850_pp0_iter2_reg[0];
v116_0_addr_2_reg_850_pp0_iter3_reg[4 : 2] <= v116_0_addr_2_reg_850_pp0_iter2_reg[4 : 2];
        v116_0_addr_3_reg_860[4 : 2] <= zext_ln74_fu_555_p1[4 : 2];
        v116_0_addr_3_reg_860_pp0_iter2_reg[4 : 2] <= v116_0_addr_3_reg_860[4 : 2];
        v116_0_addr_3_reg_860_pp0_iter3_reg[4 : 2] <= v116_0_addr_3_reg_860_pp0_iter2_reg[4 : 2];
        v116_0_addr_3_reg_860_pp0_iter4_reg[4 : 2] <= v116_0_addr_3_reg_860_pp0_iter3_reg[4 : 2];
        v116_1_addr_2_reg_855[0] <= zext_ln60_fu_542_p1[0];
v116_1_addr_2_reg_855[4 : 2] <= zext_ln60_fu_542_p1[4 : 2];
        v116_1_addr_2_reg_855_pp0_iter2_reg[0] <= v116_1_addr_2_reg_855[0];
v116_1_addr_2_reg_855_pp0_iter2_reg[4 : 2] <= v116_1_addr_2_reg_855[4 : 2];
        v116_1_addr_2_reg_855_pp0_iter3_reg[0] <= v116_1_addr_2_reg_855_pp0_iter2_reg[0];
v116_1_addr_2_reg_855_pp0_iter3_reg[4 : 2] <= v116_1_addr_2_reg_855_pp0_iter2_reg[4 : 2];
        v116_1_addr_3_reg_865[4 : 2] <= zext_ln74_fu_555_p1[4 : 2];
        v116_1_addr_3_reg_865_pp0_iter2_reg[4 : 2] <= v116_1_addr_3_reg_865[4 : 2];
        v116_1_addr_3_reg_865_pp0_iter3_reg[4 : 2] <= v116_1_addr_3_reg_865_pp0_iter2_reg[4 : 2];
        v116_1_addr_3_reg_865_pp0_iter4_reg[4 : 2] <= v116_1_addr_3_reg_865_pp0_iter3_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_load_1_reg_840 <= v116_0_q0;
        v116_1_load_1_reg_845 <= v116_1_q0;
        v11_reg_820 <= grp_fu_682_p_dout0;
        v17_reg_825 <= grp_fu_686_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_load_3_reg_890 <= v116_0_q0;
        v116_1_load_3_reg_895 <= v116_1_q0;
        v23_reg_875 <= grp_fu_682_p_dout0;
        v29_reg_880 <= grp_fu_686_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v24_reg_950 <= grp_fu_674_p_dout0;
        v30_reg_955 <= grp_fu_678_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v35_reg_900 <= grp_fu_682_p_dout0;
        v41_reg_905 <= grp_fu_686_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v47_reg_920 <= grp_fu_682_p_dout0;
        v53_reg_925 <= grp_fu_686_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v48_reg_960 <= grp_fu_674_p_dout0;
        v54_reg_965 <= grp_fu_678_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v8_reg_754 <= v8_fu_475_p3;
    end
end
always @ (*) begin
    if (((tmp_reg_671 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v5 = 7'd0;
    end else begin
        ap_sig_allocacmp_v5 = v49_fu_92;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_285_p0 = v45_fu_597_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_285_p0 = v33_fu_587_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_285_p0 = v21_fu_579_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_285_p0 = v9_fu_569_p1;
    end else begin
        grp_fu_285_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_285_p1 = v47_reg_920;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_285_p1 = v35_reg_900;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_285_p1 = v23_reg_875;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_285_p1 = v11_reg_820;
    end else begin
        grp_fu_285_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_289_p0 = v51_fu_601_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_289_p0 = v39_fu_592_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_289_p0 = v27_fu_583_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_289_p0 = v15_fu_574_p1;
    end else begin
        grp_fu_289_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_289_p1 = v53_reg_925;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_289_p1 = v41_reg_905;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_289_p1 = v29_reg_880;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_289_p1 = v17_reg_825;
    end else begin
        grp_fu_289_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_293_p0 = v46_fu_561_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_293_p0 = v34_fu_524_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_293_p0 = v22_fu_498_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_293_p0 = v10_fu_483_p1;
    end else begin
        grp_fu_293_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_293_p1 = v8_reg_754;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_293_p1 = v8_fu_475_p3;
    end else begin
        grp_fu_293_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_297_p0 = v52_fu_565_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_297_p0 = v40_fu_529_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_297_p0 = v28_fu_502_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_297_p0 = v16_fu_488_p1;
    end else begin
        grp_fu_297_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_297_p1 = v8_reg_754;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_297_p1 = v8_fu_475_p3;
    end else begin
        grp_fu_297_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_0_address0_local = zext_ln75_fu_466_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v113_0_address0_local = zext_ln47_fu_408_p1;
        end else begin
            v113_0_address0_local = 'bx;
        end
    end else begin
        v113_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_0_address1_local = zext_ln61_fu_452_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v113_0_address1_local = zext_ln33_fu_376_p1;
        end else begin
            v113_0_address1_local = 'bx;
        end
    end else begin
        v113_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v113_0_ce0_local = 1'b1;
    end else begin
        v113_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v113_0_ce1_local = 1'b1;
    end else begin
        v113_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_1_address0_local = zext_ln75_fu_466_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v113_1_address0_local = zext_ln47_fu_408_p1;
        end else begin
            v113_1_address0_local = 'bx;
        end
    end else begin
        v113_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_1_address1_local = zext_ln61_fu_452_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v113_1_address1_local = zext_ln33_fu_376_p1;
        end else begin
            v113_1_address1_local = 'bx;
        end
    end else begin
        v113_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v113_1_ce0_local = 1'b1;
    end else begin
        v113_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v113_1_ce1_local = 1'b1;
    end else begin
        v113_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_0_address0_local = v116_0_addr_3_reg_860_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_address0_local = v116_0_addr_1_reg_810_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_address0_local = zext_ln74_fu_555_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address0_local = zext_ln46_fu_518_p1;
    end else begin
        v116_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_0_address1_local = v116_0_addr_2_reg_850_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_address1_local = v116_0_addr_reg_790_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_address1_local = zext_ln60_fu_542_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address1_local = zext_ln29_fu_506_p1;
    end else begin
        v116_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_0_d0_local = bitcast_ln78_fu_633_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_d0_local = bitcast_ln50_fu_610_p1;
    end else begin
        v116_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v116_0_d1_local = bitcast_ln64_fu_623_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v116_0_d1_local = bitcast_ln36_fu_605_p1;
        end else begin
            v116_0_d1_local = 'bx;
        end
    end else begin
        v116_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
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
        v116_1_address0_local = v116_1_addr_3_reg_865_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_address0_local = v116_1_addr_1_reg_815_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_address0_local = zext_ln74_fu_555_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address0_local = zext_ln46_fu_518_p1;
    end else begin
        v116_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_1_address1_local = v116_1_addr_2_reg_855_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_address1_local = v116_1_addr_reg_805_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_address1_local = zext_ln60_fu_542_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address1_local = zext_ln29_fu_506_p1;
    end else begin
        v116_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_1_d0_local = bitcast_ln86_fu_637_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_d0_local = bitcast_ln57_fu_619_p1;
    end else begin
        v116_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v116_1_d1_local = bitcast_ln71_fu_628_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v116_1_d1_local = bitcast_ln43_fu_614_p1;
        end else begin
            v116_1_d1_local = 'bx;
        end
    end else begin
        v116_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
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
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_reg_671_pp0_iter3_reg == 1'd1))) begin
        v7_out_ap_vld = 1'b1;
    end else begin
        v7_out_ap_vld = 1'b0;
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
assign add_ln28_fu_432_p2 = (ap_sig_allocacmp_v5 + 7'd8);
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
assign ap_block_pp0_stage3_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign bitcast_ln36_fu_605_p1 = reg_317;
assign bitcast_ln43_fu_614_p1 = reg_321;
assign bitcast_ln50_fu_610_p1 = v24_reg_950;
assign bitcast_ln57_fu_619_p1 = v30_reg_955;
assign bitcast_ln64_fu_623_p1 = reg_317;
assign bitcast_ln71_fu_628_p1 = reg_321;
assign bitcast_ln78_fu_633_p1 = v48_reg_960;
assign bitcast_ln86_fu_637_p1 = v54_reg_965;
assign grp_fu_674_p_ce = 1'b1;
assign grp_fu_674_p_din0 = grp_fu_285_p0;
assign grp_fu_674_p_din1 = grp_fu_285_p1;
assign grp_fu_674_p_opcode = 2'd0;
assign grp_fu_678_p_ce = 1'b1;
assign grp_fu_678_p_din0 = grp_fu_289_p0;
assign grp_fu_678_p_din1 = grp_fu_289_p1;
assign grp_fu_678_p_opcode = 2'd0;
assign grp_fu_682_p_ce = 1'b1;
assign grp_fu_682_p_din0 = grp_fu_293_p0;
assign grp_fu_682_p_din1 = grp_fu_293_p1;
assign grp_fu_686_p_ce = 1'b1;
assign grp_fu_686_p_din0 = grp_fu_297_p0;
assign grp_fu_686_p_din1 = grp_fu_297_p1;
assign icmp_ln31_fu_382_p2 = ((ap_sig_allocacmp_v5 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln2_fu_346_p4 = {{ap_sig_allocacmp_v5[5:1]}};
assign or_ln1_fu_534_p4 = {{{tmp_47_reg_710_pp0_iter1_reg}, {1'd1}}, {tmp_24_reg_718_pp0_iter1_reg}};
assign or_ln2_fu_548_p3 = {{tmp_47_reg_710_pp0_iter1_reg}, {2'd3}};
assign or_ln_fu_511_p3 = {{tmp_45_reg_695}, {1'd1}};
assign tmp_44_fu_366_p4 = {{{tmp_cast_fu_356_p4}, {1'd0}}, {lshr_ln2_fu_346_p4}};
assign tmp_45_fu_388_p4 = {{ap_sig_allocacmp_v5[5:2]}};
assign tmp_46_fu_398_p4 = {{{v4}, {tmp_45_fu_388_p4}}, {1'd1}};
assign tmp_49_fu_443_p5 = {{{{v4}, {tmp_47_reg_710}}, {1'd1}}, {tmp_24_reg_718}};
assign tmp_51_fu_458_p4 = {{{v4}, {tmp_47_reg_710}}, {2'd3}};
assign tmp_cast_fu_356_p4 = {{v4[5:1]}};
assign tmp_fu_338_p3 = ap_sig_allocacmp_v5[32'd6];
assign v10_fu_483_p1 = reg_301;
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
assign v15_fu_574_p1 = reg_313;
assign v16_fu_488_p1 = reg_305;
assign v21_fu_579_p1 = v116_0_load_1_reg_840;
assign v22_fu_498_p1 = v113_0_load_1_reg_724;
assign v27_fu_583_p1 = v116_1_load_1_reg_845;
assign v28_fu_502_p1 = v113_1_load_1_reg_729;
assign v33_fu_587_p1 = reg_309;
assign v34_fu_524_p1 = reg_301;
assign v39_fu_592_p1 = reg_313;
assign v40_fu_529_p1 = reg_305;
assign v45_fu_597_p1 = v116_0_load_3_reg_890;
assign v46_fu_561_p1 = v113_0_load_3_reg_770;
assign v51_fu_601_p1 = v116_1_load_3_reg_895;
assign v52_fu_565_p1 = v113_1_load_3_reg_775;
assign v7_out = v3_7_fu_88;
assign v8_fu_475_p3 = ((icmp_ln31_reg_690[0:0] == 1'b1) ? v6 : v3_7_fu_88);
assign v9_fu_569_p1 = reg_309;
assign zext_ln29_fu_506_p1 = lshr_ln2_reg_675;
assign zext_ln33_fu_376_p1 = tmp_44_fu_366_p4;
assign zext_ln46_fu_518_p1 = or_ln_fu_511_p3;
assign zext_ln47_fu_408_p1 = tmp_46_fu_398_p4;
assign zext_ln60_fu_542_p1 = or_ln1_fu_534_p4;
assign zext_ln61_fu_452_p1 = tmp_49_fu_443_p5;
assign zext_ln74_fu_555_p1 = or_ln2_fu_548_p3;
assign zext_ln75_fu_466_p1 = tmp_51_fu_458_p4;
always @ (posedge ap_clk) begin
    v116_0_addr_1_reg_810[0] <= 1'b1;
    v116_0_addr_1_reg_810_pp0_iter2_reg[0] <= 1'b1;
    v116_0_addr_1_reg_810_pp0_iter3_reg[0] <= 1'b1;
    v116_1_addr_1_reg_815[0] <= 1'b1;
    v116_1_addr_1_reg_815_pp0_iter2_reg[0] <= 1'b1;
    v116_1_addr_1_reg_815_pp0_iter3_reg[0] <= 1'b1;
    v116_0_addr_2_reg_850[1] <= 1'b1;
    v116_0_addr_2_reg_850_pp0_iter2_reg[1] <= 1'b1;
    v116_0_addr_2_reg_850_pp0_iter3_reg[1] <= 1'b1;
    v116_1_addr_2_reg_855[1] <= 1'b1;
    v116_1_addr_2_reg_855_pp0_iter2_reg[1] <= 1'b1;
    v116_1_addr_2_reg_855_pp0_iter3_reg[1] <= 1'b1;
    v116_0_addr_3_reg_860[1:0] <= 2'b11;
    v116_0_addr_3_reg_860_pp0_iter2_reg[1:0] <= 2'b11;
    v116_0_addr_3_reg_860_pp0_iter3_reg[1:0] <= 2'b11;
    v116_0_addr_3_reg_860_pp0_iter4_reg[1:0] <= 2'b11;
    v116_1_addr_3_reg_865[1:0] <= 2'b11;
    v116_1_addr_3_reg_865_pp0_iter2_reg[1:0] <= 2'b11;
    v116_1_addr_3_reg_865_pp0_iter3_reg[1:0] <= 2'b11;
    v116_1_addr_3_reg_865_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 
