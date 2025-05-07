module syrk_syrk_Pipeline_lp4_lp5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_B_address0,buff_B_ce0,buff_B_q0,buff_B_address1,buff_B_ce1,buff_B_q1,buff_B_1_address0,buff_B_1_ce0,buff_B_1_q0,buff_B_1_address1,buff_B_1_ce1,buff_B_1_q1,buff_C_out_address0,buff_C_out_ce0,buff_C_out_we0,buff_C_out_d0,buff_C_out_q0,buff_C_out_address1,buff_C_out_ce1,buff_C_out_we1,buff_C_out_d1,buff_C_out_q1,buff_C_out_1_address0,buff_C_out_1_ce0,buff_C_out_1_we0,buff_C_out_1_d0,buff_C_out_1_q0,buff_C_out_1_address1,buff_C_out_1_ce1,buff_C_out_1_we1,buff_C_out_1_d1,buff_C_out_1_q1,beta,grp_fu_164_p_din0,grp_fu_164_p_din1,grp_fu_164_p_opcode,grp_fu_164_p_dout0,grp_fu_164_p_ce,grp_fu_168_p_din0,grp_fu_168_p_din1,grp_fu_168_p_opcode,grp_fu_168_p_dout0,grp_fu_168_p_ce,grp_fu_172_p_din0,grp_fu_172_p_din1,grp_fu_172_p_dout0,grp_fu_172_p_ce,grp_fu_176_p_din0,grp_fu_176_p_din1,grp_fu_176_p_dout0,grp_fu_176_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] buff_B_address0;
output   buff_B_ce0;
input  [31:0] buff_B_q0;
output  [10:0] buff_B_address1;
output   buff_B_ce1;
input  [31:0] buff_B_q1;
output  [10:0] buff_B_1_address0;
output   buff_B_1_ce0;
input  [31:0] buff_B_1_q0;
output  [10:0] buff_B_1_address1;
output   buff_B_1_ce1;
input  [31:0] buff_B_1_q1;
output  [10:0] buff_C_out_address0;
output   buff_C_out_ce0;
output   buff_C_out_we0;
output  [31:0] buff_C_out_d0;
input  [31:0] buff_C_out_q0;
output  [10:0] buff_C_out_address1;
output   buff_C_out_ce1;
output   buff_C_out_we1;
output  [31:0] buff_C_out_d1;
input  [31:0] buff_C_out_q1;
output  [10:0] buff_C_out_1_address0;
output   buff_C_out_1_ce0;
output   buff_C_out_1_we0;
output  [31:0] buff_C_out_1_d0;
input  [31:0] buff_C_out_1_q0;
output  [10:0] buff_C_out_1_address1;
output   buff_C_out_1_ce1;
output   buff_C_out_1_we1;
output  [31:0] buff_C_out_1_d1;
input  [31:0] buff_C_out_1_q1;
input  [31:0] beta;
output  [31:0] grp_fu_164_p_din0;
output  [31:0] grp_fu_164_p_din1;
output  [1:0] grp_fu_164_p_opcode;
input  [31:0] grp_fu_164_p_dout0;
output   grp_fu_164_p_ce;
output  [31:0] grp_fu_168_p_din0;
output  [31:0] grp_fu_168_p_din1;
output  [1:0] grp_fu_168_p_opcode;
input  [31:0] grp_fu_168_p_dout0;
output   grp_fu_168_p_ce;
output  [31:0] grp_fu_172_p_din0;
output  [31:0] grp_fu_172_p_din1;
input  [31:0] grp_fu_172_p_dout0;
output   grp_fu_172_p_ce;
output  [31:0] grp_fu_176_p_din0;
output  [31:0] grp_fu_176_p_din1;
input  [31:0] grp_fu_176_p_dout0;
output   grp_fu_176_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] icmp_ln29_fu_210_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln29_reg_363;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] icmp_ln29_reg_363_pp0_iter1_reg;
reg   [0:0] icmp_ln29_reg_363_pp0_iter2_reg;
reg   [0:0] icmp_ln29_reg_363_pp0_iter3_reg;
reg   [0:0] icmp_ln29_reg_363_pp0_iter4_reg;
reg   [0:0] icmp_ln29_reg_363_pp0_iter5_reg;
reg   [0:0] icmp_ln29_reg_363_pp0_iter6_reg;
wire   [6:0] select_ln5_fu_242_p3;
reg   [6:0] select_ln5_reg_367;
reg   [10:0] buff_C_out_addr_reg_382;
reg   [10:0] buff_C_out_addr_reg_382_pp0_iter1_reg;
reg   [10:0] buff_C_out_addr_reg_382_pp0_iter2_reg;
reg   [10:0] buff_C_out_addr_reg_382_pp0_iter3_reg;
reg   [10:0] buff_C_out_addr_reg_382_pp0_iter4_reg;
reg   [10:0] buff_C_out_addr_reg_382_pp0_iter5_reg;
reg   [10:0] buff_C_out_addr_reg_382_pp0_iter6_reg;
reg   [10:0] buff_C_out_1_addr_reg_387;
reg   [10:0] buff_C_out_1_addr_reg_387_pp0_iter1_reg;
reg   [10:0] buff_C_out_1_addr_reg_387_pp0_iter2_reg;
reg   [10:0] buff_C_out_1_addr_reg_387_pp0_iter3_reg;
reg   [10:0] buff_C_out_1_addr_reg_387_pp0_iter4_reg;
reg   [10:0] buff_C_out_1_addr_reg_387_pp0_iter5_reg;
reg   [10:0] buff_C_out_1_addr_reg_387_pp0_iter6_reg;
reg   [10:0] buff_C_out_addr_1_reg_402;
reg   [10:0] buff_C_out_addr_1_reg_402_pp0_iter1_reg;
reg   [10:0] buff_C_out_addr_1_reg_402_pp0_iter2_reg;
reg   [10:0] buff_C_out_addr_1_reg_402_pp0_iter3_reg;
reg   [10:0] buff_C_out_addr_1_reg_402_pp0_iter4_reg;
reg   [10:0] buff_C_out_addr_1_reg_402_pp0_iter5_reg;
reg   [10:0] buff_C_out_addr_1_reg_402_pp0_iter6_reg;
reg   [10:0] buff_C_out_addr_1_reg_402_pp0_iter7_reg;
reg   [10:0] buff_C_out_1_addr_1_reg_407;
reg   [10:0] buff_C_out_1_addr_1_reg_407_pp0_iter1_reg;
reg   [10:0] buff_C_out_1_addr_1_reg_407_pp0_iter2_reg;
reg   [10:0] buff_C_out_1_addr_1_reg_407_pp0_iter3_reg;
reg   [10:0] buff_C_out_1_addr_1_reg_407_pp0_iter4_reg;
reg   [10:0] buff_C_out_1_addr_1_reg_407_pp0_iter5_reg;
reg   [10:0] buff_C_out_1_addr_1_reg_407_pp0_iter6_reg;
reg   [10:0] buff_C_out_1_addr_1_reg_407_pp0_iter7_reg;
reg   [31:0] buff_B_load_reg_412;
reg   [31:0] buff_B_1_load_reg_417;
reg   [31:0] buff_B_load_1_reg_422;
reg   [31:0] buff_B_1_load_1_reg_427;
reg   [31:0] mul2_reg_432;
reg   [31:0] buff_C_out_load_reg_437;
reg   [31:0] mul74_1_reg_442;
reg   [31:0] buff_C_out_1_load_reg_447;
reg   [31:0] buff_C_out_load_1_reg_452;
reg   [31:0] buff_C_out_1_load_1_reg_457;
reg   [31:0] mul74_2_reg_462;
reg   [31:0] mul74_3_reg_467;
reg   [31:0] add1_reg_472;
reg   [31:0] add79_1_reg_477;
reg   [31:0] add79_2_reg_482;
reg   [31:0] add79_3_reg_487;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln32_fu_280_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln32_1_fu_308_p1;
reg   [6:0] j_fu_62;
wire   [6:0] add_ln30_fu_326_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_66;
wire   [6:0] select_ln29_fu_250_p3;
reg   [10:0] indvar_flatten13_fu_70;
wire   [10:0] add_ln29_1_fu_216_p2;
reg    buff_B_ce1_local;
reg    buff_B_ce0_local;
reg    buff_B_1_ce1_local;
reg    buff_B_1_ce0_local;
reg    buff_C_out_ce1_local;
reg   [10:0] buff_C_out_address1_local;
reg    buff_C_out_ce0_local;
reg   [10:0] buff_C_out_address0_local;
reg    buff_C_out_we1_local;
wire    ap_block_pp0_stage0;
reg    buff_C_out_we0_local;
reg    buff_C_out_1_ce1_local;
reg   [10:0] buff_C_out_1_address1_local;
reg    buff_C_out_1_ce0_local;
reg   [10:0] buff_C_out_1_address0_local;
reg    buff_C_out_1_we1_local;
reg    buff_C_out_1_we0_local;
reg   [31:0] grp_fu_176_p0;
reg   [31:0] grp_fu_176_p1;
reg   [31:0] grp_fu_180_p0;
reg   [31:0] grp_fu_180_p1;
reg   [31:0] grp_fu_184_p0;
reg   [31:0] grp_fu_188_p0;
wire   [0:0] tmp_fu_234_p3;
wire   [6:0] add_ln29_fu_228_p2;
wire   [5:0] trunc_ln5_fu_258_p1;
wire   [4:0] lshr_ln5_2_fu_262_p4;
wire   [10:0] tmp_s_fu_272_p3;
wire   [3:0] tmp_1_fu_288_p4;
wire   [10:0] tmp_2_fu_298_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter7_stage0;
reg    ap_idle_pp0_0to6;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to8;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_62 = 7'd0;
#0 i_fu_66 = 7'd0;
#0 indvar_flatten13_fu_70 = 11'd0;
#0 ap_done_reg = 1'b0;
end
syrk_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter8 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_66 <= 7'd0;
    end else if (((icmp_ln29_fu_210_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_66 <= select_ln29_fu_250_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten13_fu_70 <= 11'd0;
    end else if (((icmp_ln29_fu_210_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten13_fu_70 <= add_ln29_1_fu_216_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_62 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_62 <= add_ln30_fu_326_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add1_reg_472 <= grp_fu_164_p_dout0;
        add79_1_reg_477 <= grp_fu_168_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add79_2_reg_482 <= grp_fu_164_p_dout0;
        add79_3_reg_487 <= grp_fu_168_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_1_load_1_reg_427 <= buff_B_1_q0;
        buff_B_1_load_reg_417 <= buff_B_1_q1;
        buff_B_load_1_reg_422 <= buff_B_q0;
        buff_B_load_reg_412 <= buff_B_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_1_addr_1_reg_407[10 : 1] <= zext_ln32_1_fu_308_p1[10 : 1];
        buff_C_out_1_addr_1_reg_407_pp0_iter1_reg[10 : 1] <= buff_C_out_1_addr_1_reg_407[10 : 1];
        buff_C_out_1_addr_1_reg_407_pp0_iter2_reg[10 : 1] <= buff_C_out_1_addr_1_reg_407_pp0_iter1_reg[10 : 1];
        buff_C_out_1_addr_1_reg_407_pp0_iter3_reg[10 : 1] <= buff_C_out_1_addr_1_reg_407_pp0_iter2_reg[10 : 1];
        buff_C_out_1_addr_1_reg_407_pp0_iter4_reg[10 : 1] <= buff_C_out_1_addr_1_reg_407_pp0_iter3_reg[10 : 1];
        buff_C_out_1_addr_1_reg_407_pp0_iter5_reg[10 : 1] <= buff_C_out_1_addr_1_reg_407_pp0_iter4_reg[10 : 1];
        buff_C_out_1_addr_1_reg_407_pp0_iter6_reg[10 : 1] <= buff_C_out_1_addr_1_reg_407_pp0_iter5_reg[10 : 1];
        buff_C_out_1_addr_1_reg_407_pp0_iter7_reg[10 : 1] <= buff_C_out_1_addr_1_reg_407_pp0_iter6_reg[10 : 1];
        buff_C_out_1_addr_reg_387 <= zext_ln32_fu_280_p1;
        buff_C_out_1_addr_reg_387_pp0_iter1_reg <= buff_C_out_1_addr_reg_387;
        buff_C_out_1_addr_reg_387_pp0_iter2_reg <= buff_C_out_1_addr_reg_387_pp0_iter1_reg;
        buff_C_out_1_addr_reg_387_pp0_iter3_reg <= buff_C_out_1_addr_reg_387_pp0_iter2_reg;
        buff_C_out_1_addr_reg_387_pp0_iter4_reg <= buff_C_out_1_addr_reg_387_pp0_iter3_reg;
        buff_C_out_1_addr_reg_387_pp0_iter5_reg <= buff_C_out_1_addr_reg_387_pp0_iter4_reg;
        buff_C_out_1_addr_reg_387_pp0_iter6_reg <= buff_C_out_1_addr_reg_387_pp0_iter5_reg;
        buff_C_out_addr_1_reg_402[10 : 1] <= zext_ln32_1_fu_308_p1[10 : 1];
        buff_C_out_addr_1_reg_402_pp0_iter1_reg[10 : 1] <= buff_C_out_addr_1_reg_402[10 : 1];
        buff_C_out_addr_1_reg_402_pp0_iter2_reg[10 : 1] <= buff_C_out_addr_1_reg_402_pp0_iter1_reg[10 : 1];
        buff_C_out_addr_1_reg_402_pp0_iter3_reg[10 : 1] <= buff_C_out_addr_1_reg_402_pp0_iter2_reg[10 : 1];
        buff_C_out_addr_1_reg_402_pp0_iter4_reg[10 : 1] <= buff_C_out_addr_1_reg_402_pp0_iter3_reg[10 : 1];
        buff_C_out_addr_1_reg_402_pp0_iter5_reg[10 : 1] <= buff_C_out_addr_1_reg_402_pp0_iter4_reg[10 : 1];
        buff_C_out_addr_1_reg_402_pp0_iter6_reg[10 : 1] <= buff_C_out_addr_1_reg_402_pp0_iter5_reg[10 : 1];
        buff_C_out_addr_1_reg_402_pp0_iter7_reg[10 : 1] <= buff_C_out_addr_1_reg_402_pp0_iter6_reg[10 : 1];
        buff_C_out_addr_reg_382 <= zext_ln32_fu_280_p1;
        buff_C_out_addr_reg_382_pp0_iter1_reg <= buff_C_out_addr_reg_382;
        buff_C_out_addr_reg_382_pp0_iter2_reg <= buff_C_out_addr_reg_382_pp0_iter1_reg;
        buff_C_out_addr_reg_382_pp0_iter3_reg <= buff_C_out_addr_reg_382_pp0_iter2_reg;
        buff_C_out_addr_reg_382_pp0_iter4_reg <= buff_C_out_addr_reg_382_pp0_iter3_reg;
        buff_C_out_addr_reg_382_pp0_iter5_reg <= buff_C_out_addr_reg_382_pp0_iter4_reg;
        buff_C_out_addr_reg_382_pp0_iter6_reg <= buff_C_out_addr_reg_382_pp0_iter5_reg;
        icmp_ln29_reg_363 <= icmp_ln29_fu_210_p2;
        icmp_ln29_reg_363_pp0_iter1_reg <= icmp_ln29_reg_363;
        icmp_ln29_reg_363_pp0_iter2_reg <= icmp_ln29_reg_363_pp0_iter1_reg;
        icmp_ln29_reg_363_pp0_iter3_reg <= icmp_ln29_reg_363_pp0_iter2_reg;
        icmp_ln29_reg_363_pp0_iter4_reg <= icmp_ln29_reg_363_pp0_iter3_reg;
        icmp_ln29_reg_363_pp0_iter5_reg <= icmp_ln29_reg_363_pp0_iter4_reg;
        icmp_ln29_reg_363_pp0_iter6_reg <= icmp_ln29_reg_363_pp0_iter5_reg;
        select_ln5_reg_367 <= select_ln5_fu_242_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_1_load_1_reg_457 <= buff_C_out_1_q0;
        buff_C_out_1_load_reg_447 <= buff_C_out_1_q1;
        buff_C_out_load_1_reg_452 <= buff_C_out_q0;
        buff_C_out_load_reg_437 <= buff_C_out_q1;
        mul2_reg_432 <= grp_fu_172_p_dout0;
        mul74_1_reg_442 <= grp_fu_176_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul74_2_reg_462 <= grp_fu_172_p_dout0;
        mul74_3_reg_467 <= grp_fu_176_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln29_fu_210_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln29_reg_363_pp0_iter6_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter7_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter7_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to6 = 1'b1;
    end else begin
        ap_idle_pp0_0to6 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to8 = 1'b1;
    end else begin
        ap_idle_pp0_1to8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_1_ce0_local = 1'b1;
    end else begin
        buff_B_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_1_ce1_local = 1'b1;
    end else begin
        buff_B_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_ce0_local = 1'b1;
    end else begin
        buff_B_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_ce1_local = 1'b1;
    end else begin
        buff_B_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_1_address0_local = buff_C_out_1_addr_1_reg_407_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_1_address0_local = buff_C_out_1_addr_1_reg_407_pp0_iter1_reg;
    end else begin
        buff_C_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_1_address1_local = buff_C_out_1_addr_reg_387_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_1_address1_local = buff_C_out_1_addr_reg_387_pp0_iter1_reg;
    end else begin
        buff_C_out_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_C_out_1_ce0_local = 1'b1;
    end else begin
        buff_C_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_C_out_1_ce1_local = 1'b1;
    end else begin
        buff_C_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_1_we0_local = 1'b1;
    end else begin
        buff_C_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_1_we1_local = 1'b1;
    end else begin
        buff_C_out_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_address0_local = buff_C_out_addr_1_reg_402_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_address0_local = buff_C_out_addr_1_reg_402_pp0_iter1_reg;
    end else begin
        buff_C_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_address1_local = buff_C_out_addr_reg_382_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_address1_local = buff_C_out_addr_reg_382_pp0_iter1_reg;
    end else begin
        buff_C_out_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_C_out_ce0_local = 1'b1;
    end else begin
        buff_C_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_C_out_ce1_local = 1'b1;
    end else begin
        buff_C_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_we0_local = 1'b1;
    end else begin
        buff_C_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_we1_local = 1'b1;
    end else begin
        buff_C_out_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_176_p0 = buff_C_out_load_1_reg_452;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_176_p0 = buff_C_out_load_reg_437;
    end else begin
        grp_fu_176_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_176_p1 = mul74_2_reg_462;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_176_p1 = mul2_reg_432;
    end else begin
        grp_fu_176_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_180_p0 = buff_C_out_1_load_1_reg_457;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_180_p0 = buff_C_out_1_load_reg_447;
    end else begin
        grp_fu_180_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_180_p1 = mul74_3_reg_467;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_180_p1 = mul74_1_reg_442;
    end else begin
        grp_fu_180_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_184_p0 = buff_B_load_1_reg_422;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_184_p0 = buff_B_load_reg_412;
    end else begin
        grp_fu_184_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_188_p0 = buff_B_1_load_1_reg_427;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_188_p0 = buff_B_1_load_reg_417;
    end else begin
        grp_fu_188_p0 = 'bx;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to8 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln29_1_fu_216_p2 = (indvar_flatten13_fu_70 + 11'd1);
assign add_ln29_fu_228_p2 = (i_fu_66 + 7'd1);
assign add_ln30_fu_326_p2 = (select_ln5_reg_367 + 7'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign buff_B_1_address0 = zext_ln32_1_fu_308_p1;
assign buff_B_1_address1 = zext_ln32_fu_280_p1;
assign buff_B_1_ce0 = buff_B_1_ce0_local;
assign buff_B_1_ce1 = buff_B_1_ce1_local;
assign buff_B_address0 = zext_ln32_1_fu_308_p1;
assign buff_B_address1 = zext_ln32_fu_280_p1;
assign buff_B_ce0 = buff_B_ce0_local;
assign buff_B_ce1 = buff_B_ce1_local;
assign buff_C_out_1_address0 = buff_C_out_1_address0_local;
assign buff_C_out_1_address1 = buff_C_out_1_address1_local;
assign buff_C_out_1_ce0 = buff_C_out_1_ce0_local;
assign buff_C_out_1_ce1 = buff_C_out_1_ce1_local;
assign buff_C_out_1_d0 = add79_3_reg_487;
assign buff_C_out_1_d1 = add79_1_reg_477;
assign buff_C_out_1_we0 = buff_C_out_1_we0_local;
assign buff_C_out_1_we1 = buff_C_out_1_we1_local;
assign buff_C_out_address0 = buff_C_out_address0_local;
assign buff_C_out_address1 = buff_C_out_address1_local;
assign buff_C_out_ce0 = buff_C_out_ce0_local;
assign buff_C_out_ce1 = buff_C_out_ce1_local;
assign buff_C_out_d0 = add79_2_reg_482;
assign buff_C_out_d1 = add1_reg_472;
assign buff_C_out_we0 = buff_C_out_we0_local;
assign buff_C_out_we1 = buff_C_out_we1_local;
assign grp_fu_164_p_ce = 1'b1;
assign grp_fu_164_p_din0 = grp_fu_176_p0;
assign grp_fu_164_p_din1 = grp_fu_176_p1;
assign grp_fu_164_p_opcode = 2'd0;
assign grp_fu_168_p_ce = 1'b1;
assign grp_fu_168_p_din0 = grp_fu_180_p0;
assign grp_fu_168_p_din1 = grp_fu_180_p1;
assign grp_fu_168_p_opcode = 2'd0;
assign grp_fu_172_p_ce = 1'b1;
assign grp_fu_172_p_din0 = grp_fu_184_p0;
assign grp_fu_172_p_din1 = beta;
assign grp_fu_176_p_ce = 1'b1;
assign grp_fu_176_p_din0 = grp_fu_188_p0;
assign grp_fu_176_p_din1 = beta;
assign icmp_ln29_fu_210_p2 = ((indvar_flatten13_fu_70 == 11'd1024) ? 1'b1 : 1'b0);
assign lshr_ln5_2_fu_262_p4 = {{select_ln5_fu_242_p3[5:1]}};
assign select_ln29_fu_250_p3 = ((tmp_fu_234_p3[0:0] == 1'b1) ? add_ln29_fu_228_p2 : i_fu_66);
assign select_ln5_fu_242_p3 = ((tmp_fu_234_p3[0:0] == 1'b1) ? 7'd0 : j_fu_62);
assign tmp_1_fu_288_p4 = {{select_ln5_fu_242_p3[5:2]}};
assign tmp_2_fu_298_p4 = {{{trunc_ln5_fu_258_p1}, {tmp_1_fu_288_p4}}, {1'd1}};
assign tmp_fu_234_p3 = j_fu_62[32'd6];
assign tmp_s_fu_272_p3 = {{trunc_ln5_fu_258_p1}, {lshr_ln5_2_fu_262_p4}};
assign trunc_ln5_fu_258_p1 = select_ln29_fu_250_p3[5:0];
assign zext_ln32_1_fu_308_p1 = tmp_2_fu_298_p4;
assign zext_ln32_fu_280_p1 = tmp_s_fu_272_p3;
always @ (posedge ap_clk) begin
    buff_C_out_addr_1_reg_402[0] <= 1'b1;
    buff_C_out_addr_1_reg_402_pp0_iter1_reg[0] <= 1'b1;
    buff_C_out_addr_1_reg_402_pp0_iter2_reg[0] <= 1'b1;
    buff_C_out_addr_1_reg_402_pp0_iter3_reg[0] <= 1'b1;
    buff_C_out_addr_1_reg_402_pp0_iter4_reg[0] <= 1'b1;
    buff_C_out_addr_1_reg_402_pp0_iter5_reg[0] <= 1'b1;
    buff_C_out_addr_1_reg_402_pp0_iter6_reg[0] <= 1'b1;
    buff_C_out_addr_1_reg_402_pp0_iter7_reg[0] <= 1'b1;
    buff_C_out_1_addr_1_reg_407[0] <= 1'b1;
    buff_C_out_1_addr_1_reg_407_pp0_iter1_reg[0] <= 1'b1;
    buff_C_out_1_addr_1_reg_407_pp0_iter2_reg[0] <= 1'b1;
    buff_C_out_1_addr_1_reg_407_pp0_iter3_reg[0] <= 1'b1;
    buff_C_out_1_addr_1_reg_407_pp0_iter4_reg[0] <= 1'b1;
    buff_C_out_1_addr_1_reg_407_pp0_iter5_reg[0] <= 1'b1;
    buff_C_out_1_addr_1_reg_407_pp0_iter6_reg[0] <= 1'b1;
    buff_C_out_1_addr_1_reg_407_pp0_iter7_reg[0] <= 1'b1;
end
endmodule 