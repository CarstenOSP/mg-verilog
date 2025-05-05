module fft1D_512_fft1D_512_Pipeline_loop2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_7_address0,smem_7_ce0,smem_7_we0,smem_7_d0,smem_6_address0,smem_6_ce0,smem_6_we0,smem_6_d0,smem_5_address0,smem_5_ce0,smem_5_we0,smem_5_d0,smem_4_address0,smem_4_ce0,smem_4_we0,smem_4_d0,smem_3_address0,smem_3_ce0,smem_3_we0,smem_3_d0,smem_2_address0,smem_2_ce0,smem_2_we0,smem_2_d0,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_address0,smem_ce0,smem_we0,smem_d0,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_address1,DATA_x_ce1,DATA_x_q1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_q1,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_q0,DATA_x_4_address1,DATA_x_4_ce1,DATA_x_4_q1,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_q0,DATA_x_5_address1,DATA_x_5_ce1,DATA_x_5_q1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_q0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_q1,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_q0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_q1,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_q0,DATA_x_6_address1,DATA_x_6_ce1,DATA_x_6_q1,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_q0,DATA_x_7_address1,DATA_x_7_ce1,DATA_x_7_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] smem_7_address0;
output   smem_7_ce0;
output   smem_7_we0;
output  [63:0] smem_7_d0;
output  [6:0] smem_6_address0;
output   smem_6_ce0;
output   smem_6_we0;
output  [63:0] smem_6_d0;
output  [6:0] smem_5_address0;
output   smem_5_ce0;
output   smem_5_we0;
output  [63:0] smem_5_d0;
output  [6:0] smem_4_address0;
output   smem_4_ce0;
output   smem_4_we0;
output  [63:0] smem_4_d0;
output  [6:0] smem_3_address0;
output   smem_3_ce0;
output   smem_3_we0;
output  [63:0] smem_3_d0;
output  [6:0] smem_2_address0;
output   smem_2_ce0;
output   smem_2_we0;
output  [63:0] smem_2_d0;
output  [6:0] smem_1_address0;
output   smem_1_ce0;
output   smem_1_we0;
output  [63:0] smem_1_d0;
output  [6:0] smem_address0;
output   smem_ce0;
output   smem_we0;
output  [63:0] smem_d0;
output  [5:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [5:0] DATA_x_address1;
output   DATA_x_ce1;
input  [63:0] DATA_x_q1;
output  [5:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [5:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
input  [63:0] DATA_x_1_q1;
output  [5:0] DATA_x_4_address0;
output   DATA_x_4_ce0;
input  [63:0] DATA_x_4_q0;
output  [5:0] DATA_x_4_address1;
output   DATA_x_4_ce1;
input  [63:0] DATA_x_4_q1;
output  [5:0] DATA_x_5_address0;
output   DATA_x_5_ce0;
input  [63:0] DATA_x_5_q0;
output  [5:0] DATA_x_5_address1;
output   DATA_x_5_ce1;
input  [63:0] DATA_x_5_q1;
output  [5:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
input  [63:0] DATA_x_2_q0;
output  [5:0] DATA_x_2_address1;
output   DATA_x_2_ce1;
input  [63:0] DATA_x_2_q1;
output  [5:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
input  [63:0] DATA_x_3_q0;
output  [5:0] DATA_x_3_address1;
output   DATA_x_3_ce1;
input  [63:0] DATA_x_3_q1;
output  [5:0] DATA_x_6_address0;
output   DATA_x_6_ce0;
input  [63:0] DATA_x_6_q0;
output  [5:0] DATA_x_6_address1;
output   DATA_x_6_ce1;
input  [63:0] DATA_x_6_q1;
output  [5:0] DATA_x_7_address0;
output   DATA_x_7_ce0;
input  [63:0] DATA_x_7_q0;
output  [5:0] DATA_x_7_address1;
output   DATA_x_7_ce1;
input  [63:0] DATA_x_7_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_1106_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [63:0] reg_1034;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] reg_1042;
reg   [63:0] reg_1050;
reg   [63:0] reg_1058;
reg   [63:0] reg_1066;
reg   [63:0] reg_1074;
reg   [63:0] reg_1082;
reg   [63:0] reg_1090;
reg   [6:0] tid_reg_1950;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] tmp_reg_1959;
wire   [5:0] offset_12_fu_1140_p3;
reg   [5:0] offset_12_reg_2003;
wire   [0:0] icmp_ln178_fu_1178_p2;
reg   [0:0] icmp_ln178_reg_2050;
wire   [0:0] icmp_ln178_1_fu_1184_p2;
reg   [0:0] icmp_ln178_1_reg_2054;
wire   [5:0] offset_fu_1190_p1;
reg   [5:0] offset_reg_2058;
wire   [8:0] zext_ln175_3_fu_1197_p1;
reg   [8:0] zext_ln175_3_reg_2064;
reg   [4:0] trunc_ln5_reg_2070;
wire   [8:0] zext_ln172_10_fu_1301_p1;
reg   [8:0] zext_ln172_10_reg_2075;
reg   [4:0] trunc_ln183_1_reg_2081;
wire   [5:0] offset_13_fu_1373_p3;
reg   [5:0] offset_13_reg_2086;
reg   [6:0] smem_2_addr_4_reg_2098;
reg   [6:0] smem_6_addr_4_reg_2103;
reg   [6:0] smem_3_addr_4_reg_2148;
reg   [6:0] smem_7_addr_4_reg_2153;
reg   [63:0] DATA_x_load_2_reg_2193;
reg   [63:0] DATA_x_load_3_reg_2199;
reg   [63:0] DATA_x_4_load_2_reg_2205;
reg   [63:0] DATA_x_4_load_3_reg_2211;
reg   [63:0] DATA_x_2_load_2_reg_2217;
reg   [63:0] DATA_x_2_load_3_reg_2223;
reg   [63:0] DATA_x_6_load_2_reg_2229;
reg   [63:0] DATA_x_6_load_3_reg_2235;
wire   [8:0] zext_ln172_13_fu_1586_p1;
reg   [8:0] zext_ln172_13_reg_2241;
wire    ap_block_pp0_stage3_11001;
reg   [4:0] trunc_ln183_2_reg_2247;
wire   [9:0] trunc_ln172_fu_1691_p1;
reg   [9:0] trunc_ln172_reg_2252;
wire   [0:0] icmp_ln178_3_fu_1761_p2;
reg   [0:0] icmp_ln178_3_reg_2260;
wire   [0:0] icmp_ln178_5_fu_1767_p2;
reg   [0:0] icmp_ln178_5_reg_2264;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln174_fu_1114_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln176_fu_1148_p1;
wire   [63:0] zext_ln172_fu_1210_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln180_fu_1230_p1;
wire   [63:0] zext_ln182_fu_1254_p1;
wire   [63:0] zext_ln184_fu_1292_p1;
wire   [63:0] zext_ln182_1_fu_1320_p1;
wire   [63:0] zext_ln184_1_fu_1358_p1;
wire   [63:0] zext_ln176_1_fu_1381_p1;
wire   [63:0] zext_ln176_2_fu_1401_p1;
wire   [63:0] zext_ln179_fu_1431_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln181_fu_1452_p1;
wire   [63:0] zext_ln183_fu_1461_p1;
wire   [63:0] zext_ln185_fu_1483_p1;
wire   [63:0] zext_ln179_1_fu_1507_p1;
wire   [63:0] zext_ln181_1_fu_1528_p1;
wire   [63:0] zext_ln183_1_fu_1537_p1;
wire   [63:0] zext_ln185_1_fu_1559_p1;
wire   [63:0] zext_ln180_1_fu_1605_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln182_2_fu_1627_p1;
wire   [63:0] zext_ln184_2_fu_1665_p1;
wire   [63:0] zext_ln180_2_fu_1711_p1;
wire   [63:0] zext_ln182_3_fu_1733_p1;
wire   [63:0] zext_ln184_3_fu_1755_p1;
wire   [63:0] zext_ln179_2_fu_1801_p1;
wire   [63:0] zext_ln181_2_fu_1822_p1;
wire   [63:0] zext_ln183_2_fu_1831_p1;
wire   [63:0] zext_ln185_2_fu_1853_p1;
wire   [63:0] zext_ln179_3_fu_1874_p1;
wire   [63:0] zext_ln181_3_fu_1895_p1;
wire   [63:0] zext_ln183_3_fu_1916_p1;
wire   [63:0] zext_ln185_3_fu_1937_p1;
reg   [6:0] tid_1_fu_138;
wire   [6:0] add_ln174_fu_1773_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid;
reg    DATA_x_ce1_local;
reg   [5:0] DATA_x_address1_local;
reg    DATA_x_ce0_local;
reg   [5:0] DATA_x_address0_local;
reg    DATA_x_1_ce1_local;
reg   [5:0] DATA_x_1_address1_local;
reg    DATA_x_1_ce0_local;
reg   [5:0] DATA_x_1_address0_local;
reg    DATA_x_4_ce1_local;
reg   [5:0] DATA_x_4_address1_local;
reg    DATA_x_4_ce0_local;
reg   [5:0] DATA_x_4_address0_local;
reg    DATA_x_5_ce1_local;
reg   [5:0] DATA_x_5_address1_local;
reg    DATA_x_5_ce0_local;
reg   [5:0] DATA_x_5_address0_local;
reg    DATA_x_2_ce1_local;
reg   [5:0] DATA_x_2_address1_local;
reg    DATA_x_2_ce0_local;
reg   [5:0] DATA_x_2_address0_local;
reg    DATA_x_3_ce1_local;
reg   [5:0] DATA_x_3_address1_local;
reg    DATA_x_3_ce0_local;
reg   [5:0] DATA_x_3_address0_local;
reg    DATA_x_6_ce1_local;
reg   [5:0] DATA_x_6_address1_local;
reg    DATA_x_6_ce0_local;
reg   [5:0] DATA_x_6_address0_local;
reg    DATA_x_7_ce1_local;
reg   [5:0] DATA_x_7_address1_local;
reg    DATA_x_7_ce0_local;
reg   [5:0] DATA_x_7_address0_local;
reg    smem_4_we0_local;
reg   [63:0] smem_4_d0_local;
reg    smem_4_ce0_local;
reg   [6:0] smem_4_address0_local;
reg    smem_6_we0_local;
reg   [63:0] smem_6_d0_local;
reg    smem_6_ce0_local;
reg   [6:0] smem_6_address0_local;
reg    smem_we0_local;
reg   [63:0] smem_d0_local;
reg    smem_ce0_local;
reg   [6:0] smem_address0_local;
reg    smem_2_we0_local;
reg   [63:0] smem_2_d0_local;
reg    smem_2_ce0_local;
reg   [6:0] smem_2_address0_local;
reg    smem_5_we0_local;
reg   [63:0] smem_5_d0_local;
reg    smem_5_ce0_local;
reg   [6:0] smem_5_address0_local;
reg    smem_1_we0_local;
reg   [63:0] smem_1_d0_local;
reg    smem_1_ce0_local;
reg   [6:0] smem_1_address0_local;
reg    smem_7_we0_local;
reg   [63:0] smem_7_d0_local;
reg    smem_7_ce0_local;
reg   [6:0] smem_7_address0_local;
reg    smem_3_we0_local;
reg   [63:0] smem_3_d0_local;
reg    smem_3_ce0_local;
reg   [6:0] smem_3_address0_local;
wire   [4:0] tmp_s_fu_1130_p4;
wire   [1:0] tmp_69_fu_1160_p4;
wire   [2:0] lo_fu_1126_p1;
wire   [2:0] lo_1_fu_1170_p3;
wire   [2:0] hi_fu_1201_p4;
wire   [3:0] zext_ln_fu_1222_p3;
wire   [7:0] zext_ln175_2_fu_1193_p1;
wire   [7:0] add_ln182_fu_1238_p2;
wire   [4:0] lshr_ln13_fu_1244_p4;
wire   [7:0] add_ln183_fu_1260_p2;
wire   [8:0] add_ln184_fu_1276_p2;
wire   [5:0] lshr_ln14_fu_1282_p4;
wire   [7:0] zext_ln172_9_fu_1298_p1;
wire   [7:0] add_ln182_1_fu_1304_p2;
wire   [4:0] lshr_ln182_1_fu_1310_p4;
wire   [7:0] add_ln183_1_fu_1326_p2;
wire   [8:0] add_ln184_1_fu_1342_p2;
wire   [5:0] lshr_ln184_1_fu_1348_p4;
wire   [3:0] tmp_70_fu_1364_p4;
wire   [5:0] or_ln174_2_fu_1393_p3;
wire   [8:0] add_ln179_fu_1416_p2;
wire   [5:0] lshr_ln11_fu_1421_p4;
wire   [8:0] add_ln181_fu_1437_p2;
wire   [5:0] lshr_ln12_fu_1442_p4;
wire  signed [5:0] sext_ln183_fu_1458_p1;
wire   [9:0] zext_ln175_1_fu_1413_p1;
wire   [9:0] add_ln185_fu_1467_p2;
wire   [6:0] lshr_ln15_fu_1473_p4;
wire   [8:0] add_ln179_1_fu_1492_p2;
wire   [5:0] lshr_ln179_1_fu_1497_p4;
wire   [8:0] add_ln181_1_fu_1513_p2;
wire   [5:0] lshr_ln181_1_fu_1518_p4;
wire  signed [5:0] sext_ln183_1_fu_1534_p1;
wire   [9:0] zext_ln172_8_fu_1489_p1;
wire   [9:0] add_ln185_1_fu_1543_p2;
wire   [6:0] lshr_ln185_1_fu_1549_p4;
wire   [0:0] tmp_71_fu_1568_p3;
wire   [7:0] zext_ln172_12_fu_1583_p1;
wire   [7:0] add_ln180_fu_1589_p2;
wire   [4:0] lshr_ln180_2_fu_1595_p4;
wire   [7:0] add_ln182_2_fu_1611_p2;
wire   [4:0] lshr_ln182_2_fu_1617_p4;
wire   [7:0] add_ln183_2_fu_1633_p2;
wire   [8:0] add_ln184_2_fu_1649_p2;
wire   [5:0] lshr_ln184_2_fu_1655_p4;
wire   [31:0] zext_ln175_fu_1565_p1;
wire   [2:0] lo_3_fu_1671_p3;
wire   [31:0] offset_3_fu_1679_p5;
wire   [9:0] add_ln180_1_fu_1695_p2;
wire   [6:0] lshr_ln180_3_fu_1701_p4;
wire   [9:0] add_ln182_3_fu_1717_p2;
wire   [6:0] lshr_ln182_3_fu_1723_p4;
wire   [9:0] add_ln184_3_fu_1739_p2;
wire   [6:0] lshr_ln184_3_fu_1745_p4;
wire   [2:0] lo_2_fu_1575_p3;
wire   [8:0] add_ln179_2_fu_1786_p2;
wire   [5:0] lshr_ln179_2_fu_1791_p4;
wire   [8:0] add_ln181_2_fu_1807_p2;
wire   [5:0] lshr_ln181_2_fu_1812_p4;
wire  signed [5:0] sext_ln183_2_fu_1828_p1;
wire   [9:0] zext_ln172_11_fu_1783_p1;
wire   [9:0] add_ln185_2_fu_1837_p2;
wire   [6:0] lshr_ln185_2_fu_1843_p4;
wire   [9:0] add_ln179_3_fu_1859_p2;
wire   [6:0] lshr_ln179_3_fu_1864_p4;
wire   [9:0] add_ln181_3_fu_1880_p2;
wire   [6:0] lshr_ln181_3_fu_1885_p4;
wire   [9:0] add_ln183_3_fu_1901_p2;
wire   [6:0] lshr_ln183_3_fu_1906_p4;
wire   [9:0] add_ln185_3_fu_1922_p2;
wire   [6:0] lshr_ln185_3_fu_1927_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_1_fu_138 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_1_fu_138 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tid_1_fu_138 <= add_ln174_fu_1773_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_2_load_2_reg_2217 <= DATA_x_2_q1;
        DATA_x_2_load_3_reg_2223 <= DATA_x_2_q0;
        DATA_x_4_load_2_reg_2205 <= DATA_x_4_q1;
        DATA_x_4_load_3_reg_2211 <= DATA_x_4_q0;
        DATA_x_6_load_2_reg_2229 <= DATA_x_6_q1;
        DATA_x_6_load_3_reg_2235 <= DATA_x_6_q0;
        DATA_x_load_2_reg_2193 <= DATA_x_q1;
        DATA_x_load_3_reg_2199 <= DATA_x_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln178_1_reg_2054 <= icmp_ln178_1_fu_1184_p2;
        icmp_ln178_reg_2050 <= icmp_ln178_fu_1178_p2;
        offset_12_reg_2003[5 : 1] <= offset_12_fu_1140_p3[5 : 1];
        tid_reg_1950 <= ap_sig_allocacmp_tid;
        tmp_reg_1959 <= ap_sig_allocacmp_tid[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        icmp_ln178_3_reg_2260 <= icmp_ln178_3_fu_1761_p2;
        icmp_ln178_5_reg_2264 <= icmp_ln178_5_fu_1767_p2;
        trunc_ln172_reg_2252 <= trunc_ln172_fu_1691_p1;
        trunc_ln183_2_reg_2247 <= {{add_ln183_2_fu_1633_p2[7:3]}};
        zext_ln172_13_reg_2241[5 : 2] <= zext_ln172_13_fu_1586_p1[5 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        offset_13_reg_2086[5 : 2] <= offset_13_fu_1373_p3[5 : 2];
        offset_reg_2058 <= offset_fu_1190_p1;
        smem_2_addr_4_reg_2098[2 : 0] <= zext_ln172_fu_1210_p1[2 : 0];
        smem_3_addr_4_reg_2148[2 : 0] <= zext_ln172_fu_1210_p1[2 : 0];
        smem_6_addr_4_reg_2103[2 : 0] <= zext_ln172_fu_1210_p1[2 : 0];
        smem_7_addr_4_reg_2153[2 : 0] <= zext_ln172_fu_1210_p1[2 : 0];
        trunc_ln183_1_reg_2081 <= {{add_ln183_1_fu_1326_p2[7:3]}};
        trunc_ln5_reg_2070 <= {{add_ln183_fu_1260_p2[7:3]}};
        zext_ln172_10_reg_2075[5 : 1] <= zext_ln172_10_fu_1301_p1[5 : 1];
        zext_ln175_3_reg_2064[5 : 0] <= zext_ln175_3_fu_1197_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1034 <= DATA_x_1_q1;
        reg_1042 <= DATA_x_1_q0;
        reg_1050 <= DATA_x_5_q1;
        reg_1058 <= DATA_x_5_q0;
        reg_1066 <= DATA_x_3_q1;
        reg_1074 <= DATA_x_3_q0;
        reg_1082 <= DATA_x_7_q1;
        reg_1090 <= DATA_x_7_q0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address0_local = zext_ln176_2_fu_1401_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address0_local = zext_ln176_fu_1148_p1;
        end else begin
            DATA_x_1_address0_local = 'bx;
        end
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address1_local = zext_ln176_1_fu_1381_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address1_local = zext_ln174_fu_1114_p1;
        end else begin
            DATA_x_1_address1_local = 'bx;
        end
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_2_address0_local = zext_ln176_2_fu_1401_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_2_address0_local = zext_ln176_fu_1148_p1;
        end else begin
            DATA_x_2_address0_local = 'bx;
        end
    end else begin
        DATA_x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_2_address1_local = zext_ln176_1_fu_1381_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_2_address1_local = zext_ln174_fu_1114_p1;
        end else begin
            DATA_x_2_address1_local = 'bx;
        end
    end else begin
        DATA_x_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_2_ce1_local = 1'b1;
    end else begin
        DATA_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_3_address0_local = zext_ln176_2_fu_1401_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_3_address0_local = zext_ln176_fu_1148_p1;
        end else begin
            DATA_x_3_address0_local = 'bx;
        end
    end else begin
        DATA_x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_3_address1_local = zext_ln176_1_fu_1381_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_3_address1_local = zext_ln174_fu_1114_p1;
        end else begin
            DATA_x_3_address1_local = 'bx;
        end
    end else begin
        DATA_x_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_3_ce1_local = 1'b1;
    end else begin
        DATA_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_4_address0_local = zext_ln176_2_fu_1401_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_4_address0_local = zext_ln176_fu_1148_p1;
        end else begin
            DATA_x_4_address0_local = 'bx;
        end
    end else begin
        DATA_x_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_4_address1_local = zext_ln176_1_fu_1381_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_4_address1_local = zext_ln174_fu_1114_p1;
        end else begin
            DATA_x_4_address1_local = 'bx;
        end
    end else begin
        DATA_x_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_4_ce0_local = 1'b1;
    end else begin
        DATA_x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_4_ce1_local = 1'b1;
    end else begin
        DATA_x_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_5_address0_local = zext_ln176_2_fu_1401_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_5_address0_local = zext_ln176_fu_1148_p1;
        end else begin
            DATA_x_5_address0_local = 'bx;
        end
    end else begin
        DATA_x_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_5_address1_local = zext_ln176_1_fu_1381_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_5_address1_local = zext_ln174_fu_1114_p1;
        end else begin
            DATA_x_5_address1_local = 'bx;
        end
    end else begin
        DATA_x_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_5_ce0_local = 1'b1;
    end else begin
        DATA_x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_5_ce1_local = 1'b1;
    end else begin
        DATA_x_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_6_address0_local = zext_ln176_2_fu_1401_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_6_address0_local = zext_ln176_fu_1148_p1;
        end else begin
            DATA_x_6_address0_local = 'bx;
        end
    end else begin
        DATA_x_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_6_address1_local = zext_ln176_1_fu_1381_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_6_address1_local = zext_ln174_fu_1114_p1;
        end else begin
            DATA_x_6_address1_local = 'bx;
        end
    end else begin
        DATA_x_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_6_ce0_local = 1'b1;
    end else begin
        DATA_x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_6_ce1_local = 1'b1;
    end else begin
        DATA_x_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_7_address0_local = zext_ln176_2_fu_1401_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_7_address0_local = zext_ln176_fu_1148_p1;
        end else begin
            DATA_x_7_address0_local = 'bx;
        end
    end else begin
        DATA_x_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_7_address1_local = zext_ln176_1_fu_1381_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_7_address1_local = zext_ln174_fu_1114_p1;
        end else begin
            DATA_x_7_address1_local = 'bx;
        end
    end else begin
        DATA_x_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_7_ce0_local = 1'b1;
    end else begin
        DATA_x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_7_ce1_local = 1'b1;
    end else begin
        DATA_x_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address0_local = zext_ln176_2_fu_1401_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address0_local = zext_ln176_fu_1148_p1;
        end else begin
            DATA_x_address0_local = 'bx;
        end
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address1_local = zext_ln176_1_fu_1381_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address1_local = zext_ln174_fu_1114_p1;
        end else begin
            DATA_x_address1_local = 'bx;
        end
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_fu_1106_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
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
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid = 7'd0;
    end else begin
        ap_sig_allocacmp_tid = tid_1_fu_138;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln178_5_reg_2264 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln185_3_fu_1937_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln178_5_reg_2264 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln181_3_fu_1895_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (icmp_ln178_5_fu_1767_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln184_3_fu_1755_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (icmp_ln178_5_fu_1767_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln180_2_fu_1711_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln178_1_reg_2054 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln179_1_fu_1507_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln178_1_reg_2054 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln183_1_fu_1537_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln178_1_reg_2054 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln182_1_fu_1320_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln178_1_reg_2054 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln172_fu_1210_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln178_5_fu_1767_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln178_5_fu_1767_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln178_5_reg_2264 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln178_5_reg_2264 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln178_1_reg_2054 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln178_1_reg_2054 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln178_1_reg_2054== 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln178_1_reg_2054 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln178_5_reg_2264 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = reg_1090;
    end else if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln178_5_reg_2264 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = reg_1058;
    end else if (((1'b0 == ap_block_pp0_stage3) & (icmp_ln178_5_fu_1767_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_d0_local = DATA_x_6_load_3_reg_2235;
    end else if (((1'b0 == ap_block_pp0_stage3) & (icmp_ln178_5_fu_1767_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_d0_local = DATA_x_4_load_3_reg_2211;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln178_1_reg_2054 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = reg_1042;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln178_1_reg_2054 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = reg_1074;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln178_1_reg_2054 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln178_1_reg_2054 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_q0;
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln178_5_fu_1767_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln178_5_fu_1767_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln178_5_reg_2264 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln178_5_reg_2264 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln178_1_reg_2054 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln178_1_reg_2054 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln178_1_reg_2054== 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln178_1_reg_2054 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln178_3_reg_2260 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln179_2_fu_1801_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln178_3_reg_2260 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln183_2_fu_1831_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (icmp_ln178_3_fu_1761_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln182_2_fu_1627_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (icmp_ln178_3_fu_1761_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = smem_2_addr_4_reg_2098;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln178_reg_2050 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln181_fu_1452_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln178_reg_2050 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln185_fu_1483_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln178_reg_2050 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln184_fu_1292_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln178_reg_2050 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln180_fu_1230_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln178_3_fu_1761_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln178_3_fu_1761_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln178_3_reg_2260 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln178_3_reg_2260 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln178_reg_2050 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln178_reg_2050 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln178_reg_2050 == 1'd1)& (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln178_reg_2050 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln178_3_reg_2260 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = reg_1034;
    end else if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln178_3_reg_2260 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = reg_1066;
    end else if (((1'b0 == ap_block_pp0_stage3) & (icmp_ln178_3_fu_1761_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_d0_local = DATA_x_2_load_2_reg_2217;
    end else if (((1'b0 == ap_block_pp0_stage3) & (icmp_ln178_3_fu_1761_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_d0_local = DATA_x_load_2_reg_2193;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln178_reg_2050 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = reg_1050;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln178_reg_2050 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = reg_1082;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln178_reg_2050 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_6_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln178_reg_2050 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_4_q1;
    end else begin
        smem_2_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln178_3_fu_1761_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln178_3_fu_1761_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln178_3_reg_2260 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln178_3_reg_2260 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln178_reg_2050 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln178_reg_2050 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln178_reg_2050 == 1'd1)& (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln178_reg_2050 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_we0_local = 1'b1;
    end else begin
        smem_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln178_5_reg_2264 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln179_3_fu_1874_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln178_5_reg_2264 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln183_3_fu_1916_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (icmp_ln178_5_fu_1767_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln182_3_fu_1733_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (icmp_ln178_5_fu_1767_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = smem_3_addr_4_reg_2148;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln178_1_reg_2054 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln181_1_fu_1528_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln178_1_reg_2054 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln185_1_fu_1559_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln178_1_reg_2054 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln180_fu_1230_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln178_1_reg_2054 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln184_1_fu_1358_p1;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln178_5_fu_1767_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln178_5_fu_1767_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln178_5_reg_2264 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln178_5_reg_2264 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln178_1_reg_2054 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln178_1_reg_2054 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln178_1_reg_2054== 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln178_1_reg_2054 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln178_5_reg_2264 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = reg_1042;
    end else if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln178_5_reg_2264 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = reg_1074;
    end else if (((1'b0 == ap_block_pp0_stage3) & (icmp_ln178_5_fu_1767_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_d0_local = DATA_x_2_load_3_reg_2223;
    end else if (((1'b0 == ap_block_pp0_stage3) & (icmp_ln178_5_fu_1767_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_d0_local = DATA_x_load_3_reg_2199;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln178_1_reg_2054 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = reg_1058;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln178_1_reg_2054 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = reg_1090;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln178_1_reg_2054 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_4_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln178_1_reg_2054 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_6_q0;
    end else begin
        smem_3_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln178_5_fu_1767_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln178_5_fu_1767_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln178_5_reg_2264 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln178_5_reg_2264 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln178_1_reg_2054 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln178_1_reg_2054 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln178_1_reg_2054== 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln178_1_reg_2054 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_we0_local = 1'b1;
    end else begin
        smem_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln178_3_reg_2260 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln181_2_fu_1822_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln178_3_reg_2260 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln185_2_fu_1853_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (icmp_ln178_3_fu_1761_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln180_1_fu_1605_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (icmp_ln178_3_fu_1761_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln184_2_fu_1665_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln178_reg_2050 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln183_fu_1461_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln178_reg_2050 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln179_fu_1431_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln178_reg_2050 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln182_fu_1254_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln178_reg_2050 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln172_fu_1210_p1;
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln178_3_fu_1761_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln178_3_fu_1761_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln178_3_reg_2260 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln178_3_reg_2260 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln178_reg_2050 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln178_reg_2050 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln178_reg_2050 == 1'd1)& (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln178_reg_2050 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln178_3_reg_2260 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = reg_1050;
    end else if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln178_3_reg_2260 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = reg_1082;
    end else if (((1'b0 == ap_block_pp0_stage3) & (icmp_ln178_3_fu_1761_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_d0_local = DATA_x_4_load_2_reg_2205;
    end else if (((1'b0 == ap_block_pp0_stage3) & (icmp_ln178_3_fu_1761_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_d0_local = DATA_x_6_load_2_reg_2229;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln178_reg_2050 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = reg_1066;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln178_reg_2050 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = reg_1034;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln178_reg_2050 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln178_reg_2050 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_q1;
    end else begin
        smem_4_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln178_3_fu_1761_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln178_3_fu_1761_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln178_3_reg_2260 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln178_3_reg_2260 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln178_reg_2050 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln178_reg_2050 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln178_reg_2050 == 1'd1)& (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln178_reg_2050 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_we0_local = 1'b1;
    end else begin
        smem_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln178_5_reg_2264 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln181_3_fu_1895_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln178_5_reg_2264 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln185_3_fu_1937_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (icmp_ln178_5_fu_1767_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln180_2_fu_1711_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (icmp_ln178_5_fu_1767_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln184_3_fu_1755_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln178_1_reg_2054 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln183_1_fu_1537_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln178_1_reg_2054 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln179_1_fu_1507_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln178_1_reg_2054 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln182_1_fu_1320_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln178_1_reg_2054 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln172_fu_1210_p1;
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln178_5_fu_1767_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln178_5_fu_1767_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln178_5_reg_2264 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln178_5_reg_2264 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln178_1_reg_2054 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln178_1_reg_2054 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln178_1_reg_2054== 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln178_1_reg_2054 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln178_5_reg_2264 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = reg_1058;
    end else if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln178_5_reg_2264 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = reg_1090;
    end else if (((1'b0 == ap_block_pp0_stage3) & (icmp_ln178_5_fu_1767_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_d0_local = DATA_x_4_load_3_reg_2211;
    end else if (((1'b0 == ap_block_pp0_stage3) & (icmp_ln178_5_fu_1767_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_d0_local = DATA_x_6_load_3_reg_2235;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln178_1_reg_2054 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d0_local = reg_1074;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln178_1_reg_2054 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d0_local = reg_1042;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln178_1_reg_2054 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln178_1_reg_2054 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_q0;
    end else begin
        smem_5_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln178_5_fu_1767_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln178_5_fu_1767_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln178_5_reg_2264 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln178_5_reg_2264 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln178_1_reg_2054 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln178_1_reg_2054 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln178_1_reg_2054== 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln178_1_reg_2054 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_5_we0_local = 1'b1;
    end else begin
        smem_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln178_3_reg_2260 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln183_2_fu_1831_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln178_3_reg_2260 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln179_2_fu_1801_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (icmp_ln178_3_fu_1761_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = zext_ln182_2_fu_1627_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (icmp_ln178_3_fu_1761_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = smem_6_addr_4_reg_2103;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln178_reg_2050 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln185_fu_1483_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln178_reg_2050 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln181_fu_1452_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln178_reg_2050 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln184_fu_1292_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln178_reg_2050 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln180_fu_1230_p1;
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln178_3_fu_1761_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln178_3_fu_1761_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln178_3_reg_2260 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln178_3_reg_2260 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln178_reg_2050 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln178_reg_2050 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln178_reg_2050 == 1'd1)& (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln178_reg_2050 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln178_3_reg_2260 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d0_local = reg_1066;
    end else if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln178_3_reg_2260 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d0_local = reg_1034;
    end else if (((1'b0 == ap_block_pp0_stage3) & (icmp_ln178_3_fu_1761_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_d0_local = DATA_x_2_load_2_reg_2217;
    end else if (((1'b0 == ap_block_pp0_stage3) & (icmp_ln178_3_fu_1761_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_d0_local = DATA_x_load_2_reg_2193;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln178_reg_2050 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d0_local = reg_1082;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln178_reg_2050 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d0_local = reg_1050;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln178_reg_2050 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_x_6_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln178_reg_2050 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_x_4_q1;
    end else begin
        smem_6_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln178_3_fu_1761_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln178_3_fu_1761_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln178_3_reg_2260 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln178_3_reg_2260 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln178_reg_2050 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln178_reg_2050 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln178_reg_2050 == 1'd1)& (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln178_reg_2050 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_6_we0_local = 1'b1;
    end else begin
        smem_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln178_5_reg_2264 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln183_3_fu_1916_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln178_5_reg_2264 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln179_3_fu_1874_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (icmp_ln178_5_fu_1767_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_7_address0_local = zext_ln182_3_fu_1733_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (icmp_ln178_5_fu_1767_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_7_address0_local = smem_7_addr_4_reg_2153;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln178_1_reg_2054 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_address0_local = zext_ln185_1_fu_1559_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln178_1_reg_2054 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_address0_local = zext_ln181_1_fu_1528_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln178_1_reg_2054 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln184_1_fu_1358_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln178_1_reg_2054 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln180_fu_1230_p1;
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln178_5_fu_1767_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln178_5_fu_1767_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln178_5_reg_2264 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln178_5_reg_2264 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln178_1_reg_2054 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln178_1_reg_2054 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln178_1_reg_2054== 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln178_1_reg_2054 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln178_5_reg_2264 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_d0_local = reg_1074;
    end else if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln178_5_reg_2264 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_d0_local = reg_1042;
    end else if (((1'b0 == ap_block_pp0_stage3) & (icmp_ln178_5_fu_1767_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_7_d0_local = DATA_x_2_load_3_reg_2223;
    end else if (((1'b0 == ap_block_pp0_stage3) & (icmp_ln178_5_fu_1767_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_7_d0_local = DATA_x_load_3_reg_2199;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln178_1_reg_2054 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_d0_local = reg_1090;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln178_1_reg_2054 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_d0_local = reg_1058;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln178_1_reg_2054 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_x_6_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln178_1_reg_2054 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_x_4_q0;
    end else begin
        smem_7_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln178_5_fu_1767_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln178_5_fu_1767_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln178_5_reg_2264 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln178_5_reg_2264 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln178_1_reg_2054 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln178_1_reg_2054 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln178_1_reg_2054== 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln178_1_reg_2054 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_7_we0_local = 1'b1;
    end else begin
        smem_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln178_3_reg_2260 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln185_2_fu_1853_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln178_3_reg_2260 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln181_2_fu_1822_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (icmp_ln178_3_fu_1761_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln184_2_fu_1665_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (icmp_ln178_3_fu_1761_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln180_1_fu_1605_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln178_reg_2050 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln179_fu_1431_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln178_reg_2050 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln183_fu_1461_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln178_reg_2050 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln182_fu_1254_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln178_reg_2050 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln172_fu_1210_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln178_3_fu_1761_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln178_3_fu_1761_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln178_3_reg_2260 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln178_3_reg_2260 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln178_reg_2050 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln178_reg_2050 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln178_reg_2050 == 1'd1)& (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln178_reg_2050 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln178_3_reg_2260 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = reg_1082;
    end else if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln178_3_reg_2260 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = reg_1050;
    end else if (((1'b0 == ap_block_pp0_stage3) & (icmp_ln178_3_fu_1761_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d0_local = DATA_x_6_load_2_reg_2229;
    end else if (((1'b0 == ap_block_pp0_stage3) & (icmp_ln178_3_fu_1761_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d0_local = DATA_x_4_load_2_reg_2205;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln178_reg_2050 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = reg_1034;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln178_reg_2050 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = reg_1066;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln178_reg_2050 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln178_reg_2050 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_q1;
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln178_3_fu_1761_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln178_3_fu_1761_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln178_3_reg_2260 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln178_3_reg_2260 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln178_reg_2050 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln178_reg_2050 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln178_reg_2050 == 1'd1)& (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln178_reg_2050 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
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
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_x_1_address0 = DATA_x_1_address0_local;
assign DATA_x_1_address1 = DATA_x_1_address1_local;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_ce1 = DATA_x_1_ce1_local;
assign DATA_x_2_address0 = DATA_x_2_address0_local;
assign DATA_x_2_address1 = DATA_x_2_address1_local;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_ce1 = DATA_x_2_ce1_local;
assign DATA_x_3_address0 = DATA_x_3_address0_local;
assign DATA_x_3_address1 = DATA_x_3_address1_local;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_ce1 = DATA_x_3_ce1_local;
assign DATA_x_4_address0 = DATA_x_4_address0_local;
assign DATA_x_4_address1 = DATA_x_4_address1_local;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_4_ce1 = DATA_x_4_ce1_local;
assign DATA_x_5_address0 = DATA_x_5_address0_local;
assign DATA_x_5_address1 = DATA_x_5_address1_local;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_5_ce1 = DATA_x_5_ce1_local;
assign DATA_x_6_address0 = DATA_x_6_address0_local;
assign DATA_x_6_address1 = DATA_x_6_address1_local;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_6_ce1 = DATA_x_6_ce1_local;
assign DATA_x_7_address0 = DATA_x_7_address0_local;
assign DATA_x_7_address1 = DATA_x_7_address1_local;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_7_ce1 = DATA_x_7_ce1_local;
assign DATA_x_address0 = DATA_x_address0_local;
assign DATA_x_address1 = DATA_x_address1_local;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign add_ln174_fu_1773_p2 = (tid_reg_1950 + 7'd4);
assign add_ln179_1_fu_1492_p2 = ($signed(zext_ln172_10_reg_2075) + $signed(9'd264));
assign add_ln179_2_fu_1786_p2 = ($signed(zext_ln172_13_reg_2241) + $signed(9'd264));
assign add_ln179_3_fu_1859_p2 = (trunc_ln172_reg_2252 + 10'd264);
assign add_ln179_fu_1416_p2 = ($signed(zext_ln175_3_reg_2064) + $signed(9'd264));
assign add_ln180_1_fu_1695_p2 = (trunc_ln172_fu_1691_p1 + 10'd66);
assign add_ln180_fu_1589_p2 = (zext_ln172_12_fu_1583_p1 + 8'd66);
assign add_ln181_1_fu_1513_p2 = ($signed(zext_ln172_10_reg_2075) + $signed(9'd330));
assign add_ln181_2_fu_1807_p2 = ($signed(zext_ln172_13_reg_2241) + $signed(9'd330));
assign add_ln181_3_fu_1880_p2 = (trunc_ln172_reg_2252 + 10'd330);
assign add_ln181_fu_1437_p2 = ($signed(zext_ln175_3_reg_2064) + $signed(9'd330));
assign add_ln182_1_fu_1304_p2 = ($signed(zext_ln172_9_fu_1298_p1) + $signed(8'd132));
assign add_ln182_2_fu_1611_p2 = ($signed(zext_ln172_12_fu_1583_p1) + $signed(8'd132));
assign add_ln182_3_fu_1717_p2 = (trunc_ln172_fu_1691_p1 + 10'd132);
assign add_ln182_fu_1238_p2 = ($signed(zext_ln175_2_fu_1193_p1) + $signed(8'd132));
assign add_ln183_1_fu_1326_p2 = ($signed(zext_ln172_9_fu_1298_p1) + $signed(8'd140));
assign add_ln183_2_fu_1633_p2 = ($signed(zext_ln172_12_fu_1583_p1) + $signed(8'd140));
assign add_ln183_3_fu_1901_p2 = (trunc_ln172_reg_2252 + 10'd396);
assign add_ln183_fu_1260_p2 = ($signed(zext_ln175_2_fu_1193_p1) + $signed(8'd140));
assign add_ln184_1_fu_1342_p2 = (zext_ln172_10_fu_1301_p1 + 9'd198);
assign add_ln184_2_fu_1649_p2 = (zext_ln172_13_fu_1586_p1 + 9'd198);
assign add_ln184_3_fu_1739_p2 = (trunc_ln172_fu_1691_p1 + 10'd198);
assign add_ln184_fu_1276_p2 = (zext_ln175_3_fu_1197_p1 + 9'd198);
assign add_ln185_1_fu_1543_p2 = (zext_ln172_8_fu_1489_p1 + 10'd462);
assign add_ln185_2_fu_1837_p2 = (zext_ln172_11_fu_1783_p1 + 10'd462);
assign add_ln185_3_fu_1922_p2 = (trunc_ln172_reg_2252 + 10'd462);
assign add_ln185_fu_1467_p2 = (zext_ln175_1_fu_1413_p1 + 10'd462);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign hi_fu_1201_p4 = {{tid_reg_1950[5:3]}};
assign icmp_ln178_1_fu_1184_p2 = ((lo_1_fu_1170_p3 == 3'd1) ? 1'b1 : 1'b0);
assign icmp_ln178_3_fu_1761_p2 = ((lo_2_fu_1575_p3 == 3'd2) ? 1'b1 : 1'b0);
assign icmp_ln178_5_fu_1767_p2 = ((lo_3_fu_1671_p3 == 3'd3) ? 1'b1 : 1'b0);
assign icmp_ln178_fu_1178_p2 = ((lo_fu_1126_p1 == 3'd0) ? 1'b1 : 1'b0);
assign lo_1_fu_1170_p3 = {{tmp_69_fu_1160_p4}, {1'd1}};
assign lo_2_fu_1575_p3 = {{tmp_71_fu_1568_p3}, {2'd2}};
assign lo_3_fu_1671_p3 = {{tmp_71_fu_1568_p3}, {2'd3}};
assign lo_fu_1126_p1 = ap_sig_allocacmp_tid[2:0];
assign lshr_ln11_fu_1421_p4 = {{add_ln179_fu_1416_p2[8:3]}};
assign lshr_ln12_fu_1442_p4 = {{add_ln181_fu_1437_p2[8:3]}};
assign lshr_ln13_fu_1244_p4 = {{add_ln182_fu_1238_p2[7:3]}};
assign lshr_ln14_fu_1282_p4 = {{add_ln184_fu_1276_p2[8:3]}};
assign lshr_ln15_fu_1473_p4 = {{add_ln185_fu_1467_p2[9:3]}};
assign lshr_ln179_1_fu_1497_p4 = {{add_ln179_1_fu_1492_p2[8:3]}};
assign lshr_ln179_2_fu_1791_p4 = {{add_ln179_2_fu_1786_p2[8:3]}};
assign lshr_ln179_3_fu_1864_p4 = {{add_ln179_3_fu_1859_p2[9:3]}};
assign lshr_ln180_2_fu_1595_p4 = {{add_ln180_fu_1589_p2[7:3]}};
assign lshr_ln180_3_fu_1701_p4 = {{add_ln180_1_fu_1695_p2[9:3]}};
assign lshr_ln181_1_fu_1518_p4 = {{add_ln181_1_fu_1513_p2[8:3]}};
assign lshr_ln181_2_fu_1812_p4 = {{add_ln181_2_fu_1807_p2[8:3]}};
assign lshr_ln181_3_fu_1885_p4 = {{add_ln181_3_fu_1880_p2[9:3]}};
assign lshr_ln182_1_fu_1310_p4 = {{add_ln182_1_fu_1304_p2[7:3]}};
assign lshr_ln182_2_fu_1617_p4 = {{add_ln182_2_fu_1611_p2[7:3]}};
assign lshr_ln182_3_fu_1723_p4 = {{add_ln182_3_fu_1717_p2[9:3]}};
assign lshr_ln183_3_fu_1906_p4 = {{add_ln183_3_fu_1901_p2[9:3]}};
assign lshr_ln184_1_fu_1348_p4 = {{add_ln184_1_fu_1342_p2[8:3]}};
assign lshr_ln184_2_fu_1655_p4 = {{add_ln184_2_fu_1649_p2[8:3]}};
assign lshr_ln184_3_fu_1745_p4 = {{add_ln184_3_fu_1739_p2[9:3]}};
assign lshr_ln185_1_fu_1549_p4 = {{add_ln185_1_fu_1543_p2[9:3]}};
assign lshr_ln185_2_fu_1843_p4 = {{add_ln185_2_fu_1837_p2[9:3]}};
assign lshr_ln185_3_fu_1927_p4 = {{add_ln185_3_fu_1922_p2[9:3]}};
assign offset_12_fu_1140_p3 = {{tmp_s_fu_1130_p4}, {1'd1}};
assign offset_13_fu_1373_p3 = {{tmp_70_fu_1364_p4}, {2'd2}};
assign offset_3_fu_1679_p5 = {{zext_ln175_fu_1565_p1[31:3]}, {lo_3_fu_1671_p3}};
assign offset_fu_1190_p1 = tid_reg_1950[5:0];
assign or_ln174_2_fu_1393_p3 = {{tmp_70_fu_1364_p4}, {2'd3}};
assign sext_ln183_1_fu_1534_p1 = $signed(trunc_ln183_1_reg_2081);
assign sext_ln183_2_fu_1828_p1 = $signed(trunc_ln183_2_reg_2247);
assign sext_ln183_fu_1458_p1 = $signed(trunc_ln5_reg_2070);
assign smem_1_address0 = smem_1_address0_local;
assign smem_1_ce0 = smem_1_ce0_local;
assign smem_1_d0 = smem_1_d0_local;
assign smem_1_we0 = smem_1_we0_local;
assign smem_2_address0 = smem_2_address0_local;
assign smem_2_ce0 = smem_2_ce0_local;
assign smem_2_d0 = smem_2_d0_local;
assign smem_2_we0 = smem_2_we0_local;
assign smem_3_address0 = smem_3_address0_local;
assign smem_3_ce0 = smem_3_ce0_local;
assign smem_3_d0 = smem_3_d0_local;
assign smem_3_we0 = smem_3_we0_local;
assign smem_4_address0 = smem_4_address0_local;
assign smem_4_ce0 = smem_4_ce0_local;
assign smem_4_d0 = smem_4_d0_local;
assign smem_4_we0 = smem_4_we0_local;
assign smem_5_address0 = smem_5_address0_local;
assign smem_5_ce0 = smem_5_ce0_local;
assign smem_5_d0 = smem_5_d0_local;
assign smem_5_we0 = smem_5_we0_local;
assign smem_6_address0 = smem_6_address0_local;
assign smem_6_ce0 = smem_6_ce0_local;
assign smem_6_d0 = smem_6_d0_local;
assign smem_6_we0 = smem_6_we0_local;
assign smem_7_address0 = smem_7_address0_local;
assign smem_7_ce0 = smem_7_ce0_local;
assign smem_7_d0 = smem_7_d0_local;
assign smem_7_we0 = smem_7_we0_local;
assign smem_address0 = smem_address0_local;
assign smem_ce0 = smem_ce0_local;
assign smem_d0 = smem_d0_local;
assign smem_we0 = smem_we0_local;
assign tmp_69_fu_1160_p4 = {{ap_sig_allocacmp_tid[2:1]}};
assign tmp_70_fu_1364_p4 = {{tid_reg_1950[5:2]}};
assign tmp_71_fu_1568_p3 = tid_reg_1950[32'd2];
assign tmp_fu_1106_p3 = ap_sig_allocacmp_tid[32'd6];
assign tmp_s_fu_1130_p4 = {{ap_sig_allocacmp_tid[5:1]}};
assign trunc_ln172_fu_1691_p1 = offset_3_fu_1679_p5[9:0];
assign zext_ln172_10_fu_1301_p1 = offset_12_reg_2003;
assign zext_ln172_11_fu_1783_p1 = offset_13_reg_2086;
assign zext_ln172_12_fu_1583_p1 = offset_13_reg_2086;
assign zext_ln172_13_fu_1586_p1 = offset_13_reg_2086;
assign zext_ln172_8_fu_1489_p1 = offset_12_reg_2003;
assign zext_ln172_9_fu_1298_p1 = offset_12_reg_2003;
assign zext_ln172_fu_1210_p1 = hi_fu_1201_p4;
assign zext_ln174_fu_1114_p1 = ap_sig_allocacmp_tid;
assign zext_ln175_1_fu_1413_p1 = offset_reg_2058;
assign zext_ln175_2_fu_1193_p1 = offset_fu_1190_p1;
assign zext_ln175_3_fu_1197_p1 = offset_fu_1190_p1;
assign zext_ln175_fu_1565_p1 = offset_reg_2058;
assign zext_ln176_1_fu_1381_p1 = offset_13_fu_1373_p3;
assign zext_ln176_2_fu_1401_p1 = or_ln174_2_fu_1393_p3;
assign zext_ln176_fu_1148_p1 = offset_12_fu_1140_p3;
assign zext_ln179_1_fu_1507_p1 = lshr_ln179_1_fu_1497_p4;
assign zext_ln179_2_fu_1801_p1 = lshr_ln179_2_fu_1791_p4;
assign zext_ln179_3_fu_1874_p1 = lshr_ln179_3_fu_1864_p4;
assign zext_ln179_fu_1431_p1 = lshr_ln11_fu_1421_p4;
assign zext_ln180_1_fu_1605_p1 = lshr_ln180_2_fu_1595_p4;
assign zext_ln180_2_fu_1711_p1 = lshr_ln180_3_fu_1701_p4;
assign zext_ln180_fu_1230_p1 = zext_ln_fu_1222_p3;
assign zext_ln181_1_fu_1528_p1 = lshr_ln181_1_fu_1518_p4;
assign zext_ln181_2_fu_1822_p1 = lshr_ln181_2_fu_1812_p4;
assign zext_ln181_3_fu_1895_p1 = lshr_ln181_3_fu_1885_p4;
assign zext_ln181_fu_1452_p1 = lshr_ln12_fu_1442_p4;
assign zext_ln182_1_fu_1320_p1 = lshr_ln182_1_fu_1310_p4;
assign zext_ln182_2_fu_1627_p1 = lshr_ln182_2_fu_1617_p4;
assign zext_ln182_3_fu_1733_p1 = lshr_ln182_3_fu_1723_p4;
assign zext_ln182_fu_1254_p1 = lshr_ln13_fu_1244_p4;
assign zext_ln183_1_fu_1537_p1 = $unsigned(sext_ln183_1_fu_1534_p1);
assign zext_ln183_2_fu_1831_p1 = $unsigned(sext_ln183_2_fu_1828_p1);
assign zext_ln183_3_fu_1916_p1 = lshr_ln183_3_fu_1906_p4;
assign zext_ln183_fu_1461_p1 = $unsigned(sext_ln183_fu_1458_p1);
assign zext_ln184_1_fu_1358_p1 = lshr_ln184_1_fu_1348_p4;
assign zext_ln184_2_fu_1665_p1 = lshr_ln184_2_fu_1655_p4;
assign zext_ln184_3_fu_1755_p1 = lshr_ln184_3_fu_1745_p4;
assign zext_ln184_fu_1292_p1 = lshr_ln14_fu_1282_p4;
assign zext_ln185_1_fu_1559_p1 = lshr_ln185_1_fu_1549_p4;
assign zext_ln185_2_fu_1853_p1 = lshr_ln185_2_fu_1843_p4;
assign zext_ln185_3_fu_1937_p1 = lshr_ln185_3_fu_1927_p4;
assign zext_ln185_fu_1483_p1 = lshr_ln15_fu_1473_p4;
assign zext_ln_fu_1222_p3 = {{1'd1}, {hi_fu_1201_p4}};
always @ (posedge ap_clk) begin
    offset_12_reg_2003[0] <= 1'b1;
    zext_ln175_3_reg_2064[8:6] <= 3'b000;
    zext_ln172_10_reg_2075[0] <= 1'b1;
    zext_ln172_10_reg_2075[8:6] <= 3'b000;
    offset_13_reg_2086[1:0] <= 2'b10;
    smem_2_addr_4_reg_2098[6:3] <= 4'b0000;
    smem_6_addr_4_reg_2103[6:3] <= 4'b0000;
    smem_3_addr_4_reg_2148[6:3] <= 4'b0000;
    smem_7_addr_4_reg_2153[6:3] <= 4'b0000;
    zext_ln172_13_reg_2241[1:0] <= 2'b10;
    zext_ln172_13_reg_2241[8:6] <= 3'b000;
end
endmodule 