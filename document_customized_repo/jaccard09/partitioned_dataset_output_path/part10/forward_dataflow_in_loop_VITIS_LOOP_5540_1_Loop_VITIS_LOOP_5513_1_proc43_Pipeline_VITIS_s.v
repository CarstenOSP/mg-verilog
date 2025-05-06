
module forward_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,udiv_ln,select_ln5545,v4027_address0,v4027_ce0,v4027_we0,v4027_d0,v4027_1_address0,v4027_1_ce0,v4027_1_we0,v4027_1_d0,thr_add2_cast8_cast_cast_cast,v9020_0_address0,v9020_0_ce0,v9020_0_q0,v9020_1_address0,v9020_1_ce0,v9020_1_q0,v9020_2_address0,v9020_2_ce0,v9020_2_q0,v9020_3_address0,v9020_3_ce0,v9020_3_q0,empty);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] mul_i;
input  [1:0] udiv_ln;
input  [2:0] select_ln5545;
output  [9:0] v4027_address0;
output   v4027_ce0;
output   v4027_we0;
output  [7:0] v4027_d0;
output  [9:0] v4027_1_address0;
output   v4027_1_ce0;
output   v4027_1_we0;
output  [7:0] v4027_1_d0;
input  [2:0] thr_add2_cast8_cast_cast_cast;
output  [15:0] v9020_0_address0;
output   v9020_0_ce0;
input  [7:0] v9020_0_q0;
output  [15:0] v9020_1_address0;
output   v9020_1_ce0;
input  [7:0] v9020_1_q0;
output  [15:0] v9020_2_address0;
output   v9020_2_ce0;
input  [7:0] v9020_2_q0;
output  [15:0] v9020_3_address0;
output   v9020_3_ce0;
input  [7:0] v9020_3_q0;
input  [1:0] empty;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln5513_fu_406_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln551463_reg_286;
reg   [0:0] icmp_ln551463_reg_286_pp0_iter1_reg;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln551562_reg_297;
wire   [1:0] tmp_79_reg_795;
wire   [4:0] thr_add2_cast8_cast_cast_cast_cast_cast_fu_312_p1;
reg   [4:0] thr_add2_cast8_cast_cast_cast_cast_cast_reg_801;
wire   [4:0] select_ln5545_cast_cast_fu_320_p1;
reg   [4:0] select_ln5545_cast_cast_reg_806;
wire   [3:0] udiv_ln_cast_fu_324_p1;
reg   [3:0] udiv_ln_cast_reg_811;
wire   [5:0] v4010_fu_368_p3;
reg   [5:0] v4010_reg_816;
reg   [5:0] v4010_reg_816_pp0_iter1_reg;
reg   [5:0] v4010_reg_816_pp0_iter2_reg;
wire   [0:0] icmp_ln5514_fu_400_p2;
reg   [0:0] icmp_ln5514_reg_822;
reg   [0:0] icmp_ln5513_reg_827;
reg   [0:0] icmp_ln5513_reg_827_pp0_iter1_reg;
reg   [0:0] icmp_ln5513_reg_827_pp0_iter2_reg;
wire   [2:0] v4012_mid2_fu_465_p3;
reg   [2:0] v4012_mid2_reg_831;
reg   [2:0] v4012_mid2_reg_831_pp0_iter3_reg;
wire   [2:0] v4011_fu_473_p3;
reg   [2:0] v4011_reg_836;
reg   [1:0] lshr_ln_reg_846;
wire   [0:0] icmp_ln5515_fu_523_p2;
reg   [0:0] icmp_ln5515_reg_851;
wire   [12:0] grp_fu_750_p4;
reg   [12:0] add_ln5518_reg_856;
wire   [9:0] add_ln5520_1_fu_597_p2;
reg   [9:0] add_ln5520_1_reg_862;
reg   [9:0] add_ln5520_1_reg_862_pp0_iter4_reg;
reg   [0:0] ap_phi_mux_icmp_ln551463_phi_fu_289_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln551562_phi_fu_300_p4;
wire   [63:0] zext_ln5518_4_fu_655_p1;
wire   [63:0] zext_ln5520_6_fu_689_p1;
wire   [63:0] zext_ln5520_4_fu_697_p1;
reg   [9:0] indvar_flatten1257_fu_126;
wire   [9:0] add_ln5513_1_fu_394_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten1257_load;
reg   [5:0] v401058_fu_130;
reg   [5:0] ap_sig_allocacmp_v401058_load;
reg   [4:0] indvar_flatten59_fu_134;
wire   [4:0] select_ln5514_1_fu_386_p3;
reg   [4:0] ap_sig_allocacmp_indvar_flatten59_load;
reg   [2:0] v401160_fu_138;
reg   [2:0] v401261_fu_142;
wire   [2:0] v4012_fu_517_p2;
reg    v9020_0_ce0_local;
reg   [15:0] v9020_0_address0_local;
reg    v9020_1_ce0_local;
reg   [15:0] v9020_1_address0_local;
reg    v9020_2_ce0_local;
reg   [15:0] v9020_2_address0_local;
reg    v9020_3_ce0_local;
reg   [15:0] v9020_3_address0_local;
reg    v4027_1_we0_local;
wire   [7:0] tmp_i_fu_702_p11;
reg    v4027_1_ce0_local;
reg    v4027_we0_local;
wire   [7:0] tmp_1_i_fu_726_p11;
reg    v4027_ce0_local;
wire  signed [3:0] thr_add2_cast8_cast_cast_cast_cast_fu_308_p1;
wire  signed [3:0] select_ln5545_cast_fu_316_p1;
wire   [5:0] add_ln5513_fu_362_p2;
wire   [4:0] add_ln5514_1_fu_380_p2;
wire   [0:0] xor_ln5513_fu_441_p2;
wire   [2:0] select_ln5513_fu_433_p3;
wire   [0:0] and_ln5513_fu_447_p2;
wire   [0:0] empty_126_fu_459_p2;
wire   [2:0] add_ln5514_fu_453_p2;
wire   [3:0] tmp_s_fu_481_p3;
wire   [3:0] tmp_fu_489_p2;
wire   [4:0] tmp_cast_fu_494_p1;
wire   [4:0] empty_128_fu_498_p2;
wire   [6:0] tmp_80_fu_546_p3;
wire   [8:0] p_shl24_fu_539_p3;
wire   [8:0] zext_ln5520_fu_553_p1;
wire   [8:0] sub_ln5520_fu_557_p2;
wire   [8:0] zext_ln5520_1_fu_563_p1;
wire   [8:0] add_ln5520_fu_566_p2;
wire   [7:0] trunc_ln5520_fu_572_p1;
wire   [9:0] tmp_81_fu_576_p3;
wire   [9:0] zext_ln5520_2_fu_584_p1;
wire   [9:0] sub_ln5520_1_fu_588_p2;
wire   [9:0] zext_ln5520_3_fu_594_p1;
wire   [15:0] p_shl_fu_606_p3;
wire   [15:0] zext_ln5518_2_fu_603_p1;
wire   [3:0] shl_ln_fu_619_p3;
wire   [4:0] zext_ln5517_fu_626_p1;
wire   [4:0] add_ln5517_fu_630_p2;
wire   [2:0] lshr_ln1_fu_635_p4;
wire   [15:0] sub_ln5518_fu_613_p2;
wire   [15:0] zext_ln5518_3_fu_645_p1;
wire   [15:0] add_ln5518_1_fu_649_p2;
wire   [4:0] add_ln5519_fu_663_p2;
wire   [2:0] lshr_ln2_fu_669_p4;
wire   [15:0] zext_ln5520_5_fu_679_p1;
wire   [15:0] add_ln5520_2_fu_683_p2;
wire   [7:0] tmp_i_fu_702_p9;
wire   [7:0] tmp_1_i_fu_726_p9;
wire   [5:0] grp_fu_750_p1;
wire   [4:0] grp_fu_750_p2;
wire   [4:0] grp_fu_750_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] grp_fu_750_p10;
wire   [12:0] grp_fu_750_p30;
reg    ap_condition_579;
reg    ap_condition_584;
wire   [1:0] tmp_i_fu_702_p1;
wire   [1:0] tmp_i_fu_702_p3;
wire  signed [1:0] tmp_i_fu_702_p5;
wire  signed [1:0] tmp_i_fu_702_p7;
wire  signed [1:0] tmp_1_i_fu_726_p1;
wire  signed [1:0] tmp_1_i_fu_726_p3;
wire   [1:0] tmp_1_i_fu_726_p5;
wire   [1:0] tmp_1_i_fu_726_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 indvar_flatten1257_fu_126 = 10'd0;
#0 v401058_fu_130 = 6'd0;
#0 indvar_flatten59_fu_134 = 5'd0;
#0 v401160_fu_138 = 3'd0;
#0 v401261_fu_142 = 3'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_x_U6031(.din0(v9020_0_q0),.din1(v9020_1_q0),.din2(v9020_2_q0),.din3(v9020_3_q0),.def(tmp_i_fu_702_p9),.sel(empty),.dout(tmp_i_fu_702_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 8 ),.CASE1( 2'h3 ),.din1_WIDTH( 8 ),.CASE2( 2'h0 ),.din2_WIDTH( 8 ),.CASE3( 2'h1 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_x_U6032(.din0(v9020_0_q0),.din1(v9020_1_q0),.din2(v9020_2_q0),.din3(v9020_3_q0),.def(tmp_1_i_fu_726_p9),.sel(empty),.dout(tmp_1_i_fu_726_p11));
forward_ama_addmuladd_8ns_6ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 5 ),.din3_WIDTH( 5 ),.dout_WIDTH( 13 ))
ama_addmuladd_8ns_6ns_5ns_5ns_13_4_1_U6033(.clk(ap_clk),.reset(ap_rst),.din0(mul_i),.din1(grp_fu_750_p1),.din2(grp_fu_750_p2),.din3(grp_fu_750_p3),.ce(1'b1),.dout(grp_fu_750_p4));
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
        end else if (((ap_loop_exit_ready_pp0_iter5_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_584)) begin
            icmp_ln551463_reg_286 <= icmp_ln5514_reg_822;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln551463_reg_286 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln5513_reg_827_pp0_iter2_reg == 1'd0))) begin
        icmp_ln551562_reg_297 <= icmp_ln5515_reg_851;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln551562_reg_297 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten1257_fu_126 <= add_ln5513_1_fu_394_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1257_fu_126 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten59_fu_134 <= select_ln5514_1_fu_386_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten59_fu_134 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v401058_fu_130 <= v4010_fu_368_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v401058_fu_130 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v401160_fu_138 <= 3'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            v401160_fu_138 <= v4011_fu_473_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v401261_fu_142 <= 3'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            v401261_fu_142 <= v4012_fu_517_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        add_ln5518_reg_856 <= grp_fu_750_p4;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln5520_1_reg_862 <= add_ln5520_1_fu_597_p2;
        add_ln5520_1_reg_862_pp0_iter4_reg <= add_ln5520_1_reg_862;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        icmp_ln5513_reg_827_pp0_iter2_reg <= icmp_ln5513_reg_827_pp0_iter1_reg;
        lshr_ln_reg_846 <= {{v4012_mid2_fu_465_p3[2:1]}};
        v4010_reg_816_pp0_iter2_reg <= v4010_reg_816_pp0_iter1_reg;
        v4011_reg_836 <= v4011_fu_473_p3;
        v4012_mid2_reg_831 <= v4012_mid2_fu_465_p3;
        v4012_mid2_reg_831_pp0_iter3_reg <= v4012_mid2_reg_831;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln5513_reg_827 <= icmp_ln5513_fu_406_p2;
        icmp_ln5513_reg_827_pp0_iter1_reg <= icmp_ln5513_reg_827;
        icmp_ln551463_reg_286_pp0_iter1_reg <= icmp_ln551463_reg_286;
        select_ln5545_cast_cast_reg_806[3 : 0] <= select_ln5545_cast_cast_fu_320_p1[3 : 0];
        thr_add2_cast8_cast_cast_cast_cast_cast_reg_801[3 : 0] <= thr_add2_cast8_cast_cast_cast_cast_cast_fu_312_p1[3 : 0];
        udiv_ln_cast_reg_811[1 : 0] <= udiv_ln_cast_fu_324_p1[1 : 0];
        v4010_reg_816 <= v4010_fu_368_p3;
        v4010_reg_816_pp0_iter1_reg <= v4010_reg_816;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln5514_reg_822 <= icmp_ln5514_fu_400_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        icmp_ln5515_reg_851 <= icmp_ln5515_fu_523_p2;
    end
end
always @ (*) begin
    if (((icmp_ln5513_fu_406_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter5_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_579)) begin
            ap_phi_mux_icmp_ln551463_phi_fu_289_p4 = icmp_ln5514_reg_822;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln551463_phi_fu_289_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln551463_phi_fu_289_p4 = icmp_ln5514_reg_822;
        end
    end else begin
        ap_phi_mux_icmp_ln551463_phi_fu_289_p4 = icmp_ln5514_reg_822;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln5513_reg_827_pp0_iter2_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln551562_phi_fu_300_p4 = icmp_ln5515_reg_851;
    end else begin
        ap_phi_mux_icmp_ln551562_phi_fu_300_p4 = icmp_ln551562_reg_297;
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
        ap_sig_allocacmp_indvar_flatten1257_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1257_load = indvar_flatten1257_fu_126;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten59_load = 5'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten59_load = indvar_flatten59_fu_134;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v401058_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v401058_load = v401058_fu_130;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4027_1_ce0_local = 1'b1;
    end else begin
        v4027_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4027_1_we0_local = 1'b1;
    end else begin
        v4027_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4027_ce0_local = 1'b1;
    end else begin
        v4027_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4027_we0_local = 1'b1;
    end else begin
        v4027_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        if ((tmp_79_reg_795 == 2'd2)) begin
            v9020_0_address0_local = zext_ln5520_6_fu_689_p1;
        end else if ((tmp_79_reg_795 == 2'd0)) begin
            v9020_0_address0_local = zext_ln5518_4_fu_655_p1;
        end else begin
            v9020_0_address0_local = 'bx;
        end
    end else begin
        v9020_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (tmp_79_reg_795 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (tmp_79_reg_795 == 2'd0)))) begin
        v9020_0_ce0_local = 1'b1;
    end else begin
        v9020_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        if ((tmp_79_reg_795 == 2'd3)) begin
            v9020_1_address0_local = zext_ln5520_6_fu_689_p1;
        end else if ((tmp_79_reg_795 == 2'd1)) begin
            v9020_1_address0_local = zext_ln5518_4_fu_655_p1;
        end else begin
            v9020_1_address0_local = 'bx;
        end
    end else begin
        v9020_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (tmp_79_reg_795 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (tmp_79_reg_795 == 2'd1)))) begin
        v9020_1_ce0_local = 1'b1;
    end else begin
        v9020_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        if ((tmp_79_reg_795 == 2'd0)) begin
            v9020_2_address0_local = zext_ln5520_6_fu_689_p1;
        end else if ((tmp_79_reg_795 == 2'd2)) begin
            v9020_2_address0_local = zext_ln5518_4_fu_655_p1;
        end else begin
            v9020_2_address0_local = 'bx;
        end
    end else begin
        v9020_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (tmp_79_reg_795 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (tmp_79_reg_795 == 2'd0)))) begin
        v9020_2_ce0_local = 1'b1;
    end else begin
        v9020_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        if ((tmp_79_reg_795 == 2'd1)) begin
            v9020_3_address0_local = zext_ln5520_6_fu_689_p1;
        end else if ((tmp_79_reg_795 == 2'd3)) begin
            v9020_3_address0_local = zext_ln5518_4_fu_655_p1;
        end else begin
            v9020_3_address0_local = 'bx;
        end
    end else begin
        v9020_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (tmp_79_reg_795 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (tmp_79_reg_795 == 2'd1)))) begin
        v9020_3_ce0_local = 1'b1;
    end else begin
        v9020_3_ce0_local = 1'b0;
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
assign add_ln5513_1_fu_394_p2 = (ap_sig_allocacmp_indvar_flatten1257_load + 10'd1);
assign add_ln5513_fu_362_p2 = (ap_sig_allocacmp_v401058_load + 6'd1);
assign add_ln5514_1_fu_380_p2 = (ap_sig_allocacmp_indvar_flatten59_load + 5'd1);
assign add_ln5514_fu_453_p2 = (select_ln5513_fu_433_p3 + 3'd1);
assign add_ln5517_fu_630_p2 = (zext_ln5517_fu_626_p1 + thr_add2_cast8_cast_cast_cast_cast_cast_reg_801);
assign add_ln5518_1_fu_649_p2 = (sub_ln5518_fu_613_p2 + zext_ln5518_3_fu_645_p1);
assign add_ln5519_fu_663_p2 = (add_ln5517_fu_630_p2 + 5'd2);
assign add_ln5520_1_fu_597_p2 = (sub_ln5520_1_fu_588_p2 + zext_ln5520_3_fu_594_p1);
assign add_ln5520_2_fu_683_p2 = (sub_ln5518_fu_613_p2 + zext_ln5520_5_fu_679_p1);
assign add_ln5520_fu_566_p2 = (sub_ln5520_fu_557_p2 + zext_ln5520_1_fu_563_p1);
assign and_ln5513_fu_447_p2 = (xor_ln5513_fu_441_p2 & ap_phi_mux_icmp_ln551562_phi_fu_300_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_579 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln5513_reg_827 == 1'd0));
end
always @ (*) begin
    ap_condition_584 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln5513_reg_827 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_126_fu_459_p2 = (icmp_ln551463_reg_286_pp0_iter1_reg | and_ln5513_fu_447_p2);
assign empty_128_fu_498_p2 = (tmp_cast_fu_494_p1 + select_ln5545_cast_cast_reg_806);
assign grp_fu_750_p1 = grp_fu_750_p10;
assign grp_fu_750_p10 = v4010_fu_368_p3;
assign grp_fu_750_p2 = 13'd26;
assign grp_fu_750_p3 = grp_fu_750_p30;
assign grp_fu_750_p30 = empty_128_fu_498_p2;
assign icmp_ln5513_fu_406_p2 = ((ap_sig_allocacmp_indvar_flatten1257_load == 10'd575) ? 1'b1 : 1'b0);
assign icmp_ln5514_fu_400_p2 = ((select_ln5514_1_fu_386_p3 == 5'd18) ? 1'b1 : 1'b0);
assign icmp_ln5515_fu_523_p2 = ((v4012_fu_517_p2 == 3'd6) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_635_p4 = {{add_ln5517_fu_630_p2[4:2]}};
assign lshr_ln2_fu_669_p4 = {{add_ln5519_fu_663_p2[4:2]}};
assign p_shl24_fu_539_p3 = {{v4010_reg_816_pp0_iter2_reg}, {3'd0}};
assign p_shl_fu_606_p3 = {{add_ln5518_reg_856}, {3'd0}};
assign select_ln5513_fu_433_p3 = ((icmp_ln551463_reg_286_pp0_iter1_reg[0:0] == 1'b1) ? 3'd0 : v401160_fu_138);
assign select_ln5514_1_fu_386_p3 = ((ap_phi_mux_icmp_ln551463_phi_fu_289_p4[0:0] == 1'b1) ? 5'd1 : add_ln5514_1_fu_380_p2);
assign select_ln5545_cast_cast_fu_320_p1 = $unsigned(select_ln5545_cast_fu_316_p1);
assign select_ln5545_cast_fu_316_p1 = $signed(select_ln5545);
assign shl_ln_fu_619_p3 = {{v4012_mid2_reg_831_pp0_iter3_reg}, {1'd0}};
assign sub_ln5518_fu_613_p2 = (p_shl_fu_606_p3 - zext_ln5518_2_fu_603_p1);
assign sub_ln5520_1_fu_588_p2 = (tmp_81_fu_576_p3 - zext_ln5520_2_fu_584_p1);
assign sub_ln5520_fu_557_p2 = (p_shl24_fu_539_p3 - zext_ln5520_fu_553_p1);
assign thr_add2_cast8_cast_cast_cast_cast_cast_fu_312_p1 = $unsigned(thr_add2_cast8_cast_cast_cast_cast_fu_308_p1);
assign thr_add2_cast8_cast_cast_cast_cast_fu_308_p1 = $signed(thr_add2_cast8_cast_cast_cast);
assign tmp_1_i_fu_726_p9 = 'bx;
assign tmp_79_reg_795 = empty;
assign tmp_80_fu_546_p3 = {{v4010_reg_816_pp0_iter2_reg}, {1'd0}};
assign tmp_81_fu_576_p3 = {{trunc_ln5520_fu_572_p1}, {2'd0}};
assign tmp_cast_fu_494_p1 = tmp_fu_489_p2;
assign tmp_fu_489_p2 = (udiv_ln_cast_reg_811 + tmp_s_fu_481_p3);
assign tmp_i_fu_702_p9 = 'bx;
assign tmp_s_fu_481_p3 = {{v4011_fu_473_p3}, {1'd0}};
assign trunc_ln5520_fu_572_p1 = add_ln5520_fu_566_p2[7:0];
assign udiv_ln_cast_fu_324_p1 = udiv_ln;
assign v4010_fu_368_p3 = ((ap_phi_mux_icmp_ln551463_phi_fu_289_p4[0:0] == 1'b1) ? add_ln5513_fu_362_p2 : ap_sig_allocacmp_v401058_load);
assign v4011_fu_473_p3 = ((and_ln5513_fu_447_p2[0:0] == 1'b1) ? add_ln5514_fu_453_p2 : select_ln5513_fu_433_p3);
assign v4012_fu_517_p2 = (v4012_mid2_fu_465_p3 + 3'd2);
assign v4012_mid2_fu_465_p3 = ((empty_126_fu_459_p2[0:0] == 1'b1) ? 3'd0 : v401261_fu_142);
assign v4027_1_address0 = zext_ln5520_4_fu_697_p1;
assign v4027_1_ce0 = v4027_1_ce0_local;
assign v4027_1_d0 = tmp_i_fu_702_p11;
assign v4027_1_we0 = v4027_1_we0_local;
assign v4027_address0 = zext_ln5520_4_fu_697_p1;
assign v4027_ce0 = v4027_ce0_local;
assign v4027_d0 = tmp_1_i_fu_726_p11;
assign v4027_we0 = v4027_we0_local;
assign v9020_0_address0 = v9020_0_address0_local;
assign v9020_0_ce0 = v9020_0_ce0_local;
assign v9020_1_address0 = v9020_1_address0_local;
assign v9020_1_ce0 = v9020_1_ce0_local;
assign v9020_2_address0 = v9020_2_address0_local;
assign v9020_2_ce0 = v9020_2_ce0_local;
assign v9020_3_address0 = v9020_3_address0_local;
assign v9020_3_ce0 = v9020_3_ce0_local;
assign xor_ln5513_fu_441_p2 = (icmp_ln551463_reg_286_pp0_iter1_reg ^ 1'd1);
assign zext_ln5517_fu_626_p1 = shl_ln_fu_619_p3;
assign zext_ln5518_2_fu_603_p1 = add_ln5518_reg_856;
assign zext_ln5518_3_fu_645_p1 = lshr_ln1_fu_635_p4;
assign zext_ln5518_4_fu_655_p1 = add_ln5518_1_fu_649_p2;
assign zext_ln5520_1_fu_563_p1 = v4011_reg_836;
assign zext_ln5520_2_fu_584_p1 = add_ln5520_fu_566_p2;
assign zext_ln5520_3_fu_594_p1 = lshr_ln_reg_846;
assign zext_ln5520_4_fu_697_p1 = add_ln5520_1_reg_862_pp0_iter4_reg;
assign zext_ln5520_5_fu_679_p1 = lshr_ln2_fu_669_p4;
assign zext_ln5520_6_fu_689_p1 = add_ln5520_2_fu_683_p2;
assign zext_ln5520_fu_553_p1 = tmp_80_fu_546_p3;
always @ (posedge ap_clk) begin
    thr_add2_cast8_cast_cast_cast_cast_cast_reg_801[4] <= 1'b0;
    select_ln5545_cast_cast_reg_806[4] <= 1'b0;
    udiv_ln_cast_reg_811[3:2] <= 2'b00;
end
endmodule 
