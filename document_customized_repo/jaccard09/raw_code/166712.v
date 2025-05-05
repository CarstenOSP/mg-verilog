module forward_dataflow_in_loop_VITIS_LOOP_2246_1_Loop_VITIS_LOOP_2033_1_proc62_Pipeline_VITIS_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,p_udiv26_cast,v1437_address0,v1437_ce0,v1437_we0,v1437_d0,v1437_1_address0,v1437_1_ce0,v1437_1_we0,v1437_1_d0,v1437_2_address0,v1437_2_ce0,v1437_2_we0,v1437_2_d0,v1437_3_address0,v1437_3_ce0,v1437_3_we0,v1437_3_d0,v1437_4_address0,v1437_4_ce0,v1437_4_we0,v1437_4_d0,v1437_5_address0,v1437_5_ce0,v1437_5_we0,v1437_5_d0,v1437_6_address0,v1437_6_ce0,v1437_6_we0,v1437_6_d0,v1437_7_address0,v1437_7_ce0,v1437_7_we0,v1437_7_d0,mul_i7,tmp_282,zext_ln2075_1,zext_ln2075,v9006_0_0_address0,v9006_0_0_ce0,v9006_0_0_q0,v9006_1_0_address0,v9006_1_0_ce0,v9006_1_0_q0,v9006_2_0_address0,v9006_2_0_ce0,v9006_2_0_q0,v9006_3_0_address0,v9006_3_0_ce0,v9006_3_0_q0,v9006_0_1_address0,v9006_0_1_ce0,v9006_0_1_q0,v9006_1_1_address0,v9006_1_1_ce0,v9006_1_1_q0,v9006_2_1_address0,v9006_2_1_ce0,v9006_2_1_q0,v9006_3_1_address0,v9006_3_1_ce0,v9006_3_1_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] mul_i;
input  [5:0] p_udiv26_cast;
output  [6:0] v1437_address0;
output   v1437_ce0;
output   v1437_we0;
output  [7:0] v1437_d0;
output  [6:0] v1437_1_address0;
output   v1437_1_ce0;
output   v1437_1_we0;
output  [7:0] v1437_1_d0;
output  [6:0] v1437_2_address0;
output   v1437_2_ce0;
output   v1437_2_we0;
output  [7:0] v1437_2_d0;
output  [6:0] v1437_3_address0;
output   v1437_3_ce0;
output   v1437_3_we0;
output  [7:0] v1437_3_d0;
output  [6:0] v1437_4_address0;
output   v1437_4_ce0;
output   v1437_4_we0;
output  [7:0] v1437_4_d0;
output  [6:0] v1437_5_address0;
output   v1437_5_ce0;
output   v1437_5_we0;
output  [7:0] v1437_5_d0;
output  [6:0] v1437_6_address0;
output   v1437_6_ce0;
output   v1437_6_we0;
output  [7:0] v1437_6_d0;
output  [6:0] v1437_7_address0;
output   v1437_7_ce0;
output   v1437_7_we0;
output  [7:0] v1437_7_d0;
input  [8:0] mul_i7;
input  [3:0] tmp_282;
input  [1:0] zext_ln2075_1;
input  [1:0] zext_ln2075;
output  [16:0] v9006_0_0_address0;
output   v9006_0_0_ce0;
input  [7:0] v9006_0_0_q0;
output  [16:0] v9006_1_0_address0;
output   v9006_1_0_ce0;
input  [7:0] v9006_1_0_q0;
output  [16:0] v9006_2_0_address0;
output   v9006_2_0_ce0;
input  [7:0] v9006_2_0_q0;
output  [16:0] v9006_3_0_address0;
output   v9006_3_0_ce0;
input  [7:0] v9006_3_0_q0;
output  [16:0] v9006_0_1_address0;
output   v9006_0_1_ce0;
input  [7:0] v9006_0_1_q0;
output  [16:0] v9006_1_1_address0;
output   v9006_1_1_ce0;
input  [7:0] v9006_1_1_q0;
output  [16:0] v9006_2_1_address0;
output   v9006_2_1_ce0;
input  [7:0] v9006_2_1_q0;
output  [16:0] v9006_3_1_address0;
output   v9006_3_1_ce0;
input  [7:0] v9006_3_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln2033_fu_554_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [16:0] zext_ln2075_cast_fu_414_p1;
reg   [16:0] zext_ln2075_cast_reg_944;
wire   [15:0] zext_ln2075_1_cast_fu_418_p1;
reg   [15:0] zext_ln2075_1_cast_reg_952;
wire   [5:0] select_ln2033_fu_452_p3;
reg   [5:0] select_ln2033_reg_960;
reg   [2:0] lshr_ln_cast_reg_965;
reg   [2:0] lshr_ln_cast_reg_965_pp0_iter1_reg;
reg   [2:0] lshr_ln_cast_reg_965_pp0_iter2_reg;
wire   [5:0] empty_210_fu_502_p2;
reg   [5:0] empty_210_reg_970;
reg   [5:0] tmp_206_reg_976;
reg   [3:0] lshr_ln12_reg_982;
reg   [3:0] lshr_ln12_reg_982_pp0_iter1_reg;
reg   [3:0] lshr_ln12_reg_982_pp0_iter2_reg;
wire   [0:0] xor_ln2034_fu_548_p2;
reg   [0:0] xor_ln2034_reg_988;
reg   [0:0] icmp_ln2033_reg_993;
wire   [15:0] add_ln2037_1_fu_665_p2;
reg   [15:0] add_ln2037_1_reg_997;
wire   [14:0] trunc_ln2037_fu_670_p1;
reg   [14:0] trunc_ln2037_reg_1002;
wire   [15:0] add_ln2041_1_fu_698_p2;
reg   [15:0] add_ln2041_1_reg_1007;
wire   [14:0] trunc_ln2041_fu_703_p1;
reg   [14:0] trunc_ln2041_reg_1012;
wire   [15:0] add_ln2039_1_fu_745_p2;
reg   [15:0] add_ln2039_1_reg_1017;
wire   [14:0] trunc_ln2039_fu_750_p1;
reg   [14:0] trunc_ln2039_reg_1022;
wire   [15:0] add_ln2043_1_fu_778_p2;
reg   [15:0] add_ln2043_1_reg_1027;
wire   [14:0] trunc_ln2043_fu_783_p1;
reg   [14:0] trunc_ln2043_reg_1032;
reg   [0:0] ap_phi_mux_icmp_ln203496_phi_fu_407_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln2037_4_fu_808_p1;
wire   [63:0] zext_ln2041_3_fu_834_p1;
wire   [63:0] zext_ln2039_3_fu_862_p1;
wire   [63:0] zext_ln2043_2_fu_888_p1;
wire   [63:0] zext_ln2051_fu_901_p1;
reg   [6:0] indvar_flatten93_fu_140;
wire   [6:0] add_ln2033_1_fu_534_p2;
reg   [6:0] ap_sig_allocacmp_indvar_flatten93_load;
reg   [5:0] v134194_fu_144;
wire   [5:0] v1341_fu_460_p3;
reg   [5:0] ap_sig_allocacmp_v134194_load;
reg   [5:0] v134295_fu_148;
wire   [5:0] v1342_fu_528_p2;
reg   [5:0] ap_sig_allocacmp_v134295_load;
reg    v9006_0_0_ce0_local;
reg    v9006_0_1_ce0_local;
reg    v9006_1_0_ce0_local;
reg    v9006_1_1_ce0_local;
reg    v9006_2_0_ce0_local;
reg    v9006_2_1_ce0_local;
reg    v9006_3_0_ce0_local;
reg    v9006_3_1_ce0_local;
reg    v1437_7_we0_local;
reg    v1437_7_ce0_local;
reg    v1437_6_we0_local;
reg    v1437_6_ce0_local;
reg    v1437_5_we0_local;
reg    v1437_5_ce0_local;
reg    v1437_4_we0_local;
reg    v1437_4_ce0_local;
reg    v1437_3_we0_local;
reg    v1437_3_ce0_local;
reg    v1437_2_we0_local;
reg    v1437_2_ce0_local;
reg    v1437_1_we0_local;
reg    v1437_1_ce0_local;
reg    v1437_we0_local;
reg    v1437_ce0_local;
wire   [5:0] add_ln2033_fu_446_p2;
wire   [3:0] lshr_ln_fu_472_p4;
wire   [7:0] zext_ln2033_fu_468_p1;
wire   [5:0] zext_ln2033_1_fu_492_p1;
wire   [7:0] empty_fu_496_p2;
wire   [0:0] tmp_212_fu_540_p3;
wire   [11:0] tmp_fu_582_p3;
wire   [13:0] p_shl41_fu_575_p3;
wire   [13:0] zext_ln2037_fu_589_p1;
wire   [11:0] tmp_207_fu_606_p3;
wire   [13:0] p_shl39_fu_599_p3;
wire   [13:0] zext_ln2041_fu_613_p1;
wire   [8:0] zext_ln2034_fu_623_p1;
wire   [7:0] or_ln_fu_631_p3;
wire   [13:0] sub_ln2037_fu_593_p2;
wire   [13:0] zext_ln2037_1_fu_637_p1;
wire   [13:0] add_ln2037_fu_641_p2;
wire   [15:0] p_shl38_fu_651_p3;
wire   [15:0] zext_ln2037_2_fu_647_p1;
wire   [15:0] sub_ln2037_1_fu_659_p2;
wire   [13:0] sub_ln2041_fu_617_p2;
wire   [13:0] add_ln2041_fu_674_p2;
wire   [15:0] p_shl36_fu_684_p3;
wire   [15:0] zext_ln2041_1_fu_680_p1;
wire   [15:0] sub_ln2041_1_fu_692_p2;
wire   [8:0] add_ln2036_fu_626_p2;
wire   [7:0] lshr_ln13_fu_707_p4;
wire   [13:0] zext_ln2039_fu_717_p1;
wire   [13:0] add_ln2039_fu_721_p2;
wire   [15:0] p_shl34_fu_731_p3;
wire   [15:0] zext_ln2039_1_fu_727_p1;
wire   [15:0] sub_ln2039_fu_739_p2;
wire   [13:0] add_ln2043_fu_754_p2;
wire   [15:0] p_shl32_fu_764_p3;
wire   [15:0] zext_ln2043_fu_760_p1;
wire   [15:0] sub_ln2043_fu_772_p2;
wire   [16:0] tmp_208_fu_787_p3;
wire   [16:0] zext_ln2037_3_fu_794_p1;
wire   [16:0] sub_ln2037_2_fu_797_p2;
wire   [16:0] add_ln2037_2_fu_803_p2;
wire   [16:0] tmp_209_fu_813_p3;
wire   [16:0] zext_ln2041_2_fu_820_p1;
wire   [16:0] sub_ln2041_2_fu_823_p2;
wire   [16:0] add_ln2041_2_fu_829_p2;
wire   [16:0] tmp_210_fu_841_p3;
wire   [16:0] zext_ln2039_2_fu_848_p1;
wire   [16:0] sub_ln2039_1_fu_851_p2;
wire   [16:0] add_ln2039_2_fu_857_p2;
wire   [16:0] tmp_211_fu_867_p3;
wire   [16:0] zext_ln2043_1_fu_874_p1;
wire   [16:0] sub_ln2043_1_fu_877_p2;
wire   [16:0] add_ln2043_2_fu_883_p2;
wire   [6:0] tmp_s_fu_895_p3;
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
reg    ap_condition_666;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 indvar_flatten93_fu_140 = 7'd0;
#0 v134194_fu_144 = 6'd0;
#0 v134295_fu_148 = 6'd0;
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
            indvar_flatten93_fu_140 <= add_ln2033_1_fu_534_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten93_fu_140 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v134194_fu_144 <= v1341_fu_460_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v134194_fu_144 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v134295_fu_148 <= v1342_fu_528_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v134295_fu_148 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln2037_1_reg_997 <= add_ln2037_1_fu_665_p2;
        add_ln2039_1_reg_1017 <= add_ln2039_1_fu_745_p2;
        add_ln2041_1_reg_1007 <= add_ln2041_1_fu_698_p2;
        add_ln2043_1_reg_1027 <= add_ln2043_1_fu_778_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_210_reg_970 <= empty_210_fu_502_p2;
        icmp_ln2033_reg_993 <= icmp_ln2033_fu_554_p2;
        lshr_ln12_reg_982 <= {{select_ln2033_fu_452_p3[4:1]}};
        lshr_ln12_reg_982_pp0_iter1_reg <= lshr_ln12_reg_982;
        lshr_ln_cast_reg_965 <= {{v1341_fu_460_p3[4:2]}};
        lshr_ln_cast_reg_965_pp0_iter1_reg <= lshr_ln_cast_reg_965;
        select_ln2033_reg_960 <= select_ln2033_fu_452_p3;
        tmp_206_reg_976 <= {{empty_fu_496_p2[7:2]}};
        trunc_ln2037_reg_1002 <= trunc_ln2037_fu_670_p1;
        trunc_ln2039_reg_1022 <= trunc_ln2039_fu_750_p1;
        trunc_ln2041_reg_1012 <= trunc_ln2041_fu_703_p1;
        trunc_ln2043_reg_1032 <= trunc_ln2043_fu_783_p1;
        zext_ln2075_1_cast_reg_952[1 : 0] <= zext_ln2075_1_cast_fu_418_p1[1 : 0];
        zext_ln2075_cast_reg_944[1 : 0] <= zext_ln2075_cast_fu_414_p1[1 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        lshr_ln12_reg_982_pp0_iter2_reg <= lshr_ln12_reg_982_pp0_iter1_reg;
        lshr_ln_cast_reg_965_pp0_iter2_reg <= lshr_ln_cast_reg_965_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xor_ln2034_reg_988 <= xor_ln2034_fu_548_p2;
    end
end
always @ (*) begin
    if (((icmp_ln2033_fu_554_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_666)) begin
            ap_phi_mux_icmp_ln203496_phi_fu_407_p4 = xor_ln2034_reg_988;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln203496_phi_fu_407_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln203496_phi_fu_407_p4 = xor_ln2034_reg_988;
        end
    end else begin
        ap_phi_mux_icmp_ln203496_phi_fu_407_p4 = xor_ln2034_reg_988;
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
        ap_sig_allocacmp_indvar_flatten93_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten93_load = indvar_flatten93_fu_140;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v134194_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v134194_load = v134194_fu_144;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v134295_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v134295_load = v134295_fu_148;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v1437_1_ce0_local = 1'b1;
    end else begin
        v1437_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v1437_1_we0_local = 1'b1;
    end else begin
        v1437_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v1437_2_ce0_local = 1'b1;
    end else begin
        v1437_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v1437_2_we0_local = 1'b1;
    end else begin
        v1437_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v1437_3_ce0_local = 1'b1;
    end else begin
        v1437_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v1437_3_we0_local = 1'b1;
    end else begin
        v1437_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v1437_4_ce0_local = 1'b1;
    end else begin
        v1437_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v1437_4_we0_local = 1'b1;
    end else begin
        v1437_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v1437_5_ce0_local = 1'b1;
    end else begin
        v1437_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v1437_5_we0_local = 1'b1;
    end else begin
        v1437_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v1437_6_ce0_local = 1'b1;
    end else begin
        v1437_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v1437_6_we0_local = 1'b1;
    end else begin
        v1437_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v1437_7_ce0_local = 1'b1;
    end else begin
        v1437_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v1437_7_we0_local = 1'b1;
    end else begin
        v1437_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v1437_ce0_local = 1'b1;
    end else begin
        v1437_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v1437_we0_local = 1'b1;
    end else begin
        v1437_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9006_0_0_ce0_local = 1'b1;
    end else begin
        v9006_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9006_0_1_ce0_local = 1'b1;
    end else begin
        v9006_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9006_1_0_ce0_local = 1'b1;
    end else begin
        v9006_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9006_1_1_ce0_local = 1'b1;
    end else begin
        v9006_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9006_2_0_ce0_local = 1'b1;
    end else begin
        v9006_2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9006_2_1_ce0_local = 1'b1;
    end else begin
        v9006_2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9006_3_0_ce0_local = 1'b1;
    end else begin
        v9006_3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9006_3_1_ce0_local = 1'b1;
    end else begin
        v9006_3_1_ce0_local = 1'b0;
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
assign add_ln2033_1_fu_534_p2 = (ap_sig_allocacmp_indvar_flatten93_load + 7'd1);
assign add_ln2033_fu_446_p2 = (ap_sig_allocacmp_v134194_load + 6'd4);
assign add_ln2036_fu_626_p2 = (mul_i7 + zext_ln2034_fu_623_p1);
assign add_ln2037_1_fu_665_p2 = (sub_ln2037_1_fu_659_p2 + zext_ln2075_1_cast_reg_952);
assign add_ln2037_2_fu_803_p2 = (sub_ln2037_2_fu_797_p2 + zext_ln2075_cast_reg_944);
assign add_ln2037_fu_641_p2 = (sub_ln2037_fu_593_p2 + zext_ln2037_1_fu_637_p1);
assign add_ln2039_1_fu_745_p2 = (sub_ln2039_fu_739_p2 + zext_ln2075_1_cast_reg_952);
assign add_ln2039_2_fu_857_p2 = (sub_ln2039_1_fu_851_p2 + zext_ln2075_cast_reg_944);
assign add_ln2039_fu_721_p2 = (sub_ln2037_fu_593_p2 + zext_ln2039_fu_717_p1);
assign add_ln2041_1_fu_698_p2 = (sub_ln2041_1_fu_692_p2 + zext_ln2075_1_cast_reg_952);
assign add_ln2041_2_fu_829_p2 = (sub_ln2041_2_fu_823_p2 + zext_ln2075_cast_reg_944);
assign add_ln2041_fu_674_p2 = (sub_ln2041_fu_617_p2 + zext_ln2037_1_fu_637_p1);
assign add_ln2043_1_fu_778_p2 = (sub_ln2043_fu_772_p2 + zext_ln2075_1_cast_reg_952);
assign add_ln2043_2_fu_883_p2 = (sub_ln2043_1_fu_877_p2 + zext_ln2075_cast_reg_944);
assign add_ln2043_fu_754_p2 = (sub_ln2041_fu_617_p2 + zext_ln2039_fu_717_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_666 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln2033_reg_993 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_210_fu_502_p2 = (zext_ln2033_1_fu_492_p1 + p_udiv26_cast);
assign empty_fu_496_p2 = (mul_i + zext_ln2033_fu_468_p1);
assign icmp_ln2033_fu_554_p2 = ((ap_sig_allocacmp_indvar_flatten93_load == 7'd127) ? 1'b1 : 1'b0);
assign lshr_ln13_fu_707_p4 = {{add_ln2036_fu_626_p2[8:1]}};
assign lshr_ln_fu_472_p4 = {{v1341_fu_460_p3[5:2]}};
assign or_ln_fu_631_p3 = {{tmp_282}, {lshr_ln12_reg_982}};
assign p_shl32_fu_764_p3 = {{add_ln2043_fu_754_p2}, {2'd0}};
assign p_shl34_fu_731_p3 = {{add_ln2039_fu_721_p2}, {2'd0}};
assign p_shl36_fu_684_p3 = {{add_ln2041_fu_674_p2}, {2'd0}};
assign p_shl38_fu_651_p3 = {{add_ln2037_fu_641_p2}, {2'd0}};
assign p_shl39_fu_599_p3 = {{tmp_206_reg_976}, {8'd0}};
assign p_shl41_fu_575_p3 = {{empty_210_reg_970}, {8'd0}};
assign select_ln2033_fu_452_p3 = ((ap_phi_mux_icmp_ln203496_phi_fu_407_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v134295_load : 6'd0);
assign sub_ln2037_1_fu_659_p2 = (p_shl38_fu_651_p3 - zext_ln2037_2_fu_647_p1);
assign sub_ln2037_2_fu_797_p2 = (tmp_208_fu_787_p3 - zext_ln2037_3_fu_794_p1);
assign sub_ln2037_fu_593_p2 = (p_shl41_fu_575_p3 - zext_ln2037_fu_589_p1);
assign sub_ln2039_1_fu_851_p2 = (tmp_210_fu_841_p3 - zext_ln2039_2_fu_848_p1);
assign sub_ln2039_fu_739_p2 = (p_shl34_fu_731_p3 - zext_ln2039_1_fu_727_p1);
assign sub_ln2041_1_fu_692_p2 = (p_shl36_fu_684_p3 - zext_ln2041_1_fu_680_p1);
assign sub_ln2041_2_fu_823_p2 = (tmp_209_fu_813_p3 - zext_ln2041_2_fu_820_p1);
assign sub_ln2041_fu_617_p2 = (p_shl39_fu_599_p3 - zext_ln2041_fu_613_p1);
assign sub_ln2043_1_fu_877_p2 = (tmp_211_fu_867_p3 - zext_ln2043_1_fu_874_p1);
assign sub_ln2043_fu_772_p2 = (p_shl32_fu_764_p3 - zext_ln2043_fu_760_p1);
assign tmp_207_fu_606_p3 = {{tmp_206_reg_976}, {6'd0}};
assign tmp_208_fu_787_p3 = {{trunc_ln2037_reg_1002}, {2'd0}};
assign tmp_209_fu_813_p3 = {{trunc_ln2041_reg_1012}, {2'd0}};
assign tmp_210_fu_841_p3 = {{trunc_ln2039_reg_1022}, {2'd0}};
assign tmp_211_fu_867_p3 = {{trunc_ln2043_reg_1032}, {2'd0}};
assign tmp_212_fu_540_p3 = v1342_fu_528_p2[32'd5];
assign tmp_fu_582_p3 = {{empty_210_reg_970}, {6'd0}};
assign tmp_s_fu_895_p3 = {{lshr_ln_cast_reg_965_pp0_iter2_reg}, {lshr_ln12_reg_982_pp0_iter2_reg}};
assign trunc_ln2037_fu_670_p1 = add_ln2037_1_fu_665_p2[14:0];
assign trunc_ln2039_fu_750_p1 = add_ln2039_1_fu_745_p2[14:0];
assign trunc_ln2041_fu_703_p1 = add_ln2041_1_fu_698_p2[14:0];
assign trunc_ln2043_fu_783_p1 = add_ln2043_1_fu_778_p2[14:0];
assign v1341_fu_460_p3 = ((ap_phi_mux_icmp_ln203496_phi_fu_407_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v134194_load : add_ln2033_fu_446_p2);
assign v1342_fu_528_p2 = (select_ln2033_fu_452_p3 + 6'd2);
assign v1437_1_address0 = zext_ln2051_fu_901_p1;
assign v1437_1_ce0 = v1437_1_ce0_local;
assign v1437_1_d0 = v9006_3_0_q0;
assign v1437_1_we0 = v1437_1_we0_local;
assign v1437_2_address0 = zext_ln2051_fu_901_p1;
assign v1437_2_ce0 = v1437_2_ce0_local;
assign v1437_2_d0 = v9006_2_1_q0;
assign v1437_2_we0 = v1437_2_we0_local;
assign v1437_3_address0 = zext_ln2051_fu_901_p1;
assign v1437_3_ce0 = v1437_3_ce0_local;
assign v1437_3_d0 = v9006_2_0_q0;
assign v1437_3_we0 = v1437_3_we0_local;
assign v1437_4_address0 = zext_ln2051_fu_901_p1;
assign v1437_4_ce0 = v1437_4_ce0_local;
assign v1437_4_d0 = v9006_1_1_q0;
assign v1437_4_we0 = v1437_4_we0_local;
assign v1437_5_address0 = zext_ln2051_fu_901_p1;
assign v1437_5_ce0 = v1437_5_ce0_local;
assign v1437_5_d0 = v9006_1_0_q0;
assign v1437_5_we0 = v1437_5_we0_local;
assign v1437_6_address0 = zext_ln2051_fu_901_p1;
assign v1437_6_ce0 = v1437_6_ce0_local;
assign v1437_6_d0 = v9006_0_1_q0;
assign v1437_6_we0 = v1437_6_we0_local;
assign v1437_7_address0 = zext_ln2051_fu_901_p1;
assign v1437_7_ce0 = v1437_7_ce0_local;
assign v1437_7_d0 = v9006_0_0_q0;
assign v1437_7_we0 = v1437_7_we0_local;
assign v1437_address0 = zext_ln2051_fu_901_p1;
assign v1437_ce0 = v1437_ce0_local;
assign v1437_d0 = v9006_3_1_q0;
assign v1437_we0 = v1437_we0_local;
assign v9006_0_0_address0 = zext_ln2037_4_fu_808_p1;
assign v9006_0_0_ce0 = v9006_0_0_ce0_local;
assign v9006_0_1_address0 = zext_ln2039_3_fu_862_p1;
assign v9006_0_1_ce0 = v9006_0_1_ce0_local;
assign v9006_1_0_address0 = zext_ln2041_3_fu_834_p1;
assign v9006_1_0_ce0 = v9006_1_0_ce0_local;
assign v9006_1_1_address0 = zext_ln2043_2_fu_888_p1;
assign v9006_1_1_ce0 = v9006_1_1_ce0_local;
assign v9006_2_0_address0 = zext_ln2041_3_fu_834_p1;
assign v9006_2_0_ce0 = v9006_2_0_ce0_local;
assign v9006_2_1_address0 = zext_ln2043_2_fu_888_p1;
assign v9006_2_1_ce0 = v9006_2_1_ce0_local;
assign v9006_3_0_address0 = zext_ln2041_3_fu_834_p1;
assign v9006_3_0_ce0 = v9006_3_0_ce0_local;
assign v9006_3_1_address0 = zext_ln2043_2_fu_888_p1;
assign v9006_3_1_ce0 = v9006_3_1_ce0_local;
assign xor_ln2034_fu_548_p2 = (tmp_212_fu_540_p3 ^ 1'd1);
assign zext_ln2033_1_fu_492_p1 = lshr_ln_fu_472_p4;
assign zext_ln2033_fu_468_p1 = v1341_fu_460_p3;
assign zext_ln2034_fu_623_p1 = select_ln2033_reg_960;
assign zext_ln2037_1_fu_637_p1 = or_ln_fu_631_p3;
assign zext_ln2037_2_fu_647_p1 = add_ln2037_fu_641_p2;
assign zext_ln2037_3_fu_794_p1 = add_ln2037_1_reg_997;
assign zext_ln2037_4_fu_808_p1 = add_ln2037_2_fu_803_p2;
assign zext_ln2037_fu_589_p1 = tmp_fu_582_p3;
assign zext_ln2039_1_fu_727_p1 = add_ln2039_fu_721_p2;
assign zext_ln2039_2_fu_848_p1 = add_ln2039_1_reg_1017;
assign zext_ln2039_3_fu_862_p1 = add_ln2039_2_fu_857_p2;
assign zext_ln2039_fu_717_p1 = lshr_ln13_fu_707_p4;
assign zext_ln2041_1_fu_680_p1 = add_ln2041_fu_674_p2;
assign zext_ln2041_2_fu_820_p1 = add_ln2041_1_reg_1007;
assign zext_ln2041_3_fu_834_p1 = add_ln2041_2_fu_829_p2;
assign zext_ln2041_fu_613_p1 = tmp_207_fu_606_p3;
assign zext_ln2043_1_fu_874_p1 = add_ln2043_1_reg_1027;
assign zext_ln2043_2_fu_888_p1 = add_ln2043_2_fu_883_p2;
assign zext_ln2043_fu_760_p1 = add_ln2043_fu_754_p2;
assign zext_ln2051_fu_901_p1 = tmp_s_fu_895_p3;
assign zext_ln2075_1_cast_fu_418_p1 = zext_ln2075_1;
assign zext_ln2075_cast_fu_414_p1 = zext_ln2075;
always @ (posedge ap_clk) begin
    zext_ln2075_cast_reg_944[16:2] <= 15'b000000000000000;
    zext_ln2075_1_cast_reg_952[15:2] <= 14'b00000000000000;
end
endmodule 