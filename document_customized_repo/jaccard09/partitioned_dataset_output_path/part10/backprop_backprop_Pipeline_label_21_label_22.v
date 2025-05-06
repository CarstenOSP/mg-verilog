
module backprop_backprop_Pipeline_label_21_label_22 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v20_address0,v20_ce0,v20_q0,v11_3_address0,v11_3_ce0,v11_3_we0,v11_3_d0,v11_3_address1,v11_3_ce1,v11_3_we1,v11_3_d1,v11_2_address0,v11_2_ce0,v11_2_we0,v11_2_d0,v11_2_address1,v11_2_ce1,v11_2_we1,v11_2_d1,v11_1_address0,v11_1_ce0,v11_1_we0,v11_1_d0,v11_1_address1,v11_1_ce1,v11_1_we1,v11_1_d1,v11_address0,v11_ce0,v11_we0,v11_d0,v11_address1,v11_ce1,v11_we1,v11_d1,v8_address0,v8_ce0,v8_q0,v8_1_address0,v8_1_ce0,v8_1_q0,v8_2_address0,v8_2_ce0,v8_2_q0,v8_3_address0,v8_3_ce0,v8_3_q0,v8_4_address0,v8_4_ce0,v8_4_q0,v8_5_address0,v8_5_ce0,v8_5_q0,v8_6_address0,v8_6_ce0,v8_6_q0,v8_7_address0,v8_7_ce0,v8_7_q0,grp_fu_16024_p_din0,grp_fu_16024_p_din1,grp_fu_16024_p_dout0,grp_fu_16024_p_ce,grp_fu_16096_p_din0,grp_fu_16096_p_din1,grp_fu_16096_p_dout0,grp_fu_16096_p_ce,grp_fu_16100_p_din0,grp_fu_16100_p_din1,grp_fu_16100_p_dout0,grp_fu_16100_p_ce,grp_fu_16104_p_din0,grp_fu_16104_p_din1,grp_fu_16104_p_dout0,grp_fu_16104_p_ce,grp_fu_16108_p_din0,grp_fu_16108_p_din1,grp_fu_16108_p_dout0,grp_fu_16108_p_ce,grp_fu_16112_p_din0,grp_fu_16112_p_din1,grp_fu_16112_p_dout0,grp_fu_16112_p_ce,grp_fu_16116_p_din0,grp_fu_16116_p_din1,grp_fu_16116_p_dout0,grp_fu_16116_p_ce,grp_fu_16120_p_din0,grp_fu_16120_p_din1,grp_fu_16120_p_dout0,grp_fu_16120_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] v20_address0;
output   v20_ce0;
input  [63:0] v20_q0;
output  [9:0] v11_3_address0;
output   v11_3_ce0;
output   v11_3_we0;
output  [63:0] v11_3_d0;
output  [9:0] v11_3_address1;
output   v11_3_ce1;
output   v11_3_we1;
output  [63:0] v11_3_d1;
output  [9:0] v11_2_address0;
output   v11_2_ce0;
output   v11_2_we0;
output  [63:0] v11_2_d0;
output  [9:0] v11_2_address1;
output   v11_2_ce1;
output   v11_2_we1;
output  [63:0] v11_2_d1;
output  [9:0] v11_1_address0;
output   v11_1_ce0;
output   v11_1_we0;
output  [63:0] v11_1_d0;
output  [9:0] v11_1_address1;
output   v11_1_ce1;
output   v11_1_we1;
output  [63:0] v11_1_d1;
output  [9:0] v11_address0;
output   v11_ce0;
output   v11_we0;
output  [63:0] v11_d0;
output  [9:0] v11_address1;
output   v11_ce1;
output   v11_we1;
output  [63:0] v11_d1;
output  [2:0] v8_address0;
output   v8_ce0;
input  [63:0] v8_q0;
output  [2:0] v8_1_address0;
output   v8_1_ce0;
input  [63:0] v8_1_q0;
output  [2:0] v8_2_address0;
output   v8_2_ce0;
input  [63:0] v8_2_q0;
output  [2:0] v8_3_address0;
output   v8_3_ce0;
input  [63:0] v8_3_q0;
output  [2:0] v8_4_address0;
output   v8_4_ce0;
input  [63:0] v8_4_q0;
output  [2:0] v8_5_address0;
output   v8_5_ce0;
input  [63:0] v8_5_q0;
output  [2:0] v8_6_address0;
output   v8_6_ce0;
input  [63:0] v8_6_q0;
output  [2:0] v8_7_address0;
output   v8_7_ce0;
input  [63:0] v8_7_q0;
output  [63:0] grp_fu_16024_p_din0;
output  [63:0] grp_fu_16024_p_din1;
input  [63:0] grp_fu_16024_p_dout0;
output   grp_fu_16024_p_ce;
output  [63:0] grp_fu_16096_p_din0;
output  [63:0] grp_fu_16096_p_din1;
input  [63:0] grp_fu_16096_p_dout0;
output   grp_fu_16096_p_ce;
output  [63:0] grp_fu_16100_p_din0;
output  [63:0] grp_fu_16100_p_din1;
input  [63:0] grp_fu_16100_p_dout0;
output   grp_fu_16100_p_ce;
output  [63:0] grp_fu_16104_p_din0;
output  [63:0] grp_fu_16104_p_din1;
input  [63:0] grp_fu_16104_p_dout0;
output   grp_fu_16104_p_ce;
output  [63:0] grp_fu_16108_p_din0;
output  [63:0] grp_fu_16108_p_din1;
input  [63:0] grp_fu_16108_p_dout0;
output   grp_fu_16108_p_ce;
output  [63:0] grp_fu_16112_p_din0;
output  [63:0] grp_fu_16112_p_din1;
input  [63:0] grp_fu_16112_p_dout0;
output   grp_fu_16112_p_ce;
output  [63:0] grp_fu_16116_p_din0;
output  [63:0] grp_fu_16116_p_din1;
input  [63:0] grp_fu_16116_p_dout0;
output   grp_fu_16116_p_ce;
output  [63:0] grp_fu_16120_p_din0;
output  [63:0] grp_fu_16120_p_din1;
input  [63:0] grp_fu_16120_p_dout0;
output   grp_fu_16120_p_ce;
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
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln210_fu_357_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] lshr_ln3_fu_415_p4;
reg   [2:0] lshr_ln3_reg_523;
reg   [2:0] lshr_ln3_reg_523_pp0_iter2_reg;
reg   [2:0] lshr_ln3_reg_523_pp0_iter3_reg;
reg   [2:0] lshr_ln3_reg_523_pp0_iter4_reg;
reg   [2:0] lshr_ln3_reg_523_pp0_iter5_reg;
reg   [2:0] lshr_ln3_reg_523_pp0_iter6_reg;
reg   [2:0] lshr_ln3_reg_523_pp0_iter7_reg;
reg   [2:0] lshr_ln3_reg_523_pp0_iter8_reg;
reg   [2:0] lshr_ln3_reg_523_pp0_iter9_reg;
reg   [2:0] lshr_ln3_reg_523_pp0_iter10_reg;
wire   [63:0] zext_ln212_fu_425_p1;
reg   [63:0] zext_ln212_reg_528;
reg   [3:0] lshr_ln4_reg_541;
reg   [3:0] lshr_ln4_reg_541_pp0_iter2_reg;
reg   [3:0] lshr_ln4_reg_541_pp0_iter3_reg;
reg   [3:0] lshr_ln4_reg_541_pp0_iter4_reg;
reg   [3:0] lshr_ln4_reg_541_pp0_iter5_reg;
reg   [3:0] lshr_ln4_reg_541_pp0_iter6_reg;
reg   [3:0] lshr_ln4_reg_541_pp0_iter7_reg;
reg   [3:0] lshr_ln4_reg_541_pp0_iter8_reg;
reg   [3:0] lshr_ln4_reg_541_pp0_iter9_reg;
wire   [5:0] trunc_ln215_fu_443_p1;
reg   [5:0] trunc_ln215_reg_546;
reg   [5:0] trunc_ln215_reg_546_pp0_iter2_reg;
reg   [5:0] trunc_ln215_reg_546_pp0_iter3_reg;
reg   [5:0] trunc_ln215_reg_546_pp0_iter4_reg;
reg   [5:0] trunc_ln215_reg_546_pp0_iter5_reg;
reg   [5:0] trunc_ln215_reg_546_pp0_iter6_reg;
reg   [5:0] trunc_ln215_reg_546_pp0_iter7_reg;
reg   [5:0] trunc_ln215_reg_546_pp0_iter8_reg;
reg   [5:0] trunc_ln215_reg_546_pp0_iter9_reg;
reg   [5:0] trunc_ln215_reg_546_pp0_iter10_reg;
reg   [63:0] v126_reg_567;
reg   [63:0] v126_reg_567_pp0_iter3_reg;
reg   [63:0] v128_reg_579;
reg   [63:0] v128_8_reg_604;
reg   [63:0] v128_9_reg_609;
reg   [63:0] v128_10_reg_614;
reg   [63:0] v128_11_reg_619;
reg   [63:0] v128_12_reg_624;
reg   [63:0] v128_13_reg_629;
reg   [63:0] v128_7_reg_634;
reg   [63:0] v129_reg_639;
reg   [63:0] v129_1_reg_644;
reg   [63:0] v129_2_reg_649;
reg   [63:0] v129_3_reg_654;
reg   [63:0] v129_4_reg_659;
reg   [63:0] v129_5_reg_664;
reg   [63:0] v129_6_reg_669;
reg   [63:0] v129_7_reg_674;
wire   [63:0] zext_ln210_fu_410_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln215_fu_469_p1;
wire   [63:0] zext_ln215_1_fu_485_p1;
reg   [6:0] v127_fu_78;
wire   [6:0] add_ln212_fu_447_p2;
wire    ap_loop_init;
reg   [6:0] v125_fu_82;
wire   [6:0] select_ln210_1_fu_402_p3;
reg   [9:0] indvar_flatten19_fu_86;
wire   [9:0] add_ln210_fu_363_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten19_load;
reg    v20_ce0_local;
reg    v8_ce0_local;
reg    v8_1_ce0_local;
reg    v8_2_ce0_local;
reg    v8_3_ce0_local;
reg    v8_4_ce0_local;
reg    v8_5_ce0_local;
reg    v8_6_ce0_local;
reg    v8_7_ce0_local;
reg    v11_we1_local;
reg    v11_ce1_local;
reg    v11_we0_local;
reg    v11_ce0_local;
reg    v11_1_we1_local;
reg    v11_1_ce1_local;
reg    v11_1_we0_local;
reg    v11_1_ce0_local;
reg    v11_2_we1_local;
reg    v11_2_ce1_local;
reg    v11_2_we0_local;
reg    v11_2_ce0_local;
reg    v11_3_we1_local;
reg    v11_3_ce1_local;
reg    v11_3_we0_local;
reg    v11_3_ce0_local;
wire   [0:0] tmp_fu_380_p3;
wire   [6:0] add_ln210_1_fu_396_p2;
wire   [6:0] select_ln210_fu_388_p3;
wire   [9:0] add_ln_fu_463_p3;
wire   [9:0] add_ln215_1_fu_477_p4;
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
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
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
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 v127_fu_78 = 7'd0;
#0 v125_fu_82 = 7'd0;
#0 indvar_flatten19_fu_86 = 10'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter10_reg == 1'b1))) begin
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
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
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
        if (((icmp_ln210_fu_357_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten19_fu_86 <= add_ln210_fu_363_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten19_fu_86 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v125_fu_82 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v125_fu_82 <= select_ln210_1_fu_402_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v127_fu_78 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v127_fu_78 <= add_ln212_fu_447_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        lshr_ln3_reg_523_pp0_iter10_reg <= lshr_ln3_reg_523_pp0_iter9_reg;
        lshr_ln3_reg_523_pp0_iter2_reg <= lshr_ln3_reg_523;
        lshr_ln3_reg_523_pp0_iter3_reg <= lshr_ln3_reg_523_pp0_iter2_reg;
        lshr_ln3_reg_523_pp0_iter4_reg <= lshr_ln3_reg_523_pp0_iter3_reg;
        lshr_ln3_reg_523_pp0_iter5_reg <= lshr_ln3_reg_523_pp0_iter4_reg;
        lshr_ln3_reg_523_pp0_iter6_reg <= lshr_ln3_reg_523_pp0_iter5_reg;
        lshr_ln3_reg_523_pp0_iter7_reg <= lshr_ln3_reg_523_pp0_iter6_reg;
        lshr_ln3_reg_523_pp0_iter8_reg <= lshr_ln3_reg_523_pp0_iter7_reg;
        lshr_ln3_reg_523_pp0_iter9_reg <= lshr_ln3_reg_523_pp0_iter8_reg;
        lshr_ln4_reg_541_pp0_iter2_reg <= lshr_ln4_reg_541;
        lshr_ln4_reg_541_pp0_iter3_reg <= lshr_ln4_reg_541_pp0_iter2_reg;
        lshr_ln4_reg_541_pp0_iter4_reg <= lshr_ln4_reg_541_pp0_iter3_reg;
        lshr_ln4_reg_541_pp0_iter5_reg <= lshr_ln4_reg_541_pp0_iter4_reg;
        lshr_ln4_reg_541_pp0_iter6_reg <= lshr_ln4_reg_541_pp0_iter5_reg;
        lshr_ln4_reg_541_pp0_iter7_reg <= lshr_ln4_reg_541_pp0_iter6_reg;
        lshr_ln4_reg_541_pp0_iter8_reg <= lshr_ln4_reg_541_pp0_iter7_reg;
        lshr_ln4_reg_541_pp0_iter9_reg <= lshr_ln4_reg_541_pp0_iter8_reg;
        trunc_ln215_reg_546_pp0_iter10_reg <= trunc_ln215_reg_546_pp0_iter9_reg;
        trunc_ln215_reg_546_pp0_iter2_reg <= trunc_ln215_reg_546;
        trunc_ln215_reg_546_pp0_iter3_reg <= trunc_ln215_reg_546_pp0_iter2_reg;
        trunc_ln215_reg_546_pp0_iter4_reg <= trunc_ln215_reg_546_pp0_iter3_reg;
        trunc_ln215_reg_546_pp0_iter5_reg <= trunc_ln215_reg_546_pp0_iter4_reg;
        trunc_ln215_reg_546_pp0_iter6_reg <= trunc_ln215_reg_546_pp0_iter5_reg;
        trunc_ln215_reg_546_pp0_iter7_reg <= trunc_ln215_reg_546_pp0_iter6_reg;
        trunc_ln215_reg_546_pp0_iter8_reg <= trunc_ln215_reg_546_pp0_iter7_reg;
        trunc_ln215_reg_546_pp0_iter9_reg <= trunc_ln215_reg_546_pp0_iter8_reg;
        v126_reg_567 <= v20_q0;
        v126_reg_567_pp0_iter3_reg <= v126_reg_567;
        v128_10_reg_614 <= v8_3_q0;
        v128_11_reg_619 <= v8_4_q0;
        v128_12_reg_624 <= v8_5_q0;
        v128_13_reg_629 <= v8_6_q0;
        v128_7_reg_634 <= v8_7_q0;
        v128_8_reg_604 <= v8_1_q0;
        v128_9_reg_609 <= v8_2_q0;
        v128_reg_579 <= v8_q0;
        v129_1_reg_644 <= grp_fu_16096_p_dout0;
        v129_2_reg_649 <= grp_fu_16100_p_dout0;
        v129_3_reg_654 <= grp_fu_16104_p_dout0;
        v129_4_reg_659 <= grp_fu_16108_p_dout0;
        v129_5_reg_664 <= grp_fu_16112_p_dout0;
        v129_6_reg_669 <= grp_fu_16116_p_dout0;
        v129_7_reg_674 <= grp_fu_16120_p_dout0;
        v129_reg_639 <= grp_fu_16024_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln3_reg_523 <= {{select_ln210_fu_388_p3[5:3]}};
        lshr_ln4_reg_541 <= {{select_ln210_fu_388_p3[5:2]}};
        trunc_ln215_reg_546 <= trunc_ln215_fu_443_p1;
        zext_ln212_reg_528[2 : 0] <= zext_ln212_fu_425_p1[2 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln210_fu_357_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter10_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_indvar_flatten19_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten19_load = indvar_flatten19_fu_86;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        v11_1_ce0_local = 1'b1;
    end else begin
        v11_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v11_1_ce1_local = 1'b1;
    end else begin
        v11_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        v11_1_we0_local = 1'b1;
    end else begin
        v11_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v11_1_we1_local = 1'b1;
    end else begin
        v11_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        v11_2_ce0_local = 1'b1;
    end else begin
        v11_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v11_2_ce1_local = 1'b1;
    end else begin
        v11_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        v11_2_we0_local = 1'b1;
    end else begin
        v11_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v11_2_we1_local = 1'b1;
    end else begin
        v11_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        v11_3_ce0_local = 1'b1;
    end else begin
        v11_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v11_3_ce1_local = 1'b1;
    end else begin
        v11_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        v11_3_we0_local = 1'b1;
    end else begin
        v11_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v11_3_we1_local = 1'b1;
    end else begin
        v11_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        v11_ce0_local = 1'b1;
    end else begin
        v11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v11_ce1_local = 1'b1;
    end else begin
        v11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        v11_we0_local = 1'b1;
    end else begin
        v11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v11_we1_local = 1'b1;
    end else begin
        v11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v20_ce0_local = 1'b1;
    end else begin
        v20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_1_ce0_local = 1'b1;
    end else begin
        v8_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_2_ce0_local = 1'b1;
    end else begin
        v8_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_3_ce0_local = 1'b1;
    end else begin
        v8_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8_4_ce0_local = 1'b1;
    end else begin
        v8_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8_5_ce0_local = 1'b1;
    end else begin
        v8_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8_6_ce0_local = 1'b1;
    end else begin
        v8_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8_7_ce0_local = 1'b1;
    end else begin
        v8_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_ce0_local = 1'b1;
    end else begin
        v8_ce0_local = 1'b0;
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
assign add_ln210_1_fu_396_p2 = (v125_fu_82 + 7'd1);
assign add_ln210_fu_363_p2 = (ap_sig_allocacmp_indvar_flatten19_load + 10'd1);
assign add_ln212_fu_447_p2 = (select_ln210_fu_388_p3 + 7'd8);
assign add_ln215_1_fu_477_p4 = {{{trunc_ln215_reg_546_pp0_iter10_reg}, {lshr_ln3_reg_523_pp0_iter10_reg}}, {1'd1}};
assign add_ln_fu_463_p3 = {{trunc_ln215_reg_546_pp0_iter9_reg}, {lshr_ln4_reg_541_pp0_iter9_reg}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_16024_p_ce = 1'b1;
assign grp_fu_16024_p_din0 = v126_reg_567;
assign grp_fu_16024_p_din1 = v128_reg_579;
assign grp_fu_16096_p_ce = 1'b1;
assign grp_fu_16096_p_din0 = v126_reg_567;
assign grp_fu_16096_p_din1 = v128_8_reg_604;
assign grp_fu_16100_p_ce = 1'b1;
assign grp_fu_16100_p_din0 = v126_reg_567;
assign grp_fu_16100_p_din1 = v128_9_reg_609;
assign grp_fu_16104_p_ce = 1'b1;
assign grp_fu_16104_p_din0 = v126_reg_567;
assign grp_fu_16104_p_din1 = v128_10_reg_614;
assign grp_fu_16108_p_ce = 1'b1;
assign grp_fu_16108_p_din0 = v126_reg_567_pp0_iter3_reg;
assign grp_fu_16108_p_din1 = v128_11_reg_619;
assign grp_fu_16112_p_ce = 1'b1;
assign grp_fu_16112_p_din0 = v126_reg_567_pp0_iter3_reg;
assign grp_fu_16112_p_din1 = v128_12_reg_624;
assign grp_fu_16116_p_ce = 1'b1;
assign grp_fu_16116_p_din0 = v126_reg_567_pp0_iter3_reg;
assign grp_fu_16116_p_din1 = v128_13_reg_629;
assign grp_fu_16120_p_ce = 1'b1;
assign grp_fu_16120_p_din0 = v126_reg_567_pp0_iter3_reg;
assign grp_fu_16120_p_din1 = v128_7_reg_634;
assign icmp_ln210_fu_357_p2 = ((ap_sig_allocacmp_indvar_flatten19_load == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln3_fu_415_p4 = {{select_ln210_fu_388_p3[5:3]}};
assign select_ln210_1_fu_402_p3 = ((tmp_fu_380_p3[0:0] == 1'b1) ? add_ln210_1_fu_396_p2 : v125_fu_82);
assign select_ln210_fu_388_p3 = ((tmp_fu_380_p3[0:0] == 1'b1) ? 7'd0 : v127_fu_78);
assign tmp_fu_380_p3 = v127_fu_78[32'd6];
assign trunc_ln215_fu_443_p1 = select_ln210_1_fu_402_p3[5:0];
assign v11_1_address0 = zext_ln215_1_fu_485_p1;
assign v11_1_address1 = zext_ln215_fu_469_p1;
assign v11_1_ce0 = v11_1_ce0_local;
assign v11_1_ce1 = v11_1_ce1_local;
assign v11_1_d0 = v129_5_reg_664;
assign v11_1_d1 = v129_1_reg_644;
assign v11_1_we0 = v11_1_we0_local;
assign v11_1_we1 = v11_1_we1_local;
assign v11_2_address0 = zext_ln215_1_fu_485_p1;
assign v11_2_address1 = zext_ln215_fu_469_p1;
assign v11_2_ce0 = v11_2_ce0_local;
assign v11_2_ce1 = v11_2_ce1_local;
assign v11_2_d0 = v129_6_reg_669;
assign v11_2_d1 = v129_2_reg_649;
assign v11_2_we0 = v11_2_we0_local;
assign v11_2_we1 = v11_2_we1_local;
assign v11_3_address0 = zext_ln215_1_fu_485_p1;
assign v11_3_address1 = zext_ln215_fu_469_p1;
assign v11_3_ce0 = v11_3_ce0_local;
assign v11_3_ce1 = v11_3_ce1_local;
assign v11_3_d0 = v129_7_reg_674;
assign v11_3_d1 = v129_3_reg_654;
assign v11_3_we0 = v11_3_we0_local;
assign v11_3_we1 = v11_3_we1_local;
assign v11_address0 = zext_ln215_1_fu_485_p1;
assign v11_address1 = zext_ln215_fu_469_p1;
assign v11_ce0 = v11_ce0_local;
assign v11_ce1 = v11_ce1_local;
assign v11_d0 = v129_4_reg_659;
assign v11_d1 = v129_reg_639;
assign v11_we0 = v11_we0_local;
assign v11_we1 = v11_we1_local;
assign v20_address0 = zext_ln210_fu_410_p1;
assign v20_ce0 = v20_ce0_local;
assign v8_1_address0 = zext_ln212_fu_425_p1;
assign v8_1_ce0 = v8_1_ce0_local;
assign v8_2_address0 = zext_ln212_fu_425_p1;
assign v8_2_ce0 = v8_2_ce0_local;
assign v8_3_address0 = zext_ln212_fu_425_p1;
assign v8_3_ce0 = v8_3_ce0_local;
assign v8_4_address0 = zext_ln212_reg_528;
assign v8_4_ce0 = v8_4_ce0_local;
assign v8_5_address0 = zext_ln212_reg_528;
assign v8_5_ce0 = v8_5_ce0_local;
assign v8_6_address0 = zext_ln212_reg_528;
assign v8_6_ce0 = v8_6_ce0_local;
assign v8_7_address0 = zext_ln212_reg_528;
assign v8_7_ce0 = v8_7_ce0_local;
assign v8_address0 = zext_ln212_fu_425_p1;
assign v8_ce0 = v8_ce0_local;
assign zext_ln210_fu_410_p1 = select_ln210_1_fu_402_p3;
assign zext_ln212_fu_425_p1 = lshr_ln3_fu_415_p4;
assign zext_ln215_1_fu_485_p1 = add_ln215_1_fu_477_p4;
assign zext_ln215_fu_469_p1 = add_ln_fu_463_p3;
always @ (posedge ap_clk) begin
    zext_ln212_reg_528[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
end
endmodule 
