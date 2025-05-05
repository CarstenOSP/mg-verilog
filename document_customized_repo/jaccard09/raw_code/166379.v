module forward_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i_i_i,v167_0_address0,v167_0_ce0,v167_0_q0,v167_1_address0,v167_1_ce0,v167_1_q0,v167_2_address0,v167_2_ce0,v167_2_q0,v167_3_address0,v167_3_ce0,v167_3_q0,mul26_i_i_i_i,v178_1_address0,v178_1_ce0,v178_1_q0,v178_address0,v178_ce0,v178_q0,v177_1_address0,v177_1_ce0,v177_1_q0,v179_1_address0,v179_1_ce0,v179_1_we0,v179_1_d0,v179_1_address1,v179_1_ce1,v179_1_q1,v177_address0,v177_ce0,v177_q0,v179_address0,v179_ce0,v179_we0,v179_d0,v179_address1,v179_ce1,v179_q1,v176_1_address0,v176_1_ce0,v176_1_q0,v176_address0,v176_ce0,v176_q0,v175_1_address0,v175_1_ce0,v175_1_we0,v175_1_d0,v175_address0,v175_ce0,v175_we0,v175_d0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] mul_i_i_i;
output  [5:0] v167_0_address0;
output   v167_0_ce0;
input  [7:0] v167_0_q0;
output  [5:0] v167_1_address0;
output   v167_1_ce0;
input  [7:0] v167_1_q0;
output  [5:0] v167_2_address0;
output   v167_2_ce0;
input  [7:0] v167_2_q0;
output  [5:0] v167_3_address0;
output   v167_3_ce0;
input  [7:0] v167_3_q0;
input  [8:0] mul26_i_i_i_i;
output  [8:0] v178_1_address0;
output   v178_1_ce0;
input  [7:0] v178_1_q0;
output  [8:0] v178_address0;
output   v178_ce0;
input  [7:0] v178_q0;
output  [3:0] v177_1_address0;
output   v177_1_ce0;
input  [7:0] v177_1_q0;
output  [3:0] v179_1_address0;
output   v179_1_ce0;
output   v179_1_we0;
output  [7:0] v179_1_d0;
output  [3:0] v179_1_address1;
output   v179_1_ce1;
input  [7:0] v179_1_q1;
output  [3:0] v177_address0;
output   v177_ce0;
input  [7:0] v177_q0;
output  [3:0] v179_address0;
output   v179_ce0;
output   v179_we0;
output  [7:0] v179_d0;
output  [3:0] v179_address1;
output   v179_ce1;
input  [7:0] v179_q1;
output  [3:0] v176_1_address0;
output   v176_1_ce0;
input  [7:0] v176_1_q0;
output  [3:0] v176_address0;
output   v176_ce0;
input  [7:0] v176_q0;
output  [3:0] v175_1_address0;
output   v175_1_ce0;
output   v175_1_we0;
output  [6:0] v175_1_d0;
output  [3:0] v175_address0;
output   v175_ce0;
output   v175_we0;
output  [6:0] v175_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln335_fu_359_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln33784_i_reg_324;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln335_reg_649;
reg   [0:0] icmp_ln335_reg_649_pp0_iter1_reg;
wire   [1:0] empty_276_fu_429_p1;
reg   [1:0] empty_276_reg_673;
wire   [0:0] cmp13_i_i_i_i_fu_433_p2;
reg   [0:0] cmp13_i_i_i_i_reg_678;
reg   [0:0] cmp13_i_i_i_i_reg_678_pp0_iter2_reg;
reg   [0:0] cmp13_i_i_i_i_reg_678_pp0_iter3_reg;
wire   [0:0] cmp29_i_i_i_i_fu_448_p2;
reg   [0:0] cmp29_i_i_i_i_reg_684;
reg   [0:0] cmp29_i_i_i_i_reg_684_pp0_iter2_reg;
reg   [0:0] cmp29_i_i_i_i_reg_684_pp0_iter3_reg;
reg   [0:0] cmp29_i_i_i_i_reg_684_pp0_iter4_reg;
reg   [0:0] cmp29_i_i_i_i_reg_684_pp0_iter5_reg;
wire   [3:0] lshr_ln_i_fu_454_p4;
reg   [3:0] lshr_ln_i_reg_688;
reg   [3:0] lshr_ln_i_reg_688_pp0_iter2_reg;
wire   [0:0] xor_ln337_fu_492_p2;
reg   [0:0] xor_ln337_reg_703;
wire  signed [7:0] v112_fu_508_p11;
wire   [63:0] zext_ln339_fu_531_p1;
reg   [63:0] zext_ln339_reg_724;
reg   [63:0] zext_ln339_reg_724_pp0_iter4_reg;
reg   [63:0] zext_ln339_reg_724_pp0_iter5_reg;
reg   [3:0] v179_1_addr_reg_737;
reg   [3:0] v179_1_addr_reg_737_pp0_iter4_reg;
reg   [3:0] v179_addr_reg_748;
reg   [3:0] v179_addr_reg_748_pp0_iter4_reg;
wire   [6:0] select_ln356_fu_567_p3;
reg   [6:0] select_ln356_reg_774;
wire   [6:0] v144_1_fu_590_p3;
reg   [6:0] v144_1_reg_779;
reg   [0:0] ap_phi_mux_icmp_ln33784_i_phi_fu_327_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] p_cast15_i_i_i_fu_421_p1;
wire   [63:0] zext_ln340_fu_472_p1;
reg   [8:0] indvar_flatten81_i_fu_110;
wire   [8:0] add_ln335_1_fu_353_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten81_i_load;
reg   [5:0] v11082_i_fu_114;
wire   [5:0] select_ln335_1_fu_390_p3;
reg   [5:0] v11183_i_fu_118;
wire   [5:0] add_ln337_fu_478_p2;
reg    v167_0_ce0_local;
reg    v167_1_ce0_local;
reg    v167_2_ce0_local;
reg    v167_3_ce0_local;
reg    v178_1_ce0_local;
reg    v178_ce0_local;
reg    v177_1_ce0_local;
reg    v179_1_ce1_local;
reg    v179_1_we0_local;
wire   [7:0] grp_fu_598_p3;
reg    v179_1_ce0_local;
reg    v177_ce0_local;
reg    v179_ce1_local;
reg    v179_we0_local;
wire   [7:0] grp_fu_608_p3;
reg    v179_ce0_local;
reg    v176_1_ce0_local;
reg    v176_ce0_local;
reg    v175_1_we0_local;
reg    v175_1_ce0_local;
reg    v175_we0_local;
reg    v175_ce0_local;
wire   [5:0] add_ln335_fu_376_p2;
wire   [7:0] zext_ln335_fu_402_p1;
wire   [7:0] empty_fu_406_p2;
wire   [5:0] tmp_205_i_fu_411_p4;
wire   [4:0] trunc_ln335_fu_398_p1;
wire   [8:0] v110_cast6_cast_i_i_i_fu_439_p1;
wire   [8:0] empty_277_fu_443_p2;
wire   [5:0] select_ln335_fu_382_p3;
wire   [8:0] tmp_206_i_fu_464_p3;
wire   [0:0] tmp_fu_484_p3;
wire   [7:0] v112_fu_508_p9;
wire  signed [7:0] add_ln353_fu_552_p1;
(* use_dsp48 = "no" *) wire   [7:0] add_ln353_fu_552_p2;
wire   [0:0] icmp_ln355_fu_557_p2;
wire   [6:0] trunc_ln355_fu_563_p1;
wire  signed [7:0] v142_fu_575_p1;
(* use_dsp48 = "no" *) wire   [7:0] v142_fu_575_p2;
wire   [0:0] v143_fu_580_p2;
wire   [6:0] trunc_ln375_fu_586_p1;
wire   [7:0] grp_fu_598_p2;
wire   [7:0] grp_fu_608_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] v112_fu_508_p1;
wire   [1:0] v112_fu_508_p3;
wire  signed [1:0] v112_fu_508_p5;
wire  signed [1:0] v112_fu_508_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 indvar_flatten81_i_fu_110 = 9'd0;
#0 v11082_i_fu_114 = 6'd0;
#0 v11183_i_fu_118 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U14390(.din0(v167_0_q0),.din1(v167_1_q0),.din2(v167_2_q0),.din3(v167_3_q0),.def(v112_fu_508_p9),.sel(empty_276_reg_673),.dout(v112_fu_508_p11));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U14391(.clk(ap_clk),.reset(ap_rst),.din0(v178_1_q0),.din1(v112_fu_508_p11),.din2(grp_fu_598_p2),.ce(1'b1),.dout(grp_fu_598_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U14392(.clk(ap_clk),.reset(ap_rst),.din0(v178_q0),.din1(v112_fu_508_p11),.din2(grp_fu_608_p2),.ce(1'b1),.dout(grp_fu_608_p3));
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
        end else if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_exit_ready_pp0_iter5_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln335_reg_649_pp0_iter1_reg == 1'd0))) begin
        icmp_ln33784_i_reg_324 <= xor_ln337_reg_703;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln33784_i_reg_324 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten81_i_fu_110 <= add_ln335_1_fu_353_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten81_i_fu_110 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v11082_i_fu_114 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v11082_i_fu_114 <= select_ln335_1_fu_390_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v11183_i_fu_118 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v11183_i_fu_118 <= add_ln337_fu_478_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        cmp13_i_i_i_i_reg_678 <= cmp13_i_i_i_i_fu_433_p2;
        cmp29_i_i_i_i_reg_684 <= cmp29_i_i_i_i_fu_448_p2;
        empty_276_reg_673 <= empty_276_fu_429_p1;
        icmp_ln335_reg_649 <= icmp_ln335_fu_359_p2;
        icmp_ln335_reg_649_pp0_iter1_reg <= icmp_ln335_reg_649;
        lshr_ln_i_reg_688 <= {{select_ln335_fu_382_p3[4:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        cmp13_i_i_i_i_reg_678_pp0_iter2_reg <= cmp13_i_i_i_i_reg_678;
        cmp13_i_i_i_i_reg_678_pp0_iter3_reg <= cmp13_i_i_i_i_reg_678_pp0_iter2_reg;
        cmp29_i_i_i_i_reg_684_pp0_iter2_reg <= cmp29_i_i_i_i_reg_684;
        cmp29_i_i_i_i_reg_684_pp0_iter3_reg <= cmp29_i_i_i_i_reg_684_pp0_iter2_reg;
        cmp29_i_i_i_i_reg_684_pp0_iter4_reg <= cmp29_i_i_i_i_reg_684_pp0_iter3_reg;
        cmp29_i_i_i_i_reg_684_pp0_iter5_reg <= cmp29_i_i_i_i_reg_684_pp0_iter4_reg;
        lshr_ln_i_reg_688_pp0_iter2_reg <= lshr_ln_i_reg_688;
        select_ln356_reg_774 <= select_ln356_fu_567_p3;
        v144_1_reg_779 <= v144_1_fu_590_p3;
        v179_1_addr_reg_737 <= zext_ln339_fu_531_p1;
        v179_1_addr_reg_737_pp0_iter4_reg <= v179_1_addr_reg_737;
        v179_addr_reg_748 <= zext_ln339_fu_531_p1;
        v179_addr_reg_748_pp0_iter4_reg <= v179_addr_reg_748;
        zext_ln339_reg_724[3 : 0] <= zext_ln339_fu_531_p1[3 : 0];
        zext_ln339_reg_724_pp0_iter4_reg[3 : 0] <= zext_ln339_reg_724[3 : 0];
        zext_ln339_reg_724_pp0_iter5_reg[3 : 0] <= zext_ln339_reg_724_pp0_iter4_reg[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xor_ln337_reg_703 <= xor_ln337_fu_492_p2;
    end
end
always @ (*) begin
    if (((icmp_ln335_fu_359_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln335_reg_649_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln33784_i_phi_fu_327_p4 = xor_ln337_reg_703;
    end else begin
        ap_phi_mux_icmp_ln33784_i_phi_fu_327_p4 = icmp_ln33784_i_reg_324;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten81_i_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten81_i_load = indvar_flatten81_i_fu_110;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v167_0_ce0_local = 1'b1;
    end else begin
        v167_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v167_1_ce0_local = 1'b1;
    end else begin
        v167_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v167_2_ce0_local = 1'b1;
    end else begin
        v167_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v167_3_ce0_local = 1'b1;
    end else begin
        v167_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v175_1_ce0_local = 1'b1;
    end else begin
        v175_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (cmp29_i_i_i_i_reg_684_pp0_iter5_reg == 1'd1))) begin
        v175_1_we0_local = 1'b1;
    end else begin
        v175_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v175_ce0_local = 1'b1;
    end else begin
        v175_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (cmp29_i_i_i_i_reg_684_pp0_iter5_reg == 1'd1))) begin
        v175_we0_local = 1'b1;
    end else begin
        v175_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v176_1_ce0_local = 1'b1;
    end else begin
        v176_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v176_ce0_local = 1'b1;
    end else begin
        v176_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v177_1_ce0_local = 1'b1;
    end else begin
        v177_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v177_ce0_local = 1'b1;
    end else begin
        v177_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v178_1_ce0_local = 1'b1;
    end else begin
        v178_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v178_ce0_local = 1'b1;
    end else begin
        v178_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v179_1_ce0_local = 1'b1;
    end else begin
        v179_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v179_1_ce1_local = 1'b1;
    end else begin
        v179_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v179_1_we0_local = 1'b1;
    end else begin
        v179_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v179_ce0_local = 1'b1;
    end else begin
        v179_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v179_ce1_local = 1'b1;
    end else begin
        v179_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v179_we0_local = 1'b1;
    end else begin
        v179_we0_local = 1'b0;
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
assign add_ln335_1_fu_353_p2 = (ap_sig_allocacmp_indvar_flatten81_i_load + 9'd1);
assign add_ln335_fu_376_p2 = (v11082_i_fu_114 + 6'd1);
assign add_ln337_fu_478_p2 = (select_ln335_fu_382_p3 + 6'd2);
assign add_ln353_fu_552_p1 = grp_fu_598_p3;
assign add_ln353_fu_552_p2 = ($signed(v176_1_q0) + $signed(add_ln353_fu_552_p1));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign cmp13_i_i_i_i_fu_433_p2 = ((select_ln335_1_fu_390_p3 == 6'd0) ? 1'b1 : 1'b0);
assign cmp29_i_i_i_i_fu_448_p2 = ((empty_277_fu_443_p2 == 9'd257) ? 1'b1 : 1'b0);
assign empty_276_fu_429_p1 = empty_fu_406_p2[1:0];
assign empty_277_fu_443_p2 = (mul26_i_i_i_i - v110_cast6_cast_i_i_i_fu_439_p1);
assign empty_fu_406_p2 = (mul_i_i_i + zext_ln335_fu_402_p1);
assign grp_fu_598_p2 = ((cmp13_i_i_i_i_reg_678_pp0_iter3_reg[0:0] == 1'b1) ? v177_1_q0 : v179_1_q1);
assign grp_fu_608_p2 = ((cmp13_i_i_i_i_reg_678_pp0_iter3_reg[0:0] == 1'b1) ? v177_q0 : v179_q1);
assign icmp_ln335_fu_359_p2 = ((ap_sig_allocacmp_indvar_flatten81_i_load == 9'd511) ? 1'b1 : 1'b0);
assign icmp_ln355_fu_557_p2 = (($signed(add_ln353_fu_552_p2) > $signed(8'd50)) ? 1'b1 : 1'b0);
assign lshr_ln_i_fu_454_p4 = {{select_ln335_fu_382_p3[4:1]}};
assign p_cast15_i_i_i_fu_421_p1 = tmp_205_i_fu_411_p4;
assign select_ln335_1_fu_390_p3 = ((ap_phi_mux_icmp_ln33784_i_phi_fu_327_p4[0:0] == 1'b1) ? v11082_i_fu_114 : add_ln335_fu_376_p2);
assign select_ln335_fu_382_p3 = ((ap_phi_mux_icmp_ln33784_i_phi_fu_327_p4[0:0] == 1'b1) ? v11183_i_fu_118 : 6'd0);
assign select_ln356_fu_567_p3 = ((icmp_ln355_fu_557_p2[0:0] == 1'b1) ? trunc_ln355_fu_563_p1 : 7'd50);
assign tmp_205_i_fu_411_p4 = {{empty_fu_406_p2[7:2]}};
assign tmp_206_i_fu_464_p3 = {{trunc_ln335_fu_398_p1}, {lshr_ln_i_fu_454_p4}};
assign tmp_fu_484_p3 = add_ln337_fu_478_p2[32'd5];
assign trunc_ln335_fu_398_p1 = select_ln335_1_fu_390_p3[4:0];
assign trunc_ln355_fu_563_p1 = add_ln353_fu_552_p2[6:0];
assign trunc_ln375_fu_586_p1 = v142_fu_575_p2[6:0];
assign v110_cast6_cast_i_i_i_fu_439_p1 = trunc_ln335_fu_398_p1;
assign v112_fu_508_p9 = 'bx;
assign v142_fu_575_p1 = grp_fu_608_p3;
assign v142_fu_575_p2 = ($signed(v176_q0) + $signed(v142_fu_575_p1));
assign v143_fu_580_p2 = (($signed(v142_fu_575_p2) > $signed(8'd50)) ? 1'b1 : 1'b0);
assign v144_1_fu_590_p3 = ((v143_fu_580_p2[0:0] == 1'b1) ? trunc_ln375_fu_586_p1 : 7'd50);
assign v167_0_address0 = p_cast15_i_i_i_fu_421_p1;
assign v167_0_ce0 = v167_0_ce0_local;
assign v167_1_address0 = p_cast15_i_i_i_fu_421_p1;
assign v167_1_ce0 = v167_1_ce0_local;
assign v167_2_address0 = p_cast15_i_i_i_fu_421_p1;
assign v167_2_ce0 = v167_2_ce0_local;
assign v167_3_address0 = p_cast15_i_i_i_fu_421_p1;
assign v167_3_ce0 = v167_3_ce0_local;
assign v175_1_address0 = zext_ln339_reg_724_pp0_iter5_reg;
assign v175_1_ce0 = v175_1_ce0_local;
assign v175_1_d0 = select_ln356_reg_774;
assign v175_1_we0 = v175_1_we0_local;
assign v175_address0 = zext_ln339_reg_724_pp0_iter5_reg;
assign v175_ce0 = v175_ce0_local;
assign v175_d0 = v144_1_reg_779;
assign v175_we0 = v175_we0_local;
assign v176_1_address0 = zext_ln339_reg_724;
assign v176_1_ce0 = v176_1_ce0_local;
assign v176_address0 = zext_ln339_reg_724;
assign v176_ce0 = v176_ce0_local;
assign v177_1_address0 = zext_ln339_fu_531_p1;
assign v177_1_ce0 = v177_1_ce0_local;
assign v177_address0 = zext_ln339_fu_531_p1;
assign v177_ce0 = v177_ce0_local;
assign v178_1_address0 = zext_ln340_fu_472_p1;
assign v178_1_ce0 = v178_1_ce0_local;
assign v178_address0 = zext_ln340_fu_472_p1;
assign v178_ce0 = v178_ce0_local;
assign v179_1_address0 = v179_1_addr_reg_737_pp0_iter4_reg;
assign v179_1_address1 = zext_ln339_fu_531_p1;
assign v179_1_ce0 = v179_1_ce0_local;
assign v179_1_ce1 = v179_1_ce1_local;
assign v179_1_d0 = grp_fu_598_p3;
assign v179_1_we0 = v179_1_we0_local;
assign v179_address0 = v179_addr_reg_748_pp0_iter4_reg;
assign v179_address1 = zext_ln339_fu_531_p1;
assign v179_ce0 = v179_ce0_local;
assign v179_ce1 = v179_ce1_local;
assign v179_d0 = grp_fu_608_p3;
assign v179_we0 = v179_we0_local;
assign xor_ln337_fu_492_p2 = (tmp_fu_484_p3 ^ 1'd1);
assign zext_ln335_fu_402_p1 = select_ln335_1_fu_390_p3;
assign zext_ln339_fu_531_p1 = lshr_ln_i_reg_688_pp0_iter2_reg;
assign zext_ln340_fu_472_p1 = tmp_206_i_fu_464_p3;
always @ (posedge ap_clk) begin
    zext_ln339_reg_724[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln339_reg_724_pp0_iter4_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln339_reg_724_pp0_iter5_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end
endmodule 