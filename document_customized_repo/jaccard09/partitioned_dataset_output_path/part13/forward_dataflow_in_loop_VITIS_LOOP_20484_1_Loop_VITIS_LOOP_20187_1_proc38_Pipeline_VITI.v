
module forward_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,rem4,v15874_address0,v15874_ce0,v15874_we0,v15874_d0,v15874_1_address0,v15874_1_ce0,v15874_1_we0,v15874_1_d0,v15874_2_address0,v15874_2_ce0,v15874_2_we0,v15874_2_d0,v15874_3_address0,v15874_3_ce0,v15874_3_we0,v15874_3_d0,v15874_4_address0,v15874_4_ce0,v15874_4_we0,v15874_4_d0,v15874_5_address0,v15874_5_ce0,v15874_5_we0,v15874_5_d0,v15874_6_address0,v15874_6_ce0,v15874_6_we0,v15874_6_d0,v15874_7_address0,v15874_7_ce0,v15874_7_we0,v15874_7_d0,mul_i,empty_96,empty,zext_ln20229_1,zext_ln20229,v16145_0_0_address0,v16145_0_0_ce0,v16145_0_0_q0,v16145_1_0_address0,v16145_1_0_ce0,v16145_1_0_q0,v16145_2_0_address0,v16145_2_0_ce0,v16145_2_0_q0,v16145_3_0_address0,v16145_3_0_ce0,v16145_3_0_q0,v16145_0_1_address0,v16145_0_1_ce0,v16145_0_1_q0,v16145_1_1_address0,v16145_1_1_ce0,v16145_1_1_q0,v16145_2_1_address0,v16145_2_1_ce0,v16145_2_1_q0,v16145_3_1_address0,v16145_3_1_ce0,v16145_3_1_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [4:0] rem4;
output  [4:0] v15874_address0;
output   v15874_ce0;
output   v15874_we0;
output  [7:0] v15874_d0;
output  [4:0] v15874_1_address0;
output   v15874_1_ce0;
output   v15874_1_we0;
output  [7:0] v15874_1_d0;
output  [4:0] v15874_2_address0;
output   v15874_2_ce0;
output   v15874_2_we0;
output  [7:0] v15874_2_d0;
output  [4:0] v15874_3_address0;
output   v15874_3_ce0;
output   v15874_3_we0;
output  [7:0] v15874_3_d0;
output  [4:0] v15874_4_address0;
output   v15874_4_ce0;
output   v15874_4_we0;
output  [7:0] v15874_4_d0;
output  [4:0] v15874_5_address0;
output   v15874_5_ce0;
output   v15874_5_we0;
output  [7:0] v15874_5_d0;
output  [4:0] v15874_6_address0;
output   v15874_6_ce0;
output   v15874_6_we0;
output  [7:0] v15874_6_d0;
output  [4:0] v15874_7_address0;
output   v15874_7_ce0;
output   v15874_7_we0;
output  [7:0] v15874_7_d0;
input  [4:0] mul_i;
input  [0:0] empty_96;
input  [0:0] empty;
input  [2:0] zext_ln20229_1;
input  [1:0] zext_ln20229;
output  [10:0] v16145_0_0_address0;
output   v16145_0_0_ce0;
input  [7:0] v16145_0_0_q0;
output  [10:0] v16145_1_0_address0;
output   v16145_1_0_ce0;
input  [7:0] v16145_1_0_q0;
output  [10:0] v16145_2_0_address0;
output   v16145_2_0_ce0;
input  [7:0] v16145_2_0_q0;
output  [10:0] v16145_3_0_address0;
output   v16145_3_0_ce0;
input  [7:0] v16145_3_0_q0;
output  [10:0] v16145_0_1_address0;
output   v16145_0_1_ce0;
input  [7:0] v16145_0_1_q0;
output  [10:0] v16145_1_1_address0;
output   v16145_1_1_ce0;
input  [7:0] v16145_1_1_q0;
output  [10:0] v16145_2_1_address0;
output   v16145_2_1_ce0;
input  [7:0] v16145_2_1_q0;
output  [10:0] v16145_3_1_address0;
output   v16145_3_1_ce0;
input  [7:0] v16145_3_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln20187_fu_622_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [10:0] zext_ln20229_cast_fu_410_p1;
reg   [10:0] zext_ln20229_cast_reg_850;
wire   [8:0] zext_ln20229_1_cast_fu_414_p1;
reg   [8:0] zext_ln20229_1_cast_reg_858;
wire   [1:0] tmp_s_fu_470_p4;
reg   [1:0] tmp_s_reg_864;
reg   [1:0] tmp_s_reg_864_pp0_iter1_reg;
reg   [2:0] tmp_51_reg_869;
wire   [2:0] lshr_ln_fu_490_p4;
reg   [2:0] lshr_ln_reg_877;
reg   [2:0] lshr_ln_reg_877_pp0_iter1_reg;
wire   [8:0] add_ln20191_fu_542_p2;
reg   [8:0] add_ln20191_reg_884;
wire   [3:0] lshr_ln37_fu_548_p4;
reg   [3:0] lshr_ln37_reg_890;
wire   [8:0] add_ln20193_fu_590_p2;
reg   [8:0] add_ln20193_reg_896;
wire   [0:0] xor_ln20188_fu_616_p2;
reg   [0:0] xor_ln20188_reg_902;
reg   [0:0] icmp_ln20187_reg_907;
wire   [8:0] add_ln20195_fu_695_p2;
reg   [8:0] add_ln20195_reg_916;
wire   [8:0] add_ln20197_fu_750_p2;
reg   [8:0] add_ln20197_reg_927;
wire   [63:0] zext_ln20205_fu_761_p1;
reg   [63:0] zext_ln20205_reg_933;
reg   [0:0] ap_phi_mux_icmp_ln2018896_phi_fu_403_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln20191_2_fu_664_p1;
wire   [63:0] zext_ln20193_2_fu_721_p1;
wire   [63:0] zext_ln20195_2_fu_788_p1;
wire   [63:0] zext_ln20197_2_fu_816_p1;
reg   [4:0] indvar_flatten93_fu_136;
wire   [4:0] add_ln20187_1_fu_602_p2;
reg   [4:0] ap_sig_allocacmp_indvar_flatten93_load;
reg   [4:0] v1573694_fu_140;
wire   [4:0] v15736_fu_456_p3;
reg   [4:0] ap_sig_allocacmp_v1573694_load;
reg   [4:0] v1573795_fu_144;
wire   [4:0] v15737_fu_596_p2;
reg   [4:0] ap_sig_allocacmp_v1573795_load;
reg    v16145_0_0_ce0_local;
reg    v16145_0_1_ce0_local;
reg    v16145_1_0_ce0_local;
reg    v16145_1_1_ce0_local;
reg    v16145_2_0_ce0_local;
reg    v16145_2_1_ce0_local;
reg    v16145_3_0_ce0_local;
reg    v16145_3_1_ce0_local;
reg    v15874_7_we0_local;
reg    v15874_7_ce0_local;
reg    v15874_6_we0_local;
reg    v15874_6_ce0_local;
reg    v15874_5_we0_local;
reg    v15874_5_ce0_local;
reg    v15874_4_we0_local;
reg    v15874_4_ce0_local;
reg    v15874_3_we0_local;
reg    v15874_3_ce0_local;
reg    v15874_2_we0_local;
reg    v15874_2_ce0_local;
reg    v15874_1_we0_local;
reg    v15874_1_ce0_local;
reg    v15874_we0_local;
reg    v15874_ce0_local;
wire   [4:0] add_ln20187_fu_442_p2;
wire   [4:0] empty_296_fu_464_p2;
wire   [4:0] select_ln20187_fu_448_p3;
wire   [6:0] tmp_53_fu_506_p5;
wire   [8:0] p_shl25_fu_522_p6;
wire   [8:0] zext_ln20191_fu_518_p1;
wire   [8:0] sub_ln20191_fu_536_p2;
wire   [4:0] add_ln20190_fu_500_p2;
wire   [6:0] tmp_55_fu_558_p4;
wire   [8:0] p_shl21_fu_572_p5;
wire   [8:0] zext_ln20193_fu_568_p1;
wire   [8:0] sub_ln20193_fu_584_p2;
wire   [0:0] tmp_222_fu_608_p3;
wire   [10:0] p_shl24_fu_646_p3;
wire   [10:0] zext_ln20191_1_fu_643_p1;
wire   [10:0] sub_ln20191_1_fu_653_p2;
wire   [10:0] add_ln20191_1_fu_659_p2;
wire   [6:0] tmp_54_fu_669_p4;
wire   [8:0] p_shl23_fu_680_p5;
wire   [8:0] zext_ln20195_fu_676_p1;
wire   [8:0] sub_ln20195_fu_689_p2;
wire   [10:0] p_shl20_fu_703_p3;
wire   [10:0] zext_ln20193_1_fu_700_p1;
wire   [10:0] sub_ln20193_1_fu_710_p2;
wire   [10:0] add_ln20193_1_fu_716_p2;
wire   [6:0] tmp_56_fu_726_p3;
wire   [8:0] p_shl19_fu_736_p4;
wire   [8:0] zext_ln20197_fu_732_p1;
wire   [8:0] sub_ln20197_fu_744_p2;
wire   [4:0] tmp_52_fu_755_p3;
wire   [10:0] p_shl22_fu_770_p3;
wire   [10:0] zext_ln20195_1_fu_767_p1;
wire   [10:0] sub_ln20195_1_fu_777_p2;
wire   [10:0] add_ln20195_1_fu_783_p2;
wire   [10:0] p_shl_fu_798_p3;
wire   [10:0] zext_ln20197_1_fu_795_p1;
wire   [10:0] sub_ln20197_1_fu_805_p2;
wire   [10:0] add_ln20197_1_fu_811_p2;
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
reg    ap_condition_609;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 indvar_flatten93_fu_136 = 5'd0;
#0 v1573694_fu_140 = 5'd0;
#0 v1573795_fu_144 = 5'd0;
#0 ap_done_reg = 1'b0;
end
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten93_fu_136 <= add_ln20187_1_fu_602_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten93_fu_136 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v1573694_fu_140 <= v15736_fu_456_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v1573694_fu_140 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v1573795_fu_144 <= v15737_fu_596_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v1573795_fu_144 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln20191_reg_884 <= add_ln20191_fu_542_p2;
        add_ln20193_reg_896 <= add_ln20193_fu_590_p2;
        add_ln20195_reg_916 <= add_ln20195_fu_695_p2;
        add_ln20197_reg_927 <= add_ln20197_fu_750_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln20187_reg_907 <= icmp_ln20187_fu_622_p2;
        lshr_ln37_reg_890 <= {{add_ln20190_fu_500_p2[4:1]}};
        lshr_ln_reg_877 <= {{select_ln20187_fu_448_p3[3:1]}};
        lshr_ln_reg_877_pp0_iter1_reg <= lshr_ln_reg_877;
        tmp_51_reg_869 <= {{empty_296_fu_464_p2[4:2]}};
        tmp_s_reg_864 <= {{v15736_fu_456_p3[3:2]}};
        tmp_s_reg_864_pp0_iter1_reg <= tmp_s_reg_864;
        zext_ln20229_1_cast_reg_858[2 : 0] <= zext_ln20229_1_cast_fu_414_p1[2 : 0];
        zext_ln20229_cast_reg_850[1 : 0] <= zext_ln20229_cast_fu_410_p1[1 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xor_ln20188_reg_902 <= xor_ln20188_fu_616_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        zext_ln20205_reg_933[4 : 0] <= zext_ln20205_fu_761_p1[4 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln20187_fu_622_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_609)) begin
            ap_phi_mux_icmp_ln2018896_phi_fu_403_p4 = xor_ln20188_reg_902;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln2018896_phi_fu_403_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln2018896_phi_fu_403_p4 = xor_ln20188_reg_902;
        end
    end else begin
        ap_phi_mux_icmp_ln2018896_phi_fu_403_p4 = xor_ln20188_reg_902;
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
        ap_sig_allocacmp_indvar_flatten93_load = 5'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten93_load = indvar_flatten93_fu_136;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v1573694_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v1573694_load = v1573694_fu_140;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v1573795_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v1573795_load = v1573795_fu_144;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15874_1_ce0_local = 1'b1;
    end else begin
        v15874_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15874_1_we0_local = 1'b1;
    end else begin
        v15874_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15874_2_ce0_local = 1'b1;
    end else begin
        v15874_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15874_2_we0_local = 1'b1;
    end else begin
        v15874_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15874_3_ce0_local = 1'b1;
    end else begin
        v15874_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15874_3_we0_local = 1'b1;
    end else begin
        v15874_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15874_4_ce0_local = 1'b1;
    end else begin
        v15874_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15874_4_we0_local = 1'b1;
    end else begin
        v15874_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15874_5_ce0_local = 1'b1;
    end else begin
        v15874_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15874_5_we0_local = 1'b1;
    end else begin
        v15874_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15874_6_ce0_local = 1'b1;
    end else begin
        v15874_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15874_6_we0_local = 1'b1;
    end else begin
        v15874_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15874_7_ce0_local = 1'b1;
    end else begin
        v15874_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15874_7_we0_local = 1'b1;
    end else begin
        v15874_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15874_ce0_local = 1'b1;
    end else begin
        v15874_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15874_we0_local = 1'b1;
    end else begin
        v15874_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16145_0_0_ce0_local = 1'b1;
    end else begin
        v16145_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16145_0_1_ce0_local = 1'b1;
    end else begin
        v16145_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16145_1_0_ce0_local = 1'b1;
    end else begin
        v16145_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16145_1_1_ce0_local = 1'b1;
    end else begin
        v16145_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16145_2_0_ce0_local = 1'b1;
    end else begin
        v16145_2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16145_2_1_ce0_local = 1'b1;
    end else begin
        v16145_2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16145_3_0_ce0_local = 1'b1;
    end else begin
        v16145_3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16145_3_1_ce0_local = 1'b1;
    end else begin
        v16145_3_1_ce0_local = 1'b0;
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
assign add_ln20187_1_fu_602_p2 = (ap_sig_allocacmp_indvar_flatten93_load + 5'd1);
assign add_ln20187_fu_442_p2 = (ap_sig_allocacmp_v1573694_load + 5'd4);
assign add_ln20190_fu_500_p2 = (select_ln20187_fu_448_p3 + mul_i);
assign add_ln20191_1_fu_659_p2 = (sub_ln20191_1_fu_653_p2 + zext_ln20229_cast_reg_850);
assign add_ln20191_fu_542_p2 = (sub_ln20191_fu_536_p2 + zext_ln20229_1_cast_fu_414_p1);
assign add_ln20193_1_fu_716_p2 = (sub_ln20193_1_fu_710_p2 + zext_ln20229_cast_reg_850);
assign add_ln20193_fu_590_p2 = (sub_ln20193_fu_584_p2 + zext_ln20229_1_cast_fu_414_p1);
assign add_ln20195_1_fu_783_p2 = (sub_ln20195_1_fu_777_p2 + zext_ln20229_cast_reg_850);
assign add_ln20195_fu_695_p2 = (sub_ln20195_fu_689_p2 + zext_ln20229_1_cast_reg_858);
assign add_ln20197_1_fu_811_p2 = (sub_ln20197_1_fu_805_p2 + zext_ln20229_cast_reg_850);
assign add_ln20197_fu_750_p2 = (sub_ln20197_fu_744_p2 + zext_ln20229_1_cast_reg_858);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_609 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln20187_reg_907 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_296_fu_464_p2 = (v15736_fu_456_p3 + rem4);
assign icmp_ln20187_fu_622_p2 = ((ap_sig_allocacmp_indvar_flatten93_load == 5'd31) ? 1'b1 : 1'b0);
assign lshr_ln37_fu_548_p4 = {{add_ln20190_fu_500_p2[4:1]}};
assign lshr_ln_fu_490_p4 = {{select_ln20187_fu_448_p3[3:1]}};
assign p_shl19_fu_736_p4 = {{{tmp_51_reg_869}, {lshr_ln37_reg_890}}, {2'd0}};
assign p_shl20_fu_703_p3 = {{add_ln20193_reg_896}, {2'd0}};
assign p_shl21_fu_572_p5 = {{{{empty_96}, {tmp_s_fu_470_p4}}, {lshr_ln37_fu_548_p4}}, {2'd0}};
assign p_shl22_fu_770_p3 = {{add_ln20195_reg_916}, {2'd0}};
assign p_shl23_fu_680_p5 = {{{{tmp_51_reg_869}, {empty}}, {lshr_ln_reg_877}}, {2'd0}};
assign p_shl24_fu_646_p3 = {{add_ln20191_reg_884}, {2'd0}};
assign p_shl25_fu_522_p6 = {{{{{empty_96}, {tmp_s_fu_470_p4}}, {empty}}, {lshr_ln_fu_490_p4}}, {2'd0}};
assign p_shl_fu_798_p3 = {{add_ln20197_reg_927}, {2'd0}};
assign select_ln20187_fu_448_p3 = ((ap_phi_mux_icmp_ln2018896_phi_fu_403_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v1573795_load : 5'd0);
assign sub_ln20191_1_fu_653_p2 = (p_shl24_fu_646_p3 - zext_ln20191_1_fu_643_p1);
assign sub_ln20191_fu_536_p2 = (p_shl25_fu_522_p6 - zext_ln20191_fu_518_p1);
assign sub_ln20193_1_fu_710_p2 = (p_shl20_fu_703_p3 - zext_ln20193_1_fu_700_p1);
assign sub_ln20193_fu_584_p2 = (p_shl21_fu_572_p5 - zext_ln20193_fu_568_p1);
assign sub_ln20195_1_fu_777_p2 = (p_shl22_fu_770_p3 - zext_ln20195_1_fu_767_p1);
assign sub_ln20195_fu_689_p2 = (p_shl23_fu_680_p5 - zext_ln20195_fu_676_p1);
assign sub_ln20197_1_fu_805_p2 = (p_shl_fu_798_p3 - zext_ln20197_1_fu_795_p1);
assign sub_ln20197_fu_744_p2 = (p_shl19_fu_736_p4 - zext_ln20197_fu_732_p1);
assign tmp_222_fu_608_p3 = v15737_fu_596_p2[32'd4];
assign tmp_52_fu_755_p3 = {{tmp_s_reg_864_pp0_iter1_reg}, {lshr_ln_reg_877_pp0_iter1_reg}};
assign tmp_53_fu_506_p5 = {{{{empty_96}, {tmp_s_fu_470_p4}}, {empty}}, {lshr_ln_fu_490_p4}};
assign tmp_54_fu_669_p4 = {{{tmp_51_reg_869}, {empty}}, {lshr_ln_reg_877}};
assign tmp_55_fu_558_p4 = {{{empty_96}, {tmp_s_fu_470_p4}}, {lshr_ln37_fu_548_p4}};
assign tmp_56_fu_726_p3 = {{tmp_51_reg_869}, {lshr_ln37_reg_890}};
assign tmp_s_fu_470_p4 = {{v15736_fu_456_p3[3:2]}};
assign v15736_fu_456_p3 = ((ap_phi_mux_icmp_ln2018896_phi_fu_403_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v1573694_load : add_ln20187_fu_442_p2);
assign v15737_fu_596_p2 = (select_ln20187_fu_448_p3 + 5'd2);
assign v15874_1_address0 = zext_ln20205_reg_933;
assign v15874_1_ce0 = v15874_1_ce0_local;
assign v15874_1_d0 = v16145_3_0_q0;
assign v15874_1_we0 = v15874_1_we0_local;
assign v15874_2_address0 = zext_ln20205_reg_933;
assign v15874_2_ce0 = v15874_2_ce0_local;
assign v15874_2_d0 = v16145_2_1_q0;
assign v15874_2_we0 = v15874_2_we0_local;
assign v15874_3_address0 = zext_ln20205_reg_933;
assign v15874_3_ce0 = v15874_3_ce0_local;
assign v15874_3_d0 = v16145_2_0_q0;
assign v15874_3_we0 = v15874_3_we0_local;
assign v15874_4_address0 = zext_ln20205_reg_933;
assign v15874_4_ce0 = v15874_4_ce0_local;
assign v15874_4_d0 = v16145_1_1_q0;
assign v15874_4_we0 = v15874_4_we0_local;
assign v15874_5_address0 = zext_ln20205_reg_933;
assign v15874_5_ce0 = v15874_5_ce0_local;
assign v15874_5_d0 = v16145_1_0_q0;
assign v15874_5_we0 = v15874_5_we0_local;
assign v15874_6_address0 = zext_ln20205_fu_761_p1;
assign v15874_6_ce0 = v15874_6_ce0_local;
assign v15874_6_d0 = v16145_0_1_q0;
assign v15874_6_we0 = v15874_6_we0_local;
assign v15874_7_address0 = zext_ln20205_fu_761_p1;
assign v15874_7_ce0 = v15874_7_ce0_local;
assign v15874_7_d0 = v16145_0_0_q0;
assign v15874_7_we0 = v15874_7_we0_local;
assign v15874_address0 = zext_ln20205_reg_933;
assign v15874_ce0 = v15874_ce0_local;
assign v15874_d0 = v16145_3_1_q0;
assign v15874_we0 = v15874_we0_local;
assign v16145_0_0_address0 = zext_ln20191_2_fu_664_p1;
assign v16145_0_0_ce0 = v16145_0_0_ce0_local;
assign v16145_0_1_address0 = zext_ln20193_2_fu_721_p1;
assign v16145_0_1_ce0 = v16145_0_1_ce0_local;
assign v16145_1_0_address0 = zext_ln20195_2_fu_788_p1;
assign v16145_1_0_ce0 = v16145_1_0_ce0_local;
assign v16145_1_1_address0 = zext_ln20197_2_fu_816_p1;
assign v16145_1_1_ce0 = v16145_1_1_ce0_local;
assign v16145_2_0_address0 = zext_ln20195_2_fu_788_p1;
assign v16145_2_0_ce0 = v16145_2_0_ce0_local;
assign v16145_2_1_address0 = zext_ln20197_2_fu_816_p1;
assign v16145_2_1_ce0 = v16145_2_1_ce0_local;
assign v16145_3_0_address0 = zext_ln20195_2_fu_788_p1;
assign v16145_3_0_ce0 = v16145_3_0_ce0_local;
assign v16145_3_1_address0 = zext_ln20197_2_fu_816_p1;
assign v16145_3_1_ce0 = v16145_3_1_ce0_local;
assign xor_ln20188_fu_616_p2 = (tmp_222_fu_608_p3 ^ 1'd1);
assign zext_ln20191_1_fu_643_p1 = add_ln20191_reg_884;
assign zext_ln20191_2_fu_664_p1 = add_ln20191_1_fu_659_p2;
assign zext_ln20191_fu_518_p1 = tmp_53_fu_506_p5;
assign zext_ln20193_1_fu_700_p1 = add_ln20193_reg_896;
assign zext_ln20193_2_fu_721_p1 = add_ln20193_1_fu_716_p2;
assign zext_ln20193_fu_568_p1 = tmp_55_fu_558_p4;
assign zext_ln20195_1_fu_767_p1 = add_ln20195_reg_916;
assign zext_ln20195_2_fu_788_p1 = add_ln20195_1_fu_783_p2;
assign zext_ln20195_fu_676_p1 = tmp_54_fu_669_p4;
assign zext_ln20197_1_fu_795_p1 = add_ln20197_reg_927;
assign zext_ln20197_2_fu_816_p1 = add_ln20197_1_fu_811_p2;
assign zext_ln20197_fu_732_p1 = tmp_56_fu_726_p3;
assign zext_ln20205_fu_761_p1 = tmp_52_fu_755_p3;
assign zext_ln20229_1_cast_fu_414_p1 = zext_ln20229_1;
assign zext_ln20229_cast_fu_410_p1 = zext_ln20229;
always @ (posedge ap_clk) begin
    zext_ln20229_cast_reg_850[10:2] <= 9'b000000000;
    zext_ln20229_1_cast_reg_858[8:3] <= 6'b000000;
    zext_ln20205_reg_933[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
end
endmodule 
