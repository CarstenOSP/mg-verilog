
module backprop_backprop_Pipeline_label_261 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v12_3_address0,v12_3_ce0,v12_3_we0,v12_3_d0,v12_3_address1,v12_3_ce1,v12_3_we1,v12_3_d1,v12_2_address0,v12_2_ce0,v12_2_we0,v12_2_d0,v12_2_address1,v12_2_ce1,v12_2_we1,v12_2_d1,v12_1_address0,v12_1_ce0,v12_1_we0,v12_1_d0,v12_1_address1,v12_1_ce1,v12_1_we1,v12_1_d1,v12_address0,v12_ce0,v12_we0,v12_d0,v12_address1,v12_ce1,v12_we1,v12_d1,v9_address0,v9_ce0,v9_q0,v9_address1,v9_ce1,v9_q1,v141_1,tmp_16,v9_1_address0,v9_1_ce0,v9_1_q0,v9_1_address1,v9_1_ce1,v9_1_q1,v9_2_address0,v9_2_ce0,v9_2_q0,v9_2_address1,v9_2_ce1,v9_2_q1,v9_3_address0,v9_3_ce0,v9_3_q0,v9_3_address1,v9_3_ce1,v9_3_q1,grp_fu_5565_p_din0,grp_fu_5565_p_din1,grp_fu_5565_p_dout0,grp_fu_5565_p_ce,grp_fu_5569_p_din0,grp_fu_5569_p_din1,grp_fu_5569_p_dout0,grp_fu_5569_p_ce,grp_fu_5573_p_din0,grp_fu_5573_p_din1,grp_fu_5573_p_dout0,grp_fu_5573_p_ce,grp_fu_12970_p_din0,grp_fu_12970_p_din1,grp_fu_12970_p_dout0,grp_fu_12970_p_ce,grp_fu_12974_p_din0,grp_fu_12974_p_din1,grp_fu_12974_p_dout0,grp_fu_12974_p_ce,grp_fu_12978_p_din0,grp_fu_12978_p_din1,grp_fu_12978_p_dout0,grp_fu_12978_p_ce,grp_fu_12982_p_din0,grp_fu_12982_p_din1,grp_fu_12982_p_dout0,grp_fu_12982_p_ce,grp_fu_12998_p_din0,grp_fu_12998_p_din1,grp_fu_12998_p_dout0,grp_fu_12998_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] v12_3_address0;
output   v12_3_ce0;
output   v12_3_we0;
output  [63:0] v12_3_d0;
output  [7:0] v12_3_address1;
output   v12_3_ce1;
output   v12_3_we1;
output  [63:0] v12_3_d1;
output  [7:0] v12_2_address0;
output   v12_2_ce0;
output   v12_2_we0;
output  [63:0] v12_2_d0;
output  [7:0] v12_2_address1;
output   v12_2_ce1;
output   v12_2_we1;
output  [63:0] v12_2_d1;
output  [7:0] v12_1_address0;
output   v12_1_ce0;
output   v12_1_we0;
output  [63:0] v12_1_d0;
output  [7:0] v12_1_address1;
output   v12_1_ce1;
output   v12_1_we1;
output  [63:0] v12_1_d1;
output  [7:0] v12_address0;
output   v12_ce0;
output   v12_we0;
output  [63:0] v12_d0;
output  [7:0] v12_address1;
output   v12_ce1;
output   v12_we1;
output  [63:0] v12_d1;
output  [3:0] v9_address0;
output   v9_ce0;
input  [63:0] v9_q0;
output  [3:0] v9_address1;
output   v9_ce1;
input  [63:0] v9_q1;
input  [63:0] v141_1;
input  [2:0] tmp_16;
output  [3:0] v9_1_address0;
output   v9_1_ce0;
input  [63:0] v9_1_q0;
output  [3:0] v9_1_address1;
output   v9_1_ce1;
input  [63:0] v9_1_q1;
output  [3:0] v9_2_address0;
output   v9_2_ce0;
input  [63:0] v9_2_q0;
output  [3:0] v9_2_address1;
output   v9_2_ce1;
input  [63:0] v9_2_q1;
output  [3:0] v9_3_address0;
output   v9_3_ce0;
input  [63:0] v9_3_q0;
output  [3:0] v9_3_address1;
output   v9_3_ce1;
input  [63:0] v9_3_q1;
output  [63:0] grp_fu_5565_p_din0;
output  [63:0] grp_fu_5565_p_din1;
input  [63:0] grp_fu_5565_p_dout0;
output   grp_fu_5565_p_ce;
output  [63:0] grp_fu_5569_p_din0;
output  [63:0] grp_fu_5569_p_din1;
input  [63:0] grp_fu_5569_p_dout0;
output   grp_fu_5569_p_ce;
output  [63:0] grp_fu_5573_p_din0;
output  [63:0] grp_fu_5573_p_din1;
input  [63:0] grp_fu_5573_p_dout0;
output   grp_fu_5573_p_ce;
output  [63:0] grp_fu_12970_p_din0;
output  [63:0] grp_fu_12970_p_din1;
input  [63:0] grp_fu_12970_p_dout0;
output   grp_fu_12970_p_ce;
output  [63:0] grp_fu_12974_p_din0;
output  [63:0] grp_fu_12974_p_din1;
input  [63:0] grp_fu_12974_p_dout0;
output   grp_fu_12974_p_ce;
output  [63:0] grp_fu_12978_p_din0;
output  [63:0] grp_fu_12978_p_din1;
input  [63:0] grp_fu_12978_p_dout0;
output   grp_fu_12978_p_ce;
output  [63:0] grp_fu_12982_p_din0;
output  [63:0] grp_fu_12982_p_din1;
input  [63:0] grp_fu_12982_p_dout0;
output   grp_fu_12982_p_ce;
output  [63:0] grp_fu_12998_p_din0;
output  [63:0] grp_fu_12998_p_din1;
input  [63:0] grp_fu_12998_p_dout0;
output   grp_fu_12998_p_ce;
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
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_326_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] lshr_ln235_1_fu_334_p4;
reg   [3:0] lshr_ln235_1_reg_452;
reg   [3:0] lshr_ln235_1_reg_452_pp0_iter1_reg;
reg   [3:0] lshr_ln235_1_reg_452_pp0_iter2_reg;
reg   [3:0] lshr_ln235_1_reg_452_pp0_iter3_reg;
reg   [3:0] lshr_ln235_1_reg_452_pp0_iter4_reg;
reg   [3:0] lshr_ln235_1_reg_452_pp0_iter5_reg;
reg   [3:0] lshr_ln235_1_reg_452_pp0_iter6_reg;
reg   [3:0] lshr_ln235_1_reg_452_pp0_iter7_reg;
reg   [3:0] lshr_ln235_1_reg_452_pp0_iter8_reg;
wire   [2:0] tmp_s_fu_352_p4;
reg   [2:0] tmp_s_reg_477;
reg   [2:0] tmp_s_reg_477_pp0_iter1_reg;
reg   [2:0] tmp_s_reg_477_pp0_iter2_reg;
reg   [2:0] tmp_s_reg_477_pp0_iter3_reg;
reg   [2:0] tmp_s_reg_477_pp0_iter4_reg;
reg   [2:0] tmp_s_reg_477_pp0_iter5_reg;
reg   [2:0] tmp_s_reg_477_pp0_iter6_reg;
reg   [2:0] tmp_s_reg_477_pp0_iter7_reg;
reg   [2:0] tmp_s_reg_477_pp0_iter8_reg;
reg   [63:0] v143_reg_502;
reg   [63:0] v143_8_reg_507;
reg   [63:0] v143_9_reg_512;
reg   [63:0] v143_10_reg_517;
reg   [63:0] v143_11_reg_522;
reg   [63:0] v143_12_reg_527;
reg   [63:0] v143_13_reg_532;
reg   [63:0] v143_7_reg_537;
reg   [63:0] v144_reg_542;
reg   [63:0] v144_1_reg_547;
reg   [63:0] v144_2_reg_552;
reg   [63:0] v144_3_reg_557;
reg   [63:0] v144_4_reg_562;
reg   [63:0] v144_5_reg_567;
reg   [63:0] v144_6_reg_572;
reg   [63:0] v144_7_reg_577;
wire   [63:0] zext_ln235_fu_344_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln236_fu_370_p1;
wire   [63:0] zext_ln238_fu_397_p1;
wire   [63:0] zext_ln238_1_fu_415_p1;
reg   [6:0] v142_fu_70;
wire   [6:0] add_ln235_fu_378_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v142_1;
reg    v9_ce1_local;
reg    v9_ce0_local;
reg    v9_1_ce1_local;
reg    v9_1_ce0_local;
reg    v9_2_ce1_local;
reg    v9_2_ce0_local;
reg    v9_3_ce1_local;
reg    v9_3_ce0_local;
reg    v12_we1_local;
reg    v12_ce1_local;
reg    v12_we0_local;
reg    v12_ce0_local;
reg    v12_1_we1_local;
reg    v12_1_ce1_local;
reg    v12_1_we0_local;
reg    v12_1_ce0_local;
reg    v12_2_we1_local;
reg    v12_2_ce1_local;
reg    v12_2_we0_local;
reg    v12_2_ce0_local;
reg    v12_3_we1_local;
reg    v12_3_ce1_local;
reg    v12_3_we0_local;
reg    v12_3_ce0_local;
wire   [3:0] or_ln236_1_fu_362_p3;
wire   [7:0] add_ln238_2_fu_389_p4;
wire   [7:0] add_ln238_3_fu_405_p5;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
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
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 v142_fu_70 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((tmp_fu_326_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v142_fu_70 <= add_ln235_fu_378_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v142_fu_70 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln235_1_reg_452 <= {{ap_sig_allocacmp_v142_1[5:2]}};
        lshr_ln235_1_reg_452_pp0_iter1_reg <= lshr_ln235_1_reg_452;
        tmp_s_reg_477 <= {{ap_sig_allocacmp_v142_1[5:3]}};
        tmp_s_reg_477_pp0_iter1_reg <= tmp_s_reg_477;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        lshr_ln235_1_reg_452_pp0_iter2_reg <= lshr_ln235_1_reg_452_pp0_iter1_reg;
        lshr_ln235_1_reg_452_pp0_iter3_reg <= lshr_ln235_1_reg_452_pp0_iter2_reg;
        lshr_ln235_1_reg_452_pp0_iter4_reg <= lshr_ln235_1_reg_452_pp0_iter3_reg;
        lshr_ln235_1_reg_452_pp0_iter5_reg <= lshr_ln235_1_reg_452_pp0_iter4_reg;
        lshr_ln235_1_reg_452_pp0_iter6_reg <= lshr_ln235_1_reg_452_pp0_iter5_reg;
        lshr_ln235_1_reg_452_pp0_iter7_reg <= lshr_ln235_1_reg_452_pp0_iter6_reg;
        lshr_ln235_1_reg_452_pp0_iter8_reg <= lshr_ln235_1_reg_452_pp0_iter7_reg;
        tmp_s_reg_477_pp0_iter2_reg <= tmp_s_reg_477_pp0_iter1_reg;
        tmp_s_reg_477_pp0_iter3_reg <= tmp_s_reg_477_pp0_iter2_reg;
        tmp_s_reg_477_pp0_iter4_reg <= tmp_s_reg_477_pp0_iter3_reg;
        tmp_s_reg_477_pp0_iter5_reg <= tmp_s_reg_477_pp0_iter4_reg;
        tmp_s_reg_477_pp0_iter6_reg <= tmp_s_reg_477_pp0_iter5_reg;
        tmp_s_reg_477_pp0_iter7_reg <= tmp_s_reg_477_pp0_iter6_reg;
        tmp_s_reg_477_pp0_iter8_reg <= tmp_s_reg_477_pp0_iter7_reg;
        v144_1_reg_547 <= grp_fu_5569_p_dout0;
        v144_2_reg_552 <= grp_fu_5573_p_dout0;
        v144_3_reg_557 <= grp_fu_12970_p_dout0;
        v144_4_reg_562 <= grp_fu_12974_p_dout0;
        v144_5_reg_567 <= grp_fu_12978_p_dout0;
        v144_6_reg_572 <= grp_fu_12982_p_dout0;
        v144_7_reg_577 <= grp_fu_12998_p_dout0;
        v144_reg_542 <= grp_fu_5565_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v143_10_reg_517 <= v9_3_q1;
        v143_11_reg_522 <= v9_q0;
        v143_12_reg_527 <= v9_1_q0;
        v143_13_reg_532 <= v9_2_q0;
        v143_7_reg_537 <= v9_3_q0;
        v143_8_reg_507 <= v9_1_q1;
        v143_9_reg_512 <= v9_2_q1;
        v143_reg_502 <= v9_q1;
    end
end
always @ (*) begin
    if (((tmp_fu_326_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v142_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_v142_1 = v142_fu_70;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v12_1_ce0_local = 1'b1;
    end else begin
        v12_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v12_1_ce1_local = 1'b1;
    end else begin
        v12_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v12_1_we0_local = 1'b1;
    end else begin
        v12_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v12_1_we1_local = 1'b1;
    end else begin
        v12_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v12_2_ce0_local = 1'b1;
    end else begin
        v12_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v12_2_ce1_local = 1'b1;
    end else begin
        v12_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v12_2_we0_local = 1'b1;
    end else begin
        v12_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v12_2_we1_local = 1'b1;
    end else begin
        v12_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v12_3_ce0_local = 1'b1;
    end else begin
        v12_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v12_3_ce1_local = 1'b1;
    end else begin
        v12_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v12_3_we0_local = 1'b1;
    end else begin
        v12_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v12_3_we1_local = 1'b1;
    end else begin
        v12_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v12_ce0_local = 1'b1;
    end else begin
        v12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v12_ce1_local = 1'b1;
    end else begin
        v12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v12_we0_local = 1'b1;
    end else begin
        v12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v12_we1_local = 1'b1;
    end else begin
        v12_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9_1_ce0_local = 1'b1;
    end else begin
        v9_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9_1_ce1_local = 1'b1;
    end else begin
        v9_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9_2_ce0_local = 1'b1;
    end else begin
        v9_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9_2_ce1_local = 1'b1;
    end else begin
        v9_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9_3_ce0_local = 1'b1;
    end else begin
        v9_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9_3_ce1_local = 1'b1;
    end else begin
        v9_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9_ce0_local = 1'b1;
    end else begin
        v9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9_ce1_local = 1'b1;
    end else begin
        v9_ce1_local = 1'b0;
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
assign add_ln235_fu_378_p2 = (ap_sig_allocacmp_v142_1 + 7'd8);
assign add_ln238_2_fu_389_p4 = {{{tmp_16}, {1'd1}}, {lshr_ln235_1_reg_452_pp0_iter8_reg}};
assign add_ln238_3_fu_405_p5 = {{{{tmp_16}, {1'd1}}, {tmp_s_reg_477_pp0_iter8_reg}}, {1'd1}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_12970_p_ce = 1'b1;
assign grp_fu_12970_p_din0 = v141_1;
assign grp_fu_12970_p_din1 = v143_10_reg_517;
assign grp_fu_12974_p_ce = 1'b1;
assign grp_fu_12974_p_din0 = v141_1;
assign grp_fu_12974_p_din1 = v143_11_reg_522;
assign grp_fu_12978_p_ce = 1'b1;
assign grp_fu_12978_p_din0 = v141_1;
assign grp_fu_12978_p_din1 = v143_12_reg_527;
assign grp_fu_12982_p_ce = 1'b1;
assign grp_fu_12982_p_din0 = v141_1;
assign grp_fu_12982_p_din1 = v143_13_reg_532;
assign grp_fu_12998_p_ce = 1'b1;
assign grp_fu_12998_p_din0 = v141_1;
assign grp_fu_12998_p_din1 = v143_7_reg_537;
assign grp_fu_5565_p_ce = 1'b1;
assign grp_fu_5565_p_din0 = v141_1;
assign grp_fu_5565_p_din1 = v143_reg_502;
assign grp_fu_5569_p_ce = 1'b1;
assign grp_fu_5569_p_din0 = v141_1;
assign grp_fu_5569_p_din1 = v143_8_reg_507;
assign grp_fu_5573_p_ce = 1'b1;
assign grp_fu_5573_p_din0 = v141_1;
assign grp_fu_5573_p_din1 = v143_9_reg_512;
assign lshr_ln235_1_fu_334_p4 = {{ap_sig_allocacmp_v142_1[5:2]}};
assign or_ln236_1_fu_362_p3 = {{tmp_s_fu_352_p4}, {1'd1}};
assign tmp_fu_326_p3 = ap_sig_allocacmp_v142_1[32'd6];
assign tmp_s_fu_352_p4 = {{ap_sig_allocacmp_v142_1[5:3]}};
assign v12_1_address0 = zext_ln238_1_fu_415_p1;
assign v12_1_address1 = zext_ln238_fu_397_p1;
assign v12_1_ce0 = v12_1_ce0_local;
assign v12_1_ce1 = v12_1_ce1_local;
assign v12_1_d0 = v144_5_reg_567;
assign v12_1_d1 = v144_1_reg_547;
assign v12_1_we0 = v12_1_we0_local;
assign v12_1_we1 = v12_1_we1_local;
assign v12_2_address0 = zext_ln238_1_fu_415_p1;
assign v12_2_address1 = zext_ln238_fu_397_p1;
assign v12_2_ce0 = v12_2_ce0_local;
assign v12_2_ce1 = v12_2_ce1_local;
assign v12_2_d0 = v144_6_reg_572;
assign v12_2_d1 = v144_2_reg_552;
assign v12_2_we0 = v12_2_we0_local;
assign v12_2_we1 = v12_2_we1_local;
assign v12_3_address0 = zext_ln238_1_fu_415_p1;
assign v12_3_address1 = zext_ln238_fu_397_p1;
assign v12_3_ce0 = v12_3_ce0_local;
assign v12_3_ce1 = v12_3_ce1_local;
assign v12_3_d0 = v144_7_reg_577;
assign v12_3_d1 = v144_3_reg_557;
assign v12_3_we0 = v12_3_we0_local;
assign v12_3_we1 = v12_3_we1_local;
assign v12_address0 = zext_ln238_1_fu_415_p1;
assign v12_address1 = zext_ln238_fu_397_p1;
assign v12_ce0 = v12_ce0_local;
assign v12_ce1 = v12_ce1_local;
assign v12_d0 = v144_4_reg_562;
assign v12_d1 = v144_reg_542;
assign v12_we0 = v12_we0_local;
assign v12_we1 = v12_we1_local;
assign v9_1_address0 = zext_ln236_fu_370_p1;
assign v9_1_address1 = zext_ln235_fu_344_p1;
assign v9_1_ce0 = v9_1_ce0_local;
assign v9_1_ce1 = v9_1_ce1_local;
assign v9_2_address0 = zext_ln236_fu_370_p1;
assign v9_2_address1 = zext_ln235_fu_344_p1;
assign v9_2_ce0 = v9_2_ce0_local;
assign v9_2_ce1 = v9_2_ce1_local;
assign v9_3_address0 = zext_ln236_fu_370_p1;
assign v9_3_address1 = zext_ln235_fu_344_p1;
assign v9_3_ce0 = v9_3_ce0_local;
assign v9_3_ce1 = v9_3_ce1_local;
assign v9_address0 = zext_ln236_fu_370_p1;
assign v9_address1 = zext_ln235_fu_344_p1;
assign v9_ce0 = v9_ce0_local;
assign v9_ce1 = v9_ce1_local;
assign zext_ln235_fu_344_p1 = lshr_ln235_1_fu_334_p4;
assign zext_ln236_fu_370_p1 = or_ln236_1_fu_362_p3;
assign zext_ln238_1_fu_415_p1 = add_ln238_3_fu_405_p5;
assign zext_ln238_fu_397_p1 = add_ln238_2_fu_389_p4;
endmodule 
