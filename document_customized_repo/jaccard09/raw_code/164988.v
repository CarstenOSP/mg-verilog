module forward_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_Pipeline_VITIS_LO (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v1697_address0,v1697_ce0,v1697_q0,mul_i31_i,v1696_1_address0,v1696_1_ce0,v1696_1_q0,v1696_address0,v1696_ce0,v1696_q0,v1695_1_address0,v1695_1_ce0,v1695_1_q0,v1698_1_address0,v1698_1_ce0,v1698_1_we0,v1698_1_d0,v1698_1_address1,v1698_1_ce1,v1698_1_q1,v1695_address0,v1695_ce0,v1695_q0,v1698_address0,v1698_ce0,v1698_we0,v1698_d0,v1698_address1,v1698_ce1,v1698_q1,v1694_1_address0,v1694_1_ce0,v1694_1_q0,v1694_address0,v1694_ce0,v1694_q0,v1693_1_address0,v1693_1_ce0,v1693_1_we0,v1693_1_d0,v1693_address0,v1693_ce0,v1693_we0,v1693_d0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] v1697_address0;
output   v1697_ce0;
input  [7:0] v1697_q0;
input  [8:0] mul_i31_i;
output  [8:0] v1696_1_address0;
output   v1696_1_ce0;
input  [7:0] v1696_1_q0;
output  [8:0] v1696_address0;
output   v1696_ce0;
input  [7:0] v1696_q0;
output  [3:0] v1695_1_address0;
output   v1695_1_ce0;
input  [7:0] v1695_1_q0;
output  [3:0] v1698_1_address0;
output   v1698_1_ce0;
output   v1698_1_we0;
output  [7:0] v1698_1_d0;
output  [3:0] v1698_1_address1;
output   v1698_1_ce1;
input  [7:0] v1698_1_q1;
output  [3:0] v1695_address0;
output   v1695_ce0;
input  [7:0] v1695_q0;
output  [3:0] v1698_address0;
output   v1698_ce0;
output   v1698_we0;
output  [7:0] v1698_d0;
output  [3:0] v1698_address1;
output   v1698_ce1;
input  [7:0] v1698_q1;
output  [3:0] v1694_1_address0;
output   v1694_1_ce0;
input  [7:0] v1694_1_q0;
output  [3:0] v1694_address0;
output   v1694_ce0;
input  [7:0] v1694_q0;
output  [3:0] v1693_1_address0;
output   v1693_1_ce0;
output   v1693_1_we0;
output  [7:0] v1693_1_d0;
output  [3:0] v1693_address0;
output   v1693_ce0;
output   v1693_we0;
output  [7:0] v1693_d0;
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
wire   [0:0] icmp_ln2290_fu_286_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln229266_reg_251;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln2290_reg_524;
reg   [0:0] icmp_ln2290_reg_524_pp0_iter1_reg;
wire   [0:0] cmp13_i_i_fu_334_p2;
reg   [0:0] cmp13_i_i_reg_533;
reg   [0:0] cmp13_i_i_reg_533_pp0_iter2_reg;
reg   [0:0] cmp13_i_i_reg_533_pp0_iter3_reg;
wire   [0:0] cmp27_i_i_fu_353_p2;
reg   [0:0] cmp27_i_i_reg_539;
reg   [0:0] cmp27_i_i_reg_539_pp0_iter2_reg;
reg   [0:0] cmp27_i_i_reg_539_pp0_iter3_reg;
reg   [0:0] cmp27_i_i_reg_539_pp0_iter4_reg;
reg   [0:0] cmp27_i_i_reg_539_pp0_iter5_reg;
wire   [3:0] lshr_ln_fu_359_p4;
reg   [3:0] lshr_ln_reg_543;
reg   [3:0] lshr_ln_reg_543_pp0_iter2_reg;
wire   [0:0] xor_ln2292_fu_403_p2;
reg   [0:0] xor_ln2292_reg_558;
wire   [63:0] zext_ln2294_fu_419_p1;
reg   [63:0] zext_ln2294_reg_579;
reg   [63:0] zext_ln2294_reg_579_pp0_iter4_reg;
reg   [63:0] zext_ln2294_reg_579_pp0_iter5_reg;
reg   [3:0] v1698_1_addr_reg_592;
reg   [3:0] v1698_1_addr_reg_592_pp0_iter4_reg;
reg   [3:0] v1698_addr_reg_603;
reg   [3:0] v1698_addr_reg_603_pp0_iter4_reg;
wire   [7:0] select_ln2311_fu_451_p3;
reg   [7:0] select_ln2311_reg_629;
wire   [7:0] v1646_1_fu_470_p3;
reg   [7:0] v1646_1_reg_634;
reg   [0:0] ap_phi_mux_icmp_ln229266_phi_fu_254_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln2290_fu_325_p1;
wire   [63:0] zext_ln2295_fu_383_p1;
reg   [8:0] indvar_flatten63_fu_82;
wire   [8:0] add_ln2290_1_fu_280_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten63_load;
reg   [5:0] v161264_fu_86;
wire   [5:0] v1612_fu_317_p3;
reg   [5:0] v161365_fu_90;
wire   [5:0] v1613_fu_389_p2;
reg    v1697_ce0_local;
reg    v1696_1_ce0_local;
reg    v1696_ce0_local;
reg    v1695_1_ce0_local;
reg    v1698_1_ce1_local;
reg    v1698_1_we0_local;
wire   [7:0] grp_fu_478_p3;
reg    v1698_1_ce0_local;
reg    v1695_ce0_local;
reg    v1698_ce1_local;
reg    v1698_we0_local;
wire   [7:0] grp_fu_488_p3;
reg    v1698_ce0_local;
reg    v1694_1_ce0_local;
reg    v1694_ce0_local;
reg    v1693_1_we0_local;
reg    v1693_1_ce0_local;
reg    v1693_we0_local;
reg    v1693_ce0_local;
wire   [5:0] add_ln2290_fu_303_p2;
wire   [4:0] empty_fu_340_p1;
wire   [8:0] v1612_cast_cast_i_fu_344_p1;
wire   [8:0] empty_353_fu_348_p2;
wire   [5:0] select_ln2290_fu_309_p3;
wire   [8:0] tmp_fu_369_p3;
wire   [8:0] select_ln2290_1_cast1_fu_330_p1;
wire   [8:0] add_ln2295_fu_377_p2;
wire   [0:0] tmp_319_fu_395_p3;
wire  signed [7:0] add_ln2308_fu_440_p1;
(* use_dsp48 = "no" *) wire   [7:0] add_ln2308_fu_440_p2;
wire   [0:0] icmp_ln2310_fu_445_p2;
wire  signed [7:0] v1644_fu_459_p1;
(* use_dsp48 = "no" *) wire   [7:0] v1644_fu_459_p2;
wire   [0:0] v1645_fu_464_p2;
wire   [7:0] grp_fu_478_p2;
wire   [7:0] grp_fu_488_p2;
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
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 indvar_flatten63_fu_82 = 9'd0;
#0 v161264_fu_86 = 6'd0;
#0 v161365_fu_90 = 6'd0;
#0 ap_done_reg = 1'b0;
end
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U10820(.clk(ap_clk),.reset(ap_rst),.din0(v1696_1_q0),.din1(v1697_q0),.din2(grp_fu_478_p2),.ce(1'b1),.dout(grp_fu_478_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U10821(.clk(ap_clk),.reset(ap_rst),.din0(v1696_q0),.din1(v1697_q0),.din2(grp_fu_488_p2),.ce(1'b1),.dout(grp_fu_488_p3));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln2290_reg_524_pp0_iter1_reg == 1'd0))) begin
        icmp_ln229266_reg_251 <= xor_ln2292_reg_558;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln229266_reg_251 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten63_fu_82 <= add_ln2290_1_fu_280_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten63_fu_82 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v161264_fu_86 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v161264_fu_86 <= v1612_fu_317_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v161365_fu_90 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v161365_fu_90 <= v1613_fu_389_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        cmp13_i_i_reg_533 <= cmp13_i_i_fu_334_p2;
        cmp27_i_i_reg_539 <= cmp27_i_i_fu_353_p2;
        icmp_ln2290_reg_524 <= icmp_ln2290_fu_286_p2;
        icmp_ln2290_reg_524_pp0_iter1_reg <= icmp_ln2290_reg_524;
        lshr_ln_reg_543 <= {{select_ln2290_fu_309_p3[4:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        cmp13_i_i_reg_533_pp0_iter2_reg <= cmp13_i_i_reg_533;
        cmp13_i_i_reg_533_pp0_iter3_reg <= cmp13_i_i_reg_533_pp0_iter2_reg;
        cmp27_i_i_reg_539_pp0_iter2_reg <= cmp27_i_i_reg_539;
        cmp27_i_i_reg_539_pp0_iter3_reg <= cmp27_i_i_reg_539_pp0_iter2_reg;
        cmp27_i_i_reg_539_pp0_iter4_reg <= cmp27_i_i_reg_539_pp0_iter3_reg;
        cmp27_i_i_reg_539_pp0_iter5_reg <= cmp27_i_i_reg_539_pp0_iter4_reg;
        lshr_ln_reg_543_pp0_iter2_reg <= lshr_ln_reg_543;
        select_ln2311_reg_629 <= select_ln2311_fu_451_p3;
        v1646_1_reg_634 <= v1646_1_fu_470_p3;
        v1698_1_addr_reg_592 <= zext_ln2294_fu_419_p1;
        v1698_1_addr_reg_592_pp0_iter4_reg <= v1698_1_addr_reg_592;
        v1698_addr_reg_603 <= zext_ln2294_fu_419_p1;
        v1698_addr_reg_603_pp0_iter4_reg <= v1698_addr_reg_603;
        zext_ln2294_reg_579[3 : 0] <= zext_ln2294_fu_419_p1[3 : 0];
        zext_ln2294_reg_579_pp0_iter4_reg[3 : 0] <= zext_ln2294_reg_579[3 : 0];
        zext_ln2294_reg_579_pp0_iter5_reg[3 : 0] <= zext_ln2294_reg_579_pp0_iter4_reg[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xor_ln2292_reg_558 <= xor_ln2292_fu_403_p2;
    end
end
always @ (*) begin
    if (((icmp_ln2290_fu_286_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln2290_reg_524_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln229266_phi_fu_254_p4 = xor_ln2292_reg_558;
    end else begin
        ap_phi_mux_icmp_ln229266_phi_fu_254_p4 = icmp_ln229266_reg_251;
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
        ap_sig_allocacmp_indvar_flatten63_load = indvar_flatten63_fu_82;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v1693_1_ce0_local = 1'b1;
    end else begin
        v1693_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (cmp27_i_i_reg_539_pp0_iter5_reg == 1'd1))) begin
        v1693_1_we0_local = 1'b1;
    end else begin
        v1693_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v1693_ce0_local = 1'b1;
    end else begin
        v1693_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (cmp27_i_i_reg_539_pp0_iter5_reg == 1'd1))) begin
        v1693_we0_local = 1'b1;
    end else begin
        v1693_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v1694_1_ce0_local = 1'b1;
    end else begin
        v1694_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v1694_ce0_local = 1'b1;
    end else begin
        v1694_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v1695_1_ce0_local = 1'b1;
    end else begin
        v1695_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v1695_ce0_local = 1'b1;
    end else begin
        v1695_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v1696_1_ce0_local = 1'b1;
    end else begin
        v1696_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v1696_ce0_local = 1'b1;
    end else begin
        v1696_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v1697_ce0_local = 1'b1;
    end else begin
        v1697_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v1698_1_ce0_local = 1'b1;
    end else begin
        v1698_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v1698_1_ce1_local = 1'b1;
    end else begin
        v1698_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v1698_1_we0_local = 1'b1;
    end else begin
        v1698_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v1698_ce0_local = 1'b1;
    end else begin
        v1698_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v1698_ce1_local = 1'b1;
    end else begin
        v1698_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v1698_we0_local = 1'b1;
    end else begin
        v1698_we0_local = 1'b0;
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
assign add_ln2290_1_fu_280_p2 = (ap_sig_allocacmp_indvar_flatten63_load + 9'd1);
assign add_ln2290_fu_303_p2 = (v161264_fu_86 + 6'd1);
assign add_ln2295_fu_377_p2 = (tmp_fu_369_p3 + select_ln2290_1_cast1_fu_330_p1);
assign add_ln2308_fu_440_p1 = grp_fu_478_p3;
assign add_ln2308_fu_440_p2 = ($signed(v1694_1_q0) + $signed(add_ln2308_fu_440_p1));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign cmp13_i_i_fu_334_p2 = ((v1612_fu_317_p3 == 6'd0) ? 1'b1 : 1'b0);
assign cmp27_i_i_fu_353_p2 = ((empty_353_fu_348_p2 == 9'd257) ? 1'b1 : 1'b0);
assign empty_353_fu_348_p2 = (mul_i31_i - v1612_cast_cast_i_fu_344_p1);
assign empty_fu_340_p1 = v1612_fu_317_p3[4:0];
assign grp_fu_478_p2 = ((cmp13_i_i_reg_533_pp0_iter3_reg[0:0] == 1'b1) ? v1695_1_q0 : v1698_1_q1);
assign grp_fu_488_p2 = ((cmp13_i_i_reg_533_pp0_iter3_reg[0:0] == 1'b1) ? v1695_q0 : v1698_q1);
assign icmp_ln2290_fu_286_p2 = ((ap_sig_allocacmp_indvar_flatten63_load == 9'd511) ? 1'b1 : 1'b0);
assign icmp_ln2310_fu_445_p2 = (($signed(add_ln2308_fu_440_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign lshr_ln_fu_359_p4 = {{select_ln2290_fu_309_p3[4:1]}};
assign select_ln2290_1_cast1_fu_330_p1 = v1612_fu_317_p3;
assign select_ln2290_fu_309_p3 = ((ap_phi_mux_icmp_ln229266_phi_fu_254_p4[0:0] == 1'b1) ? v161365_fu_90 : 6'd0);
assign select_ln2311_fu_451_p3 = ((icmp_ln2310_fu_445_p2[0:0] == 1'b1) ? add_ln2308_fu_440_p2 : 8'd229);
assign tmp_319_fu_395_p3 = v1613_fu_389_p2[32'd5];
assign tmp_fu_369_p3 = {{lshr_ln_fu_359_p4}, {5'd0}};
assign v1612_cast_cast_i_fu_344_p1 = empty_fu_340_p1;
assign v1612_fu_317_p3 = ((ap_phi_mux_icmp_ln229266_phi_fu_254_p4[0:0] == 1'b1) ? v161264_fu_86 : add_ln2290_fu_303_p2);
assign v1613_fu_389_p2 = (select_ln2290_fu_309_p3 + 6'd2);
assign v1644_fu_459_p1 = grp_fu_488_p3;
assign v1644_fu_459_p2 = ($signed(v1694_q0) + $signed(v1644_fu_459_p1));
assign v1645_fu_464_p2 = (($signed(v1644_fu_459_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v1646_1_fu_470_p3 = ((v1645_fu_464_p2[0:0] == 1'b1) ? v1644_fu_459_p2 : 8'd229);
assign v1693_1_address0 = zext_ln2294_reg_579_pp0_iter5_reg;
assign v1693_1_ce0 = v1693_1_ce0_local;
assign v1693_1_d0 = select_ln2311_reg_629;
assign v1693_1_we0 = v1693_1_we0_local;
assign v1693_address0 = zext_ln2294_reg_579_pp0_iter5_reg;
assign v1693_ce0 = v1693_ce0_local;
assign v1693_d0 = v1646_1_reg_634;
assign v1693_we0 = v1693_we0_local;
assign v1694_1_address0 = zext_ln2294_reg_579;
assign v1694_1_ce0 = v1694_1_ce0_local;
assign v1694_address0 = zext_ln2294_reg_579;
assign v1694_ce0 = v1694_ce0_local;
assign v1695_1_address0 = zext_ln2294_fu_419_p1;
assign v1695_1_ce0 = v1695_1_ce0_local;
assign v1695_address0 = zext_ln2294_fu_419_p1;
assign v1695_ce0 = v1695_ce0_local;
assign v1696_1_address0 = zext_ln2295_fu_383_p1;
assign v1696_1_ce0 = v1696_1_ce0_local;
assign v1696_address0 = zext_ln2295_fu_383_p1;
assign v1696_ce0 = v1696_ce0_local;
assign v1697_address0 = zext_ln2290_fu_325_p1;
assign v1697_ce0 = v1697_ce0_local;
assign v1698_1_address0 = v1698_1_addr_reg_592_pp0_iter4_reg;
assign v1698_1_address1 = zext_ln2294_fu_419_p1;
assign v1698_1_ce0 = v1698_1_ce0_local;
assign v1698_1_ce1 = v1698_1_ce1_local;
assign v1698_1_d0 = grp_fu_478_p3;
assign v1698_1_we0 = v1698_1_we0_local;
assign v1698_address0 = v1698_addr_reg_603_pp0_iter4_reg;
assign v1698_address1 = zext_ln2294_fu_419_p1;
assign v1698_ce0 = v1698_ce0_local;
assign v1698_ce1 = v1698_ce1_local;
assign v1698_d0 = grp_fu_488_p3;
assign v1698_we0 = v1698_we0_local;
assign xor_ln2292_fu_403_p2 = (tmp_319_fu_395_p3 ^ 1'd1);
assign zext_ln2290_fu_325_p1 = v1612_fu_317_p3;
assign zext_ln2294_fu_419_p1 = lshr_ln_reg_543_pp0_iter2_reg;
assign zext_ln2295_fu_383_p1 = add_ln2295_fu_377_p2;
always @ (posedge ap_clk) begin
    zext_ln2294_reg_579[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln2294_reg_579_pp0_iter4_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln2294_reg_579_pp0_iter5_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end
endmodule 