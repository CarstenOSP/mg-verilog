module forward_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v89_address0,v89_ce0,v89_q0,mul_i26_i,v88_1_address0,v88_1_ce0,v88_1_q0,v88_address0,v88_ce0,v88_q0,v87_1_address0,v87_1_ce0,v87_1_q0,v90_1_address0,v90_1_ce0,v90_1_we0,v90_1_d0,v90_1_address1,v90_1_ce1,v90_1_q1,v87_address0,v87_ce0,v87_q0,v90_address0,v90_ce0,v90_we0,v90_d0,v90_address1,v90_ce1,v90_q1,v86_1_address0,v86_1_ce0,v86_1_q0,v86_address0,v86_ce0,v86_q0,v85_1_address0,v85_1_ce0,v85_1_we0,v85_1_d0,v85_address0,v85_ce0,v85_we0,v85_d0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] v89_address0;
output   v89_ce0;
input  [7:0] v89_q0;
input  [12:0] mul_i26_i;
output  [8:0] v88_1_address0;
output   v88_1_ce0;
input  [7:0] v88_1_q0;
output  [8:0] v88_address0;
output   v88_ce0;
input  [7:0] v88_q0;
output  [3:0] v87_1_address0;
output   v87_1_ce0;
input  [7:0] v87_1_q0;
output  [3:0] v90_1_address0;
output   v90_1_ce0;
output   v90_1_we0;
output  [7:0] v90_1_d0;
output  [3:0] v90_1_address1;
output   v90_1_ce1;
input  [7:0] v90_1_q1;
output  [3:0] v87_address0;
output   v87_ce0;
input  [7:0] v87_q0;
output  [3:0] v90_address0;
output   v90_ce0;
output   v90_we0;
output  [7:0] v90_d0;
output  [3:0] v90_address1;
output   v90_ce1;
input  [7:0] v90_q1;
output  [3:0] v86_1_address0;
output   v86_1_ce0;
input  [7:0] v86_1_q0;
output  [3:0] v86_address0;
output   v86_ce0;
input  [7:0] v86_q0;
output  [3:0] v85_1_address0;
output   v85_1_ce0;
output   v85_1_we0;
output  [7:0] v85_1_d0;
output  [3:0] v85_address0;
output   v85_ce0;
output   v85_we0;
output  [7:0] v85_d0;
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
wire   [0:0] icmp_ln87_fu_357_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [5:0] v19_fu_297_p3;
reg   [5:0] v19_reg_492;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] trunc_ln92_fu_305_p1;
reg   [4:0] trunc_ln92_reg_499;
wire   [0:0] cmp23_i_i_fu_323_p2;
reg   [0:0] cmp23_i_i_reg_504;
reg   [0:0] cmp23_i_i_reg_504_pp0_iter1_reg;
reg   [0:0] cmp23_i_i_reg_504_pp0_iter2_reg;
reg   [0:0] cmp23_i_i_reg_504_pp0_iter3_reg;
reg   [0:0] cmp23_i_i_reg_504_pp0_iter4_reg;
reg   [3:0] lshr_ln_reg_508;
reg   [3:0] lshr_ln_reg_508_pp0_iter1_reg;
reg   [3:0] lshr_ln_reg_508_pp0_iter2_reg;
wire   [0:0] icmp_ln89_fu_351_p2;
reg   [0:0] icmp_ln89_reg_514;
reg   [0:0] icmp_ln87_reg_519;
wire   [0:0] cmp13_i_i_fu_398_p2;
reg   [0:0] cmp13_i_i_reg_528;
reg   [0:0] cmp13_i_i_reg_528_pp0_iter2_reg;
reg   [0:0] cmp13_i_i_reg_528_pp0_iter3_reg;
wire   [63:0] zext_ln91_fu_418_p1;
reg   [63:0] zext_ln91_reg_560;
reg   [63:0] zext_ln91_reg_560_pp0_iter4_reg;
reg   [3:0] v90_1_addr_reg_573;
reg   [3:0] v90_1_addr_reg_573_pp0_iter4_reg;
reg   [3:0] v90_addr_reg_584;
reg   [3:0] v90_addr_reg_584_pp0_iter4_reg;
reg   [0:0] ap_phi_mux_icmp_ln8966_phi_fu_252_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln87_fu_378_p1;
wire   [63:0] zext_ln92_2_fu_412_p1;
reg   [8:0] indvar_flatten63_fu_80;
wire   [8:0] add_ln87_1_fu_339_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten63_load;
reg   [5:0] v1964_fu_84;
reg   [5:0] ap_sig_allocacmp_v1964_load;
reg   [4:0] v2065_fu_88;
wire   [4:0] v20_fu_345_p2;
reg   [4:0] ap_sig_allocacmp_v2065_load;
reg    v89_ce0_local;
reg    v88_1_ce0_local;
reg    v88_ce0_local;
reg    v87_1_ce0_local;
reg    v90_1_ce1_local;
reg    v90_1_we0_local;
wire   [7:0] grp_fu_451_p3;
reg    v90_1_ce0_local;
reg    v87_ce0_local;
reg    v90_ce1_local;
reg    v90_we0_local;
wire   [7:0] grp_fu_461_p3;
reg    v90_ce0_local;
reg    v86_1_ce0_local;
reg    v86_ce0_local;
reg    v85_1_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] add_ln105_fu_439_p2;
reg    v85_1_ce0_local;
reg    v85_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v49_fu_445_p2;
reg    v85_ce0_local;
wire   [5:0] add_ln87_fu_283_p2;
wire   [4:0] empty_fu_309_p1;
wire   [12:0] v19_cast_cast_i_fu_313_p1;
wire   [12:0] empty_303_fu_317_p2;
wire   [4:0] select_ln87_fu_289_p3;
wire   [8:0] tmp_fu_382_p3;
wire   [8:0] zext_ln92_fu_389_p1;
wire   [8:0] sub_ln92_fu_392_p2;
wire   [8:0] zext_ln92_1_fu_403_p1;
wire   [8:0] add_ln92_fu_406_p2;
wire  signed [7:0] add_ln105_fu_439_p1;
wire  signed [7:0] v49_fu_445_p1;
wire   [7:0] grp_fu_451_p2;
wire   [7:0] grp_fu_461_p2;
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
reg    ap_condition_455;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 indvar_flatten63_fu_80 = 9'd0;
#0 v1964_fu_84 = 6'd0;
#0 v2065_fu_88 = 5'd0;
#0 ap_done_reg = 1'b0;
end
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U14527(.clk(ap_clk),.reset(ap_rst),.din0(v88_1_q0),.din1(v89_q0),.din2(grp_fu_451_p2),.ce(1'b1),.dout(grp_fu_451_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U14528(.clk(ap_clk),.reset(ap_rst),.din0(v88_q0),.din1(v89_q0),.din2(grp_fu_461_p2),.ce(1'b1),.dout(grp_fu_461_p3));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten63_fu_80 <= add_ln87_1_fu_339_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten63_fu_80 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v1964_fu_84 <= v19_fu_297_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v1964_fu_84 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v2065_fu_88 <= v20_fu_345_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v2065_fu_88 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        cmp13_i_i_reg_528 <= cmp13_i_i_fu_398_p2;
        cmp23_i_i_reg_504 <= cmp23_i_i_fu_323_p2;
        cmp23_i_i_reg_504_pp0_iter1_reg <= cmp23_i_i_reg_504;
        icmp_ln87_reg_519 <= icmp_ln87_fu_357_p2;
        lshr_ln_reg_508 <= {{select_ln87_fu_289_p3[4:1]}};
        lshr_ln_reg_508_pp0_iter1_reg <= lshr_ln_reg_508;
        trunc_ln92_reg_499 <= trunc_ln92_fu_305_p1;
        v19_reg_492 <= v19_fu_297_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        cmp13_i_i_reg_528_pp0_iter2_reg <= cmp13_i_i_reg_528;
        cmp13_i_i_reg_528_pp0_iter3_reg <= cmp13_i_i_reg_528_pp0_iter2_reg;
        cmp23_i_i_reg_504_pp0_iter2_reg <= cmp23_i_i_reg_504_pp0_iter1_reg;
        cmp23_i_i_reg_504_pp0_iter3_reg <= cmp23_i_i_reg_504_pp0_iter2_reg;
        cmp23_i_i_reg_504_pp0_iter4_reg <= cmp23_i_i_reg_504_pp0_iter3_reg;
        lshr_ln_reg_508_pp0_iter2_reg <= lshr_ln_reg_508_pp0_iter1_reg;
        v90_1_addr_reg_573 <= zext_ln91_fu_418_p1;
        v90_1_addr_reg_573_pp0_iter4_reg <= v90_1_addr_reg_573;
        v90_addr_reg_584 <= zext_ln91_fu_418_p1;
        v90_addr_reg_584_pp0_iter4_reg <= v90_addr_reg_584;
        zext_ln91_reg_560[3 : 0] <= zext_ln91_fu_418_p1[3 : 0];
        zext_ln91_reg_560_pp0_iter4_reg[3 : 0] <= zext_ln91_reg_560[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln89_reg_514 <= icmp_ln89_fu_351_p2;
    end
end
always @ (*) begin
    if (((icmp_ln87_fu_357_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_455)) begin
            ap_phi_mux_icmp_ln8966_phi_fu_252_p4 = icmp_ln89_reg_514;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln8966_phi_fu_252_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln8966_phi_fu_252_p4 = icmp_ln89_reg_514;
        end
    end else begin
        ap_phi_mux_icmp_ln8966_phi_fu_252_p4 = icmp_ln89_reg_514;
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
        ap_sig_allocacmp_indvar_flatten63_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten63_load = indvar_flatten63_fu_80;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v1964_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v1964_load = v1964_fu_84;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v2065_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v2065_load = v2065_fu_88;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v85_1_ce0_local = 1'b1;
    end else begin
        v85_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (cmp23_i_i_reg_504_pp0_iter4_reg == 1'd1))) begin
        v85_1_we0_local = 1'b1;
    end else begin
        v85_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v85_ce0_local = 1'b1;
    end else begin
        v85_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (cmp23_i_i_reg_504_pp0_iter4_reg == 1'd1))) begin
        v85_we0_local = 1'b1;
    end else begin
        v85_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v86_1_ce0_local = 1'b1;
    end else begin
        v86_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v86_ce0_local = 1'b1;
    end else begin
        v86_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v87_1_ce0_local = 1'b1;
    end else begin
        v87_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v87_ce0_local = 1'b1;
    end else begin
        v87_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v88_1_ce0_local = 1'b1;
    end else begin
        v88_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v88_ce0_local = 1'b1;
    end else begin
        v88_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v89_ce0_local = 1'b1;
    end else begin
        v89_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v90_1_ce0_local = 1'b1;
    end else begin
        v90_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v90_1_ce1_local = 1'b1;
    end else begin
        v90_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v90_1_we0_local = 1'b1;
    end else begin
        v90_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v90_ce0_local = 1'b1;
    end else begin
        v90_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v90_ce1_local = 1'b1;
    end else begin
        v90_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v90_we0_local = 1'b1;
    end else begin
        v90_we0_local = 1'b0;
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
assign add_ln105_fu_439_p1 = grp_fu_451_p3;
assign add_ln105_fu_439_p2 = ($signed(v86_1_q0) + $signed(add_ln105_fu_439_p1));
assign add_ln87_1_fu_339_p2 = (ap_sig_allocacmp_indvar_flatten63_load + 9'd1);
assign add_ln87_fu_283_p2 = (ap_sig_allocacmp_v1964_load + 6'd1);
assign add_ln92_fu_406_p2 = (sub_ln92_fu_392_p2 + zext_ln92_1_fu_403_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_455 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln87_reg_519 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign cmp13_i_i_fu_398_p2 = ((v19_reg_492 == 6'd0) ? 1'b1 : 1'b0);
assign cmp23_i_i_fu_323_p2 = ((empty_303_fu_317_p2 == 13'd4097) ? 1'b1 : 1'b0);
assign empty_303_fu_317_p2 = (mul_i26_i - v19_cast_cast_i_fu_313_p1);
assign empty_fu_309_p1 = v19_fu_297_p3[4:0];
assign grp_fu_451_p2 = ((cmp13_i_i_reg_528_pp0_iter3_reg[0:0] == 1'b1) ? v87_1_q0 : v90_1_q1);
assign grp_fu_461_p2 = ((cmp13_i_i_reg_528_pp0_iter3_reg[0:0] == 1'b1) ? v87_q0 : v90_q1);
assign icmp_ln87_fu_357_p2 = ((ap_sig_allocacmp_indvar_flatten63_load == 9'd479) ? 1'b1 : 1'b0);
assign icmp_ln89_fu_351_p2 = ((v20_fu_345_p2 == 5'd30) ? 1'b1 : 1'b0);
assign select_ln87_fu_289_p3 = ((ap_phi_mux_icmp_ln8966_phi_fu_252_p4[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v2065_load);
assign sub_ln92_fu_392_p2 = (tmp_fu_382_p3 - zext_ln92_fu_389_p1);
assign tmp_fu_382_p3 = {{trunc_ln92_reg_499}, {4'd0}};
assign trunc_ln92_fu_305_p1 = v19_fu_297_p3[4:0];
assign v19_cast_cast_i_fu_313_p1 = empty_fu_309_p1;
assign v19_fu_297_p3 = ((ap_phi_mux_icmp_ln8966_phi_fu_252_p4[0:0] == 1'b1) ? add_ln87_fu_283_p2 : ap_sig_allocacmp_v1964_load);
assign v20_fu_345_p2 = (select_ln87_fu_289_p3 + 5'd2);
assign v49_fu_445_p1 = grp_fu_461_p3;
assign v49_fu_445_p2 = ($signed(v86_q0) + $signed(v49_fu_445_p1));
assign v85_1_address0 = zext_ln91_reg_560_pp0_iter4_reg;
assign v85_1_ce0 = v85_1_ce0_local;
assign v85_1_d0 = add_ln105_fu_439_p2;
assign v85_1_we0 = v85_1_we0_local;
assign v85_address0 = zext_ln91_reg_560_pp0_iter4_reg;
assign v85_ce0 = v85_ce0_local;
assign v85_d0 = v49_fu_445_p2;
assign v85_we0 = v85_we0_local;
assign v86_1_address0 = zext_ln91_reg_560;
assign v86_1_ce0 = v86_1_ce0_local;
assign v86_address0 = zext_ln91_reg_560;
assign v86_ce0 = v86_ce0_local;
assign v87_1_address0 = zext_ln91_fu_418_p1;
assign v87_1_ce0 = v87_1_ce0_local;
assign v87_address0 = zext_ln91_fu_418_p1;
assign v87_ce0 = v87_ce0_local;
assign v88_1_address0 = zext_ln92_2_fu_412_p1;
assign v88_1_ce0 = v88_1_ce0_local;
assign v88_address0 = zext_ln92_2_fu_412_p1;
assign v88_ce0 = v88_ce0_local;
assign v89_address0 = zext_ln87_fu_378_p1;
assign v89_ce0 = v89_ce0_local;
assign v90_1_address0 = v90_1_addr_reg_573_pp0_iter4_reg;
assign v90_1_address1 = zext_ln91_fu_418_p1;
assign v90_1_ce0 = v90_1_ce0_local;
assign v90_1_ce1 = v90_1_ce1_local;
assign v90_1_d0 = grp_fu_451_p3;
assign v90_1_we0 = v90_1_we0_local;
assign v90_address0 = v90_addr_reg_584_pp0_iter4_reg;
assign v90_address1 = zext_ln91_fu_418_p1;
assign v90_ce0 = v90_ce0_local;
assign v90_ce1 = v90_ce1_local;
assign v90_d0 = grp_fu_461_p3;
assign v90_we0 = v90_we0_local;
assign zext_ln87_fu_378_p1 = v19_reg_492;
assign zext_ln91_fu_418_p1 = lshr_ln_reg_508_pp0_iter2_reg;
assign zext_ln92_1_fu_403_p1 = lshr_ln_reg_508;
assign zext_ln92_2_fu_412_p1 = add_ln92_fu_406_p2;
assign zext_ln92_fu_389_p1 = v19_reg_492;
always @ (posedge ap_clk) begin
    zext_ln91_reg_560[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln91_reg_560_pp0_iter4_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end
endmodule 