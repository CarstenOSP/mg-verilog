
module forward_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,zext_ln19065,select_ln19065,v14651_address0,v14651_ce0,v14651_we0,v14651_d0,v14651_1_address0,v14651_1_ce0,v14651_1_we0,v14651_1_d0,thr_add2_cast10_cast_cast_cast,v15436_0_address0,v15436_0_ce0,v15436_0_q0,v15436_1_address0,v15436_1_ce0,v15436_1_q0,v15436_2_address0,v15436_2_ce0,v15436_2_q0,v15436_3_address0,v15436_3_ce0,v15436_3_q0,empty);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [5:0] mul_i;
input  [1:0] zext_ln19065;
input  [6:0] select_ln19065;
output  [13:0] v14651_address0;
output   v14651_ce0;
output   v14651_we0;
output  [7:0] v14651_d0;
output  [13:0] v14651_1_address0;
output   v14651_1_ce0;
output   v14651_1_we0;
output  [7:0] v14651_1_d0;
input  [3:0] thr_add2_cast10_cast_cast_cast;
output  [17:0] v15436_0_address0;
output   v15436_0_ce0;
input  [7:0] v15436_0_q0;
output  [17:0] v15436_1_address0;
output   v15436_1_ce0;
input  [7:0] v15436_1_q0;
output  [17:0] v15436_2_address0;
output   v15436_2_ce0;
input  [7:0] v15436_2_q0;
output  [17:0] v15436_3_address0;
output   v15436_3_ce0;
input  [7:0] v15436_3_q0;
input  [1:0] empty;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln19030_fu_378_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1903163_reg_306;
reg   [0:0] icmp_ln1903262_reg_317;
wire   [1:0] tmp_149_reg_864;
wire    ap_block_pp0_stage0_11001;
wire   [6:0] thr_add2_cast10_cast_cast_cast_cast_cast_fu_332_p1;
reg   [6:0] thr_add2_cast10_cast_cast_cast_cast_cast_reg_875;
wire  signed [7:0] select_ln19065_cast_fu_336_p1;
reg  signed [7:0] select_ln19065_cast_reg_880;
wire   [5:0] zext_ln19065_cast_fu_340_p1;
reg   [5:0] zext_ln19065_cast_reg_885;
reg   [0:0] icmp_ln19030_reg_890;
reg   [0:0] icmp_ln19030_reg_890_pp0_iter1_reg;
wire   [5:0] v14633_fu_429_p3;
reg   [5:0] v14633_reg_894;
wire   [4:0] v14635_mid2_fu_443_p3;
reg   [4:0] v14635_mid2_reg_900;
wire   [4:0] v14634_fu_451_p3;
reg   [4:0] v14634_reg_905;
wire   [13:0] add_ln19035_fu_520_p2;
reg   [13:0] add_ln19035_reg_910;
wire   [12:0] trunc_ln19035_fu_526_p1;
reg   [12:0] trunc_ln19035_reg_915;
reg   [3:0] lshr_ln_reg_920;
wire   [0:0] icmp_ln19032_fu_560_p2;
reg   [0:0] icmp_ln19032_reg_925;
wire   [0:0] icmp_ln19031_fu_566_p2;
reg   [0:0] icmp_ln19031_reg_930;
wire   [13:0] add_ln19037_1_fu_682_p2;
reg   [13:0] add_ln19037_1_reg_935;
reg   [0:0] ap_phi_mux_icmp_ln1903163_phi_fu_310_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1903262_phi_fu_321_p4;
wire   [63:0] zext_ln19035_fu_734_p1;
wire   [63:0] zext_ln19037_6_fu_768_p1;
wire   [63:0] zext_ln19037_4_fu_776_p1;
reg   [13:0] indvar_flatten1257_fu_146;
wire   [13:0] add_ln19030_1_fu_372_p2;
reg   [13:0] ap_sig_allocacmp_indvar_flatten1257_load;
reg   [5:0] v1463358_fu_150;
reg   [8:0] indvar_flatten59_fu_154;
wire   [8:0] select_ln19031_1_fu_552_p3;
reg   [4:0] v1463460_fu_158;
reg   [4:0] v1463561_fu_162;
wire   [4:0] v14635_fu_540_p2;
reg    v15436_0_ce0_local;
reg   [17:0] v15436_0_address0_local;
reg    v15436_1_ce0_local;
reg   [17:0] v15436_1_address0_local;
reg    v15436_2_ce0_local;
reg   [17:0] v15436_2_address0_local;
reg    v15436_3_ce0_local;
reg   [17:0] v15436_3_address0_local;
reg    v14651_1_we0_local;
wire   [7:0] tmp_i_fu_781_p11;
reg    v14651_1_ce0_local;
reg    v14651_we0_local;
wire   [7:0] tmp_i_234_fu_805_p11;
reg    v14651_ce0_local;
wire  signed [5:0] thr_add2_cast10_cast_cast_cast_cast_fu_328_p1;
wire   [5:0] add_ln19030_fu_401_p2;
wire   [4:0] select_ln19030_fu_407_p3;
wire   [0:0] or_ln19030_fu_423_p2;
wire   [4:0] select_ln19030_1_fu_415_p3;
wire   [4:0] add_ln19031_fu_437_p2;
wire   [5:0] empty_232_fu_459_p2;
wire   [9:0] tmp_151_fu_472_p3;
wire   [12:0] p_shl26_fu_464_p3;
wire   [12:0] zext_ln19035_1_fu_480_p1;
wire   [12:0] sub_ln19035_fu_484_p2;
wire   [5:0] tmp_s_fu_494_p3;
wire   [5:0] tmp_fu_502_p2;
wire   [7:0] tmp_cast_fu_507_p1;
wire   [7:0] empty_233_fu_511_p2;
wire   [13:0] zext_ln19031_fu_490_p1;
wire  signed [13:0] sext_ln19035_fu_516_p1;
wire   [8:0] add_ln19031_1_fu_546_p2;
wire   [7:0] tmp_150_fu_599_p3;
wire   [10:0] p_shl28_fu_592_p3;
wire   [10:0] zext_ln19037_fu_606_p1;
wire   [10:0] sub_ln19037_fu_610_p2;
wire   [10:0] zext_ln19037_1_fu_616_p1;
wire   [10:0] add_ln19037_fu_619_p2;
wire   [9:0] trunc_ln19037_fu_625_p1;
wire   [11:0] tmp_152_fu_629_p3;
wire   [13:0] tmp_153_fu_637_p3;
wire   [13:0] zext_ln19037_2_fu_645_p1;
wire   [15:0] tmp_154_fu_662_p3;
wire   [17:0] p_shl30_fu_655_p3;
wire  signed [17:0] sext_ln19033_fu_669_p1;
wire   [13:0] sub_ln19037_1_fu_649_p2;
wire   [13:0] zext_ln19037_3_fu_679_p1;
wire   [5:0] shl_ln_fu_688_p3;
wire   [6:0] zext_ln19034_fu_695_p1;
wire   [6:0] add_ln19034_fu_699_p2;
wire   [7:0] zext_ln19034_1_fu_704_p1;
wire   [7:0] add_ln19034_1_fu_708_p2;
wire   [5:0] trunc_ln_fu_714_p4;
wire   [17:0] sub_ln19033_fu_673_p2;
wire  signed [17:0] sext_ln19035_1_fu_724_p1;
wire   [17:0] add_ln19035_1_fu_728_p2;
wire   [6:0] add_ln19036_fu_742_p2;
wire   [4:0] lshr_ln26_fu_748_p4;
wire   [17:0] zext_ln19037_5_fu_758_p1;
wire   [17:0] add_ln19037_2_fu_762_p2;
wire   [7:0] tmp_i_fu_781_p9;
wire   [7:0] tmp_i_234_fu_805_p9;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] tmp_i_fu_781_p1;
wire  signed [1:0] tmp_i_fu_781_p3;
wire  signed [1:0] tmp_i_fu_781_p5;
wire   [1:0] tmp_i_fu_781_p7;
wire  signed [1:0] tmp_i_234_fu_805_p1;
wire   [1:0] tmp_i_234_fu_805_p3;
wire   [1:0] tmp_i_234_fu_805_p5;
wire  signed [1:0] tmp_i_234_fu_805_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 indvar_flatten1257_fu_146 = 14'd0;
#0 v1463358_fu_150 = 6'd0;
#0 indvar_flatten59_fu_154 = 9'd0;
#0 v1463460_fu_158 = 5'd0;
#0 v1463561_fu_162 = 5'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U1195(.din0(v15436_0_q0),.din1(v15436_1_q0),.din2(v15436_2_q0),.din3(v15436_3_q0),.def(tmp_i_fu_781_p9),.sel(empty),.dout(tmp_i_fu_781_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 8 ),.CASE1( 2'h0 ),.din1_WIDTH( 8 ),.CASE2( 2'h1 ),.din2_WIDTH( 8 ),.CASE3( 2'h2 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U1196(.din0(v15436_0_q0),.din1(v15436_1_q0),.din2(v15436_2_q0),.din3(v15436_3_q0),.def(tmp_i_234_fu_805_p9),.sel(empty),.dout(tmp_i_234_fu_805_p11));
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln19030_reg_890_pp0_iter1_reg == 1'd0))) begin
        icmp_ln1903163_reg_306 <= icmp_ln19031_reg_930;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1903163_reg_306 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln19030_reg_890_pp0_iter1_reg == 1'd0))) begin
        icmp_ln1903262_reg_317 <= icmp_ln19032_reg_925;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1903262_reg_317 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten1257_fu_146 <= add_ln19030_1_fu_372_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1257_fu_146 <= 14'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten59_fu_154 <= 9'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten59_fu_154 <= select_ln19031_1_fu_552_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1463358_fu_150 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1463358_fu_150 <= v14633_fu_429_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1463460_fu_158 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1463460_fu_158 <= v14634_fu_451_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1463561_fu_162 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1463561_fu_162 <= v14635_fu_540_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln19035_reg_910 <= add_ln19035_fu_520_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln19030_reg_890 <= icmp_ln19030_fu_378_p2;
        icmp_ln19030_reg_890_pp0_iter1_reg <= icmp_ln19030_reg_890;
        lshr_ln_reg_920 <= {{v14635_mid2_fu_443_p3[4:1]}};
        select_ln19065_cast_reg_880 <= select_ln19065_cast_fu_336_p1;
        thr_add2_cast10_cast_cast_cast_cast_cast_reg_875[5 : 0] <= thr_add2_cast10_cast_cast_cast_cast_cast_fu_332_p1[5 : 0];
        trunc_ln19035_reg_915 <= trunc_ln19035_fu_526_p1;
        v14633_reg_894 <= v14633_fu_429_p3;
        v14634_reg_905 <= v14634_fu_451_p3;
        v14635_mid2_reg_900 <= v14635_mid2_fu_443_p3;
        zext_ln19065_cast_reg_885[1 : 0] <= zext_ln19065_cast_fu_340_p1[1 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln19037_1_reg_935 <= add_ln19037_1_fu_682_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln19031_reg_930 <= icmp_ln19031_fu_566_p2;
        icmp_ln19032_reg_925 <= icmp_ln19032_fu_560_p2;
    end
end
always @ (*) begin
    if (((icmp_ln19030_fu_378_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln19030_reg_890_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln1903163_phi_fu_310_p4 = icmp_ln19031_reg_930;
    end else begin
        ap_phi_mux_icmp_ln1903163_phi_fu_310_p4 = icmp_ln1903163_reg_306;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln19030_reg_890_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln1903262_phi_fu_321_p4 = icmp_ln19032_reg_925;
    end else begin
        ap_phi_mux_icmp_ln1903262_phi_fu_321_p4 = icmp_ln1903262_reg_317;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten1257_load = 14'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1257_load = indvar_flatten1257_fu_146;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14651_1_ce0_local = 1'b1;
    end else begin
        v14651_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14651_1_we0_local = 1'b1;
    end else begin
        v14651_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14651_ce0_local = 1'b1;
    end else begin
        v14651_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14651_we0_local = 1'b1;
    end else begin
        v14651_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((tmp_149_reg_864 == 2'd3)) begin
            v15436_0_address0_local = zext_ln19037_6_fu_768_p1;
        end else if ((tmp_149_reg_864 == 2'd1)) begin
            v15436_0_address0_local = zext_ln19035_fu_734_p1;
        end else begin
            v15436_0_address0_local = 'bx;
        end
    end else begin
        v15436_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_149_reg_864 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((tmp_149_reg_864 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        v15436_0_ce0_local = 1'b1;
    end else begin
        v15436_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((tmp_149_reg_864 == 2'd0)) begin
            v15436_1_address0_local = zext_ln19037_6_fu_768_p1;
        end else if ((tmp_149_reg_864 == 2'd2)) begin
            v15436_1_address0_local = zext_ln19035_fu_734_p1;
        end else begin
            v15436_1_address0_local = 'bx;
        end
    end else begin
        v15436_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_149_reg_864 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((tmp_149_reg_864 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        v15436_1_ce0_local = 1'b1;
    end else begin
        v15436_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((tmp_149_reg_864 == 2'd1)) begin
            v15436_2_address0_local = zext_ln19037_6_fu_768_p1;
        end else if ((tmp_149_reg_864 == 2'd3)) begin
            v15436_2_address0_local = zext_ln19035_fu_734_p1;
        end else begin
            v15436_2_address0_local = 'bx;
        end
    end else begin
        v15436_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_149_reg_864 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((tmp_149_reg_864 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        v15436_2_ce0_local = 1'b1;
    end else begin
        v15436_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((tmp_149_reg_864 == 2'd2)) begin
            v15436_3_address0_local = zext_ln19037_6_fu_768_p1;
        end else if ((tmp_149_reg_864 == 2'd0)) begin
            v15436_3_address0_local = zext_ln19035_fu_734_p1;
        end else begin
            v15436_3_address0_local = 'bx;
        end
    end else begin
        v15436_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_149_reg_864 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((tmp_149_reg_864 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        v15436_3_ce0_local = 1'b1;
    end else begin
        v15436_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln19030_1_fu_372_p2 = (ap_sig_allocacmp_indvar_flatten1257_load + 14'd1);
assign add_ln19030_fu_401_p2 = (v1463358_fu_150 + 6'd1);
assign add_ln19031_1_fu_546_p2 = (indvar_flatten59_fu_154 + 9'd1);
assign add_ln19031_fu_437_p2 = (select_ln19030_fu_407_p3 + 5'd1);
assign add_ln19034_1_fu_708_p2 = ($signed(zext_ln19034_1_fu_704_p1) + $signed(8'd255));
assign add_ln19034_fu_699_p2 = (zext_ln19034_fu_695_p1 + thr_add2_cast10_cast_cast_cast_cast_cast_reg_875);
assign add_ln19035_1_fu_728_p2 = ($signed(sub_ln19033_fu_673_p2) + $signed(sext_ln19035_1_fu_724_p1));
assign add_ln19035_fu_520_p2 = ($signed(zext_ln19031_fu_490_p1) + $signed(sext_ln19035_fu_516_p1));
assign add_ln19036_fu_742_p2 = (add_ln19034_fu_699_p2 + 7'd1);
assign add_ln19037_1_fu_682_p2 = (sub_ln19037_1_fu_649_p2 + zext_ln19037_3_fu_679_p1);
assign add_ln19037_2_fu_762_p2 = (sub_ln19033_fu_673_p2 + zext_ln19037_5_fu_758_p1);
assign add_ln19037_fu_619_p2 = (sub_ln19037_fu_610_p2 + zext_ln19037_1_fu_616_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_232_fu_459_p2 = (v14633_fu_429_p3 + mul_i);
assign empty_233_fu_511_p2 = ($signed(tmp_cast_fu_507_p1) + $signed(select_ln19065_cast_reg_880));
assign icmp_ln19030_fu_378_p2 = ((ap_sig_allocacmp_indvar_flatten1257_load == 14'd12543) ? 1'b1 : 1'b0);
assign icmp_ln19031_fu_566_p2 = ((select_ln19031_1_fu_552_p3 == 9'd392) ? 1'b1 : 1'b0);
assign icmp_ln19032_fu_560_p2 = ((v14635_fu_540_p2 < 5'd28) ? 1'b1 : 1'b0);
assign lshr_ln26_fu_748_p4 = {{add_ln19036_fu_742_p2[6:2]}};
assign or_ln19030_fu_423_p2 = (ap_phi_mux_icmp_ln1903262_phi_fu_321_p4 | ap_phi_mux_icmp_ln1903163_phi_fu_310_p4);
assign p_shl26_fu_464_p3 = {{empty_232_fu_459_p2}, {7'd0}};
assign p_shl28_fu_592_p3 = {{v14633_reg_894}, {5'd0}};
assign p_shl30_fu_655_p3 = {{trunc_ln19035_reg_915}, {5'd0}};
assign select_ln19030_1_fu_415_p3 = ((ap_phi_mux_icmp_ln1903163_phi_fu_310_p4[0:0] == 1'b1) ? 5'd0 : v1463561_fu_162);
assign select_ln19030_fu_407_p3 = ((ap_phi_mux_icmp_ln1903163_phi_fu_310_p4[0:0] == 1'b1) ? 5'd0 : v1463460_fu_158);
assign select_ln19031_1_fu_552_p3 = ((ap_phi_mux_icmp_ln1903163_phi_fu_310_p4[0:0] == 1'b1) ? 9'd1 : add_ln19031_1_fu_546_p2);
assign select_ln19065_cast_fu_336_p1 = $signed(select_ln19065);
assign sext_ln19033_fu_669_p1 = $signed(tmp_154_fu_662_p3);
assign sext_ln19035_1_fu_724_p1 = $signed(trunc_ln_fu_714_p4);
assign sext_ln19035_fu_516_p1 = $signed(empty_233_fu_511_p2);
assign shl_ln_fu_688_p3 = {{v14635_mid2_reg_900}, {1'd0}};
assign sub_ln19033_fu_673_p2 = ($signed(p_shl30_fu_655_p3) - $signed(sext_ln19033_fu_669_p1));
assign sub_ln19035_fu_484_p2 = (p_shl26_fu_464_p3 - zext_ln19035_1_fu_480_p1);
assign sub_ln19037_1_fu_649_p2 = (tmp_153_fu_637_p3 - zext_ln19037_2_fu_645_p1);
assign sub_ln19037_fu_610_p2 = (p_shl28_fu_592_p3 - zext_ln19037_fu_606_p1);
assign thr_add2_cast10_cast_cast_cast_cast_cast_fu_332_p1 = $unsigned(thr_add2_cast10_cast_cast_cast_cast_fu_328_p1);
assign thr_add2_cast10_cast_cast_cast_cast_fu_328_p1 = $signed(thr_add2_cast10_cast_cast_cast);
assign tmp_149_reg_864 = empty;
assign tmp_150_fu_599_p3 = {{v14633_reg_894}, {2'd0}};
assign tmp_151_fu_472_p3 = {{empty_232_fu_459_p2}, {4'd0}};
assign tmp_152_fu_629_p3 = {{add_ln19037_fu_619_p2}, {1'd0}};
assign tmp_153_fu_637_p3 = {{trunc_ln19037_fu_625_p1}, {4'd0}};
assign tmp_154_fu_662_p3 = {{add_ln19035_reg_910}, {2'd0}};
assign tmp_cast_fu_507_p1 = tmp_fu_502_p2;
assign tmp_fu_502_p2 = (tmp_s_fu_494_p3 + zext_ln19065_cast_reg_885);
assign tmp_i_234_fu_805_p9 = 'bx;
assign tmp_i_fu_781_p9 = 'bx;
assign tmp_s_fu_494_p3 = {{v14634_fu_451_p3}, {1'd0}};
assign trunc_ln19035_fu_526_p1 = add_ln19035_fu_520_p2[12:0];
assign trunc_ln19037_fu_625_p1 = add_ln19037_fu_619_p2[9:0];
assign trunc_ln_fu_714_p4 = {{add_ln19034_1_fu_708_p2[7:2]}};
assign v14633_fu_429_p3 = ((ap_phi_mux_icmp_ln1903163_phi_fu_310_p4[0:0] == 1'b1) ? add_ln19030_fu_401_p2 : v1463358_fu_150);
assign v14634_fu_451_p3 = ((or_ln19030_fu_423_p2[0:0] == 1'b1) ? select_ln19030_fu_407_p3 : add_ln19031_fu_437_p2);
assign v14635_fu_540_p2 = (v14635_mid2_fu_443_p3 + 5'd2);
assign v14635_mid2_fu_443_p3 = ((or_ln19030_fu_423_p2[0:0] == 1'b1) ? select_ln19030_1_fu_415_p3 : 5'd0);
assign v14651_1_address0 = zext_ln19037_4_fu_776_p1;
assign v14651_1_ce0 = v14651_1_ce0_local;
assign v14651_1_d0 = tmp_i_fu_781_p11;
assign v14651_1_we0 = v14651_1_we0_local;
assign v14651_address0 = zext_ln19037_4_fu_776_p1;
assign v14651_ce0 = v14651_ce0_local;
assign v14651_d0 = tmp_i_234_fu_805_p11;
assign v14651_we0 = v14651_we0_local;
assign v15436_0_address0 = v15436_0_address0_local;
assign v15436_0_ce0 = v15436_0_ce0_local;
assign v15436_1_address0 = v15436_1_address0_local;
assign v15436_1_ce0 = v15436_1_ce0_local;
assign v15436_2_address0 = v15436_2_address0_local;
assign v15436_2_ce0 = v15436_2_ce0_local;
assign v15436_3_address0 = v15436_3_address0_local;
assign v15436_3_ce0 = v15436_3_ce0_local;
assign zext_ln19031_fu_490_p1 = sub_ln19035_fu_484_p2;
assign zext_ln19034_1_fu_704_p1 = add_ln19034_fu_699_p2;
assign zext_ln19034_fu_695_p1 = shl_ln_fu_688_p3;
assign zext_ln19035_1_fu_480_p1 = tmp_151_fu_472_p3;
assign zext_ln19035_fu_734_p1 = add_ln19035_1_fu_728_p2;
assign zext_ln19037_1_fu_616_p1 = v14634_reg_905;
assign zext_ln19037_2_fu_645_p1 = tmp_152_fu_629_p3;
assign zext_ln19037_3_fu_679_p1 = lshr_ln_reg_920;
assign zext_ln19037_4_fu_776_p1 = add_ln19037_1_reg_935;
assign zext_ln19037_5_fu_758_p1 = lshr_ln26_fu_748_p4;
assign zext_ln19037_6_fu_768_p1 = add_ln19037_2_fu_762_p2;
assign zext_ln19037_fu_606_p1 = tmp_150_fu_599_p3;
assign zext_ln19065_cast_fu_340_p1 = zext_ln19065;
always @ (posedge ap_clk) begin
    thr_add2_cast10_cast_cast_cast_cast_cast_reg_875[6] <= 1'b0;
    zext_ln19065_cast_reg_885[5:2] <= 4'b0000;
end
endmodule 
