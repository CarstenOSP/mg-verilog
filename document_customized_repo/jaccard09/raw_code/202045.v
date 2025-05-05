module SgdLR_sw_SgdLR_sw_Pipeline_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v3_3_address0,v3_3_ce0,v3_3_we0,v3_3_d0,v3_3_address1,v3_3_ce1,v3_3_we1,v3_3_d1,v3_2_address0,v3_2_ce0,v3_2_we0,v3_2_d0,v3_2_address1,v3_2_ce1,v3_2_we1,v3_2_d1,v3_1_address0,v3_1_ce0,v3_1_we0,v3_1_d0,v3_1_address1,v3_1_ce1,v3_1_we1,v3_1_d1,v3_address0,v3_ce0,v3_we0,v3_d0,v3_address1,v3_ce1,v3_we1,v3_d1,v5,v0_0_address0,v0_0_ce0,v0_0_q0,v22,v0_1_address0,v0_1_ce0,v0_1_q0,v0_2_address0,v0_2_ce0,v0_2_q0,v0_3_address0,v0_3_ce0,v0_3_q0,v0_4_address0,v0_4_ce0,v0_4_q0,v0_5_address0,v0_5_ce0,v0_5_q0,v0_6_address0,v0_6_ce0,v0_6_q0,v0_7_address0,v0_7_ce0,v0_7_q0,grp_fu_1158_p_din0,grp_fu_1158_p_din1,grp_fu_1158_p_dout0,grp_fu_1158_p_ce,grp_fu_1162_p_din0,grp_fu_1162_p_din1,grp_fu_1162_p_dout0,grp_fu_1162_p_ce,grp_fu_1166_p_din0,grp_fu_1166_p_din1,grp_fu_1166_p_dout0,grp_fu_1166_p_ce,grp_fu_1170_p_din0,grp_fu_1170_p_din1,grp_fu_1170_p_dout0,grp_fu_1170_p_ce,grp_fu_1174_p_din0,grp_fu_1174_p_din1,grp_fu_1174_p_dout0,grp_fu_1174_p_ce,grp_fu_1178_p_din0,grp_fu_1178_p_din1,grp_fu_1178_p_dout0,grp_fu_1178_p_ce,grp_fu_1182_p_din0,grp_fu_1182_p_din1,grp_fu_1182_p_dout0,grp_fu_1182_p_ce,grp_fu_1186_p_din0,grp_fu_1186_p_din1,grp_fu_1186_p_dout0,grp_fu_1186_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] v3_3_address0;
output   v3_3_ce0;
output   v3_3_we0;
output  [31:0] v3_3_d0;
output  [7:0] v3_3_address1;
output   v3_3_ce1;
output   v3_3_we1;
output  [31:0] v3_3_d1;
output  [7:0] v3_2_address0;
output   v3_2_ce0;
output   v3_2_we0;
output  [31:0] v3_2_d0;
output  [7:0] v3_2_address1;
output   v3_2_ce1;
output   v3_2_we1;
output  [31:0] v3_2_d1;
output  [7:0] v3_1_address0;
output   v3_1_ce0;
output   v3_1_we0;
output  [31:0] v3_1_d0;
output  [7:0] v3_1_address1;
output   v3_1_ce1;
output   v3_1_we1;
output  [31:0] v3_1_d1;
output  [7:0] v3_address0;
output   v3_ce0;
output   v3_we0;
output  [31:0] v3_d0;
output  [7:0] v3_address1;
output   v3_ce1;
output   v3_we1;
output  [31:0] v3_d1;
input  [12:0] v5;
output  [19:0] v0_0_address0;
output   v0_0_ce0;
input  [31:0] v0_0_q0;
input  [31:0] v22;
output  [19:0] v0_1_address0;
output   v0_1_ce0;
input  [31:0] v0_1_q0;
output  [19:0] v0_2_address0;
output   v0_2_ce0;
input  [31:0] v0_2_q0;
output  [19:0] v0_3_address0;
output   v0_3_ce0;
input  [31:0] v0_3_q0;
output  [19:0] v0_4_address0;
output   v0_4_ce0;
input  [31:0] v0_4_q0;
output  [19:0] v0_5_address0;
output   v0_5_ce0;
input  [31:0] v0_5_q0;
output  [19:0] v0_6_address0;
output   v0_6_ce0;
input  [31:0] v0_6_q0;
output  [19:0] v0_7_address0;
output   v0_7_ce0;
input  [31:0] v0_7_q0;
output  [31:0] grp_fu_1158_p_din0;
output  [31:0] grp_fu_1158_p_din1;
input  [31:0] grp_fu_1158_p_dout0;
output   grp_fu_1158_p_ce;
output  [31:0] grp_fu_1162_p_din0;
output  [31:0] grp_fu_1162_p_din1;
input  [31:0] grp_fu_1162_p_dout0;
output   grp_fu_1162_p_ce;
output  [31:0] grp_fu_1166_p_din0;
output  [31:0] grp_fu_1166_p_din1;
input  [31:0] grp_fu_1166_p_dout0;
output   grp_fu_1166_p_ce;
output  [31:0] grp_fu_1170_p_din0;
output  [31:0] grp_fu_1170_p_din1;
input  [31:0] grp_fu_1170_p_dout0;
output   grp_fu_1170_p_ce;
output  [31:0] grp_fu_1174_p_din0;
output  [31:0] grp_fu_1174_p_din1;
input  [31:0] grp_fu_1174_p_dout0;
output   grp_fu_1174_p_ce;
output  [31:0] grp_fu_1178_p_din0;
output  [31:0] grp_fu_1178_p_din1;
input  [31:0] grp_fu_1178_p_dout0;
output   grp_fu_1178_p_ce;
output  [31:0] grp_fu_1182_p_din0;
output  [31:0] grp_fu_1182_p_din1;
input  [31:0] grp_fu_1182_p_dout0;
output   grp_fu_1182_p_ce;
output  [31:0] grp_fu_1186_p_din0;
output  [31:0] grp_fu_1186_p_din1;
input  [31:0] grp_fu_1186_p_dout0;
output   grp_fu_1186_p_ce;
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
wire   [0:0] tmp_fu_340_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [7:0] lshr_ln2_reg_476;
reg   [7:0] lshr_ln2_reg_476_pp0_iter1_reg;
reg   [7:0] lshr_ln2_reg_476_pp0_iter2_reg;
reg   [7:0] lshr_ln2_reg_476_pp0_iter3_reg;
reg   [7:0] lshr_ln2_reg_476_pp0_iter4_reg;
reg   [7:0] lshr_ln2_reg_476_pp0_iter5_reg;
wire   [6:0] lshr_ln3_fu_358_p4;
reg   [6:0] lshr_ln3_reg_481;
reg   [6:0] lshr_ln3_reg_481_pp0_iter1_reg;
reg   [6:0] lshr_ln3_reg_481_pp0_iter2_reg;
reg   [6:0] lshr_ln3_reg_481_pp0_iter3_reg;
reg   [6:0] lshr_ln3_reg_481_pp0_iter4_reg;
reg   [6:0] lshr_ln3_reg_481_pp0_iter5_reg;
reg   [31:0] v0_0_load_reg_526;
reg   [31:0] v0_1_load_reg_531;
reg   [31:0] v0_2_load_reg_536;
reg   [31:0] v0_3_load_reg_541;
reg   [31:0] v0_4_load_reg_546;
reg   [31:0] v0_5_load_reg_551;
reg   [31:0] v0_6_load_reg_556;
reg   [31:0] v0_7_load_reg_561;
wire   [31:0] v23_fu_399_p1;
wire   [31:0] v23_30_fu_403_p1;
wire   [31:0] v23_31_fu_407_p1;
wire   [31:0] v23_32_fu_411_p1;
wire   [31:0] v23_33_fu_415_p1;
wire   [31:0] v23_34_fu_419_p1;
wire   [31:0] v23_35_fu_423_p1;
wire   [31:0] v23_36_fu_427_p1;
reg   [31:0] v24_reg_606;
reg   [31:0] v24_1_reg_611;
reg   [31:0] v24_2_reg_616;
reg   [31:0] v24_3_reg_621;
reg   [31:0] v24_4_reg_626;
reg   [31:0] v24_5_reg_631;
reg   [31:0] v24_6_reg_636;
reg   [31:0] v24_7_reg_641;
wire   [63:0] zext_ln51_fu_376_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln48_fu_431_p1;
wire   [63:0] zext_ln51_1_fu_445_p1;
reg   [10:0] v19_fu_80;
wire   [10:0] add_ln47_fu_388_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v19_4;
reg    v0_0_ce0_local;
reg    v0_1_ce0_local;
reg    v0_2_ce0_local;
reg    v0_3_ce0_local;
reg    v0_4_ce0_local;
reg    v0_5_ce0_local;
reg    v0_6_ce0_local;
reg    v0_7_ce0_local;
reg    v3_we1_local;
reg    v3_ce1_local;
reg    v3_we0_local;
reg    v3_ce0_local;
reg    v3_1_we1_local;
reg    v3_1_ce1_local;
reg    v3_1_we0_local;
reg    v3_1_ce0_local;
reg    v3_2_we1_local;
reg    v3_2_ce1_local;
reg    v3_2_we0_local;
reg    v3_2_ce0_local;
reg    v3_3_we1_local;
reg    v3_3_ce1_local;
reg    v3_3_we0_local;
reg    v3_3_ce0_local;
wire   [19:0] add_ln1_fu_368_p3;
wire   [7:0] or_ln_fu_438_p3;
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
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 v19_fu_80 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((tmp_fu_340_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v19_fu_80 <= add_ln47_fu_388_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v19_fu_80 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln2_reg_476 <= {{ap_sig_allocacmp_v19_4[9:2]}};
        lshr_ln2_reg_476_pp0_iter1_reg <= lshr_ln2_reg_476;
        lshr_ln3_reg_481 <= {{ap_sig_allocacmp_v19_4[9:3]}};
        lshr_ln3_reg_481_pp0_iter1_reg <= lshr_ln3_reg_481;
        v0_0_load_reg_526 <= v0_0_q0;
        v0_1_load_reg_531 <= v0_1_q0;
        v0_2_load_reg_536 <= v0_2_q0;
        v0_3_load_reg_541 <= v0_3_q0;
        v0_4_load_reg_546 <= v0_4_q0;
        v0_5_load_reg_551 <= v0_5_q0;
        v0_6_load_reg_556 <= v0_6_q0;
        v0_7_load_reg_561 <= v0_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        lshr_ln2_reg_476_pp0_iter2_reg <= lshr_ln2_reg_476_pp0_iter1_reg;
        lshr_ln2_reg_476_pp0_iter3_reg <= lshr_ln2_reg_476_pp0_iter2_reg;
        lshr_ln2_reg_476_pp0_iter4_reg <= lshr_ln2_reg_476_pp0_iter3_reg;
        lshr_ln2_reg_476_pp0_iter5_reg <= lshr_ln2_reg_476_pp0_iter4_reg;
        lshr_ln3_reg_481_pp0_iter2_reg <= lshr_ln3_reg_481_pp0_iter1_reg;
        lshr_ln3_reg_481_pp0_iter3_reg <= lshr_ln3_reg_481_pp0_iter2_reg;
        lshr_ln3_reg_481_pp0_iter4_reg <= lshr_ln3_reg_481_pp0_iter3_reg;
        lshr_ln3_reg_481_pp0_iter5_reg <= lshr_ln3_reg_481_pp0_iter4_reg;
        v24_1_reg_611 <= grp_fu_1162_p_dout0;
        v24_2_reg_616 <= grp_fu_1166_p_dout0;
        v24_3_reg_621 <= grp_fu_1170_p_dout0;
        v24_4_reg_626 <= grp_fu_1174_p_dout0;
        v24_5_reg_631 <= grp_fu_1178_p_dout0;
        v24_6_reg_636 <= grp_fu_1182_p_dout0;
        v24_7_reg_641 <= grp_fu_1186_p_dout0;
        v24_reg_606 <= grp_fu_1158_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_fu_340_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_v19_4 = 11'd0;
    end else begin
        ap_sig_allocacmp_v19_4 = v19_fu_80;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_4_ce0_local = 1'b1;
    end else begin
        v0_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_5_ce0_local = 1'b1;
    end else begin
        v0_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_6_ce0_local = 1'b1;
    end else begin
        v0_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_7_ce0_local = 1'b1;
    end else begin
        v0_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_1_ce0_local = 1'b1;
    end else begin
        v3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_1_ce1_local = 1'b1;
    end else begin
        v3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_1_we0_local = 1'b1;
    end else begin
        v3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_1_we1_local = 1'b1;
    end else begin
        v3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_2_ce0_local = 1'b1;
    end else begin
        v3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_2_ce1_local = 1'b1;
    end else begin
        v3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_2_we0_local = 1'b1;
    end else begin
        v3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_2_we1_local = 1'b1;
    end else begin
        v3_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_3_ce0_local = 1'b1;
    end else begin
        v3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_3_ce1_local = 1'b1;
    end else begin
        v3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_3_we0_local = 1'b1;
    end else begin
        v3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_3_we1_local = 1'b1;
    end else begin
        v3_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_ce1_local = 1'b1;
    end else begin
        v3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_we0_local = 1'b1;
    end else begin
        v3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_we1_local = 1'b1;
    end else begin
        v3_we1_local = 1'b0;
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
assign add_ln1_fu_368_p3 = {{v5}, {lshr_ln3_fu_358_p4}};
assign add_ln47_fu_388_p2 = (ap_sig_allocacmp_v19_4 + 11'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_1158_p_ce = 1'b1;
assign grp_fu_1158_p_din0 = v22;
assign grp_fu_1158_p_din1 = v23_fu_399_p1;
assign grp_fu_1162_p_ce = 1'b1;
assign grp_fu_1162_p_din0 = v22;
assign grp_fu_1162_p_din1 = v23_30_fu_403_p1;
assign grp_fu_1166_p_ce = 1'b1;
assign grp_fu_1166_p_din0 = v22;
assign grp_fu_1166_p_din1 = v23_31_fu_407_p1;
assign grp_fu_1170_p_ce = 1'b1;
assign grp_fu_1170_p_din0 = v22;
assign grp_fu_1170_p_din1 = v23_32_fu_411_p1;
assign grp_fu_1174_p_ce = 1'b1;
assign grp_fu_1174_p_din0 = v22;
assign grp_fu_1174_p_din1 = v23_33_fu_415_p1;
assign grp_fu_1178_p_ce = 1'b1;
assign grp_fu_1178_p_din0 = v22;
assign grp_fu_1178_p_din1 = v23_34_fu_419_p1;
assign grp_fu_1182_p_ce = 1'b1;
assign grp_fu_1182_p_din0 = v22;
assign grp_fu_1182_p_din1 = v23_35_fu_423_p1;
assign grp_fu_1186_p_ce = 1'b1;
assign grp_fu_1186_p_din0 = v22;
assign grp_fu_1186_p_din1 = v23_36_fu_427_p1;
assign lshr_ln3_fu_358_p4 = {{ap_sig_allocacmp_v19_4[9:3]}};
assign or_ln_fu_438_p3 = {{lshr_ln3_reg_481_pp0_iter5_reg}, {1'd1}};
assign tmp_fu_340_p3 = ap_sig_allocacmp_v19_4[32'd10];
assign v0_0_address0 = zext_ln51_fu_376_p1;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_1_address0 = zext_ln51_fu_376_p1;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_2_address0 = zext_ln51_fu_376_p1;
assign v0_2_ce0 = v0_2_ce0_local;
assign v0_3_address0 = zext_ln51_fu_376_p1;
assign v0_3_ce0 = v0_3_ce0_local;
assign v0_4_address0 = zext_ln51_fu_376_p1;
assign v0_4_ce0 = v0_4_ce0_local;
assign v0_5_address0 = zext_ln51_fu_376_p1;
assign v0_5_ce0 = v0_5_ce0_local;
assign v0_6_address0 = zext_ln51_fu_376_p1;
assign v0_6_ce0 = v0_6_ce0_local;
assign v0_7_address0 = zext_ln51_fu_376_p1;
assign v0_7_ce0 = v0_7_ce0_local;
assign v23_30_fu_403_p1 = v0_1_load_reg_531;
assign v23_31_fu_407_p1 = v0_2_load_reg_536;
assign v23_32_fu_411_p1 = v0_3_load_reg_541;
assign v23_33_fu_415_p1 = v0_4_load_reg_546;
assign v23_34_fu_419_p1 = v0_5_load_reg_551;
assign v23_35_fu_423_p1 = v0_6_load_reg_556;
assign v23_36_fu_427_p1 = v0_7_load_reg_561;
assign v23_fu_399_p1 = v0_0_load_reg_526;
assign v3_1_address0 = zext_ln51_1_fu_445_p1;
assign v3_1_address1 = zext_ln48_fu_431_p1;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_1_ce1 = v3_1_ce1_local;
assign v3_1_d0 = v24_5_reg_631;
assign v3_1_d1 = v24_1_reg_611;
assign v3_1_we0 = v3_1_we0_local;
assign v3_1_we1 = v3_1_we1_local;
assign v3_2_address0 = zext_ln51_1_fu_445_p1;
assign v3_2_address1 = zext_ln48_fu_431_p1;
assign v3_2_ce0 = v3_2_ce0_local;
assign v3_2_ce1 = v3_2_ce1_local;
assign v3_2_d0 = v24_6_reg_636;
assign v3_2_d1 = v24_2_reg_616;
assign v3_2_we0 = v3_2_we0_local;
assign v3_2_we1 = v3_2_we1_local;
assign v3_3_address0 = zext_ln51_1_fu_445_p1;
assign v3_3_address1 = zext_ln48_fu_431_p1;
assign v3_3_ce0 = v3_3_ce0_local;
assign v3_3_ce1 = v3_3_ce1_local;
assign v3_3_d0 = v24_7_reg_641;
assign v3_3_d1 = v24_3_reg_621;
assign v3_3_we0 = v3_3_we0_local;
assign v3_3_we1 = v3_3_we1_local;
assign v3_address0 = zext_ln51_1_fu_445_p1;
assign v3_address1 = zext_ln48_fu_431_p1;
assign v3_ce0 = v3_ce0_local;
assign v3_ce1 = v3_ce1_local;
assign v3_d0 = v24_4_reg_626;
assign v3_d1 = v24_reg_606;
assign v3_we0 = v3_we0_local;
assign v3_we1 = v3_we1_local;
assign zext_ln48_fu_431_p1 = lshr_ln2_reg_476_pp0_iter5_reg;
assign zext_ln51_1_fu_445_p1 = or_ln_fu_438_p3;
assign zext_ln51_fu_376_p1 = add_ln1_fu_368_p3;
endmodule 