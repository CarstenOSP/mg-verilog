module bicg (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v137_address0,v137_ce0,v137_q0,v137_address1,v137_ce1,v137_q1,v138_0_address0,v138_0_ce0,v138_0_q0,v138_0_address1,v138_0_ce1,v138_0_q1,v138_1_address0,v138_1_ce0,v138_1_q0,v138_1_address1,v138_1_ce1,v138_1_q1,v138_2_address0,v138_2_ce0,v138_2_q0,v138_2_address1,v138_2_ce1,v138_2_q1,v138_3_address0,v138_3_ce0,v138_3_q0,v138_3_address1,v138_3_ce1,v138_3_q1,v138_4_address0,v138_4_ce0,v138_4_q0,v138_4_address1,v138_4_ce1,v138_4_q1,v138_5_address0,v138_5_ce0,v138_5_q0,v138_5_address1,v138_5_ce1,v138_5_q1,v138_6_address0,v138_6_ce0,v138_6_q0,v138_6_address1,v138_6_ce1,v138_6_q1,v138_7_address0,v138_7_ce0,v138_7_q0,v138_7_address1,v138_7_ce1,v138_7_q1,v139_address0,v139_ce0,v139_q0,v140_address0,v140_ce0,v140_q0,v140_address1,v140_ce1,v140_q1,v141_address0,v141_ce0,v141_we0,v141_d0,v141_address1,v141_ce1,v141_we1,v141_d1,v142_address0,v142_ce0,v142_we0,v142_d0,v142_address1,v142_ce1,v142_we1,v142_d1); 
parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state5 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] v137_address0;
output   v137_ce0;
input  [31:0] v137_q0;
output  [11:0] v137_address1;
output   v137_ce1;
input  [31:0] v137_q1;
output  [8:0] v138_0_address0;
output   v138_0_ce0;
input  [31:0] v138_0_q0;
output  [8:0] v138_0_address1;
output   v138_0_ce1;
input  [31:0] v138_0_q1;
output  [8:0] v138_1_address0;
output   v138_1_ce0;
input  [31:0] v138_1_q0;
output  [8:0] v138_1_address1;
output   v138_1_ce1;
input  [31:0] v138_1_q1;
output  [8:0] v138_2_address0;
output   v138_2_ce0;
input  [31:0] v138_2_q0;
output  [8:0] v138_2_address1;
output   v138_2_ce1;
input  [31:0] v138_2_q1;
output  [8:0] v138_3_address0;
output   v138_3_ce0;
input  [31:0] v138_3_q0;
output  [8:0] v138_3_address1;
output   v138_3_ce1;
input  [31:0] v138_3_q1;
output  [8:0] v138_4_address0;
output   v138_4_ce0;
input  [31:0] v138_4_q0;
output  [8:0] v138_4_address1;
output   v138_4_ce1;
input  [31:0] v138_4_q1;
output  [8:0] v138_5_address0;
output   v138_5_ce0;
input  [31:0] v138_5_q0;
output  [8:0] v138_5_address1;
output   v138_5_ce1;
input  [31:0] v138_5_q1;
output  [8:0] v138_6_address0;
output   v138_6_ce0;
input  [31:0] v138_6_q0;
output  [8:0] v138_6_address1;
output   v138_6_ce1;
input  [31:0] v138_6_q1;
output  [8:0] v138_7_address0;
output   v138_7_ce0;
input  [31:0] v138_7_q0;
output  [8:0] v138_7_address1;
output   v138_7_ce1;
input  [31:0] v138_7_q1;
output  [5:0] v139_address0;
output   v139_ce0;
input  [31:0] v139_q0;
output  [5:0] v140_address0;
output   v140_ce0;
input  [31:0] v140_q0;
output  [5:0] v140_address1;
output   v140_ce1;
input  [31:0] v140_q1;
output  [5:0] v141_address0;
output   v141_ce0;
output   v141_we0;
output  [31:0] v141_d0;
output  [5:0] v141_address1;
output   v141_ce1;
output   v141_we1;
output  [31:0] v141_d1;
output  [5:0] v142_address0;
output   v142_ce0;
output   v142_we0;
output  [31:0] v142_d0;
output  [5:0] v142_address1;
output   v142_ce1;
output   v142_we1;
output  [31:0] v142_d1;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [63:0] zext_ln27_fu_228_p1;
reg   [63:0] zext_ln27_reg_304;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln28_fu_252_p1;
reg   [63:0] zext_ln28_reg_320;
wire   [0:0] tmp_46_fu_264_p3;
reg    ap_enable_reg_pp0_iter0;
wire    ap_CS_fsm_state2;
wire    grp_bicg_node2_fu_186_ap_done;
wire    grp_bicg_node1_fu_210_ap_done;
reg    ap_block_state2_on_subcall_done;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_flush_enable;
reg    ap_enable_reg_pp0_iter1;
reg   [5:0] v151_address0;
reg    v151_ce0;
reg    v151_we0;
wire   [31:0] v151_q0;
reg   [5:0] v151_address1;
reg    v151_ce1;
reg    v151_we1;
wire   [31:0] v151_q1;
reg   [5:0] v152_address0;
reg    v152_ce0;
reg    v152_we0;
wire   [31:0] v152_q0;
reg   [5:0] v152_address1;
reg    v152_ce1;
reg    v152_we1;
wire   [31:0] v152_q1;
wire    grp_bicg_node2_fu_186_ap_start;
wire    grp_bicg_node2_fu_186_ap_idle;
wire    grp_bicg_node2_fu_186_ap_ready;
wire   [5:0] grp_bicg_node2_fu_186_v140_address0;
wire    grp_bicg_node2_fu_186_v140_ce0;
wire   [5:0] grp_bicg_node2_fu_186_v140_address1;
wire    grp_bicg_node2_fu_186_v140_ce1;
wire   [8:0] grp_bicg_node2_fu_186_v138_0_address0;
wire    grp_bicg_node2_fu_186_v138_0_ce0;
wire   [8:0] grp_bicg_node2_fu_186_v138_0_address1;
wire    grp_bicg_node2_fu_186_v138_0_ce1;
wire   [8:0] grp_bicg_node2_fu_186_v138_1_address0;
wire    grp_bicg_node2_fu_186_v138_1_ce0;
wire   [8:0] grp_bicg_node2_fu_186_v138_1_address1;
wire    grp_bicg_node2_fu_186_v138_1_ce1;
wire   [8:0] grp_bicg_node2_fu_186_v138_2_address0;
wire    grp_bicg_node2_fu_186_v138_2_ce0;
wire   [8:0] grp_bicg_node2_fu_186_v138_2_address1;
wire    grp_bicg_node2_fu_186_v138_2_ce1;
wire   [8:0] grp_bicg_node2_fu_186_v138_3_address0;
wire    grp_bicg_node2_fu_186_v138_3_ce0;
wire   [8:0] grp_bicg_node2_fu_186_v138_3_address1;
wire    grp_bicg_node2_fu_186_v138_3_ce1;
wire   [8:0] grp_bicg_node2_fu_186_v138_4_address0;
wire    grp_bicg_node2_fu_186_v138_4_ce0;
wire   [8:0] grp_bicg_node2_fu_186_v138_4_address1;
wire    grp_bicg_node2_fu_186_v138_4_ce1;
wire   [8:0] grp_bicg_node2_fu_186_v138_5_address0;
wire    grp_bicg_node2_fu_186_v138_5_ce0;
wire   [8:0] grp_bicg_node2_fu_186_v138_5_address1;
wire    grp_bicg_node2_fu_186_v138_5_ce1;
wire   [8:0] grp_bicg_node2_fu_186_v138_6_address0;
wire    grp_bicg_node2_fu_186_v138_6_ce0;
wire   [8:0] grp_bicg_node2_fu_186_v138_6_address1;
wire    grp_bicg_node2_fu_186_v138_6_ce1;
wire   [8:0] grp_bicg_node2_fu_186_v138_7_address0;
wire    grp_bicg_node2_fu_186_v138_7_ce0;
wire   [8:0] grp_bicg_node2_fu_186_v138_7_address1;
wire    grp_bicg_node2_fu_186_v138_7_ce1;
wire   [5:0] grp_bicg_node2_fu_186_v65_address0;
wire    grp_bicg_node2_fu_186_v65_ce0;
wire    grp_bicg_node2_fu_186_v65_we0;
wire   [31:0] grp_bicg_node2_fu_186_v65_d0;
wire   [5:0] grp_bicg_node2_fu_186_v65_address1;
wire    grp_bicg_node2_fu_186_v65_ce1;
wire    grp_bicg_node2_fu_186_v65_we1;
wire   [31:0] grp_bicg_node2_fu_186_v65_d1;
wire    grp_bicg_node1_fu_210_ap_start;
wire    grp_bicg_node1_fu_210_ap_idle;
wire    grp_bicg_node1_fu_210_ap_ready;
wire   [11:0] grp_bicg_node1_fu_210_v137_address0;
wire    grp_bicg_node1_fu_210_v137_ce0;
wire   [11:0] grp_bicg_node1_fu_210_v137_address1;
wire    grp_bicg_node1_fu_210_v137_ce1;
wire   [5:0] grp_bicg_node1_fu_210_v139_address0;
wire    grp_bicg_node1_fu_210_v139_ce0;
wire   [5:0] grp_bicg_node1_fu_210_v10_address0;
wire    grp_bicg_node1_fu_210_v10_ce0;
wire    grp_bicg_node1_fu_210_v10_we0;
wire   [31:0] grp_bicg_node1_fu_210_v10_d0;
wire   [5:0] grp_bicg_node1_fu_210_v10_address1;
wire    grp_bicg_node1_fu_210_v10_ce1;
wire    grp_bicg_node1_fu_210_v10_we1;
wire   [31:0] grp_bicg_node1_fu_210_v10_d1;
reg    grp_bicg_node2_fu_186_ap_start_reg;
reg    grp_bicg_node1_fu_210_ap_start_reg;
wire    ap_block_pp0_stage0;
reg   [6:0] v41_fu_78;
wire   [6:0] v4_fu_258_p2;
reg    v151_ce1_local;
reg    v151_ce0_local;
reg    v152_ce1_local;
reg    v152_ce0_local;
reg    v141_we1_local;
wire   [31:0] bitcast_ln29_fu_277_p1;
reg    v141_ce1_local;
reg    v141_we0_local;
wire   [31:0] bitcast_ln29_1_fu_287_p1;
reg    v141_ce0_local;
reg    v142_we1_local;
wire   [31:0] bitcast_ln31_fu_282_p1;
reg    v142_ce1_local;
reg    v142_we0_local;
wire   [31:0] bitcast_ln31_1_fu_292_p1;
reg    v142_ce0_local;
wire   [4:0] tmp_fu_234_p4;
wire   [5:0] or_ln_fu_244_p3;
wire    ap_CS_fsm_state5;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 grp_bicg_node2_fu_186_ap_start_reg = 1'b0;
#0 grp_bicg_node1_fu_210_ap_start_reg = 1'b0;
#0 v41_fu_78 = 7'd0;
end
bicg_v151_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
v151_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_address0),.ce0(v151_ce0),.we0(v151_we0),.d0(grp_bicg_node2_fu_186_v65_d0),.q0(v151_q0),.address1(v151_address1),.ce1(v151_ce1),.we1(v151_we1),.d1(grp_bicg_node2_fu_186_v65_d1),.q1(v151_q1));
bicg_v151_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
v152_U(.clk(ap_clk),.reset(ap_rst),.address0(v152_address0),.ce0(v152_ce0),.we0(v152_we0),.d0(grp_bicg_node1_fu_210_v10_d0),.q0(v152_q0),.address1(v152_address1),.ce1(v152_ce1),.we1(v152_we1),.d1(grp_bicg_node1_fu_210_v10_d1),.q1(v152_q1));
bicg_bicg_node2 grp_bicg_node2_fu_186(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_node2_fu_186_ap_start),.ap_done(grp_bicg_node2_fu_186_ap_done),.ap_idle(grp_bicg_node2_fu_186_ap_idle),.ap_ready(grp_bicg_node2_fu_186_ap_ready),.v140_address0(grp_bicg_node2_fu_186_v140_address0),.v140_ce0(grp_bicg_node2_fu_186_v140_ce0),.v140_q0(v140_q0),.v140_address1(grp_bicg_node2_fu_186_v140_address1),.v140_ce1(grp_bicg_node2_fu_186_v140_ce1),.v140_q1(v140_q1),.v138_0_address0(grp_bicg_node2_fu_186_v138_0_address0),.v138_0_ce0(grp_bicg_node2_fu_186_v138_0_ce0),.v138_0_q0(v138_0_q0),.v138_0_address1(grp_bicg_node2_fu_186_v138_0_address1),.v138_0_ce1(grp_bicg_node2_fu_186_v138_0_ce1),.v138_0_q1(v138_0_q1),.v138_1_address0(grp_bicg_node2_fu_186_v138_1_address0),.v138_1_ce0(grp_bicg_node2_fu_186_v138_1_ce0),.v138_1_q0(v138_1_q0),.v138_1_address1(grp_bicg_node2_fu_186_v138_1_address1),.v138_1_ce1(grp_bicg_node2_fu_186_v138_1_ce1),.v138_1_q1(v138_1_q1),.v138_2_address0(grp_bicg_node2_fu_186_v138_2_address0),.v138_2_ce0(grp_bicg_node2_fu_186_v138_2_ce0),.v138_2_q0(v138_2_q0),.v138_2_address1(grp_bicg_node2_fu_186_v138_2_address1),.v138_2_ce1(grp_bicg_node2_fu_186_v138_2_ce1),.v138_2_q1(v138_2_q1),.v138_3_address0(grp_bicg_node2_fu_186_v138_3_address0),.v138_3_ce0(grp_bicg_node2_fu_186_v138_3_ce0),.v138_3_q0(v138_3_q0),.v138_3_address1(grp_bicg_node2_fu_186_v138_3_address1),.v138_3_ce1(grp_bicg_node2_fu_186_v138_3_ce1),.v138_3_q1(v138_3_q1),.v138_4_address0(grp_bicg_node2_fu_186_v138_4_address0),.v138_4_ce0(grp_bicg_node2_fu_186_v138_4_ce0),.v138_4_q0(v138_4_q0),.v138_4_address1(grp_bicg_node2_fu_186_v138_4_address1),.v138_4_ce1(grp_bicg_node2_fu_186_v138_4_ce1),.v138_4_q1(v138_4_q1),.v138_5_address0(grp_bicg_node2_fu_186_v138_5_address0),.v138_5_ce0(grp_bicg_node2_fu_186_v138_5_ce0),.v138_5_q0(v138_5_q0),.v138_5_address1(grp_bicg_node2_fu_186_v138_5_address1),.v138_5_ce1(grp_bicg_node2_fu_186_v138_5_ce1),.v138_5_q1(v138_5_q1),.v138_6_address0(grp_bicg_node2_fu_186_v138_6_address0),.v138_6_ce0(grp_bicg_node2_fu_186_v138_6_ce0),.v138_6_q0(v138_6_q0),.v138_6_address1(grp_bicg_node2_fu_186_v138_6_address1),.v138_6_ce1(grp_bicg_node2_fu_186_v138_6_ce1),.v138_6_q1(v138_6_q1),.v138_7_address0(grp_bicg_node2_fu_186_v138_7_address0),.v138_7_ce0(grp_bicg_node2_fu_186_v138_7_ce0),.v138_7_q0(v138_7_q0),.v138_7_address1(grp_bicg_node2_fu_186_v138_7_address1),.v138_7_ce1(grp_bicg_node2_fu_186_v138_7_ce1),.v138_7_q1(v138_7_q1),.v65_address0(grp_bicg_node2_fu_186_v65_address0),.v65_ce0(grp_bicg_node2_fu_186_v65_ce0),.v65_we0(grp_bicg_node2_fu_186_v65_we0),.v65_d0(grp_bicg_node2_fu_186_v65_d0),.v65_q0(v151_q0),.v65_address1(grp_bicg_node2_fu_186_v65_address1),.v65_ce1(grp_bicg_node2_fu_186_v65_ce1),.v65_we1(grp_bicg_node2_fu_186_v65_we1),.v65_d1(grp_bicg_node2_fu_186_v65_d1),.v65_q1(v151_q1));
bicg_bicg_node1 grp_bicg_node1_fu_210(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_node1_fu_210_ap_start),.ap_done(grp_bicg_node1_fu_210_ap_done),.ap_idle(grp_bicg_node1_fu_210_ap_idle),.ap_ready(grp_bicg_node1_fu_210_ap_ready),.v137_address0(grp_bicg_node1_fu_210_v137_address0),.v137_ce0(grp_bicg_node1_fu_210_v137_ce0),.v137_q0(v137_q0),.v137_address1(grp_bicg_node1_fu_210_v137_address1),.v137_ce1(grp_bicg_node1_fu_210_v137_ce1),.v137_q1(v137_q1),.v139_address0(grp_bicg_node1_fu_210_v139_address0),.v139_ce0(grp_bicg_node1_fu_210_v139_ce0),.v139_q0(v139_q0),.v10_address0(grp_bicg_node1_fu_210_v10_address0),.v10_ce0(grp_bicg_node1_fu_210_v10_ce0),.v10_we0(grp_bicg_node1_fu_210_v10_we0),.v10_d0(grp_bicg_node1_fu_210_v10_d0),.v10_q0(v152_q0),.v10_address1(grp_bicg_node1_fu_210_v10_address1),.v10_ce1(grp_bicg_node1_fu_210_v10_ce1),.v10_we1(grp_bicg_node1_fu_210_v10_we1),.v10_d1(grp_bicg_node1_fu_210_v10_d1),.v10_q1(v152_q1));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_pp0_flush_enable)) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_node1_fu_210_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_bicg_node1_fu_210_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_node1_fu_210_ap_ready == 1'b1)) begin
            grp_bicg_node1_fu_210_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_node2_fu_186_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_bicg_node2_fu_186_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_node2_fu_186_ap_ready == 1'b1)) begin
            grp_bicg_node2_fu_186_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v41_fu_78 <= 7'd0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v41_fu_78 <= v4_fu_258_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        zext_ln27_reg_304[6 : 0] <= zext_ln27_fu_228_p1[6 : 0];
        zext_ln28_reg_320[5 : 1] <= zext_ln28_fu_252_p1[5 : 1];
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state2_on_subcall_done)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_46_fu_264_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_pp0_flush_enable = 1'b1;
    end else begin
        ap_condition_pp0_flush_enable = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v141_ce0_local = 1'b1;
    end else begin
        v141_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v141_ce1_local = 1'b1;
    end else begin
        v141_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v141_we0_local = 1'b1;
    end else begin
        v141_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v141_we1_local = 1'b1;
    end else begin
        v141_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v142_ce0_local = 1'b1;
    end else begin
        v142_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v142_ce1_local = 1'b1;
    end else begin
        v142_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v142_we0_local = 1'b1;
    end else begin
        v142_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v142_we1_local = 1'b1;
    end else begin
        v142_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_address0 = grp_bicg_node2_fu_186_v65_address0;
    end else begin
        v151_address0 = zext_ln28_fu_252_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_address1 = grp_bicg_node2_fu_186_v65_address1;
    end else begin
        v151_address1 = zext_ln27_fu_228_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce0 = grp_bicg_node2_fu_186_v65_ce0;
    end else begin
        v151_ce0 = v151_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v151_ce0_local = 1'b1;
    end else begin
        v151_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce1 = grp_bicg_node2_fu_186_v65_ce1;
    end else begin
        v151_ce1 = v151_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v151_ce1_local = 1'b1;
    end else begin
        v151_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_we0 = grp_bicg_node2_fu_186_v65_we0;
    end else begin
        v151_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_we1 = grp_bicg_node2_fu_186_v65_we1;
    end else begin
        v151_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_address0 = grp_bicg_node1_fu_210_v10_address0;
    end else begin
        v152_address0 = zext_ln28_fu_252_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_address1 = grp_bicg_node1_fu_210_v10_address1;
    end else begin
        v152_address1 = zext_ln27_fu_228_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_ce0 = grp_bicg_node1_fu_210_v10_ce0;
    end else begin
        v152_ce0 = v152_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v152_ce0_local = 1'b1;
    end else begin
        v152_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_ce1 = grp_bicg_node1_fu_210_v10_ce1;
    end else begin
        v152_ce1 = v152_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v152_ce1_local = 1'b1;
    end else begin
        v152_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_we0 = grp_bicg_node1_fu_210_v10_we0;
    end else begin
        v152_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_we1 = grp_bicg_node1_fu_210_v10_we1;
    end else begin
        v152_we1 = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_state2_on_subcall_done = ((grp_bicg_node1_fu_210_ap_done == 1'b0) | (grp_bicg_node2_fu_186_ap_done == 1'b0));
end
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign bitcast_ln29_1_fu_287_p1 = v151_q0;
assign bitcast_ln29_fu_277_p1 = v151_q1;
assign bitcast_ln31_1_fu_292_p1 = v152_q0;
assign bitcast_ln31_fu_282_p1 = v152_q1;
assign grp_bicg_node1_fu_210_ap_start = grp_bicg_node1_fu_210_ap_start_reg;
assign grp_bicg_node2_fu_186_ap_start = grp_bicg_node2_fu_186_ap_start_reg;
assign or_ln_fu_244_p3 = {{tmp_fu_234_p4}, {1'd1}};
assign tmp_46_fu_264_p3 = v4_fu_258_p2[32'd6];
assign tmp_fu_234_p4 = {{v41_fu_78[5:1]}};
assign v137_address0 = grp_bicg_node1_fu_210_v137_address0;
assign v137_address1 = grp_bicg_node1_fu_210_v137_address1;
assign v137_ce0 = grp_bicg_node1_fu_210_v137_ce0;
assign v137_ce1 = grp_bicg_node1_fu_210_v137_ce1;
assign v138_0_address0 = grp_bicg_node2_fu_186_v138_0_address0;
assign v138_0_address1 = grp_bicg_node2_fu_186_v138_0_address1;
assign v138_0_ce0 = grp_bicg_node2_fu_186_v138_0_ce0;
assign v138_0_ce1 = grp_bicg_node2_fu_186_v138_0_ce1;
assign v138_1_address0 = grp_bicg_node2_fu_186_v138_1_address0;
assign v138_1_address1 = grp_bicg_node2_fu_186_v138_1_address1;
assign v138_1_ce0 = grp_bicg_node2_fu_186_v138_1_ce0;
assign v138_1_ce1 = grp_bicg_node2_fu_186_v138_1_ce1;
assign v138_2_address0 = grp_bicg_node2_fu_186_v138_2_address0;
assign v138_2_address1 = grp_bicg_node2_fu_186_v138_2_address1;
assign v138_2_ce0 = grp_bicg_node2_fu_186_v138_2_ce0;
assign v138_2_ce1 = grp_bicg_node2_fu_186_v138_2_ce1;
assign v138_3_address0 = grp_bicg_node2_fu_186_v138_3_address0;
assign v138_3_address1 = grp_bicg_node2_fu_186_v138_3_address1;
assign v138_3_ce0 = grp_bicg_node2_fu_186_v138_3_ce0;
assign v138_3_ce1 = grp_bicg_node2_fu_186_v138_3_ce1;
assign v138_4_address0 = grp_bicg_node2_fu_186_v138_4_address0;
assign v138_4_address1 = grp_bicg_node2_fu_186_v138_4_address1;
assign v138_4_ce0 = grp_bicg_node2_fu_186_v138_4_ce0;
assign v138_4_ce1 = grp_bicg_node2_fu_186_v138_4_ce1;
assign v138_5_address0 = grp_bicg_node2_fu_186_v138_5_address0;
assign v138_5_address1 = grp_bicg_node2_fu_186_v138_5_address1;
assign v138_5_ce0 = grp_bicg_node2_fu_186_v138_5_ce0;
assign v138_5_ce1 = grp_bicg_node2_fu_186_v138_5_ce1;
assign v138_6_address0 = grp_bicg_node2_fu_186_v138_6_address0;
assign v138_6_address1 = grp_bicg_node2_fu_186_v138_6_address1;
assign v138_6_ce0 = grp_bicg_node2_fu_186_v138_6_ce0;
assign v138_6_ce1 = grp_bicg_node2_fu_186_v138_6_ce1;
assign v138_7_address0 = grp_bicg_node2_fu_186_v138_7_address0;
assign v138_7_address1 = grp_bicg_node2_fu_186_v138_7_address1;
assign v138_7_ce0 = grp_bicg_node2_fu_186_v138_7_ce0;
assign v138_7_ce1 = grp_bicg_node2_fu_186_v138_7_ce1;
assign v139_address0 = grp_bicg_node1_fu_210_v139_address0;
assign v139_ce0 = grp_bicg_node1_fu_210_v139_ce0;
assign v140_address0 = grp_bicg_node2_fu_186_v140_address0;
assign v140_address1 = grp_bicg_node2_fu_186_v140_address1;
assign v140_ce0 = grp_bicg_node2_fu_186_v140_ce0;
assign v140_ce1 = grp_bicg_node2_fu_186_v140_ce1;
assign v141_address0 = zext_ln28_reg_320;
assign v141_address1 = zext_ln27_reg_304;
assign v141_ce0 = v141_ce0_local;
assign v141_ce1 = v141_ce1_local;
assign v141_d0 = bitcast_ln29_1_fu_287_p1;
assign v141_d1 = bitcast_ln29_fu_277_p1;
assign v141_we0 = v141_we0_local;
assign v141_we1 = v141_we1_local;
assign v142_address0 = zext_ln28_reg_320;
assign v142_address1 = zext_ln27_reg_304;
assign v142_ce0 = v142_ce0_local;
assign v142_ce1 = v142_ce1_local;
assign v142_d0 = bitcast_ln31_1_fu_292_p1;
assign v142_d1 = bitcast_ln31_fu_282_p1;
assign v142_we0 = v142_we0_local;
assign v142_we1 = v142_we1_local;
assign v4_fu_258_p2 = (v41_fu_78 + 7'd2);
assign zext_ln27_fu_228_p1 = v41_fu_78;
assign zext_ln28_fu_252_p1 = or_ln_fu_244_p3;
always @ (posedge ap_clk) begin
    zext_ln27_reg_304[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln28_reg_320[0] <= 1'b1;
    zext_ln28_reg_320[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 