module bicg (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v137_address0,v137_ce0,v137_q0,v137_address1,v137_ce1,v137_q1,v138_address0,v138_ce0,v138_q0,v138_address1,v138_ce1,v138_q1,v139_address0,v139_ce0,v139_q0,v140_address0,v140_ce0,v140_q0,v141_address0,v141_ce0,v141_we0,v141_d0,v141_address1,v141_ce1,v141_we1,v141_d1,v142_address0,v142_ce0,v142_we0,v142_d0,v142_address1,v142_ce1,v142_we1,v142_d1); 
parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_pp0_stage0 = 7'd4;
parameter    ap_ST_fsm_pp0_stage1 = 7'd8;
parameter    ap_ST_fsm_pp0_stage2 = 7'd16;
parameter    ap_ST_fsm_pp0_stage3 = 7'd32;
parameter    ap_ST_fsm_state8 = 7'd64;
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
output  [11:0] v138_address0;
output   v138_ce0;
input  [31:0] v138_q0;
output  [11:0] v138_address1;
output   v138_ce1;
input  [31:0] v138_q1;
output  [5:0] v139_address0;
output   v139_ce0;
input  [31:0] v139_q0;
output  [5:0] v140_address0;
output   v140_ce0;
input  [31:0] v140_q0;
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
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] reg_432;
wire    ap_CS_fsm_pp0_stage1;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_437;
reg   [31:0] reg_442;
reg   [31:0] reg_447;
reg   [6:0] v41_load_reg_754;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] lshr_ln_fu_460_p4;
reg   [4:0] lshr_ln_reg_759;
wire   [3:0] tmp_s_fu_478_p4;
reg   [3:0] tmp_s_reg_784;
reg   [2:0] tmp_29_reg_810;
reg   [0:0] tmp_reg_820;
reg   [0:0] tmp_8_reg_826;
reg   [31:0] v5_6_reg_870;
reg   [31:0] v6_6_reg_875;
reg   [31:0] v5_7_reg_880;
reg   [31:0] v6_7_reg_885;
wire    ap_CS_fsm_state2;
wire    grp_bicg_node2_fu_408_ap_done;
wire    grp_bicg_node1_fu_420_ap_done;
reg    ap_block_state2_on_subcall_done;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg    ap_condition_pp0_flush_enable;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0_subdone;
reg   [4:0] v151_address0;
reg    v151_ce0;
reg    v151_we0;
wire   [31:0] v151_q0;
reg   [4:0] v151_address1;
reg    v151_ce1;
reg    v151_we1;
wire   [31:0] v151_q1;
reg   [4:0] v151_1_address0;
reg    v151_1_ce0;
reg    v151_1_we0;
wire   [31:0] v151_1_q0;
reg   [4:0] v151_1_address1;
reg    v151_1_ce1;
reg    v151_1_we1;
wire   [31:0] v151_1_q1;
reg   [4:0] v152_address0;
reg    v152_ce0;
reg    v152_we0;
wire   [31:0] v152_q0;
reg   [4:0] v152_address1;
reg    v152_ce1;
reg    v152_we1;
wire   [31:0] v152_q1;
reg   [4:0] v152_1_address0;
reg    v152_1_ce0;
reg    v152_1_we0;
wire   [31:0] v152_1_q0;
reg   [4:0] v152_1_address1;
reg    v152_1_ce1;
reg    v152_1_we1;
wire   [31:0] v152_1_q1;
wire    grp_bicg_node2_fu_408_ap_start;
wire    grp_bicg_node2_fu_408_ap_idle;
wire    grp_bicg_node2_fu_408_ap_ready;
wire   [5:0] grp_bicg_node2_fu_408_v140_address0;
wire    grp_bicg_node2_fu_408_v140_ce0;
wire   [11:0] grp_bicg_node2_fu_408_v138_address0;
wire    grp_bicg_node2_fu_408_v138_ce0;
wire   [11:0] grp_bicg_node2_fu_408_v138_address1;
wire    grp_bicg_node2_fu_408_v138_ce1;
wire   [4:0] grp_bicg_node2_fu_408_v65_0_address0;
wire    grp_bicg_node2_fu_408_v65_0_ce0;
wire    grp_bicg_node2_fu_408_v65_0_we0;
wire   [31:0] grp_bicg_node2_fu_408_v65_0_d0;
wire   [4:0] grp_bicg_node2_fu_408_v65_0_address1;
wire    grp_bicg_node2_fu_408_v65_0_ce1;
wire    grp_bicg_node2_fu_408_v65_0_we1;
wire   [31:0] grp_bicg_node2_fu_408_v65_0_d1;
wire   [4:0] grp_bicg_node2_fu_408_v65_1_address0;
wire    grp_bicg_node2_fu_408_v65_1_ce0;
wire    grp_bicg_node2_fu_408_v65_1_we0;
wire   [31:0] grp_bicg_node2_fu_408_v65_1_d0;
wire   [4:0] grp_bicg_node2_fu_408_v65_1_address1;
wire    grp_bicg_node2_fu_408_v65_1_ce1;
wire    grp_bicg_node2_fu_408_v65_1_we1;
wire   [31:0] grp_bicg_node2_fu_408_v65_1_d1;
wire    grp_bicg_node1_fu_420_ap_start;
wire    grp_bicg_node1_fu_420_ap_idle;
wire    grp_bicg_node1_fu_420_ap_ready;
wire   [11:0] grp_bicg_node1_fu_420_v137_address0;
wire    grp_bicg_node1_fu_420_v137_ce0;
wire   [11:0] grp_bicg_node1_fu_420_v137_address1;
wire    grp_bicg_node1_fu_420_v137_ce1;
wire   [5:0] grp_bicg_node1_fu_420_v139_address0;
wire    grp_bicg_node1_fu_420_v139_ce0;
wire   [4:0] grp_bicg_node1_fu_420_v10_0_address0;
wire    grp_bicg_node1_fu_420_v10_0_ce0;
wire    grp_bicg_node1_fu_420_v10_0_we0;
wire   [31:0] grp_bicg_node1_fu_420_v10_0_d0;
wire   [4:0] grp_bicg_node1_fu_420_v10_0_address1;
wire    grp_bicg_node1_fu_420_v10_0_ce1;
wire    grp_bicg_node1_fu_420_v10_0_we1;
wire   [31:0] grp_bicg_node1_fu_420_v10_0_d1;
wire   [4:0] grp_bicg_node1_fu_420_v10_1_address0;
wire    grp_bicg_node1_fu_420_v10_1_ce0;
wire    grp_bicg_node1_fu_420_v10_1_we0;
wire   [31:0] grp_bicg_node1_fu_420_v10_1_d0;
wire   [4:0] grp_bicg_node1_fu_420_v10_1_address1;
wire    grp_bicg_node1_fu_420_v10_1_ce1;
wire    grp_bicg_node1_fu_420_v10_1_we1;
wire   [31:0] grp_bicg_node1_fu_420_v10_1_d1;
reg    grp_bicg_node2_fu_408_ap_start_reg;
reg    grp_bicg_node1_fu_420_ap_start_reg;
wire   [63:0] zext_ln27_1_fu_470_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln28_2_fu_496_p1;
wire   [63:0] zext_ln27_fu_541_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln28_fu_563_p1;
wire   [63:0] zext_ln28_5_fu_587_p1;
wire   [63:0] zext_ln28_8_fu_602_p1;
wire   [63:0] zext_ln28_1_fu_617_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln28_3_fu_640_p1;
wire   [63:0] zext_ln28_4_fu_663_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln28_6_fu_689_p1;
wire   [63:0] zext_ln28_7_fu_712_p1;
wire   [63:0] zext_ln28_9_fu_733_p1;
reg   [6:0] v41_fu_94;
wire   [6:0] v4_fu_522_p2;
reg    v151_ce1_local;
reg   [4:0] v151_address1_local;
reg    v151_ce0_local;
reg   [4:0] v151_address0_local;
reg    v152_ce1_local;
reg   [4:0] v152_address1_local;
reg    v152_ce0_local;
reg   [4:0] v152_address0_local;
reg    v151_1_ce1_local;
reg   [4:0] v151_1_address1_local;
reg    v151_1_ce0_local;
reg   [4:0] v151_1_address0_local;
reg    v152_1_ce1_local;
reg   [4:0] v152_1_address1_local;
reg    v152_1_ce0_local;
reg   [4:0] v152_1_address0_local;
reg    v141_we1_local;
reg   [31:0] v141_d1_local;
wire   [31:0] bitcast_ln29_fu_546_p1;
reg    v141_ce1_local;
reg   [5:0] v141_address1_local;
reg    v141_we0_local;
reg   [31:0] v141_d0_local;
wire   [31:0] bitcast_ln29_1_fu_569_p1;
reg    v141_ce0_local;
reg   [5:0] v141_address0_local;
wire   [31:0] bitcast_ln29_2_fu_623_p1;
wire   [31:0] bitcast_ln29_3_fu_646_p1;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] bitcast_ln29_4_fu_669_p1;
wire   [31:0] bitcast_ln29_5_fu_695_p1;
wire   [31:0] bitcast_ln29_6_fu_718_p1;
wire   [31:0] bitcast_ln29_7_fu_739_p1;
reg    v142_we1_local;
reg   [31:0] v142_d1_local;
wire   [31:0] bitcast_ln31_fu_551_p1;
reg    v142_ce1_local;
reg   [5:0] v142_address1_local;
reg    v142_we0_local;
reg   [31:0] v142_d0_local;
wire   [31:0] bitcast_ln31_1_fu_574_p1;
reg    v142_ce0_local;
reg   [5:0] v142_address0_local;
wire   [31:0] bitcast_ln31_2_fu_628_p1;
wire   [31:0] bitcast_ln31_3_fu_651_p1;
wire   [31:0] bitcast_ln31_4_fu_674_p1;
wire   [31:0] bitcast_ln31_5_fu_700_p1;
wire   [31:0] bitcast_ln31_6_fu_722_p1;
wire   [31:0] bitcast_ln31_7_fu_743_p1;
wire   [4:0] or_ln1_fu_488_p3;
wire   [5:0] or_ln_fu_556_p3;
wire   [4:0] or_ln28_1_fu_579_p4;
wire   [4:0] or_ln28_2_fu_595_p3;
wire   [5:0] or_ln27_1_fu_610_p3;
wire   [5:0] or_ln27_2_fu_633_p3;
wire   [5:0] or_ln27_3_fu_656_p3;
wire   [5:0] or_ln27_4_fu_679_p5;
wire   [5:0] or_ln27_5_fu_705_p3;
wire   [5:0] or_ln27_6_fu_726_p3;
wire    ap_CS_fsm_state8;
reg   [6:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 grp_bicg_node2_fu_408_ap_start_reg = 1'b0;
#0 grp_bicg_node1_fu_420_ap_start_reg = 1'b0;
#0 v41_fu_94 = 7'd0;
end
bicg_v151_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v151_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_address0),.ce0(v151_ce0),.we0(v151_we0),.d0(grp_bicg_node2_fu_408_v65_0_d0),.q0(v151_q0),.address1(v151_address1),.ce1(v151_ce1),.we1(v151_we1),.d1(grp_bicg_node2_fu_408_v65_0_d1),.q1(v151_q1));
bicg_v151_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v151_1_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_1_address0),.ce0(v151_1_ce0),.we0(v151_1_we0),.d0(grp_bicg_node2_fu_408_v65_1_d0),.q0(v151_1_q0),.address1(v151_1_address1),.ce1(v151_1_ce1),.we1(v151_1_we1),.d1(grp_bicg_node2_fu_408_v65_1_d1),.q1(v151_1_q1));
bicg_v151_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v152_U(.clk(ap_clk),.reset(ap_rst),.address0(v152_address0),.ce0(v152_ce0),.we0(v152_we0),.d0(grp_bicg_node1_fu_420_v10_0_d0),.q0(v152_q0),.address1(v152_address1),.ce1(v152_ce1),.we1(v152_we1),.d1(grp_bicg_node1_fu_420_v10_0_d1),.q1(v152_q1));
bicg_v151_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v152_1_U(.clk(ap_clk),.reset(ap_rst),.address0(v152_1_address0),.ce0(v152_1_ce0),.we0(v152_1_we0),.d0(grp_bicg_node1_fu_420_v10_1_d0),.q0(v152_1_q0),.address1(v152_1_address1),.ce1(v152_1_ce1),.we1(v152_1_we1),.d1(grp_bicg_node1_fu_420_v10_1_d1),.q1(v152_1_q1));
bicg_bicg_node2 grp_bicg_node2_fu_408(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_node2_fu_408_ap_start),.ap_done(grp_bicg_node2_fu_408_ap_done),.ap_idle(grp_bicg_node2_fu_408_ap_idle),.ap_ready(grp_bicg_node2_fu_408_ap_ready),.v140_address0(grp_bicg_node2_fu_408_v140_address0),.v140_ce0(grp_bicg_node2_fu_408_v140_ce0),.v140_q0(v140_q0),.v138_address0(grp_bicg_node2_fu_408_v138_address0),.v138_ce0(grp_bicg_node2_fu_408_v138_ce0),.v138_q0(v138_q0),.v138_address1(grp_bicg_node2_fu_408_v138_address1),.v138_ce1(grp_bicg_node2_fu_408_v138_ce1),.v138_q1(v138_q1),.v65_0_address0(grp_bicg_node2_fu_408_v65_0_address0),.v65_0_ce0(grp_bicg_node2_fu_408_v65_0_ce0),.v65_0_we0(grp_bicg_node2_fu_408_v65_0_we0),.v65_0_d0(grp_bicg_node2_fu_408_v65_0_d0),.v65_0_q0(v151_q0),.v65_0_address1(grp_bicg_node2_fu_408_v65_0_address1),.v65_0_ce1(grp_bicg_node2_fu_408_v65_0_ce1),.v65_0_we1(grp_bicg_node2_fu_408_v65_0_we1),.v65_0_d1(grp_bicg_node2_fu_408_v65_0_d1),.v65_0_q1(v151_q1),.v65_1_address0(grp_bicg_node2_fu_408_v65_1_address0),.v65_1_ce0(grp_bicg_node2_fu_408_v65_1_ce0),.v65_1_we0(grp_bicg_node2_fu_408_v65_1_we0),.v65_1_d0(grp_bicg_node2_fu_408_v65_1_d0),.v65_1_q0(v151_1_q0),.v65_1_address1(grp_bicg_node2_fu_408_v65_1_address1),.v65_1_ce1(grp_bicg_node2_fu_408_v65_1_ce1),.v65_1_we1(grp_bicg_node2_fu_408_v65_1_we1),.v65_1_d1(grp_bicg_node2_fu_408_v65_1_d1),.v65_1_q1(v151_1_q1));
bicg_bicg_node1 grp_bicg_node1_fu_420(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_node1_fu_420_ap_start),.ap_done(grp_bicg_node1_fu_420_ap_done),.ap_idle(grp_bicg_node1_fu_420_ap_idle),.ap_ready(grp_bicg_node1_fu_420_ap_ready),.v137_address0(grp_bicg_node1_fu_420_v137_address0),.v137_ce0(grp_bicg_node1_fu_420_v137_ce0),.v137_q0(v137_q0),.v137_address1(grp_bicg_node1_fu_420_v137_address1),.v137_ce1(grp_bicg_node1_fu_420_v137_ce1),.v137_q1(v137_q1),.v139_address0(grp_bicg_node1_fu_420_v139_address0),.v139_ce0(grp_bicg_node1_fu_420_v139_ce0),.v139_q0(v139_q0),.v10_0_address0(grp_bicg_node1_fu_420_v10_0_address0),.v10_0_ce0(grp_bicg_node1_fu_420_v10_0_ce0),.v10_0_we0(grp_bicg_node1_fu_420_v10_0_we0),.v10_0_d0(grp_bicg_node1_fu_420_v10_0_d0),.v10_0_q0(v152_q0),.v10_0_address1(grp_bicg_node1_fu_420_v10_0_address1),.v10_0_ce1(grp_bicg_node1_fu_420_v10_0_ce1),.v10_0_we1(grp_bicg_node1_fu_420_v10_0_we1),.v10_0_d1(grp_bicg_node1_fu_420_v10_0_d1),.v10_0_q1(v152_q1),.v10_1_address0(grp_bicg_node1_fu_420_v10_1_address0),.v10_1_ce0(grp_bicg_node1_fu_420_v10_1_ce0),.v10_1_we0(grp_bicg_node1_fu_420_v10_1_we0),.v10_1_d0(grp_bicg_node1_fu_420_v10_1_d0),.v10_1_q0(v152_1_q0),.v10_1_address1(grp_bicg_node1_fu_420_v10_1_address1),.v10_1_ce1(grp_bicg_node1_fu_420_v10_1_ce1),.v10_1_we1(grp_bicg_node1_fu_420_v10_1_we1),.v10_1_d1(grp_bicg_node1_fu_420_v10_1_d1),.v10_1_q1(v152_1_q1));
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
        end else if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_node1_fu_420_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_bicg_node1_fu_420_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_node1_fu_420_ap_ready == 1'b1)) begin
            grp_bicg_node1_fu_420_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_node2_fu_408_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_bicg_node2_fu_408_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_node2_fu_408_ap_ready == 1'b1)) begin
            grp_bicg_node2_fu_408_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_432 <= v151_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_432 <= v151_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_437 <= v152_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_437 <= v152_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_442 <= v151_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_442 <= v151_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_447 <= v152_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_447 <= v152_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v41_fu_94 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v41_fu_94 <= v4_fu_522_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln_reg_759 <= {{v41_fu_94[5:1]}};
        tmp_29_reg_810 <= {{v41_fu_94[5:3]}};
        tmp_8_reg_826 <= v4_fu_522_p2[32'd6];
        tmp_reg_820 <= v41_fu_94[32'd1];
        tmp_s_reg_784 <= {{v41_fu_94[5:2]}};
        v41_load_reg_754 <= v41_fu_94;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v5_6_reg_870 <= v151_q0;
        v5_7_reg_880 <= v151_1_q0;
        v6_6_reg_875 <= v152_q0;
        v6_7_reg_885 <= v152_1_q0;
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
assign ap_ST_fsm_state8_blk = 1'b0;
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_8_reg_826 == 1'd1))) begin
        ap_condition_pp0_flush_enable = 1'b1;
    end else begin
        ap_condition_pp0_flush_enable = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v141_address0_local = zext_ln28_9_fu_733_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v141_address0_local = zext_ln28_6_fu_689_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v141_address0_local = zext_ln28_3_fu_640_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v141_address0_local = zext_ln28_fu_563_p1;
    end else begin
        v141_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v141_address1_local = zext_ln28_7_fu_712_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v141_address1_local = zext_ln28_4_fu_663_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v141_address1_local = zext_ln28_1_fu_617_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v141_address1_local = zext_ln27_fu_541_p1;
    end else begin
        v141_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v141_ce0_local = 1'b1;
    end else begin
        v141_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v141_ce1_local = 1'b1;
    end else begin
        v141_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v141_d0_local = bitcast_ln29_7_fu_739_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v141_d0_local = bitcast_ln29_5_fu_695_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v141_d0_local = bitcast_ln29_3_fu_646_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v141_d0_local = bitcast_ln29_1_fu_569_p1;
    end else begin
        v141_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v141_d1_local = bitcast_ln29_6_fu_718_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v141_d1_local = bitcast_ln29_4_fu_669_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v141_d1_local = bitcast_ln29_2_fu_623_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v141_d1_local = bitcast_ln29_fu_546_p1;
    end else begin
        v141_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v141_we0_local = 1'b1;
    end else begin
        v141_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v141_we1_local = 1'b1;
    end else begin
        v141_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v142_address0_local = zext_ln28_9_fu_733_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v142_address0_local = zext_ln28_6_fu_689_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v142_address0_local = zext_ln28_3_fu_640_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v142_address0_local = zext_ln28_fu_563_p1;
    end else begin
        v142_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v142_address1_local = zext_ln28_7_fu_712_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v142_address1_local = zext_ln28_4_fu_663_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v142_address1_local = zext_ln28_1_fu_617_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v142_address1_local = zext_ln27_fu_541_p1;
    end else begin
        v142_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v142_ce0_local = 1'b1;
    end else begin
        v142_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v142_ce1_local = 1'b1;
    end else begin
        v142_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v142_d0_local = bitcast_ln31_7_fu_743_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v142_d0_local = bitcast_ln31_5_fu_700_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v142_d0_local = bitcast_ln31_3_fu_651_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v142_d0_local = bitcast_ln31_1_fu_574_p1;
    end else begin
        v142_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v142_d1_local = bitcast_ln31_6_fu_722_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v142_d1_local = bitcast_ln31_4_fu_674_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v142_d1_local = bitcast_ln31_2_fu_628_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v142_d1_local = bitcast_ln31_fu_551_p1;
    end else begin
        v142_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v142_we0_local = 1'b1;
    end else begin
        v142_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v142_we1_local = 1'b1;
    end else begin
        v142_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_1_address0 = grp_bicg_node2_fu_408_v65_1_address0;
    end else begin
        v151_1_address0 = v151_1_address0_local;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v151_1_address0_local = zext_ln28_8_fu_602_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v151_1_address0_local = zext_ln28_2_fu_496_p1;
        end else begin
            v151_1_address0_local = 'bx;
        end
    end else begin
        v151_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_1_address1 = grp_bicg_node2_fu_408_v65_1_address1;
    end else begin
        v151_1_address1 = v151_1_address1_local;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v151_1_address1_local = zext_ln28_5_fu_587_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v151_1_address1_local = zext_ln27_1_fu_470_p1;
        end else begin
            v151_1_address1_local = 'bx;
        end
    end else begin
        v151_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_1_ce0 = grp_bicg_node2_fu_408_v65_1_ce0;
    end else begin
        v151_1_ce0 = v151_1_ce0_local;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v151_1_ce0_local = 1'b1;
    end else begin
        v151_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_1_ce1 = grp_bicg_node2_fu_408_v65_1_ce1;
    end else begin
        v151_1_ce1 = v151_1_ce1_local;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v151_1_ce1_local = 1'b1;
    end else begin
        v151_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_1_we0 = grp_bicg_node2_fu_408_v65_1_we0;
    end else begin
        v151_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_1_we1 = grp_bicg_node2_fu_408_v65_1_we1;
    end else begin
        v151_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_address0 = grp_bicg_node2_fu_408_v65_0_address0;
    end else begin
        v151_address0 = v151_address0_local;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v151_address0_local = zext_ln28_8_fu_602_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v151_address0_local = zext_ln28_2_fu_496_p1;
        end else begin
            v151_address0_local = 'bx;
        end
    end else begin
        v151_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_address1 = grp_bicg_node2_fu_408_v65_0_address1;
    end else begin
        v151_address1 = v151_address1_local;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v151_address1_local = zext_ln28_5_fu_587_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v151_address1_local = zext_ln27_1_fu_470_p1;
        end else begin
            v151_address1_local = 'bx;
        end
    end else begin
        v151_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce0 = grp_bicg_node2_fu_408_v65_0_ce0;
    end else begin
        v151_ce0 = v151_ce0_local;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v151_ce0_local = 1'b1;
    end else begin
        v151_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce1 = grp_bicg_node2_fu_408_v65_0_ce1;
    end else begin
        v151_ce1 = v151_ce1_local;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v151_ce1_local = 1'b1;
    end else begin
        v151_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_we0 = grp_bicg_node2_fu_408_v65_0_we0;
    end else begin
        v151_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_we1 = grp_bicg_node2_fu_408_v65_0_we1;
    end else begin
        v151_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_address0 = grp_bicg_node1_fu_420_v10_1_address0;
    end else begin
        v152_1_address0 = v152_1_address0_local;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v152_1_address0_local = zext_ln28_8_fu_602_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v152_1_address0_local = zext_ln28_2_fu_496_p1;
        end else begin
            v152_1_address0_local = 'bx;
        end
    end else begin
        v152_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_address1 = grp_bicg_node1_fu_420_v10_1_address1;
    end else begin
        v152_1_address1 = v152_1_address1_local;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v152_1_address1_local = zext_ln28_5_fu_587_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v152_1_address1_local = zext_ln27_1_fu_470_p1;
        end else begin
            v152_1_address1_local = 'bx;
        end
    end else begin
        v152_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_ce0 = grp_bicg_node1_fu_420_v10_1_ce0;
    end else begin
        v152_1_ce0 = v152_1_ce0_local;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v152_1_ce0_local = 1'b1;
    end else begin
        v152_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_ce1 = grp_bicg_node1_fu_420_v10_1_ce1;
    end else begin
        v152_1_ce1 = v152_1_ce1_local;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v152_1_ce1_local = 1'b1;
    end else begin
        v152_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_we0 = grp_bicg_node1_fu_420_v10_1_we0;
    end else begin
        v152_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_we1 = grp_bicg_node1_fu_420_v10_1_we1;
    end else begin
        v152_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_address0 = grp_bicg_node1_fu_420_v10_0_address0;
    end else begin
        v152_address0 = v152_address0_local;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v152_address0_local = zext_ln28_8_fu_602_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v152_address0_local = zext_ln28_2_fu_496_p1;
        end else begin
            v152_address0_local = 'bx;
        end
    end else begin
        v152_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_address1 = grp_bicg_node1_fu_420_v10_0_address1;
    end else begin
        v152_address1 = v152_address1_local;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v152_address1_local = zext_ln28_5_fu_587_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v152_address1_local = zext_ln27_1_fu_470_p1;
        end else begin
            v152_address1_local = 'bx;
        end
    end else begin
        v152_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_ce0 = grp_bicg_node1_fu_420_v10_0_ce0;
    end else begin
        v152_ce0 = v152_ce0_local;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v152_ce0_local = 1'b1;
    end else begin
        v152_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_ce1 = grp_bicg_node1_fu_420_v10_0_ce1;
    end else begin
        v152_ce1 = v152_ce1_local;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v152_ce1_local = 1'b1;
    end else begin
        v152_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_we0 = grp_bicg_node1_fu_420_v10_0_we0;
    end else begin
        v152_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_we1 = grp_bicg_node1_fu_420_v10_0_we1;
    end else begin
        v152_we1 = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd6];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_state2_on_subcall_done = ((grp_bicg_node1_fu_420_ap_done == 1'b0) | (grp_bicg_node2_fu_408_ap_done == 1'b0));
end
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign bitcast_ln29_1_fu_569_p1 = v151_1_q1;
assign bitcast_ln29_2_fu_623_p1 = reg_432;
assign bitcast_ln29_3_fu_646_p1 = reg_442;
assign bitcast_ln29_4_fu_669_p1 = reg_432;
assign bitcast_ln29_5_fu_695_p1 = reg_442;
assign bitcast_ln29_6_fu_718_p1 = v5_6_reg_870;
assign bitcast_ln29_7_fu_739_p1 = v5_7_reg_880;
assign bitcast_ln29_fu_546_p1 = v151_q1;
assign bitcast_ln31_1_fu_574_p1 = v152_1_q1;
assign bitcast_ln31_2_fu_628_p1 = reg_437;
assign bitcast_ln31_3_fu_651_p1 = reg_447;
assign bitcast_ln31_4_fu_674_p1 = reg_437;
assign bitcast_ln31_5_fu_700_p1 = reg_447;
assign bitcast_ln31_6_fu_722_p1 = v6_6_reg_875;
assign bitcast_ln31_7_fu_743_p1 = v6_7_reg_885;
assign bitcast_ln31_fu_551_p1 = v152_q1;
assign grp_bicg_node1_fu_420_ap_start = grp_bicg_node1_fu_420_ap_start_reg;
assign grp_bicg_node2_fu_408_ap_start = grp_bicg_node2_fu_408_ap_start_reg;
assign lshr_ln_fu_460_p4 = {{v41_fu_94[5:1]}};
assign or_ln1_fu_488_p3 = {{tmp_s_fu_478_p4}, {1'd1}};
assign or_ln27_1_fu_610_p3 = {{tmp_s_reg_784}, {2'd2}};
assign or_ln27_2_fu_633_p3 = {{tmp_s_reg_784}, {2'd3}};
assign or_ln27_3_fu_656_p3 = {{tmp_29_reg_810}, {3'd4}};
assign or_ln27_4_fu_679_p5 = {{{{tmp_29_reg_810}, {1'd1}}, {tmp_reg_820}}, {1'd1}};
assign or_ln27_5_fu_705_p3 = {{tmp_29_reg_810}, {3'd6}};
assign or_ln27_6_fu_726_p3 = {{tmp_29_reg_810}, {3'd7}};
assign or_ln28_1_fu_579_p4 = {{{tmp_29_reg_810}, {1'd1}}, {tmp_reg_820}};
assign or_ln28_2_fu_595_p3 = {{tmp_29_reg_810}, {2'd3}};
assign or_ln_fu_556_p3 = {{lshr_ln_reg_759}, {1'd1}};
assign tmp_s_fu_478_p4 = {{v41_fu_94[5:2]}};
assign v137_address0 = grp_bicg_node1_fu_420_v137_address0;
assign v137_address1 = grp_bicg_node1_fu_420_v137_address1;
assign v137_ce0 = grp_bicg_node1_fu_420_v137_ce0;
assign v137_ce1 = grp_bicg_node1_fu_420_v137_ce1;
assign v138_address0 = grp_bicg_node2_fu_408_v138_address0;
assign v138_address1 = grp_bicg_node2_fu_408_v138_address1;
assign v138_ce0 = grp_bicg_node2_fu_408_v138_ce0;
assign v138_ce1 = grp_bicg_node2_fu_408_v138_ce1;
assign v139_address0 = grp_bicg_node1_fu_420_v139_address0;
assign v139_ce0 = grp_bicg_node1_fu_420_v139_ce0;
assign v140_address0 = grp_bicg_node2_fu_408_v140_address0;
assign v140_ce0 = grp_bicg_node2_fu_408_v140_ce0;
assign v141_address0 = v141_address0_local;
assign v141_address1 = v141_address1_local;
assign v141_ce0 = v141_ce0_local;
assign v141_ce1 = v141_ce1_local;
assign v141_d0 = v141_d0_local;
assign v141_d1 = v141_d1_local;
assign v141_we0 = v141_we0_local;
assign v141_we1 = v141_we1_local;
assign v142_address0 = v142_address0_local;
assign v142_address1 = v142_address1_local;
assign v142_ce0 = v142_ce0_local;
assign v142_ce1 = v142_ce1_local;
assign v142_d0 = v142_d0_local;
assign v142_d1 = v142_d1_local;
assign v142_we0 = v142_we0_local;
assign v142_we1 = v142_we1_local;
assign v4_fu_522_p2 = (v41_fu_94 + 7'd8);
assign zext_ln27_1_fu_470_p1 = lshr_ln_fu_460_p4;
assign zext_ln27_fu_541_p1 = v41_load_reg_754;
assign zext_ln28_1_fu_617_p1 = or_ln27_1_fu_610_p3;
assign zext_ln28_2_fu_496_p1 = or_ln1_fu_488_p3;
assign zext_ln28_3_fu_640_p1 = or_ln27_2_fu_633_p3;
assign zext_ln28_4_fu_663_p1 = or_ln27_3_fu_656_p3;
assign zext_ln28_5_fu_587_p1 = or_ln28_1_fu_579_p4;
assign zext_ln28_6_fu_689_p1 = or_ln27_4_fu_679_p5;
assign zext_ln28_7_fu_712_p1 = or_ln27_5_fu_705_p3;
assign zext_ln28_8_fu_602_p1 = or_ln28_2_fu_595_p3;
assign zext_ln28_9_fu_733_p1 = or_ln27_6_fu_726_p3;
assign zext_ln28_fu_563_p1 = or_ln_fu_556_p3;
endmodule 