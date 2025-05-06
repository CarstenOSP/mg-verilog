
module atax_atax_Pipeline_lp3_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,tmp1_address0,tmp1_ce0,tmp1_q0,tmp1_1_address0,tmp1_1_ce0,tmp1_1_q0,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_address1,buff_A_ce1,buff_A_q1,buff_A_address2,buff_A_ce2,buff_A_q2,buff_A_address3,buff_A_ce3,buff_A_q3,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,buff_A_1_address1,buff_A_1_ce1,buff_A_1_q1,buff_A_1_address2,buff_A_1_ce2,buff_A_1_q2,buff_A_1_address3,buff_A_1_ce3,buff_A_1_q3,buff_y_out_address0,buff_y_out_ce0,buff_y_out_we0,buff_y_out_d0,buff_y_out_q0,buff_y_out_address1,buff_y_out_ce1,buff_y_out_we1,buff_y_out_d1,buff_y_out_q1,buff_y_out_1_address0,buff_y_out_1_ce0,buff_y_out_1_we0,buff_y_out_1_d0,buff_y_out_1_q0,buff_y_out_1_address1,buff_y_out_1_ce1,buff_y_out_1_we1,buff_y_out_1_d1,buff_y_out_1_q1,grp_fu_1604_p_din0,grp_fu_1604_p_din1,grp_fu_1604_p_opcode,grp_fu_1604_p_dout0,grp_fu_1604_p_ce,grp_fu_1608_p_din0,grp_fu_1608_p_din1,grp_fu_1608_p_opcode,grp_fu_1608_p_dout0,grp_fu_1608_p_ce,grp_fu_1612_p_din0,grp_fu_1612_p_din1,grp_fu_1612_p_dout0,grp_fu_1612_p_ce,grp_fu_1616_p_din0,grp_fu_1616_p_din1,grp_fu_1616_p_dout0,grp_fu_1616_p_ce);  
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
output  [4:0] tmp1_address0;
output   tmp1_ce0;
input  [31:0] tmp1_q0;
output  [4:0] tmp1_1_address0;
output   tmp1_1_ce0;
input  [31:0] tmp1_1_q0;
output  [10:0] buff_A_address0;
output   buff_A_ce0;
input  [31:0] buff_A_q0;
output  [10:0] buff_A_address1;
output   buff_A_ce1;
input  [31:0] buff_A_q1;
output  [10:0] buff_A_address2;
output   buff_A_ce2;
input  [31:0] buff_A_q2;
output  [10:0] buff_A_address3;
output   buff_A_ce3;
input  [31:0] buff_A_q3;
output  [10:0] buff_A_1_address0;
output   buff_A_1_ce0;
input  [31:0] buff_A_1_q0;
output  [10:0] buff_A_1_address1;
output   buff_A_1_ce1;
input  [31:0] buff_A_1_q1;
output  [10:0] buff_A_1_address2;
output   buff_A_1_ce2;
input  [31:0] buff_A_1_q2;
output  [10:0] buff_A_1_address3;
output   buff_A_1_ce3;
input  [31:0] buff_A_1_q3;
output  [4:0] buff_y_out_address0;
output   buff_y_out_ce0;
output   buff_y_out_we0;
output  [31:0] buff_y_out_d0;
input  [31:0] buff_y_out_q0;
output  [4:0] buff_y_out_address1;
output   buff_y_out_ce1;
output   buff_y_out_we1;
output  [31:0] buff_y_out_d1;
input  [31:0] buff_y_out_q1;
output  [4:0] buff_y_out_1_address0;
output   buff_y_out_1_ce0;
output   buff_y_out_1_we0;
output  [31:0] buff_y_out_1_d0;
input  [31:0] buff_y_out_1_q0;
output  [4:0] buff_y_out_1_address1;
output   buff_y_out_1_ce1;
output   buff_y_out_1_we1;
output  [31:0] buff_y_out_1_d1;
input  [31:0] buff_y_out_1_q1;
output  [31:0] grp_fu_1604_p_din0;
output  [31:0] grp_fu_1604_p_din1;
output  [1:0] grp_fu_1604_p_opcode;
input  [31:0] grp_fu_1604_p_dout0;
output   grp_fu_1604_p_ce;
output  [31:0] grp_fu_1608_p_din0;
output  [31:0] grp_fu_1608_p_din1;
output  [1:0] grp_fu_1608_p_opcode;
input  [31:0] grp_fu_1608_p_dout0;
output   grp_fu_1608_p_ce;
output  [31:0] grp_fu_1612_p_din0;
output  [31:0] grp_fu_1612_p_din1;
input  [31:0] grp_fu_1612_p_dout0;
output   grp_fu_1612_p_ce;
output  [31:0] grp_fu_1616_p_din0;
output  [31:0] grp_fu_1616_p_din1;
input  [31:0] grp_fu_1616_p_dout0;
output   grp_fu_1616_p_ce;
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
reg   [0:0] icmp_ln26_reg_607;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_312;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_317;
wire   [0:0] icmp_ln26_fu_340_p2;
wire   [6:0] select_ln5_fu_372_p3;
reg   [6:0] select_ln5_reg_611;
wire   [0:0] trunc_ln26_1_fu_392_p1;
reg   [0:0] trunc_ln26_1_reg_616;
wire   [4:0] lshr_ln5_5_fu_412_p4;
reg   [4:0] lshr_ln5_5_reg_631;
wire   [3:0] tmp_2_fu_436_p4;
reg   [3:0] tmp_2_reg_646;
wire   [2:0] tmp_4_fu_462_p4;
reg   [2:0] tmp_4_reg_661;
wire   [0:0] tmp_5_fu_472_p3;
reg   [0:0] tmp_5_reg_667;
wire   [31:0] tmp_fu_524_p3;
reg   [31:0] tmp_reg_692;
reg   [31:0] buff_A_load_reg_698;
reg   [31:0] buff_A_1_load_reg_703;
reg   [31:0] buff_A_load_1_reg_708;
reg   [31:0] buff_A_1_load_1_reg_713;
reg   [31:0] buff_A_load_2_reg_718;
reg   [31:0] buff_A_1_load_2_reg_723;
reg   [31:0] buff_A_load_3_reg_728;
reg   [31:0] buff_A_1_load_3_reg_733;
reg   [4:0] buff_y_out_addr_reg_738;
wire    ap_block_pp0_stage0_11001;
reg   [4:0] buff_y_out_addr_reg_738_pp0_iter2_reg;
reg   [4:0] buff_y_out_addr_reg_738_pp0_iter3_reg;
reg   [4:0] buff_y_out_1_addr_reg_743;
reg   [4:0] buff_y_out_1_addr_reg_743_pp0_iter2_reg;
reg   [4:0] buff_y_out_1_addr_reg_743_pp0_iter3_reg;
reg   [4:0] buff_y_out_addr_1_reg_748;
reg   [4:0] buff_y_out_addr_1_reg_748_pp0_iter2_reg;
reg   [4:0] buff_y_out_addr_1_reg_748_pp0_iter3_reg;
reg   [4:0] buff_y_out_1_addr_1_reg_754;
reg   [4:0] buff_y_out_1_addr_1_reg_754_pp0_iter2_reg;
reg   [4:0] buff_y_out_1_addr_1_reg_754_pp0_iter3_reg;
reg   [31:0] buff_y_out_load_reg_760;
reg   [4:0] buff_y_out_addr_2_reg_765;
reg   [4:0] buff_y_out_addr_2_reg_765_pp0_iter2_reg;
reg   [4:0] buff_y_out_addr_2_reg_765_pp0_iter3_reg;
reg   [4:0] buff_y_out_addr_2_reg_765_pp0_iter4_reg;
reg   [4:0] buff_y_out_1_addr_2_reg_771;
reg   [4:0] buff_y_out_1_addr_2_reg_771_pp0_iter2_reg;
reg   [4:0] buff_y_out_1_addr_2_reg_771_pp0_iter3_reg;
reg   [4:0] buff_y_out_1_addr_2_reg_771_pp0_iter4_reg;
reg   [4:0] buff_y_out_addr_3_reg_777;
reg   [4:0] buff_y_out_addr_3_reg_777_pp0_iter2_reg;
reg   [4:0] buff_y_out_addr_3_reg_777_pp0_iter3_reg;
reg   [4:0] buff_y_out_addr_3_reg_777_pp0_iter4_reg;
reg   [4:0] buff_y_out_1_addr_3_reg_782;
reg   [4:0] buff_y_out_1_addr_3_reg_782_pp0_iter2_reg;
reg   [4:0] buff_y_out_1_addr_3_reg_782_pp0_iter3_reg;
reg   [4:0] buff_y_out_1_addr_3_reg_782_pp0_iter4_reg;
reg   [31:0] buff_y_out_1_load_reg_787;
reg   [31:0] buff_y_out_load_1_reg_792;
reg   [31:0] buff_y_out_1_load_1_reg_797;
reg   [31:0] mul1_reg_802;
reg   [31:0] mul57_1_reg_807;
reg   [31:0] buff_y_out_load_2_reg_812;
reg   [31:0] buff_y_out_1_load_2_reg_817;
reg   [31:0] buff_y_out_load_3_reg_822;
reg   [31:0] buff_y_out_1_load_3_reg_827;
reg   [31:0] mul57_2_reg_832;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] mul57_3_reg_837;
reg   [31:0] mul57_4_reg_842;
reg   [31:0] mul57_5_reg_847;
reg   [31:0] mul57_6_reg_852;
reg   [31:0] mul57_7_reg_857;
reg   [31:0] add58_4_reg_862;
reg   [31:0] add58_5_reg_867;
reg   [31:0] add58_6_reg_872;
reg   [31:0] add58_7_reg_877;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln5_fu_406_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln28_3_fu_430_p1;
wire   [63:0] zext_ln28_4_fu_456_p1;
wire   [63:0] zext_ln28_5_fu_492_p1;
wire   [63:0] zext_ln28_6_fu_508_p1;
wire   [63:0] zext_ln5_1_fu_531_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln28_fu_543_p1;
wire   [63:0] zext_ln28_1_fu_567_p1;
wire   [63:0] zext_ln28_2_fu_580_p1;
reg   [6:0] j_1_fu_78;
wire   [6:0] add_ln27_fu_549_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_82;
wire   [6:0] select_ln26_fu_380_p3;
reg   [9:0] indvar_flatten_fu_86;
wire   [9:0] add_ln26_1_fu_346_p2;
reg    tmp1_ce0_local;
reg    tmp1_1_ce0_local;
reg    buff_A_ce3_local;
reg    buff_A_ce2_local;
reg    buff_A_ce1_local;
reg    buff_A_ce0_local;
reg    buff_A_1_ce3_local;
reg    buff_A_1_ce2_local;
reg    buff_A_1_ce1_local;
reg    buff_A_1_ce0_local;
reg    buff_y_out_ce1_local;
reg   [4:0] buff_y_out_address1_local;
reg    buff_y_out_ce0_local;
reg   [4:0] buff_y_out_address0_local;
reg    buff_y_out_we1_local;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
reg    buff_y_out_we0_local;
reg   [31:0] buff_y_out_d0_local;
reg    buff_y_out_1_ce1_local;
reg   [4:0] buff_y_out_1_address1_local;
reg    buff_y_out_1_ce0_local;
reg   [4:0] buff_y_out_1_address0_local;
reg    buff_y_out_1_we1_local;
reg    buff_y_out_1_we0_local;
reg   [31:0] buff_y_out_1_d0_local;
reg   [31:0] grp_fu_296_p0;
reg   [31:0] grp_fu_296_p1;
reg   [31:0] grp_fu_300_p0;
reg   [31:0] grp_fu_300_p1;
reg   [31:0] grp_fu_304_p0;
reg   [31:0] grp_fu_308_p0;
wire   [0:0] tmp_1_fu_364_p3;
wire   [6:0] add_ln26_fu_358_p2;
wire   [4:0] lshr_ln5_2_fu_396_p4;
wire   [5:0] trunc_ln26_fu_388_p1;
wire   [10:0] tmp_s_fu_422_p3;
wire   [10:0] tmp_3_fu_446_p4;
wire   [10:0] tmp_6_fu_480_p5;
wire   [10:0] tmp_7_fu_498_p4;
wire   [4:0] or_ln_fu_536_p3;
wire   [4:0] or_ln28_1_fu_559_p4;
wire   [4:0] or_ln28_2_fu_573_p3;
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
#0 j_1_fu_78 = 7'd0;
#0 i_fu_82 = 7'd0;
#0 indvar_flatten_fu_86 = 10'd0;
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
        i_fu_82 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln26_fu_340_p2 == 1'd0))) begin
        i_fu_82 <= select_ln26_fu_380_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_fu_86 <= 10'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln26_fu_340_p2 == 1'd0))) begin
        indvar_flatten_fu_86 <= add_ln26_1_fu_346_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_1_fu_78 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_1_fu_78 <= add_ln27_fu_549_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add58_4_reg_862 <= grp_fu_1604_p_dout0;
        add58_5_reg_867 <= grp_fu_1608_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add58_6_reg_872 <= grp_fu_1604_p_dout0;
        add58_7_reg_877 <= grp_fu_1608_p_dout0;
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
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A_1_load_1_reg_713 <= buff_A_1_q2;
        buff_A_1_load_2_reg_723 <= buff_A_1_q1;
        buff_A_1_load_3_reg_733 <= buff_A_1_q0;
        buff_A_1_load_reg_703 <= buff_A_1_q3;
        buff_A_load_1_reg_708 <= buff_A_q2;
        buff_A_load_2_reg_718 <= buff_A_q1;
        buff_A_load_3_reg_728 <= buff_A_q0;
        buff_A_load_reg_698 <= buff_A_q3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_1_addr_1_reg_754[4 : 1] <= zext_ln28_fu_543_p1[4 : 1];
        buff_y_out_1_addr_1_reg_754_pp0_iter2_reg[4 : 1] <= buff_y_out_1_addr_1_reg_754[4 : 1];
        buff_y_out_1_addr_1_reg_754_pp0_iter3_reg[4 : 1] <= buff_y_out_1_addr_1_reg_754_pp0_iter2_reg[4 : 1];
        buff_y_out_1_addr_reg_743 <= zext_ln5_1_fu_531_p1;
        buff_y_out_1_addr_reg_743_pp0_iter2_reg <= buff_y_out_1_addr_reg_743;
        buff_y_out_1_addr_reg_743_pp0_iter3_reg <= buff_y_out_1_addr_reg_743_pp0_iter2_reg;
        buff_y_out_addr_1_reg_748[4 : 1] <= zext_ln28_fu_543_p1[4 : 1];
        buff_y_out_addr_1_reg_748_pp0_iter2_reg[4 : 1] <= buff_y_out_addr_1_reg_748[4 : 1];
        buff_y_out_addr_1_reg_748_pp0_iter3_reg[4 : 1] <= buff_y_out_addr_1_reg_748_pp0_iter2_reg[4 : 1];
        buff_y_out_addr_reg_738 <= zext_ln5_1_fu_531_p1;
        buff_y_out_addr_reg_738_pp0_iter2_reg <= buff_y_out_addr_reg_738;
        buff_y_out_addr_reg_738_pp0_iter3_reg <= buff_y_out_addr_reg_738_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_1_addr_2_reg_771[0] <= zext_ln28_1_fu_567_p1[0];
buff_y_out_1_addr_2_reg_771[4 : 2] <= zext_ln28_1_fu_567_p1[4 : 2];
        buff_y_out_1_addr_2_reg_771_pp0_iter2_reg[0] <= buff_y_out_1_addr_2_reg_771[0];
buff_y_out_1_addr_2_reg_771_pp0_iter2_reg[4 : 2] <= buff_y_out_1_addr_2_reg_771[4 : 2];
        buff_y_out_1_addr_2_reg_771_pp0_iter3_reg[0] <= buff_y_out_1_addr_2_reg_771_pp0_iter2_reg[0];
buff_y_out_1_addr_2_reg_771_pp0_iter3_reg[4 : 2] <= buff_y_out_1_addr_2_reg_771_pp0_iter2_reg[4 : 2];
        buff_y_out_1_addr_2_reg_771_pp0_iter4_reg[0] <= buff_y_out_1_addr_2_reg_771_pp0_iter3_reg[0];
buff_y_out_1_addr_2_reg_771_pp0_iter4_reg[4 : 2] <= buff_y_out_1_addr_2_reg_771_pp0_iter3_reg[4 : 2];
        buff_y_out_1_addr_3_reg_782[4 : 2] <= zext_ln28_2_fu_580_p1[4 : 2];
        buff_y_out_1_addr_3_reg_782_pp0_iter2_reg[4 : 2] <= buff_y_out_1_addr_3_reg_782[4 : 2];
        buff_y_out_1_addr_3_reg_782_pp0_iter3_reg[4 : 2] <= buff_y_out_1_addr_3_reg_782_pp0_iter2_reg[4 : 2];
        buff_y_out_1_addr_3_reg_782_pp0_iter4_reg[4 : 2] <= buff_y_out_1_addr_3_reg_782_pp0_iter3_reg[4 : 2];
        buff_y_out_addr_2_reg_765[0] <= zext_ln28_1_fu_567_p1[0];
buff_y_out_addr_2_reg_765[4 : 2] <= zext_ln28_1_fu_567_p1[4 : 2];
        buff_y_out_addr_2_reg_765_pp0_iter2_reg[0] <= buff_y_out_addr_2_reg_765[0];
buff_y_out_addr_2_reg_765_pp0_iter2_reg[4 : 2] <= buff_y_out_addr_2_reg_765[4 : 2];
        buff_y_out_addr_2_reg_765_pp0_iter3_reg[0] <= buff_y_out_addr_2_reg_765_pp0_iter2_reg[0];
buff_y_out_addr_2_reg_765_pp0_iter3_reg[4 : 2] <= buff_y_out_addr_2_reg_765_pp0_iter2_reg[4 : 2];
        buff_y_out_addr_2_reg_765_pp0_iter4_reg[0] <= buff_y_out_addr_2_reg_765_pp0_iter3_reg[0];
buff_y_out_addr_2_reg_765_pp0_iter4_reg[4 : 2] <= buff_y_out_addr_2_reg_765_pp0_iter3_reg[4 : 2];
        buff_y_out_addr_3_reg_777[4 : 2] <= zext_ln28_2_fu_580_p1[4 : 2];
        buff_y_out_addr_3_reg_777_pp0_iter2_reg[4 : 2] <= buff_y_out_addr_3_reg_777[4 : 2];
        buff_y_out_addr_3_reg_777_pp0_iter3_reg[4 : 2] <= buff_y_out_addr_3_reg_777_pp0_iter2_reg[4 : 2];
        buff_y_out_addr_3_reg_777_pp0_iter4_reg[4 : 2] <= buff_y_out_addr_3_reg_777_pp0_iter3_reg[4 : 2];
        icmp_ln26_reg_607 <= icmp_ln26_fu_340_p2;
        lshr_ln5_5_reg_631 <= {{select_ln5_fu_372_p3[5:1]}};
        select_ln5_reg_611 <= select_ln5_fu_372_p3;
        tmp_2_reg_646 <= {{select_ln5_fu_372_p3[5:2]}};
        tmp_4_reg_661 <= {{select_ln5_fu_372_p3[5:3]}};
        tmp_5_reg_667 <= select_ln5_fu_372_p3[32'd1];
        trunc_ln26_1_reg_616 <= trunc_ln26_1_fu_392_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_1_load_1_reg_797 <= buff_y_out_1_q0;
        buff_y_out_1_load_reg_787 <= buff_y_out_1_q1;
        buff_y_out_load_1_reg_792 <= buff_y_out_q0;
        buff_y_out_load_reg_760 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_y_out_1_load_2_reg_817 <= buff_y_out_1_q1;
        buff_y_out_1_load_3_reg_827 <= buff_y_out_1_q0;
        buff_y_out_load_2_reg_812 <= buff_y_out_q1;
        buff_y_out_load_3_reg_822 <= buff_y_out_q0;
        mul1_reg_802 <= grp_fu_1612_p_dout0;
        mul57_1_reg_807 <= grp_fu_1616_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul57_2_reg_832 <= grp_fu_1612_p_dout0;
        mul57_3_reg_837 <= grp_fu_1616_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul57_4_reg_842 <= grp_fu_1612_p_dout0;
        mul57_5_reg_847 <= grp_fu_1616_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul57_6_reg_852 <= grp_fu_1612_p_dout0;
        mul57_7_reg_857 <= grp_fu_1616_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_312 <= grp_fu_1604_p_dout0;
        reg_317 <= grp_fu_1608_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_reg_692 <= tmp_fu_524_p3;
    end
end
always @ (*) begin
    if (((icmp_ln26_reg_607 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_1_ce0_local = 1'b1;
    end else begin
        buff_A_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_1_ce1_local = 1'b1;
    end else begin
        buff_A_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_1_ce2_local = 1'b1;
    end else begin
        buff_A_1_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_1_ce3_local = 1'b1;
    end else begin
        buff_A_1_ce3_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_ce0_local = 1'b1;
    end else begin
        buff_A_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_ce1_local = 1'b1;
    end else begin
        buff_A_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_ce2_local = 1'b1;
    end else begin
        buff_A_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_ce3_local = 1'b1;
    end else begin
        buff_A_ce3_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_3_reg_782_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_2_reg_771_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_1_address0_local = zext_ln28_2_fu_580_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_1_address0_local = zext_ln28_fu_543_p1;
    end else begin
        buff_y_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_1_reg_754_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_reg_743_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_1_address1_local = zext_ln28_1_fu_567_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_1_address1_local = zext_ln5_1_fu_531_p1;
    end else begin
        buff_y_out_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_y_out_1_ce0_local = 1'b1;
    end else begin
        buff_y_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_y_out_1_ce1_local = 1'b1;
    end else begin
        buff_y_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            buff_y_out_1_d0_local = add58_7_reg_877;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            buff_y_out_1_d0_local = add58_5_reg_867;
        end else begin
            buff_y_out_1_d0_local = 'bx;
        end
    end else begin
        buff_y_out_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_y_out_1_we0_local = 1'b1;
    end else begin
        buff_y_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_y_out_1_we1_local = 1'b1;
    end else begin
        buff_y_out_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_y_out_address0_local = buff_y_out_addr_3_reg_777_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_y_out_address0_local = buff_y_out_addr_2_reg_765_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_address0_local = zext_ln28_2_fu_580_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_address0_local = zext_ln28_fu_543_p1;
    end else begin
        buff_y_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_y_out_address1_local = buff_y_out_addr_1_reg_748_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_y_out_address1_local = buff_y_out_addr_reg_738_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_address1_local = zext_ln28_1_fu_567_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_address1_local = zext_ln5_1_fu_531_p1;
    end else begin
        buff_y_out_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_y_out_ce0_local = 1'b1;
    end else begin
        buff_y_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_y_out_ce1_local = 1'b1;
    end else begin
        buff_y_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            buff_y_out_d0_local = add58_6_reg_872;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            buff_y_out_d0_local = add58_4_reg_862;
        end else begin
            buff_y_out_d0_local = 'bx;
        end
    end else begin
        buff_y_out_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_y_out_we0_local = 1'b1;
    end else begin
        buff_y_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_y_out_we1_local = 1'b1;
    end else begin
        buff_y_out_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_296_p0 = buff_y_out_load_3_reg_822;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_296_p0 = buff_y_out_load_2_reg_812;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_296_p0 = buff_y_out_load_1_reg_792;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_296_p0 = buff_y_out_load_reg_760;
    end else begin
        grp_fu_296_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_296_p1 = mul57_6_reg_852;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_296_p1 = mul57_4_reg_842;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_296_p1 = mul57_2_reg_832;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_296_p1 = mul1_reg_802;
    end else begin
        grp_fu_296_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_300_p0 = buff_y_out_1_load_3_reg_827;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_300_p0 = buff_y_out_1_load_2_reg_817;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_300_p0 = buff_y_out_1_load_1_reg_797;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_300_p0 = buff_y_out_1_load_reg_787;
    end else begin
        grp_fu_300_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_300_p1 = mul57_7_reg_857;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_300_p1 = mul57_5_reg_847;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_300_p1 = mul57_3_reg_837;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_300_p1 = mul57_1_reg_807;
    end else begin
        grp_fu_300_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_304_p0 = buff_A_load_3_reg_728;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_304_p0 = buff_A_load_2_reg_718;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_304_p0 = buff_A_load_1_reg_708;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_304_p0 = buff_A_load_reg_698;
    end else begin
        grp_fu_304_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_308_p0 = buff_A_1_load_3_reg_733;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_308_p0 = buff_A_1_load_2_reg_723;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_308_p0 = buff_A_1_load_1_reg_713;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_308_p0 = buff_A_1_load_reg_703;
    end else begin
        grp_fu_308_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_1_ce0_local = 1'b1;
    end else begin
        tmp1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
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
assign add_ln26_1_fu_346_p2 = (indvar_flatten_fu_86 + 10'd1);
assign add_ln26_fu_358_p2 = (i_fu_82 + 7'd1);
assign add_ln27_fu_549_p2 = (select_ln5_reg_611 + 7'd8);
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
assign buff_A_1_address0 = zext_ln28_6_fu_508_p1;
assign buff_A_1_address1 = zext_ln28_5_fu_492_p1;
assign buff_A_1_address2 = zext_ln28_4_fu_456_p1;
assign buff_A_1_address3 = zext_ln28_3_fu_430_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_1_ce1 = buff_A_1_ce1_local;
assign buff_A_1_ce2 = buff_A_1_ce2_local;
assign buff_A_1_ce3 = buff_A_1_ce3_local;
assign buff_A_address0 = zext_ln28_6_fu_508_p1;
assign buff_A_address1 = zext_ln28_5_fu_492_p1;
assign buff_A_address2 = zext_ln28_4_fu_456_p1;
assign buff_A_address3 = zext_ln28_3_fu_430_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_A_ce1 = buff_A_ce1_local;
assign buff_A_ce2 = buff_A_ce2_local;
assign buff_A_ce3 = buff_A_ce3_local;
assign buff_y_out_1_address0 = buff_y_out_1_address0_local;
assign buff_y_out_1_address1 = buff_y_out_1_address1_local;
assign buff_y_out_1_ce0 = buff_y_out_1_ce0_local;
assign buff_y_out_1_ce1 = buff_y_out_1_ce1_local;
assign buff_y_out_1_d0 = buff_y_out_1_d0_local;
assign buff_y_out_1_d1 = reg_317;
assign buff_y_out_1_we0 = buff_y_out_1_we0_local;
assign buff_y_out_1_we1 = buff_y_out_1_we1_local;
assign buff_y_out_address0 = buff_y_out_address0_local;
assign buff_y_out_address1 = buff_y_out_address1_local;
assign buff_y_out_ce0 = buff_y_out_ce0_local;
assign buff_y_out_ce1 = buff_y_out_ce1_local;
assign buff_y_out_d0 = buff_y_out_d0_local;
assign buff_y_out_d1 = reg_312;
assign buff_y_out_we0 = buff_y_out_we0_local;
assign buff_y_out_we1 = buff_y_out_we1_local;
assign grp_fu_1604_p_ce = 1'b1;
assign grp_fu_1604_p_din0 = grp_fu_296_p0;
assign grp_fu_1604_p_din1 = grp_fu_296_p1;
assign grp_fu_1604_p_opcode = 2'd0;
assign grp_fu_1608_p_ce = 1'b1;
assign grp_fu_1608_p_din0 = grp_fu_300_p0;
assign grp_fu_1608_p_din1 = grp_fu_300_p1;
assign grp_fu_1608_p_opcode = 2'd0;
assign grp_fu_1612_p_ce = 1'b1;
assign grp_fu_1612_p_din0 = grp_fu_304_p0;
assign grp_fu_1612_p_din1 = tmp_reg_692;
assign grp_fu_1616_p_ce = 1'b1;
assign grp_fu_1616_p_din0 = grp_fu_308_p0;
assign grp_fu_1616_p_din1 = tmp_reg_692;
assign icmp_ln26_fu_340_p2 = ((indvar_flatten_fu_86 == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln5_2_fu_396_p4 = {{select_ln26_fu_380_p3[5:1]}};
assign lshr_ln5_5_fu_412_p4 = {{select_ln5_fu_372_p3[5:1]}};
assign or_ln28_1_fu_559_p4 = {{{tmp_4_reg_661}, {1'd1}}, {tmp_5_reg_667}};
assign or_ln28_2_fu_573_p3 = {{tmp_4_reg_661}, {2'd3}};
assign or_ln_fu_536_p3 = {{tmp_2_reg_646}, {1'd1}};
assign select_ln26_fu_380_p3 = ((tmp_1_fu_364_p3[0:0] == 1'b1) ? add_ln26_fu_358_p2 : i_fu_82);
assign select_ln5_fu_372_p3 = ((tmp_1_fu_364_p3[0:0] == 1'b1) ? 7'd0 : j_1_fu_78);
assign tmp1_1_address0 = zext_ln5_fu_406_p1;
assign tmp1_1_ce0 = tmp1_1_ce0_local;
assign tmp1_address0 = zext_ln5_fu_406_p1;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp_1_fu_364_p3 = j_1_fu_78[32'd6];
assign tmp_2_fu_436_p4 = {{select_ln5_fu_372_p3[5:2]}};
assign tmp_3_fu_446_p4 = {{{trunc_ln26_fu_388_p1}, {tmp_2_fu_436_p4}}, {1'd1}};
assign tmp_4_fu_462_p4 = {{select_ln5_fu_372_p3[5:3]}};
assign tmp_5_fu_472_p3 = select_ln5_fu_372_p3[32'd1];
assign tmp_6_fu_480_p5 = {{{{trunc_ln26_fu_388_p1}, {tmp_4_fu_462_p4}}, {1'd1}}, {tmp_5_fu_472_p3}};
assign tmp_7_fu_498_p4 = {{{trunc_ln26_fu_388_p1}, {tmp_4_fu_462_p4}}, {2'd3}};
assign tmp_fu_524_p3 = ((trunc_ln26_1_reg_616[0:0] == 1'b1) ? tmp1_1_q0 : tmp1_q0);
assign tmp_s_fu_422_p3 = {{trunc_ln26_fu_388_p1}, {lshr_ln5_5_fu_412_p4}};
assign trunc_ln26_1_fu_392_p1 = select_ln26_fu_380_p3[0:0];
assign trunc_ln26_fu_388_p1 = select_ln26_fu_380_p3[5:0];
assign zext_ln28_1_fu_567_p1 = or_ln28_1_fu_559_p4;
assign zext_ln28_2_fu_580_p1 = or_ln28_2_fu_573_p3;
assign zext_ln28_3_fu_430_p1 = tmp_s_fu_422_p3;
assign zext_ln28_4_fu_456_p1 = tmp_3_fu_446_p4;
assign zext_ln28_5_fu_492_p1 = tmp_6_fu_480_p5;
assign zext_ln28_6_fu_508_p1 = tmp_7_fu_498_p4;
assign zext_ln28_fu_543_p1 = or_ln_fu_536_p3;
assign zext_ln5_1_fu_531_p1 = lshr_ln5_5_reg_631;
assign zext_ln5_fu_406_p1 = lshr_ln5_2_fu_396_p4;
always @ (posedge ap_clk) begin
    buff_y_out_addr_1_reg_748[0] <= 1'b1;
    buff_y_out_addr_1_reg_748_pp0_iter2_reg[0] <= 1'b1;
    buff_y_out_addr_1_reg_748_pp0_iter3_reg[0] <= 1'b1;
    buff_y_out_1_addr_1_reg_754[0] <= 1'b1;
    buff_y_out_1_addr_1_reg_754_pp0_iter2_reg[0] <= 1'b1;
    buff_y_out_1_addr_1_reg_754_pp0_iter3_reg[0] <= 1'b1;
    buff_y_out_addr_2_reg_765[1] <= 1'b1;
    buff_y_out_addr_2_reg_765_pp0_iter2_reg[1] <= 1'b1;
    buff_y_out_addr_2_reg_765_pp0_iter3_reg[1] <= 1'b1;
    buff_y_out_addr_2_reg_765_pp0_iter4_reg[1] <= 1'b1;
    buff_y_out_1_addr_2_reg_771[1] <= 1'b1;
    buff_y_out_1_addr_2_reg_771_pp0_iter2_reg[1] <= 1'b1;
    buff_y_out_1_addr_2_reg_771_pp0_iter3_reg[1] <= 1'b1;
    buff_y_out_1_addr_2_reg_771_pp0_iter4_reg[1] <= 1'b1;
    buff_y_out_addr_3_reg_777[1:0] <= 2'b11;
    buff_y_out_addr_3_reg_777_pp0_iter2_reg[1:0] <= 2'b11;
    buff_y_out_addr_3_reg_777_pp0_iter3_reg[1:0] <= 2'b11;
    buff_y_out_addr_3_reg_777_pp0_iter4_reg[1:0] <= 2'b11;
    buff_y_out_1_addr_3_reg_782[1:0] <= 2'b11;
    buff_y_out_1_addr_3_reg_782_pp0_iter2_reg[1:0] <= 2'b11;
    buff_y_out_1_addr_3_reg_782_pp0_iter3_reg[1:0] <= 2'b11;
    buff_y_out_1_addr_3_reg_782_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 
