
module syrk_syrk_Pipeline_lp1_lp2_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_A0_address0,buff_A0_ce0,buff_A0_q0,buff_A0_1_address0,buff_A0_1_ce0,buff_A0_1_q0,buff_A0_2_address0,buff_A0_2_ce0,buff_A0_2_q0,buff_A0_3_address0,buff_A0_3_ce0,buff_A0_3_q0,buff_A1_address0,buff_A1_ce0,buff_A1_q0,buff_A1_1_address0,buff_A1_1_ce0,buff_A1_1_q0,buff_A1_2_address0,buff_A1_2_ce0,buff_A1_2_q0,buff_A1_3_address0,buff_A1_3_ce0,buff_A1_3_q0,alpha,buff_C_out_address0,buff_C_out_ce0,buff_C_out_we0,buff_C_out_d0,buff_C_out_q0,buff_C_out_1_address0,buff_C_out_1_ce0,buff_C_out_1_we0,buff_C_out_1_d0,buff_C_out_1_q0,buff_C_out_2_address0,buff_C_out_2_ce0,buff_C_out_2_we0,buff_C_out_2_d0,buff_C_out_2_q0,buff_C_out_3_address0,buff_C_out_3_ce0,buff_C_out_3_we0,buff_C_out_3_d0,buff_C_out_3_q0,grp_fu_248_p_din0,grp_fu_248_p_din1,grp_fu_248_p_opcode,grp_fu_248_p_dout0,grp_fu_248_p_ce,grp_fu_252_p_din0,grp_fu_252_p_din1,grp_fu_252_p_dout0,grp_fu_252_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] buff_A0_address0;
output   buff_A0_ce0;
input  [31:0] buff_A0_q0;
output  [9:0] buff_A0_1_address0;
output   buff_A0_1_ce0;
input  [31:0] buff_A0_1_q0;
output  [9:0] buff_A0_2_address0;
output   buff_A0_2_ce0;
input  [31:0] buff_A0_2_q0;
output  [9:0] buff_A0_3_address0;
output   buff_A0_3_ce0;
input  [31:0] buff_A0_3_q0;
output  [9:0] buff_A1_address0;
output   buff_A1_ce0;
input  [31:0] buff_A1_q0;
output  [9:0] buff_A1_1_address0;
output   buff_A1_1_ce0;
input  [31:0] buff_A1_1_q0;
output  [9:0] buff_A1_2_address0;
output   buff_A1_2_ce0;
input  [31:0] buff_A1_2_q0;
output  [9:0] buff_A1_3_address0;
output   buff_A1_3_ce0;
input  [31:0] buff_A1_3_q0;
input  [31:0] alpha;
output  [9:0] buff_C_out_address0;
output   buff_C_out_ce0;
output   buff_C_out_we0;
output  [31:0] buff_C_out_d0;
input  [31:0] buff_C_out_q0;
output  [9:0] buff_C_out_1_address0;
output   buff_C_out_1_ce0;
output   buff_C_out_1_we0;
output  [31:0] buff_C_out_1_d0;
input  [31:0] buff_C_out_1_q0;
output  [9:0] buff_C_out_2_address0;
output   buff_C_out_2_ce0;
output   buff_C_out_2_we0;
output  [31:0] buff_C_out_2_d0;
input  [31:0] buff_C_out_2_q0;
output  [9:0] buff_C_out_3_address0;
output   buff_C_out_3_ce0;
output   buff_C_out_3_we0;
output  [31:0] buff_C_out_3_d0;
input  [31:0] buff_C_out_3_q0;
output  [31:0] grp_fu_248_p_din0;
output  [31:0] grp_fu_248_p_din1;
output  [1:0] grp_fu_248_p_opcode;
input  [31:0] grp_fu_248_p_dout0;
output   grp_fu_248_p_ce;
output  [31:0] grp_fu_252_p_din0;
output  [31:0] grp_fu_252_p_din1;
input  [31:0] grp_fu_252_p_dout0;
output   grp_fu_252_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln20_reg_671;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln20_fu_313_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] icmp_ln20_reg_671_pp0_iter1_reg;
reg   [6:0] k_load_reg_675;
wire   [0:0] icmp_ln21_fu_328_p2;
reg   [0:0] icmp_ln21_reg_680;
wire   [0:0] and_ln5_fu_346_p2;
reg   [0:0] and_ln5_reg_687;
wire   [5:0] trunc_ln21_fu_402_p1;
reg   [5:0] trunc_ln21_reg_693;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [6:0] k_mid2_fu_416_p3;
reg   [6:0] k_mid2_reg_698;
wire   [0:0] first_iter_1_fu_434_p2;
reg   [0:0] first_iter_1_reg_703;
reg   [0:0] first_iter_1_reg_703_pp0_iter1_reg;
wire   [1:0] trunc_ln21_1_fu_440_p1;
reg   [1:0] trunc_ln21_1_reg_707;
reg   [1:0] trunc_ln21_1_reg_707_pp0_iter1_reg;
reg   [1:0] trunc_ln21_1_reg_707_pp0_iter2_reg;
reg   [3:0] lshr_ln5_1_reg_712;
wire   [0:0] icmp_ln23_1_fu_502_p2;
reg   [0:0] icmp_ln23_1_reg_757;
reg   [0:0] icmp_ln23_1_reg_757_pp0_iter1_reg;
reg   [0:0] icmp_ln23_1_reg_757_pp0_iter2_reg;
wire   [31:0] tmp_5_fu_526_p11;
reg   [31:0] tmp_5_reg_761;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] tmp_6_fu_550_p11;
reg   [31:0] tmp_6_reg_766;
reg   [31:0] mul_reg_771;
wire    ap_block_pp0_stage7_11001;
reg   [9:0] buff_C_out_addr_reg_776;
reg   [9:0] buff_C_out_addr_reg_776_pp0_iter2_reg;
reg   [9:0] buff_C_out_1_addr_reg_781;
reg   [9:0] buff_C_out_1_addr_reg_781_pp0_iter2_reg;
reg   [9:0] buff_C_out_2_addr_reg_786;
reg   [9:0] buff_C_out_2_addr_reg_786_pp0_iter2_reg;
reg   [9:0] buff_C_out_3_addr_reg_791;
reg   [9:0] buff_C_out_3_addr_reg_791_pp0_iter2_reg;
reg   [31:0] mul2_reg_796;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] add_reg_806;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage3_subdone;
wire   [63:0] zext_ln24_fu_472_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln24_1_fu_488_p1;
wire   [63:0] tmp_2_cast_fu_580_p1;
reg   [6:0] k_fu_88;
wire   [6:0] add_ln23_fu_496_p2;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [6:0] j_fu_92;
wire   [6:0] select_ln21_fu_423_p3;
reg   [13:0] indvar_flatten7_fu_96;
wire   [13:0] select_ln21_1_fu_358_p3;
reg   [6:0] i_fu_100;
wire   [6:0] select_ln20_fu_395_p3;
reg   [18:0] indvar_flatten21_fu_104;
wire   [18:0] add_ln20_1_fu_319_p2;
reg   [31:0] empty_fu_108;
wire   [31:0] tmp_fu_588_p11;
wire    ap_block_pp0_stage4;
reg    buff_A0_ce0_local;
reg    buff_A0_1_ce0_local;
reg    buff_A0_2_ce0_local;
reg    buff_A0_3_ce0_local;
reg    buff_A1_ce0_local;
reg    buff_A1_1_ce0_local;
reg    buff_A1_2_ce0_local;
reg    buff_A1_3_ce0_local;
reg    buff_C_out_ce0_local;
reg   [9:0] buff_C_out_address0_local;
reg    buff_C_out_we0_local;
wire    ap_block_pp0_stage3;
reg    buff_C_out_1_ce0_local;
reg   [9:0] buff_C_out_1_address0_local;
reg    buff_C_out_1_we0_local;
reg    buff_C_out_2_ce0_local;
reg   [9:0] buff_C_out_2_address0_local;
reg    buff_C_out_2_we0_local;
reg    buff_C_out_3_ce0_local;
reg   [9:0] buff_C_out_3_address0_local;
reg    buff_C_out_3_we0_local;
wire    ap_block_pp0_stage0;
reg   [31:0] grp_fu_278_p0;
reg   [31:0] grp_fu_278_p1;
wire   [0:0] icmp_ln23_fu_340_p2;
wire   [0:0] xor_ln5_fu_334_p2;
wire   [13:0] add_ln21_1_fu_352_p2;
wire   [6:0] add_ln20_fu_382_p2;
wire   [6:0] select_ln5_fu_388_p3;
wire   [0:0] empty_10_fu_412_p2;
wire   [6:0] add_ln21_fu_406_p2;
wire   [3:0] lshr_ln5_3_fu_454_p4;
wire   [9:0] tmp_4_fu_464_p3;
wire   [5:0] empty_11_fu_430_p1;
wire   [9:0] tmp_7_fu_480_p3;
wire   [31:0] tmp_5_fu_526_p9;
wire   [1:0] trunc_ln23_fu_523_p1;
wire   [31:0] tmp_6_fu_550_p9;
wire   [9:0] tmp_2_fu_574_p3;
wire   [31:0] tmp_fu_588_p9;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage3;
reg    ap_idle_pp0_0to0;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage4_00001;
wire   [1:0] tmp_5_fu_526_p1;
wire   [1:0] tmp_5_fu_526_p3;
wire  signed [1:0] tmp_5_fu_526_p5;
wire  signed [1:0] tmp_5_fu_526_p7;
wire   [1:0] tmp_6_fu_550_p1;
wire   [1:0] tmp_6_fu_550_p3;
wire  signed [1:0] tmp_6_fu_550_p5;
wire  signed [1:0] tmp_6_fu_550_p7;
wire   [1:0] tmp_fu_588_p1;
wire   [1:0] tmp_fu_588_p3;
wire  signed [1:0] tmp_fu_588_p5;
wire  signed [1:0] tmp_fu_588_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_88 = 7'd0;
#0 j_fu_92 = 7'd0;
#0 indvar_flatten7_fu_96 = 14'd0;
#0 i_fu_100 = 7'd0;
#0 indvar_flatten21_fu_104 = 19'd0;
#0 empty_fu_108 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U27(.din0(buff_A0_q0),.din1(buff_A0_1_q0),.din2(buff_A0_2_q0),.din3(buff_A0_3_q0),.def(tmp_5_fu_526_p9),.sel(trunc_ln23_fu_523_p1),.dout(tmp_5_fu_526_p11));
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U28(.din0(buff_A1_q0),.din1(buff_A1_1_q0),.din2(buff_A1_2_q0),.din3(buff_A1_3_q0),.def(tmp_6_fu_550_p9),.sel(trunc_ln23_fu_523_p1),.dout(tmp_6_fu_550_p11));
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U29(.din0(buff_C_out_q0),.din1(buff_C_out_1_q0),.din2(buff_C_out_2_q0),.din3(buff_C_out_3_q0),.def(tmp_fu_588_p9),.sel(trunc_ln21_1_reg_707_pp0_iter1_reg),.dout(tmp_fu_588_p11));
syrk_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        if (((ap_enable_reg_pp0_iter1 == 1'b1) & (first_iter_1_reg_703_pp0_iter1_reg == 1'd1))) begin
            empty_fu_108 <= tmp_fu_588_p11;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            empty_fu_108 <= add_reg_806;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_100 <= 7'd0;
    end else if (((icmp_ln20_reg_671 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_fu_100 <= select_ln20_fu_395_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten21_fu_104 <= 19'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln20_fu_313_p2 == 1'd0))) begin
        indvar_flatten21_fu_104 <= add_ln20_1_fu_319_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten7_fu_96 <= 14'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln20_fu_313_p2 == 1'd0))) begin
        indvar_flatten7_fu_96 <= select_ln21_1_fu_358_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_92 <= 7'd0;
    end else if (((icmp_ln20_reg_671 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        j_fu_92 <= select_ln21_fu_423_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_88 <= 7'd0;
    end else if (((icmp_ln20_reg_671 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        k_fu_88 <= add_ln23_fu_496_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_reg_806 <= grp_fu_248_p_dout0;
        buff_C_out_1_addr_reg_781 <= tmp_2_cast_fu_580_p1;
        buff_C_out_1_addr_reg_781_pp0_iter2_reg <= buff_C_out_1_addr_reg_781;
        buff_C_out_2_addr_reg_786 <= tmp_2_cast_fu_580_p1;
        buff_C_out_2_addr_reg_786_pp0_iter2_reg <= buff_C_out_2_addr_reg_786;
        buff_C_out_3_addr_reg_791 <= tmp_2_cast_fu_580_p1;
        buff_C_out_3_addr_reg_791_pp0_iter2_reg <= buff_C_out_3_addr_reg_791;
        buff_C_out_addr_reg_776 <= tmp_2_cast_fu_580_p1;
        buff_C_out_addr_reg_776_pp0_iter2_reg <= buff_C_out_addr_reg_776;
        first_iter_1_reg_703 <= first_iter_1_fu_434_p2;
        first_iter_1_reg_703_pp0_iter1_reg <= first_iter_1_reg_703;
        icmp_ln23_1_reg_757 <= icmp_ln23_1_fu_502_p2;
        icmp_ln23_1_reg_757_pp0_iter1_reg <= icmp_ln23_1_reg_757;
        icmp_ln23_1_reg_757_pp0_iter2_reg <= icmp_ln23_1_reg_757_pp0_iter1_reg;
        k_mid2_reg_698 <= k_mid2_fu_416_p3;
        lshr_ln5_1_reg_712 <= {{select_ln21_fu_423_p3[5:2]}};
        trunc_ln21_1_reg_707 <= trunc_ln21_1_fu_440_p1;
        trunc_ln21_1_reg_707_pp0_iter1_reg <= trunc_ln21_1_reg_707;
        trunc_ln21_1_reg_707_pp0_iter2_reg <= trunc_ln21_1_reg_707_pp0_iter1_reg;
        trunc_ln21_reg_693 <= trunc_ln21_fu_402_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        and_ln5_reg_687 <= and_ln5_fu_346_p2;
        icmp_ln20_reg_671 <= icmp_ln20_fu_313_p2;
        icmp_ln20_reg_671_pp0_iter1_reg <= icmp_ln20_reg_671;
        icmp_ln21_reg_680 <= icmp_ln21_fu_328_p2;
        k_load_reg_675 <= k_fu_88;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul2_reg_796 <= grp_fu_252_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_reg_771 <= grp_fu_252_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_5_reg_761 <= tmp_5_fu_526_p11;
        tmp_6_reg_766 <= tmp_6_fu_550_p11;
    end
end
always @ (*) begin
    if (((icmp_ln20_reg_671 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln20_reg_671_pp0_iter1_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter1_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_1_ce0_local = 1'b1;
    end else begin
        buff_A0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_2_ce0_local = 1'b1;
    end else begin
        buff_A0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_3_ce0_local = 1'b1;
    end else begin
        buff_A0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_ce0_local = 1'b1;
    end else begin
        buff_A0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A1_1_ce0_local = 1'b1;
    end else begin
        buff_A1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A1_2_ce0_local = 1'b1;
    end else begin
        buff_A1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A1_3_ce0_local = 1'b1;
    end else begin
        buff_A1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A1_ce0_local = 1'b1;
    end else begin
        buff_A1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_1_address0_local = buff_C_out_1_addr_reg_781_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_1_address0_local = tmp_2_cast_fu_580_p1;
    end else begin
        buff_C_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_1_ce0_local = 1'b1;
    end else begin
        buff_C_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln23_1_reg_757_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln21_1_reg_707_pp0_iter2_reg == 2'd1))) begin
        buff_C_out_1_we0_local = 1'b1;
    end else begin
        buff_C_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_2_address0_local = buff_C_out_2_addr_reg_786_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_2_address0_local = tmp_2_cast_fu_580_p1;
    end else begin
        buff_C_out_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_2_ce0_local = 1'b1;
    end else begin
        buff_C_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln23_1_reg_757_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln21_1_reg_707_pp0_iter2_reg == 2'd2))) begin
        buff_C_out_2_we0_local = 1'b1;
    end else begin
        buff_C_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_3_address0_local = buff_C_out_3_addr_reg_791_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_3_address0_local = tmp_2_cast_fu_580_p1;
    end else begin
        buff_C_out_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_3_ce0_local = 1'b1;
    end else begin
        buff_C_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln23_1_reg_757_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln21_1_reg_707_pp0_iter2_reg == 2'd3))) begin
        buff_C_out_3_we0_local = 1'b1;
    end else begin
        buff_C_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_address0_local = buff_C_out_addr_reg_776_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_address0_local = tmp_2_cast_fu_580_p1;
    end else begin
        buff_C_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_ce0_local = 1'b1;
    end else begin
        buff_C_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln23_1_reg_757_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln21_1_reg_707_pp0_iter2_reg == 2'd0))) begin
        buff_C_out_we0_local = 1'b1;
    end else begin
        buff_C_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_278_p0 = mul_reg_771;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_278_p0 = tmp_5_reg_761;
    end else begin
        grp_fu_278_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_278_p1 = tmp_6_reg_766;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_278_p1 = alpha;
    end else begin
        grp_fu_278_p1 = 'bx;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage3))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln20_1_fu_319_p2 = (indvar_flatten21_fu_104 + 19'd1);
assign add_ln20_fu_382_p2 = (i_fu_100 + 7'd1);
assign add_ln21_1_fu_352_p2 = (indvar_flatten7_fu_96 + 14'd1);
assign add_ln21_fu_406_p2 = (select_ln5_fu_388_p3 + 7'd1);
assign add_ln23_fu_496_p2 = (k_mid2_fu_416_p3 + 7'd1);
assign and_ln5_fu_346_p2 = (xor_ln5_fu_334_p2 & icmp_ln23_fu_340_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign buff_A0_1_address0 = zext_ln24_fu_472_p1;
assign buff_A0_1_ce0 = buff_A0_1_ce0_local;
assign buff_A0_2_address0 = zext_ln24_fu_472_p1;
assign buff_A0_2_ce0 = buff_A0_2_ce0_local;
assign buff_A0_3_address0 = zext_ln24_fu_472_p1;
assign buff_A0_3_ce0 = buff_A0_3_ce0_local;
assign buff_A0_address0 = zext_ln24_fu_472_p1;
assign buff_A0_ce0 = buff_A0_ce0_local;
assign buff_A1_1_address0 = zext_ln24_1_fu_488_p1;
assign buff_A1_1_ce0 = buff_A1_1_ce0_local;
assign buff_A1_2_address0 = zext_ln24_1_fu_488_p1;
assign buff_A1_2_ce0 = buff_A1_2_ce0_local;
assign buff_A1_3_address0 = zext_ln24_1_fu_488_p1;
assign buff_A1_3_ce0 = buff_A1_3_ce0_local;
assign buff_A1_address0 = zext_ln24_1_fu_488_p1;
assign buff_A1_ce0 = buff_A1_ce0_local;
assign buff_C_out_1_address0 = buff_C_out_1_address0_local;
assign buff_C_out_1_ce0 = buff_C_out_1_ce0_local;
assign buff_C_out_1_d0 = add_reg_806;
assign buff_C_out_1_we0 = buff_C_out_1_we0_local;
assign buff_C_out_2_address0 = buff_C_out_2_address0_local;
assign buff_C_out_2_ce0 = buff_C_out_2_ce0_local;
assign buff_C_out_2_d0 = add_reg_806;
assign buff_C_out_2_we0 = buff_C_out_2_we0_local;
assign buff_C_out_3_address0 = buff_C_out_3_address0_local;
assign buff_C_out_3_ce0 = buff_C_out_3_ce0_local;
assign buff_C_out_3_d0 = add_reg_806;
assign buff_C_out_3_we0 = buff_C_out_3_we0_local;
assign buff_C_out_address0 = buff_C_out_address0_local;
assign buff_C_out_ce0 = buff_C_out_ce0_local;
assign buff_C_out_d0 = add_reg_806;
assign buff_C_out_we0 = buff_C_out_we0_local;
assign empty_10_fu_412_p2 = (icmp_ln21_reg_680 | and_ln5_reg_687);
assign empty_11_fu_430_p1 = select_ln21_fu_423_p3[5:0];
assign first_iter_1_fu_434_p2 = ((k_mid2_fu_416_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_248_p_ce = 1'b1;
assign grp_fu_248_p_din0 = empty_fu_108;
assign grp_fu_248_p_din1 = mul2_reg_796;
assign grp_fu_248_p_opcode = 2'd0;
assign grp_fu_252_p_ce = 1'b1;
assign grp_fu_252_p_din0 = grp_fu_278_p0;
assign grp_fu_252_p_din1 = grp_fu_278_p1;
assign icmp_ln20_fu_313_p2 = ((indvar_flatten21_fu_104 == 19'd262144) ? 1'b1 : 1'b0);
assign icmp_ln21_fu_328_p2 = ((indvar_flatten7_fu_96 == 14'd4096) ? 1'b1 : 1'b0);
assign icmp_ln23_1_fu_502_p2 = ((add_ln23_fu_496_p2 == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln23_fu_340_p2 = ((k_fu_88 == 7'd64) ? 1'b1 : 1'b0);
assign k_mid2_fu_416_p3 = ((empty_10_fu_412_p2[0:0] == 1'b1) ? 7'd0 : k_load_reg_675);
assign lshr_ln5_3_fu_454_p4 = {{k_mid2_fu_416_p3[5:2]}};
assign select_ln20_fu_395_p3 = ((icmp_ln21_reg_680[0:0] == 1'b1) ? add_ln20_fu_382_p2 : i_fu_100);
assign select_ln21_1_fu_358_p3 = ((icmp_ln21_fu_328_p2[0:0] == 1'b1) ? 14'd1 : add_ln21_1_fu_352_p2);
assign select_ln21_fu_423_p3 = ((and_ln5_reg_687[0:0] == 1'b1) ? add_ln21_fu_406_p2 : select_ln5_fu_388_p3);
assign select_ln5_fu_388_p3 = ((icmp_ln21_reg_680[0:0] == 1'b1) ? 7'd0 : j_fu_92);
assign tmp_2_cast_fu_580_p1 = tmp_2_fu_574_p3;
assign tmp_2_fu_574_p3 = {{trunc_ln21_reg_693}, {lshr_ln5_1_reg_712}};
assign tmp_4_fu_464_p3 = {{trunc_ln21_fu_402_p1}, {lshr_ln5_3_fu_454_p4}};
assign tmp_5_fu_526_p9 = 'bx;
assign tmp_6_fu_550_p9 = 'bx;
assign tmp_7_fu_480_p3 = {{empty_11_fu_430_p1}, {lshr_ln5_3_fu_454_p4}};
assign tmp_fu_588_p9 = 'bx;
assign trunc_ln21_1_fu_440_p1 = select_ln21_fu_423_p3[1:0];
assign trunc_ln21_fu_402_p1 = select_ln20_fu_395_p3[5:0];
assign trunc_ln23_fu_523_p1 = k_mid2_reg_698[1:0];
assign xor_ln5_fu_334_p2 = (icmp_ln21_fu_328_p2 ^ 1'd1);
assign zext_ln24_1_fu_488_p1 = tmp_7_fu_480_p3;
assign zext_ln24_fu_472_p1 = tmp_4_fu_464_p3;
endmodule 
