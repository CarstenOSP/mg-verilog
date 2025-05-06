
module bicg (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v137_address0,v137_ce0,v137_q0,v137_address1,v137_ce1,v137_q1,v138_address0,v138_ce0,v138_q0,v138_address1,v138_ce1,v138_q1,v139_address0,v139_ce0,v139_q0,v140_address0,v140_ce0,v140_q0,v141_address0,v141_ce0,v141_we0,v141_d0,v141_address1,v141_ce1,v141_we1,v141_d1,v142_address0,v142_ce0,v142_we0,v142_d0,v142_address1,v142_ce1,v142_we1,v142_d1);  
parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;
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
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
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
wire    grp_bicg_node2_fu_52_ap_start;
wire    grp_bicg_node2_fu_52_ap_done;
wire    grp_bicg_node2_fu_52_ap_idle;
wire    grp_bicg_node2_fu_52_ap_ready;
wire   [5:0] grp_bicg_node2_fu_52_v140_address0;
wire    grp_bicg_node2_fu_52_v140_ce0;
wire   [11:0] grp_bicg_node2_fu_52_v138_address0;
wire    grp_bicg_node2_fu_52_v138_ce0;
wire   [11:0] grp_bicg_node2_fu_52_v138_address1;
wire    grp_bicg_node2_fu_52_v138_ce1;
wire   [4:0] grp_bicg_node2_fu_52_v65_0_address0;
wire    grp_bicg_node2_fu_52_v65_0_ce0;
wire    grp_bicg_node2_fu_52_v65_0_we0;
wire   [31:0] grp_bicg_node2_fu_52_v65_0_d0;
wire   [4:0] grp_bicg_node2_fu_52_v65_0_address1;
wire    grp_bicg_node2_fu_52_v65_0_ce1;
wire    grp_bicg_node2_fu_52_v65_0_we1;
wire   [31:0] grp_bicg_node2_fu_52_v65_0_d1;
wire   [4:0] grp_bicg_node2_fu_52_v65_1_address0;
wire    grp_bicg_node2_fu_52_v65_1_ce0;
wire    grp_bicg_node2_fu_52_v65_1_we0;
wire   [31:0] grp_bicg_node2_fu_52_v65_1_d0;
wire   [4:0] grp_bicg_node2_fu_52_v65_1_address1;
wire    grp_bicg_node2_fu_52_v65_1_ce1;
wire    grp_bicg_node2_fu_52_v65_1_we1;
wire   [31:0] grp_bicg_node2_fu_52_v65_1_d1;
wire    grp_bicg_node1_fu_64_ap_start;
wire    grp_bicg_node1_fu_64_ap_done;
wire    grp_bicg_node1_fu_64_ap_idle;
wire    grp_bicg_node1_fu_64_ap_ready;
wire   [11:0] grp_bicg_node1_fu_64_v137_address0;
wire    grp_bicg_node1_fu_64_v137_ce0;
wire   [11:0] grp_bicg_node1_fu_64_v137_address1;
wire    grp_bicg_node1_fu_64_v137_ce1;
wire   [5:0] grp_bicg_node1_fu_64_v139_address0;
wire    grp_bicg_node1_fu_64_v139_ce0;
wire   [4:0] grp_bicg_node1_fu_64_v10_0_address0;
wire    grp_bicg_node1_fu_64_v10_0_ce0;
wire    grp_bicg_node1_fu_64_v10_0_we0;
wire   [31:0] grp_bicg_node1_fu_64_v10_0_d0;
wire   [4:0] grp_bicg_node1_fu_64_v10_0_address1;
wire    grp_bicg_node1_fu_64_v10_0_ce1;
wire    grp_bicg_node1_fu_64_v10_0_we1;
wire   [31:0] grp_bicg_node1_fu_64_v10_0_d1;
wire   [4:0] grp_bicg_node1_fu_64_v10_1_address0;
wire    grp_bicg_node1_fu_64_v10_1_ce0;
wire    grp_bicg_node1_fu_64_v10_1_we0;
wire   [31:0] grp_bicg_node1_fu_64_v10_1_d0;
wire   [4:0] grp_bicg_node1_fu_64_v10_1_address1;
wire    grp_bicg_node1_fu_64_v10_1_ce1;
wire    grp_bicg_node1_fu_64_v10_1_we1;
wire   [31:0] grp_bicg_node1_fu_64_v10_1_d1;
wire    grp_bicg_node0_fu_76_ap_start;
wire    grp_bicg_node0_fu_76_ap_done;
wire    grp_bicg_node0_fu_76_ap_idle;
wire    grp_bicg_node0_fu_76_ap_ready;
wire   [4:0] grp_bicg_node0_fu_76_v0_0_address0;
wire    grp_bicg_node0_fu_76_v0_0_ce0;
wire   [4:0] grp_bicg_node0_fu_76_v0_0_address1;
wire    grp_bicg_node0_fu_76_v0_0_ce1;
wire   [4:0] grp_bicg_node0_fu_76_v0_1_address0;
wire    grp_bicg_node0_fu_76_v0_1_ce0;
wire   [4:0] grp_bicg_node0_fu_76_v0_1_address1;
wire    grp_bicg_node0_fu_76_v0_1_ce1;
wire   [4:0] grp_bicg_node0_fu_76_v1_0_address0;
wire    grp_bicg_node0_fu_76_v1_0_ce0;
wire   [4:0] grp_bicg_node0_fu_76_v1_0_address1;
wire    grp_bicg_node0_fu_76_v1_0_ce1;
wire   [4:0] grp_bicg_node0_fu_76_v1_1_address0;
wire    grp_bicg_node0_fu_76_v1_1_ce0;
wire   [4:0] grp_bicg_node0_fu_76_v1_1_address1;
wire    grp_bicg_node0_fu_76_v1_1_ce1;
wire   [5:0] grp_bicg_node0_fu_76_v141_address0;
wire    grp_bicg_node0_fu_76_v141_ce0;
wire    grp_bicg_node0_fu_76_v141_we0;
wire   [31:0] grp_bicg_node0_fu_76_v141_d0;
wire   [5:0] grp_bicg_node0_fu_76_v141_address1;
wire    grp_bicg_node0_fu_76_v141_ce1;
wire    grp_bicg_node0_fu_76_v141_we1;
wire   [31:0] grp_bicg_node0_fu_76_v141_d1;
wire   [5:0] grp_bicg_node0_fu_76_v142_address0;
wire    grp_bicg_node0_fu_76_v142_ce0;
wire    grp_bicg_node0_fu_76_v142_we0;
wire   [31:0] grp_bicg_node0_fu_76_v142_d0;
wire   [5:0] grp_bicg_node0_fu_76_v142_address1;
wire    grp_bicg_node0_fu_76_v142_ce1;
wire    grp_bicg_node0_fu_76_v142_we1;
wire   [31:0] grp_bicg_node0_fu_76_v142_d1;
reg    grp_bicg_node2_fu_52_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_bicg_node1_fu_64_ap_start_reg;
reg    grp_bicg_node0_fu_76_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_block_state2_on_subcall_done;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_bicg_node2_fu_52_ap_start_reg = 1'b0;
#0 grp_bicg_node1_fu_64_ap_start_reg = 1'b0;
#0 grp_bicg_node0_fu_76_ap_start_reg = 1'b0;
end
bicg_v151_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v151_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_address0),.ce0(v151_ce0),.we0(v151_we0),.d0(grp_bicg_node2_fu_52_v65_0_d0),.q0(v151_q0),.address1(v151_address1),.ce1(v151_ce1),.we1(v151_we1),.d1(grp_bicg_node2_fu_52_v65_0_d1),.q1(v151_q1));
bicg_v151_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v151_1_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_1_address0),.ce0(v151_1_ce0),.we0(v151_1_we0),.d0(grp_bicg_node2_fu_52_v65_1_d0),.q0(v151_1_q0),.address1(v151_1_address1),.ce1(v151_1_ce1),.we1(v151_1_we1),.d1(grp_bicg_node2_fu_52_v65_1_d1),.q1(v151_1_q1));
bicg_v151_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v152_U(.clk(ap_clk),.reset(ap_rst),.address0(v152_address0),.ce0(v152_ce0),.we0(v152_we0),.d0(grp_bicg_node1_fu_64_v10_0_d0),.q0(v152_q0),.address1(v152_address1),.ce1(v152_ce1),.we1(v152_we1),.d1(grp_bicg_node1_fu_64_v10_0_d1),.q1(v152_q1));
bicg_v151_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v152_1_U(.clk(ap_clk),.reset(ap_rst),.address0(v152_1_address0),.ce0(v152_1_ce0),.we0(v152_1_we0),.d0(grp_bicg_node1_fu_64_v10_1_d0),.q0(v152_1_q0),.address1(v152_1_address1),.ce1(v152_1_ce1),.we1(v152_1_we1),.d1(grp_bicg_node1_fu_64_v10_1_d1),.q1(v152_1_q1));
bicg_bicg_node2 grp_bicg_node2_fu_52(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_node2_fu_52_ap_start),.ap_done(grp_bicg_node2_fu_52_ap_done),.ap_idle(grp_bicg_node2_fu_52_ap_idle),.ap_ready(grp_bicg_node2_fu_52_ap_ready),.v140_address0(grp_bicg_node2_fu_52_v140_address0),.v140_ce0(grp_bicg_node2_fu_52_v140_ce0),.v140_q0(v140_q0),.v138_address0(grp_bicg_node2_fu_52_v138_address0),.v138_ce0(grp_bicg_node2_fu_52_v138_ce0),.v138_q0(v138_q0),.v138_address1(grp_bicg_node2_fu_52_v138_address1),.v138_ce1(grp_bicg_node2_fu_52_v138_ce1),.v138_q1(v138_q1),.v65_0_address0(grp_bicg_node2_fu_52_v65_0_address0),.v65_0_ce0(grp_bicg_node2_fu_52_v65_0_ce0),.v65_0_we0(grp_bicg_node2_fu_52_v65_0_we0),.v65_0_d0(grp_bicg_node2_fu_52_v65_0_d0),.v65_0_q0(v151_q0),.v65_0_address1(grp_bicg_node2_fu_52_v65_0_address1),.v65_0_ce1(grp_bicg_node2_fu_52_v65_0_ce1),.v65_0_we1(grp_bicg_node2_fu_52_v65_0_we1),.v65_0_d1(grp_bicg_node2_fu_52_v65_0_d1),.v65_0_q1(v151_q1),.v65_1_address0(grp_bicg_node2_fu_52_v65_1_address0),.v65_1_ce0(grp_bicg_node2_fu_52_v65_1_ce0),.v65_1_we0(grp_bicg_node2_fu_52_v65_1_we0),.v65_1_d0(grp_bicg_node2_fu_52_v65_1_d0),.v65_1_q0(v151_1_q0),.v65_1_address1(grp_bicg_node2_fu_52_v65_1_address1),.v65_1_ce1(grp_bicg_node2_fu_52_v65_1_ce1),.v65_1_we1(grp_bicg_node2_fu_52_v65_1_we1),.v65_1_d1(grp_bicg_node2_fu_52_v65_1_d1),.v65_1_q1(v151_1_q1));
bicg_bicg_node1 grp_bicg_node1_fu_64(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_node1_fu_64_ap_start),.ap_done(grp_bicg_node1_fu_64_ap_done),.ap_idle(grp_bicg_node1_fu_64_ap_idle),.ap_ready(grp_bicg_node1_fu_64_ap_ready),.v137_address0(grp_bicg_node1_fu_64_v137_address0),.v137_ce0(grp_bicg_node1_fu_64_v137_ce0),.v137_q0(v137_q0),.v137_address1(grp_bicg_node1_fu_64_v137_address1),.v137_ce1(grp_bicg_node1_fu_64_v137_ce1),.v137_q1(v137_q1),.v139_address0(grp_bicg_node1_fu_64_v139_address0),.v139_ce0(grp_bicg_node1_fu_64_v139_ce0),.v139_q0(v139_q0),.v10_0_address0(grp_bicg_node1_fu_64_v10_0_address0),.v10_0_ce0(grp_bicg_node1_fu_64_v10_0_ce0),.v10_0_we0(grp_bicg_node1_fu_64_v10_0_we0),.v10_0_d0(grp_bicg_node1_fu_64_v10_0_d0),.v10_0_q0(v152_q0),.v10_0_address1(grp_bicg_node1_fu_64_v10_0_address1),.v10_0_ce1(grp_bicg_node1_fu_64_v10_0_ce1),.v10_0_we1(grp_bicg_node1_fu_64_v10_0_we1),.v10_0_d1(grp_bicg_node1_fu_64_v10_0_d1),.v10_0_q1(v152_q1),.v10_1_address0(grp_bicg_node1_fu_64_v10_1_address0),.v10_1_ce0(grp_bicg_node1_fu_64_v10_1_ce0),.v10_1_we0(grp_bicg_node1_fu_64_v10_1_we0),.v10_1_d0(grp_bicg_node1_fu_64_v10_1_d0),.v10_1_q0(v152_1_q0),.v10_1_address1(grp_bicg_node1_fu_64_v10_1_address1),.v10_1_ce1(grp_bicg_node1_fu_64_v10_1_ce1),.v10_1_we1(grp_bicg_node1_fu_64_v10_1_we1),.v10_1_d1(grp_bicg_node1_fu_64_v10_1_d1),.v10_1_q1(v152_1_q1));
bicg_bicg_node0 grp_bicg_node0_fu_76(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_node0_fu_76_ap_start),.ap_done(grp_bicg_node0_fu_76_ap_done),.ap_idle(grp_bicg_node0_fu_76_ap_idle),.ap_ready(grp_bicg_node0_fu_76_ap_ready),.v0_0_address0(grp_bicg_node0_fu_76_v0_0_address0),.v0_0_ce0(grp_bicg_node0_fu_76_v0_0_ce0),.v0_0_q0(v151_q0),.v0_0_address1(grp_bicg_node0_fu_76_v0_0_address1),.v0_0_ce1(grp_bicg_node0_fu_76_v0_0_ce1),.v0_0_q1(v151_q1),.v0_1_address0(grp_bicg_node0_fu_76_v0_1_address0),.v0_1_ce0(grp_bicg_node0_fu_76_v0_1_ce0),.v0_1_q0(v151_1_q0),.v0_1_address1(grp_bicg_node0_fu_76_v0_1_address1),.v0_1_ce1(grp_bicg_node0_fu_76_v0_1_ce1),.v0_1_q1(v151_1_q1),.v1_0_address0(grp_bicg_node0_fu_76_v1_0_address0),.v1_0_ce0(grp_bicg_node0_fu_76_v1_0_ce0),.v1_0_q0(v152_q0),.v1_0_address1(grp_bicg_node0_fu_76_v1_0_address1),.v1_0_ce1(grp_bicg_node0_fu_76_v1_0_ce1),.v1_0_q1(v152_q1),.v1_1_address0(grp_bicg_node0_fu_76_v1_1_address0),.v1_1_ce0(grp_bicg_node0_fu_76_v1_1_ce0),.v1_1_q0(v152_1_q0),.v1_1_address1(grp_bicg_node0_fu_76_v1_1_address1),.v1_1_ce1(grp_bicg_node0_fu_76_v1_1_ce1),.v1_1_q1(v152_1_q1),.v141_address0(grp_bicg_node0_fu_76_v141_address0),.v141_ce0(grp_bicg_node0_fu_76_v141_ce0),.v141_we0(grp_bicg_node0_fu_76_v141_we0),.v141_d0(grp_bicg_node0_fu_76_v141_d0),.v141_address1(grp_bicg_node0_fu_76_v141_address1),.v141_ce1(grp_bicg_node0_fu_76_v141_ce1),.v141_we1(grp_bicg_node0_fu_76_v141_we1),.v141_d1(grp_bicg_node0_fu_76_v141_d1),.v142_address0(grp_bicg_node0_fu_76_v142_address0),.v142_ce0(grp_bicg_node0_fu_76_v142_ce0),.v142_we0(grp_bicg_node0_fu_76_v142_we0),.v142_d0(grp_bicg_node0_fu_76_v142_d0),.v142_address1(grp_bicg_node0_fu_76_v142_address1),.v142_ce1(grp_bicg_node0_fu_76_v142_ce1),.v142_we1(grp_bicg_node0_fu_76_v142_we1),.v142_d1(grp_bicg_node0_fu_76_v142_d1));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_node0_fu_76_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_bicg_node0_fu_76_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_node0_fu_76_ap_ready == 1'b1)) begin
            grp_bicg_node0_fu_76_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_node1_fu_64_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_bicg_node1_fu_64_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_node1_fu_64_ap_ready == 1'b1)) begin
            grp_bicg_node1_fu_64_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_node2_fu_52_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_bicg_node2_fu_52_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_node2_fu_52_ap_ready == 1'b1)) begin
            grp_bicg_node2_fu_52_ap_start_reg <= 1'b0;
        end
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
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_node0_fu_76_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_bicg_node0_fu_76_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
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
    if (((grp_bicg_node0_fu_76_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v151_1_address0 = grp_bicg_node0_fu_76_v0_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_1_address0 = grp_bicg_node2_fu_52_v65_1_address0;
    end else begin
        v151_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v151_1_address1 = grp_bicg_node0_fu_76_v0_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_1_address1 = grp_bicg_node2_fu_52_v65_1_address1;
    end else begin
        v151_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v151_1_ce0 = grp_bicg_node0_fu_76_v0_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_1_ce0 = grp_bicg_node2_fu_52_v65_1_ce0;
    end else begin
        v151_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v151_1_ce1 = grp_bicg_node0_fu_76_v0_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_1_ce1 = grp_bicg_node2_fu_52_v65_1_ce1;
    end else begin
        v151_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_1_we0 = grp_bicg_node2_fu_52_v65_1_we0;
    end else begin
        v151_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_1_we1 = grp_bicg_node2_fu_52_v65_1_we1;
    end else begin
        v151_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v151_address0 = grp_bicg_node0_fu_76_v0_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_address0 = grp_bicg_node2_fu_52_v65_0_address0;
    end else begin
        v151_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v151_address1 = grp_bicg_node0_fu_76_v0_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_address1 = grp_bicg_node2_fu_52_v65_0_address1;
    end else begin
        v151_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v151_ce0 = grp_bicg_node0_fu_76_v0_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce0 = grp_bicg_node2_fu_52_v65_0_ce0;
    end else begin
        v151_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v151_ce1 = grp_bicg_node0_fu_76_v0_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce1 = grp_bicg_node2_fu_52_v65_0_ce1;
    end else begin
        v151_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_we0 = grp_bicg_node2_fu_52_v65_0_we0;
    end else begin
        v151_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_we1 = grp_bicg_node2_fu_52_v65_0_we1;
    end else begin
        v151_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v152_1_address0 = grp_bicg_node0_fu_76_v1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_address0 = grp_bicg_node1_fu_64_v10_1_address0;
    end else begin
        v152_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v152_1_address1 = grp_bicg_node0_fu_76_v1_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_address1 = grp_bicg_node1_fu_64_v10_1_address1;
    end else begin
        v152_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v152_1_ce0 = grp_bicg_node0_fu_76_v1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_ce0 = grp_bicg_node1_fu_64_v10_1_ce0;
    end else begin
        v152_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v152_1_ce1 = grp_bicg_node0_fu_76_v1_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_ce1 = grp_bicg_node1_fu_64_v10_1_ce1;
    end else begin
        v152_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_we0 = grp_bicg_node1_fu_64_v10_1_we0;
    end else begin
        v152_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_we1 = grp_bicg_node1_fu_64_v10_1_we1;
    end else begin
        v152_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v152_address0 = grp_bicg_node0_fu_76_v1_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_address0 = grp_bicg_node1_fu_64_v10_0_address0;
    end else begin
        v152_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v152_address1 = grp_bicg_node0_fu_76_v1_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_address1 = grp_bicg_node1_fu_64_v10_0_address1;
    end else begin
        v152_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v152_ce0 = grp_bicg_node0_fu_76_v1_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_ce0 = grp_bicg_node1_fu_64_v10_0_ce0;
    end else begin
        v152_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v152_ce1 = grp_bicg_node0_fu_76_v1_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_ce1 = grp_bicg_node1_fu_64_v10_0_ce1;
    end else begin
        v152_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_we0 = grp_bicg_node1_fu_64_v10_0_we0;
    end else begin
        v152_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_we1 = grp_bicg_node1_fu_64_v10_0_we1;
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
            if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_bicg_node0_fu_76_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
always @ (*) begin
    ap_block_state2_on_subcall_done = ((grp_bicg_node1_fu_64_ap_done == 1'b0) | (grp_bicg_node2_fu_52_ap_done == 1'b0));
end
assign grp_bicg_node0_fu_76_ap_start = grp_bicg_node0_fu_76_ap_start_reg;
assign grp_bicg_node1_fu_64_ap_start = grp_bicg_node1_fu_64_ap_start_reg;
assign grp_bicg_node2_fu_52_ap_start = grp_bicg_node2_fu_52_ap_start_reg;
assign v137_address0 = grp_bicg_node1_fu_64_v137_address0;
assign v137_address1 = grp_bicg_node1_fu_64_v137_address1;
assign v137_ce0 = grp_bicg_node1_fu_64_v137_ce0;
assign v137_ce1 = grp_bicg_node1_fu_64_v137_ce1;
assign v138_address0 = grp_bicg_node2_fu_52_v138_address0;
assign v138_address1 = grp_bicg_node2_fu_52_v138_address1;
assign v138_ce0 = grp_bicg_node2_fu_52_v138_ce0;
assign v138_ce1 = grp_bicg_node2_fu_52_v138_ce1;
assign v139_address0 = grp_bicg_node1_fu_64_v139_address0;
assign v139_ce0 = grp_bicg_node1_fu_64_v139_ce0;
assign v140_address0 = grp_bicg_node2_fu_52_v140_address0;
assign v140_ce0 = grp_bicg_node2_fu_52_v140_ce0;
assign v141_address0 = grp_bicg_node0_fu_76_v141_address0;
assign v141_address1 = grp_bicg_node0_fu_76_v141_address1;
assign v141_ce0 = grp_bicg_node0_fu_76_v141_ce0;
assign v141_ce1 = grp_bicg_node0_fu_76_v141_ce1;
assign v141_d0 = grp_bicg_node0_fu_76_v141_d0;
assign v141_d1 = grp_bicg_node0_fu_76_v141_d1;
assign v141_we0 = grp_bicg_node0_fu_76_v141_we0;
assign v141_we1 = grp_bicg_node0_fu_76_v141_we1;
assign v142_address0 = grp_bicg_node0_fu_76_v142_address0;
assign v142_address1 = grp_bicg_node0_fu_76_v142_address1;
assign v142_ce0 = grp_bicg_node0_fu_76_v142_ce0;
assign v142_ce1 = grp_bicg_node0_fu_76_v142_ce1;
assign v142_d0 = grp_bicg_node0_fu_76_v142_d0;
assign v142_d1 = grp_bicg_node0_fu_76_v142_d1;
assign v142_we0 = grp_bicg_node0_fu_76_v142_we0;
assign v142_we1 = grp_bicg_node0_fu_76_v142_we1;
endmodule 
