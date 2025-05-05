module main_graph_main_graph_Pipeline_VITIS_LOOP_899_156_VITIS_LOOP_900_157_VITIS_LOOP_901_158_VIT (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v64_address1,v64_ce1,v64_we1,v64_d1,v15_Addr_A,v15_EN_A,v15_WEN_A,v15_Din_A,v15_Dout_A,v65_address0,v65_ce0,v65_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] v64_address1;
output   v64_ce1;
output   v64_we1;
output  [7:0] v64_d1;
output  [31:0] v15_Addr_A;
output   v15_EN_A;
output  [0:0] v15_WEN_A;
output  [7:0] v15_Din_A;
input  [7:0] v15_Dout_A;
output  [12:0] v65_address0;
output   v65_ce0;
input  [6:0] v65_q0;
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
reg    ap_enable_reg_pp0_iter7;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln899_fu_201_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln899_reg_618;
wire   [0:0] icmp_ln900_fu_213_p2;
reg   [0:0] icmp_ln900_reg_622;
reg   [0:0] icmp_ln900_reg_622_pp0_iter2_reg;
wire   [0:0] empty_fu_288_p2;
reg   [0:0] empty_reg_632;
wire   [0:0] icmp_ln903_mid2908_fu_310_p2;
reg   [0:0] icmp_ln903_mid2908_reg_637;
wire   [2:0] select_ln900_fu_316_p3;
reg   [2:0] select_ln900_reg_642;
wire   [0:0] empty_56_fu_330_p2;
reg   [0:0] empty_56_reg_647;
reg   [0:0] empty_56_reg_647_pp0_iter3_reg;
reg   [0:0] empty_56_reg_647_pp0_iter4_reg;
reg   [0:0] empty_56_reg_647_pp0_iter5_reg;
wire   [9:0] v435_mid2_fu_335_p3;
reg   [9:0] v435_mid2_reg_652;
wire   [8:0] empty_57_fu_343_p1;
reg   [8:0] empty_57_reg_657;
wire   [0:0] icmp_ln903_1_fu_353_p2;
reg   [0:0] icmp_ln903_1_reg_662;
reg   [0:0] icmp_ln903_1_reg_662_pp0_iter3_reg;
reg   [0:0] icmp_ln903_1_reg_662_pp0_iter4_reg;
reg   [0:0] icmp_ln903_1_reg_662_pp0_iter5_reg;
reg   [0:0] icmp_ln903_1_reg_662_pp0_iter6_reg;
wire   [12:0] add_ln902_1_fu_468_p2;
reg   [12:0] add_ln902_1_reg_666;
reg   [12:0] add_ln902_1_reg_666_pp0_iter4_reg;
reg   [12:0] add_ln902_1_reg_666_pp0_iter5_reg;
reg   [12:0] add_ln902_1_reg_666_pp0_iter6_reg;
reg    ap_condition_exit_pp0_iter2_stage0;
wire   [63:0] zext_ln905_1_fu_483_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln904_1_fu_515_p1;
wire   [63:0] zext_ln902_2_fu_544_p1;
reg   [7:0] v438_fu_80;
wire   [7:0] grp_fu_552_p3;
reg   [7:0] ap_sig_allocacmp_v438_load;
wire    ap_loop_init;
reg   [9:0] v435_fu_84;
wire   [9:0] add_ln903_fu_347_p2;
reg   [2:0] v434_fu_88;
wire   [2:0] select_ln901_fu_424_p3;
reg   [12:0] indvar_flatten895_fu_92;
wire   [12:0] select_ln901_1_fu_365_p3;
reg   [2:0] v433_fu_96;
reg   [14:0] indvar_flatten909_fu_100;
wire   [14:0] select_ln900_1_fu_225_p3;
reg   [9:0] v432_fu_104;
wire   [9:0] select_ln899_1_fu_400_p3;
reg   [22:0] indvar_flatten933_fu_108;
wire   [22:0] add_ln899_1_fu_207_p2;
reg    v65_ce0_local;
reg    v15_EN_A_local;
wire   [31:0] v15_Addr_A_orig;
reg    v64_we1_local;
reg    v64_ce1_local;
wire   [14:0] add_ln900_1_fu_219_p2;
wire   [0:0] icmp_ln901_fu_270_p2;
wire   [0:0] xor_ln899_fu_259_p2;
wire   [2:0] select_ln899_fu_252_p3;
wire   [0:0] and_ln899_1_fu_276_p2;
wire   [0:0] exitcond_flatten897_not_fu_293_p2;
wire   [0:0] icmp_ln903_fu_264_p2;
wire   [0:0] and_ln899_fu_304_p2;
wire   [0:0] not_exitcond_flatten897_mid2932_fu_299_p2;
wire   [2:0] add_ln900_fu_282_p2;
wire   [0:0] empty_55_fu_324_p2;
wire   [12:0] add_ln901_1_fu_359_p2;
wire   [9:0] add_ln899_fu_394_p2;
wire   [2:0] v434_mid2902_fu_411_p3;
wire   [2:0] add_ln901_fu_418_p2;
wire   [8:0] trunc_ln900_fu_407_p1;
wire   [10:0] tmp_3_fu_439_p3;
wire   [10:0] zext_ln902_fu_447_p1;
wire   [10:0] add_ln902_fu_450_p2;
wire   [12:0] tmp_fu_456_p3;
wire   [12:0] zext_ln902_1_fu_464_p1;
wire   [17:0] tmp_s_fu_431_p3;
wire   [17:0] zext_ln905_fu_474_p1;
wire   [17:0] add_ln905_fu_477_p2;
wire   [10:0] tmp_4_fu_488_p3;
wire   [10:0] add_ln904_fu_495_p2;
wire   [12:0] tmp_11_fu_501_p3;
wire   [12:0] add_ln904_1_fu_509_p2;
wire   [6:0] grp_fu_552_p1;
wire   [7:0] grp_fu_552_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
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
wire   [7:0] grp_fu_552_p10;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 v438_fu_80 = 8'd0;
#0 v435_fu_84 = 10'd0;
#0 v434_fu_88 = 3'd0;
#0 indvar_flatten895_fu_92 = 13'd0;
#0 v433_fu_96 = 3'd0;
#0 indvar_flatten909_fu_100 = 15'd0;
#0 v432_fu_104 = 10'd0;
#0 indvar_flatten933_fu_108 = 23'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U367(.clk(ap_clk),.reset(ap_rst),.din0(v15_Dout_A),.din1(grp_fu_552_p1),.din2(grp_fu_552_p2),.ce(1'b1),.dout(grp_fu_552_p3));
main_graph_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter2_stage0)) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            indvar_flatten895_fu_92 <= 13'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln899_reg_618 == 1'd0))) begin
            indvar_flatten895_fu_92 <= select_ln901_1_fu_365_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten909_fu_100 <= 15'd0;
        end else if (((icmp_ln899_fu_201_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten909_fu_100 <= select_ln900_1_fu_225_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten933_fu_108 <= 23'd0;
        end else if (((icmp_ln899_fu_201_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten933_fu_108 <= add_ln899_1_fu_207_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v432_fu_104 <= 10'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v432_fu_104 <= select_ln899_1_fu_400_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v433_fu_96 <= 3'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln899_reg_618 == 1'd0))) begin
            v433_fu_96 <= select_ln900_fu_316_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v434_fu_88 <= 3'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v434_fu_88 <= select_ln901_fu_424_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v435_fu_84 <= 10'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln899_reg_618 == 1'd0))) begin
            v435_fu_84 <= add_ln903_fu_347_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v438_fu_80 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter7 == 1'b1)) begin
            v438_fu_80 <= grp_fu_552_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln902_1_reg_666 <= add_ln902_1_fu_468_p2;
        add_ln902_1_reg_666_pp0_iter4_reg <= add_ln902_1_reg_666;
        add_ln902_1_reg_666_pp0_iter5_reg <= add_ln902_1_reg_666_pp0_iter4_reg;
        add_ln902_1_reg_666_pp0_iter6_reg <= add_ln902_1_reg_666_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        empty_56_reg_647 <= empty_56_fu_330_p2;
        empty_56_reg_647_pp0_iter3_reg <= empty_56_reg_647;
        empty_56_reg_647_pp0_iter4_reg <= empty_56_reg_647_pp0_iter3_reg;
        empty_56_reg_647_pp0_iter5_reg <= empty_56_reg_647_pp0_iter4_reg;
        empty_57_reg_657 <= empty_57_fu_343_p1;
        empty_reg_632 <= empty_fu_288_p2;
        icmp_ln900_reg_622_pp0_iter2_reg <= icmp_ln900_reg_622;
        icmp_ln903_1_reg_662 <= icmp_ln903_1_fu_353_p2;
        icmp_ln903_1_reg_662_pp0_iter3_reg <= icmp_ln903_1_reg_662;
        icmp_ln903_1_reg_662_pp0_iter4_reg <= icmp_ln903_1_reg_662_pp0_iter3_reg;
        icmp_ln903_1_reg_662_pp0_iter5_reg <= icmp_ln903_1_reg_662_pp0_iter4_reg;
        icmp_ln903_1_reg_662_pp0_iter6_reg <= icmp_ln903_1_reg_662_pp0_iter5_reg;
        icmp_ln903_mid2908_reg_637 <= icmp_ln903_mid2908_fu_310_p2;
        select_ln900_reg_642 <= select_ln900_fu_316_p3;
        v435_mid2_reg_652 <= v435_mid2_fu_335_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        icmp_ln899_reg_618 <= icmp_ln899_fu_201_p2;
        icmp_ln900_reg_622 <= icmp_ln900_fu_213_p2;
    end
end
always @ (*) begin
    if (((icmp_ln899_fu_201_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln899_reg_618 == 1'd1))) begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b0;
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
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        ap_sig_allocacmp_v438_load = grp_fu_552_p3;
    end else begin
        ap_sig_allocacmp_v438_load = v438_fu_80;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15_EN_A_local = 1'b1;
    end else begin
        v15_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v64_ce1_local = 1'b1;
    end else begin
        v64_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (icmp_ln903_1_reg_662_pp0_iter6_reg == 1'd1))) begin
        v64_we1_local = 1'b1;
    end else begin
        v64_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v65_ce0_local = 1'b1;
    end else begin
        v65_ce0_local = 1'b0;
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
assign add_ln899_1_fu_207_p2 = (indvar_flatten933_fu_108 + 23'd1);
assign add_ln899_fu_394_p2 = (v432_fu_104 + 10'd1);
assign add_ln900_1_fu_219_p2 = (indvar_flatten909_fu_100 + 15'd1);
assign add_ln900_fu_282_p2 = (select_ln899_fu_252_p3 + 3'd1);
assign add_ln901_1_fu_359_p2 = (indvar_flatten895_fu_92 + 13'd1);
assign add_ln901_fu_418_p2 = (v434_mid2902_fu_411_p3 + 3'd1);
assign add_ln902_1_fu_468_p2 = (tmp_fu_456_p3 + zext_ln902_1_fu_464_p1);
assign add_ln902_fu_450_p2 = (tmp_3_fu_439_p3 + zext_ln902_fu_447_p1);
assign add_ln903_fu_347_p2 = (v435_mid2_fu_335_p3 + 10'd1);
assign add_ln904_1_fu_509_p2 = (tmp_11_fu_501_p3 + zext_ln902_1_fu_464_p1);
assign add_ln904_fu_495_p2 = (tmp_4_fu_488_p3 + zext_ln902_fu_447_p1);
assign add_ln905_fu_477_p2 = (tmp_s_fu_431_p3 + zext_ln905_fu_474_p1);
assign and_ln899_1_fu_276_p2 = (xor_ln899_fu_259_p2 & icmp_ln901_fu_270_p2);
assign and_ln899_fu_304_p2 = (xor_ln899_fu_259_p2 & icmp_ln903_fu_264_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_55_fu_324_p2 = (icmp_ln903_mid2908_fu_310_p2 | and_ln899_1_fu_276_p2);
assign empty_56_fu_330_p2 = (icmp_ln900_reg_622 | empty_55_fu_324_p2);
assign empty_57_fu_343_p1 = v435_mid2_fu_335_p3[8:0];
assign empty_fu_288_p2 = (icmp_ln900_reg_622 | and_ln899_1_fu_276_p2);
assign exitcond_flatten897_not_fu_293_p2 = (icmp_ln901_fu_270_p2 ^ 1'd1);
assign grp_fu_552_p1 = grp_fu_552_p10;
assign grp_fu_552_p10 = v65_q0;
assign grp_fu_552_p2 = ((empty_56_reg_647_pp0_iter5_reg[0:0] == 1'b1) ? 8'd0 : ap_sig_allocacmp_v438_load);
assign icmp_ln899_fu_201_p2 = ((indvar_flatten933_fu_108 == 23'd4194304) ? 1'b1 : 1'b0);
assign icmp_ln900_fu_213_p2 = ((indvar_flatten909_fu_100 == 15'd8192) ? 1'b1 : 1'b0);
assign icmp_ln901_fu_270_p2 = ((indvar_flatten895_fu_92 == 13'd2048) ? 1'b1 : 1'b0);
assign icmp_ln903_1_fu_353_p2 = ((add_ln903_fu_347_p2 == 10'd512) ? 1'b1 : 1'b0);
assign icmp_ln903_fu_264_p2 = ((v435_fu_84 == 10'd512) ? 1'b1 : 1'b0);
assign icmp_ln903_mid2908_fu_310_p2 = (not_exitcond_flatten897_mid2932_fu_299_p2 & and_ln899_fu_304_p2);
assign not_exitcond_flatten897_mid2932_fu_299_p2 = (icmp_ln900_reg_622 | exitcond_flatten897_not_fu_293_p2);
assign select_ln899_1_fu_400_p3 = ((icmp_ln900_reg_622_pp0_iter2_reg[0:0] == 1'b1) ? add_ln899_fu_394_p2 : v432_fu_104);
assign select_ln899_fu_252_p3 = ((icmp_ln900_reg_622[0:0] == 1'b1) ? 3'd0 : v433_fu_96);
assign select_ln900_1_fu_225_p3 = ((icmp_ln900_fu_213_p2[0:0] == 1'b1) ? 15'd1 : add_ln900_1_fu_219_p2);
assign select_ln900_fu_316_p3 = ((and_ln899_1_fu_276_p2[0:0] == 1'b1) ? add_ln900_fu_282_p2 : select_ln899_fu_252_p3);
assign select_ln901_1_fu_365_p3 = ((empty_fu_288_p2[0:0] == 1'b1) ? 13'd1 : add_ln901_1_fu_359_p2);
assign select_ln901_fu_424_p3 = ((icmp_ln903_mid2908_reg_637[0:0] == 1'b1) ? add_ln901_fu_418_p2 : v434_mid2902_fu_411_p3);
assign tmp_11_fu_501_p3 = {{add_ln904_fu_495_p2}, {2'd0}};
assign tmp_3_fu_439_p3 = {{trunc_ln900_fu_407_p1}, {2'd0}};
assign tmp_4_fu_488_p3 = {{empty_57_reg_657}, {2'd0}};
assign tmp_fu_456_p3 = {{add_ln902_fu_450_p2}, {2'd0}};
assign tmp_s_fu_431_p3 = {{trunc_ln900_fu_407_p1}, {9'd0}};
assign trunc_ln900_fu_407_p1 = select_ln899_1_fu_400_p3[8:0];
assign v15_Addr_A = v15_Addr_A_orig << 32'd0;
assign v15_Addr_A_orig = zext_ln905_1_fu_483_p1;
assign v15_Din_A = 8'd0;
assign v15_EN_A = v15_EN_A_local;
assign v15_WEN_A = 1'd0;
assign v434_mid2902_fu_411_p3 = ((empty_reg_632[0:0] == 1'b1) ? 3'd0 : v434_fu_88);
assign v435_mid2_fu_335_p3 = ((empty_56_fu_330_p2[0:0] == 1'b1) ? 10'd0 : v435_fu_84);
assign v64_address1 = zext_ln902_2_fu_544_p1;
assign v64_ce1 = v64_ce1_local;
assign v64_d1 = grp_fu_552_p3;
assign v64_we1 = v64_we1_local;
assign v65_address0 = zext_ln904_1_fu_515_p1;
assign v65_ce0 = v65_ce0_local;
assign xor_ln899_fu_259_p2 = (icmp_ln900_reg_622 ^ 1'd1);
assign zext_ln902_1_fu_464_p1 = select_ln901_fu_424_p3;
assign zext_ln902_2_fu_544_p1 = add_ln902_1_reg_666_pp0_iter6_reg;
assign zext_ln902_fu_447_p1 = select_ln900_reg_642;
assign zext_ln904_1_fu_515_p1 = add_ln904_1_fu_509_p2;
assign zext_ln905_1_fu_483_p1 = add_ln905_fu_477_p2;
assign zext_ln905_fu_474_p1 = v435_mid2_reg_652;
endmodule 