module fft1D_512_fft1D_512_Pipeline_loop4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_24_address0,smem_24_ce0,smem_24_we0,smem_24_d0,smem_23_address0,smem_23_ce0,smem_23_we0,smem_23_d0,smem_22_address0,smem_22_ce0,smem_22_we0,smem_22_d0,smem_21_address0,smem_21_ce0,smem_21_we0,smem_21_d0,smem_20_address0,smem_20_ce0,smem_20_we0,smem_20_d0,smem_19_address0,smem_19_ce0,smem_19_we0,smem_19_d0,smem_18_address0,smem_18_ce0,smem_18_we0,smem_18_d0,smem_17_address0,smem_17_ce0,smem_17_we0,smem_17_d0,smem_16_address0,smem_16_ce0,smem_16_we0,smem_16_d0,smem_15_address0,smem_15_ce0,smem_15_we0,smem_15_d0,smem_14_address0,smem_14_ce0,smem_14_we0,smem_14_d0,smem_13_address0,smem_13_ce0,smem_13_we0,smem_13_d0,smem_address0,smem_ce0,smem_we0,smem_d0,DATA_y_address0,DATA_y_ce0,DATA_y_q0,DATA_y_address1,DATA_y_ce1,DATA_y_q1,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_q0,DATA_y_1_address1,DATA_y_1_ce1,DATA_y_1_q1,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_q0,DATA_y_2_address1,DATA_y_2_ce1,DATA_y_2_q1,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_q0,DATA_y_3_address1,DATA_y_3_ce1,DATA_y_3_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] smem_24_address0;
output   smem_24_ce0;
output   smem_24_we0;
output  [63:0] smem_24_d0;
output  [5:0] smem_23_address0;
output   smem_23_ce0;
output   smem_23_we0;
output  [63:0] smem_23_d0;
output  [5:0] smem_22_address0;
output   smem_22_ce0;
output   smem_22_we0;
output  [63:0] smem_22_d0;
output  [5:0] smem_21_address0;
output   smem_21_ce0;
output   smem_21_we0;
output  [63:0] smem_21_d0;
output  [5:0] smem_20_address0;
output   smem_20_ce0;
output   smem_20_we0;
output  [63:0] smem_20_d0;
output  [5:0] smem_19_address0;
output   smem_19_ce0;
output   smem_19_we0;
output  [63:0] smem_19_d0;
output  [5:0] smem_18_address0;
output   smem_18_ce0;
output   smem_18_we0;
output  [63:0] smem_18_d0;
output  [5:0] smem_17_address0;
output   smem_17_ce0;
output   smem_17_we0;
output  [63:0] smem_17_d0;
output  [5:0] smem_16_address0;
output   smem_16_ce0;
output   smem_16_we0;
output  [63:0] smem_16_d0;
output  [5:0] smem_15_address0;
output   smem_15_ce0;
output   smem_15_we0;
output  [63:0] smem_15_d0;
output  [5:0] smem_14_address0;
output   smem_14_ce0;
output   smem_14_we0;
output  [63:0] smem_14_d0;
output  [5:0] smem_13_address0;
output   smem_13_ce0;
output   smem_13_we0;
output  [63:0] smem_13_d0;
output  [5:0] smem_address0;
output   smem_ce0;
output   smem_we0;
output  [63:0] smem_d0;
output  [6:0] DATA_y_address0;
output   DATA_y_ce0;
input  [63:0] DATA_y_q0;
output  [6:0] DATA_y_address1;
output   DATA_y_ce1;
input  [63:0] DATA_y_q1;
output  [6:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
input  [63:0] DATA_y_1_q0;
output  [6:0] DATA_y_1_address1;
output   DATA_y_1_ce1;
input  [63:0] DATA_y_1_q1;
output  [6:0] DATA_y_2_address0;
output   DATA_y_2_ce0;
input  [63:0] DATA_y_2_q0;
output  [6:0] DATA_y_2_address1;
output   DATA_y_2_ce1;
input  [63:0] DATA_y_2_q1;
output  [6:0] DATA_y_3_address0;
output   DATA_y_3_ce0;
input  [63:0] DATA_y_3_q0;
output  [6:0] DATA_y_3_address1;
output   DATA_y_3_ce1;
input  [63:0] DATA_y_3_q1;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln204_fu_1247_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_reg_1629;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_reg_1629_pp0_iter1_reg;
reg   [6:0] tid_reg_1629_pp0_iter2_reg;
reg   [6:0] tid_reg_1629_pp0_iter3_reg;
reg   [6:0] tid_reg_1629_pp0_iter4_reg;
reg   [6:0] tid_reg_1629_pp0_iter5_reg;
reg   [6:0] tid_reg_1629_pp0_iter6_reg;
reg   [6:0] tid_reg_1629_pp0_iter7_reg;
reg   [6:0] tid_reg_1629_pp0_iter8_reg;
wire   [5:0] offset_fu_1259_p1;
reg   [5:0] offset_reg_1638;
reg   [5:0] offset_reg_1638_pp0_iter1_reg;
reg   [5:0] offset_reg_1638_pp0_iter2_reg;
reg   [5:0] offset_reg_1638_pp0_iter3_reg;
reg   [5:0] offset_reg_1638_pp0_iter4_reg;
reg   [5:0] offset_reg_1638_pp0_iter5_reg;
reg   [5:0] offset_reg_1638_pp0_iter6_reg;
reg   [5:0] offset_reg_1638_pp0_iter7_reg;
reg   [5:0] offset_reg_1638_pp0_iter8_reg;
wire   [8:0] zext_ln172_14_fu_1280_p1;
reg   [8:0] zext_ln172_14_reg_1648;
reg   [2:0] tmp_reg_1654;
reg   [2:0] tmp_reg_1654_pp0_iter8_reg;
reg   [2:0] tmp_reg_1654_pp0_iter9_reg;
reg   [4:0] tmp_80_reg_1659;
reg   [4:0] tmp_80_reg_1659_pp0_iter8_reg;
reg   [4:0] tmp_80_reg_1659_pp0_iter9_reg;
wire   [7:0] add_ln214_fu_1328_p2;
reg   [7:0] add_ln214_reg_1664;
wire   [8:0] add_ln210_fu_1334_p2;
reg   [8:0] add_ln210_reg_1669;
wire   [8:0] add_ln212_fu_1339_p2;
reg   [8:0] add_ln212_reg_1674;
reg   [5:0] tmp_81_reg_1679;
reg   [5:0] tmp_81_reg_1679_pp0_iter9_reg;
wire   [3:0] trunc_ln172_fu_1367_p1;
reg   [3:0] trunc_ln172_reg_1684;
reg   [5:0] tmp_77_reg_1698;
reg   [5:0] tmp_79_reg_1713;
wire   [63:0] zext_ln209_fu_1376_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln211_1_fu_1410_p1;
wire   [63:0] zext_ln172_2_fu_1437_p1;
wire   [63:0] zext_ln210_fu_1453_p1;
wire   [63:0] zext_ln211_fu_1478_p1;
wire   [63:0] zext_ln212_fu_1495_p1;
wire   [63:0] zext_ln213_fu_1511_p1;
wire   [63:0] zext_ln214_fu_1527_p1;
wire   [63:0] zext_ln215_fu_1552_p1;
wire   [63:0] zext_ln216_fu_1578_p1;
reg   [6:0] tid_3_fu_134;
wire   [6:0] add_ln204_fu_1253_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid;
reg    DATA_y_ce1_local;
reg    DATA_y_ce0_local;
reg    DATA_y_1_ce1_local;
reg    DATA_y_1_ce0_local;
reg    DATA_y_2_ce1_local;
reg    DATA_y_2_ce0_local;
reg    DATA_y_3_ce1_local;
reg    DATA_y_3_ce0_local;
reg    smem_23_we0_local;
reg   [63:0] smem_23_d0_local;
reg    smem_23_ce0_local;
reg   [5:0] smem_23_address0_local;
reg    smem_14_we0_local;
reg   [63:0] smem_14_d0_local;
reg    smem_14_ce0_local;
reg   [5:0] smem_14_address0_local;
reg    smem_24_we0_local;
reg   [63:0] smem_24_d0_local;
reg    smem_24_ce0_local;
reg   [5:0] smem_24_address0_local;
reg    smem_15_we0_local;
reg   [63:0] smem_15_d0_local;
reg    smem_15_ce0_local;
reg   [5:0] smem_15_address0_local;
reg    smem_we0_local;
reg   [63:0] smem_d0_local;
reg    smem_ce0_local;
reg   [5:0] smem_address0_local;
reg    smem_16_we0_local;
reg   [63:0] smem_16_d0_local;
reg    smem_16_ce0_local;
reg   [5:0] smem_16_address0_local;
reg    smem_13_we0_local;
reg   [63:0] smem_13_d0_local;
reg    smem_13_ce0_local;
reg   [5:0] smem_13_address0_local;
reg    smem_17_we0_local;
reg   [63:0] smem_17_d0_local;
reg    smem_17_ce0_local;
reg   [5:0] smem_17_address0_local;
reg    smem_22_we0_local;
reg   [63:0] smem_22_d0_local;
reg    smem_22_ce0_local;
reg   [5:0] smem_22_address0_local;
reg    smem_21_we0_local;
reg   [63:0] smem_21_d0_local;
reg    smem_21_ce0_local;
reg   [5:0] smem_21_address0_local;
reg    smem_20_we0_local;
reg   [63:0] smem_20_d0_local;
reg    smem_20_ce0_local;
reg   [5:0] smem_20_address0_local;
reg    smem_19_we0_local;
reg   [63:0] smem_19_d0_local;
reg    smem_19_ce0_local;
reg   [5:0] smem_19_address0_local;
reg    smem_18_we0_local;
reg   [63:0] smem_18_d0_local;
reg    smem_18_ce0_local;
reg   [5:0] smem_18_address0_local;
wire   [5:0] grp_fu_1263_p0;
wire   [4:0] grp_fu_1263_p1;
wire   [5:0] mul_ln172_2_fu_1286_p0;
wire   [7:0] mul_ln172_2_fu_1286_p1;
wire   [12:0] mul_ln172_2_fu_1286_p2;
wire   [7:0] zext_ln172_fu_1277_p1;
wire   [7:0] add_ln213_fu_1302_p2;
wire   [7:0] mul_ln213_fu_1312_p0;
wire   [9:0] mul_ln213_fu_1312_p1;
wire   [16:0] mul_ln213_fu_1312_p2;
wire  signed [8:0] sext_ln214_fu_1344_p1;
wire   [8:0] mul_ln214_fu_1351_p0;
wire   [10:0] mul_ln214_fu_1351_p1;
wire   [18:0] mul_ln214_fu_1351_p2;
wire   [3:0] grp_fu_1263_p2;
wire   [6:0] shl_ln209_fu_1371_p2;
wire   [8:0] mul_ln210_fu_1387_p0;
wire   [10:0] mul_ln210_fu_1387_p1;
wire   [18:0] mul_ln210_fu_1387_p2;
wire   [6:0] or_ln3_fu_1403_p3;
wire   [8:0] mul_ln212_fu_1421_p0;
wire   [10:0] mul_ln212_fu_1421_p1;
wire   [18:0] mul_ln212_fu_1421_p2;
wire   [16:0] tmp_78_fu_1469_p1;
wire  signed [16:0] grp_fu_1595_p3;
wire   [4:0] tmp_78_fu_1469_p4;
wire   [18:0] tmp_82_fu_1543_p1;
wire  signed [18:0] grp_fu_1604_p3;
wire   [5:0] tmp_82_fu_1543_p4;
wire   [20:0] tmp_83_fu_1569_p1;
wire  signed [20:0] grp_fu_1613_p3;
wire   [6:0] tmp_83_fu_1569_p4;
wire   [5:0] grp_fu_1595_p0;
wire   [6:0] grp_fu_1595_p1;
wire   [8:0] grp_fu_1595_p2;
wire   [5:0] grp_fu_1604_p0;
wire   [7:0] grp_fu_1604_p1;
wire   [9:0] grp_fu_1604_p2;
wire   [5:0] grp_fu_1613_p0;
wire   [8:0] grp_fu_1613_p1;
wire   [10:0] grp_fu_1613_p2;
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
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [8:0] grp_fu_1604_p00;
wire   [9:0] grp_fu_1613_p00;
wire   [12:0] mul_ln172_2_fu_1286_p00;
wire   [18:0] mul_ln210_fu_1387_p00;
wire   [18:0] mul_ln212_fu_1421_p00;
wire   [16:0] mul_ln213_fu_1312_p00;
wire   [18:0] mul_ln214_fu_1351_p00;
reg    ap_condition_513;
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
#0 tid_3_fu_134 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_6ns_5ns_4_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_6ns_5ns_4_10_1_U143(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1263_p0),.din1(grp_fu_1263_p1),.ce(1'b1),.dout(grp_fu_1263_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U144(.din0(mul_ln172_2_fu_1286_p0),.din1(mul_ln172_2_fu_1286_p1),.dout(mul_ln172_2_fu_1286_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U145(.din0(mul_ln213_fu_1312_p0),.din1(mul_ln213_fu_1312_p1),.dout(mul_ln213_fu_1312_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U146(.din0(mul_ln214_fu_1351_p0),.din1(mul_ln214_fu_1351_p1),.dout(mul_ln214_fu_1351_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U147(.din0(mul_ln210_fu_1387_p0),.din1(mul_ln210_fu_1387_p1),.dout(mul_ln210_fu_1387_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U148(.din0(mul_ln212_fu_1421_p0),.din1(mul_ln212_fu_1421_p1),.dout(mul_ln212_fu_1421_p2));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U149(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1595_p0),.din1(grp_fu_1595_p1),.din2(grp_fu_1595_p2),.ce(1'b1),.dout(grp_fu_1595_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U150(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1604_p0),.din1(grp_fu_1604_p1),.din2(grp_fu_1604_p2),.ce(1'b1),.dout(grp_fu_1604_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U151(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1613_p0),.din1(grp_fu_1613_p1),.din2(grp_fu_1613_p2),.ce(1'b1),.dout(grp_fu_1613_p3));
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
        end else if (((ap_loop_exit_ready_pp0_iter9_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        if (((icmp_ln204_fu_1247_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            tid_3_fu_134 <= add_ln204_fu_1253_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            tid_3_fu_134 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln210_reg_1669 <= add_ln210_fu_1334_p2;
        add_ln212_reg_1674 <= add_ln212_fu_1339_p2;
        add_ln214_reg_1664 <= add_ln214_fu_1328_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        offset_reg_1638_pp0_iter2_reg <= offset_reg_1638_pp0_iter1_reg;
        offset_reg_1638_pp0_iter3_reg <= offset_reg_1638_pp0_iter2_reg;
        offset_reg_1638_pp0_iter4_reg <= offset_reg_1638_pp0_iter3_reg;
        offset_reg_1638_pp0_iter5_reg <= offset_reg_1638_pp0_iter4_reg;
        offset_reg_1638_pp0_iter6_reg <= offset_reg_1638_pp0_iter5_reg;
        offset_reg_1638_pp0_iter7_reg <= offset_reg_1638_pp0_iter6_reg;
        offset_reg_1638_pp0_iter8_reg <= offset_reg_1638_pp0_iter7_reg;
        tid_reg_1629_pp0_iter2_reg <= tid_reg_1629_pp0_iter1_reg;
        tid_reg_1629_pp0_iter3_reg <= tid_reg_1629_pp0_iter2_reg;
        tid_reg_1629_pp0_iter4_reg <= tid_reg_1629_pp0_iter3_reg;
        tid_reg_1629_pp0_iter5_reg <= tid_reg_1629_pp0_iter4_reg;
        tid_reg_1629_pp0_iter6_reg <= tid_reg_1629_pp0_iter5_reg;
        tid_reg_1629_pp0_iter7_reg <= tid_reg_1629_pp0_iter6_reg;
        tid_reg_1629_pp0_iter8_reg <= tid_reg_1629_pp0_iter7_reg;
        tmp_77_reg_1698 <= {{mul_ln210_fu_1387_p2[18:13]}};
        tmp_79_reg_1713 <= {{mul_ln212_fu_1421_p2[18:13]}};
        tmp_80_reg_1659 <= {{mul_ln213_fu_1312_p2[16:12]}};
        tmp_80_reg_1659_pp0_iter8_reg <= tmp_80_reg_1659;
        tmp_80_reg_1659_pp0_iter9_reg <= tmp_80_reg_1659_pp0_iter8_reg;
        tmp_81_reg_1679 <= {{mul_ln214_fu_1351_p2[18:13]}};
        tmp_81_reg_1679_pp0_iter9_reg <= tmp_81_reg_1679;
        tmp_reg_1654 <= {{mul_ln172_2_fu_1286_p2[12:10]}};
        tmp_reg_1654_pp0_iter8_reg <= tmp_reg_1654;
        tmp_reg_1654_pp0_iter9_reg <= tmp_reg_1654_pp0_iter8_reg;
        trunc_ln172_reg_1684 <= trunc_ln172_fu_1367_p1;
        zext_ln172_14_reg_1648[5 : 0] <= zext_ln172_14_fu_1280_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        offset_reg_1638 <= offset_fu_1259_p1;
        offset_reg_1638_pp0_iter1_reg <= offset_reg_1638;
        tid_reg_1629 <= ap_sig_allocacmp_tid;
        tid_reg_1629_pp0_iter1_reg <= tid_reg_1629;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        DATA_y_1_ce1_local = 1'b1;
    end else begin
        DATA_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        DATA_y_2_ce0_local = 1'b1;
    end else begin
        DATA_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        DATA_y_2_ce1_local = 1'b1;
    end else begin
        DATA_y_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        DATA_y_3_ce0_local = 1'b1;
    end else begin
        DATA_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        DATA_y_3_ce1_local = 1'b1;
    end else begin
        DATA_y_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        DATA_y_ce1_local = 1'b1;
    end else begin
        DATA_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln204_fu_1247_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter9_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_tid = 7'd0;
    end else begin
        ap_sig_allocacmp_tid = tid_3_fu_134;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_513)) begin
            smem_13_address0_local = zext_ln213_fu_1511_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd0)) begin
            smem_13_address0_local = zext_ln211_fu_1478_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd1)) begin
            smem_13_address0_local = zext_ln172_2_fu_1437_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd7)) begin
            smem_13_address0_local = zext_ln216_fu_1578_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd8)) begin
            smem_13_address0_local = zext_ln214_fu_1527_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd9)) begin
            smem_13_address0_local = zext_ln212_fu_1495_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd10)) begin
            smem_13_address0_local = zext_ln210_fu_1453_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd11)) begin
            smem_13_address0_local = zext_ln215_fu_1552_p1;
        end else begin
            smem_13_address0_local = 'bx;
        end
    end else begin
        smem_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & ((trunc_ln172_reg_1684 == 4'd12) | ((trunc_ln172_reg_1684 == 4'd13) | ((trunc_ln172_reg_1684 == 4'd14) | (trunc_ln172_reg_1684 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd11)))) begin
        smem_13_ce0_local = 1'b1;
    end else begin
        smem_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_513)) begin
            smem_13_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd0)) begin
            smem_13_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd1)) begin
            smem_13_d0_local = DATA_y_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd7)) begin
            smem_13_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd8)) begin
            smem_13_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd9)) begin
            smem_13_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd10)) begin
            smem_13_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd11)) begin
            smem_13_d0_local = DATA_y_2_q0;
        end else begin
            smem_13_d0_local = 'bx;
        end
    end else begin
        smem_13_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & ((trunc_ln172_reg_1684 == 4'd12) | ((trunc_ln172_reg_1684 == 4'd13) | ((trunc_ln172_reg_1684 == 4'd14) | (trunc_ln172_reg_1684 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd11)))) begin
        smem_13_we0_local = 1'b1;
    end else begin
        smem_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_513)) begin
            smem_14_address0_local = zext_ln215_fu_1552_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd0)) begin
            smem_14_address0_local = zext_ln213_fu_1511_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd1)) begin
            smem_14_address0_local = zext_ln211_fu_1478_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd2)) begin
            smem_14_address0_local = zext_ln172_2_fu_1437_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd8)) begin
            smem_14_address0_local = zext_ln216_fu_1578_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd9)) begin
            smem_14_address0_local = zext_ln214_fu_1527_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd10)) begin
            smem_14_address0_local = zext_ln212_fu_1495_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd11)) begin
            smem_14_address0_local = zext_ln210_fu_1453_p1;
        end else begin
            smem_14_address0_local = 'bx;
        end
    end else begin
        smem_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & ((trunc_ln172_reg_1684 == 4'd12) | ((trunc_ln172_reg_1684 == 4'd13) | ((trunc_ln172_reg_1684 == 4'd14) | (trunc_ln172_reg_1684 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd11)))) begin
        smem_14_ce0_local = 1'b1;
    end else begin
        smem_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_513)) begin
            smem_14_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd0)) begin
            smem_14_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd1)) begin
            smem_14_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd2)) begin
            smem_14_d0_local = DATA_y_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd8)) begin
            smem_14_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd9)) begin
            smem_14_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd10)) begin
            smem_14_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd11)) begin
            smem_14_d0_local = DATA_y_1_q1;
        end else begin
            smem_14_d0_local = 'bx;
        end
    end else begin
        smem_14_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & ((trunc_ln172_reg_1684 == 4'd12) | ((trunc_ln172_reg_1684 == 4'd13) | ((trunc_ln172_reg_1684 == 4'd14) | (trunc_ln172_reg_1684 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd11)))) begin
        smem_14_we0_local = 1'b1;
    end else begin
        smem_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_513)) begin
            smem_15_address0_local = zext_ln210_fu_1453_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd0)) begin
            smem_15_address0_local = zext_ln215_fu_1552_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd1)) begin
            smem_15_address0_local = zext_ln213_fu_1511_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd2)) begin
            smem_15_address0_local = zext_ln211_fu_1478_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd3)) begin
            smem_15_address0_local = zext_ln172_2_fu_1437_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd9)) begin
            smem_15_address0_local = zext_ln216_fu_1578_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd10)) begin
            smem_15_address0_local = zext_ln214_fu_1527_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd11)) begin
            smem_15_address0_local = zext_ln212_fu_1495_p1;
        end else begin
            smem_15_address0_local = 'bx;
        end
    end else begin
        smem_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & ((trunc_ln172_reg_1684 == 4'd12) | ((trunc_ln172_reg_1684 == 4'd13) | ((trunc_ln172_reg_1684 == 4'd14) | (trunc_ln172_reg_1684 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd11)))) begin
        smem_15_ce0_local = 1'b1;
    end else begin
        smem_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_513)) begin
            smem_15_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd0)) begin
            smem_15_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd1)) begin
            smem_15_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd2)) begin
            smem_15_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd3)) begin
            smem_15_d0_local = DATA_y_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd9)) begin
            smem_15_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd10)) begin
            smem_15_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd11)) begin
            smem_15_d0_local = DATA_y_1_q0;
        end else begin
            smem_15_d0_local = 'bx;
        end
    end else begin
        smem_15_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & ((trunc_ln172_reg_1684 == 4'd12) | ((trunc_ln172_reg_1684 == 4'd13) | ((trunc_ln172_reg_1684 == 4'd14) | (trunc_ln172_reg_1684 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd11)))) begin
        smem_15_we0_local = 1'b1;
    end else begin
        smem_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_513)) begin
            smem_16_address0_local = zext_ln212_fu_1495_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd0)) begin
            smem_16_address0_local = zext_ln210_fu_1453_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd1)) begin
            smem_16_address0_local = zext_ln215_fu_1552_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd2)) begin
            smem_16_address0_local = zext_ln213_fu_1511_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd3)) begin
            smem_16_address0_local = zext_ln211_fu_1478_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd4)) begin
            smem_16_address0_local = zext_ln172_2_fu_1437_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd10)) begin
            smem_16_address0_local = zext_ln216_fu_1578_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd11)) begin
            smem_16_address0_local = zext_ln214_fu_1527_p1;
        end else begin
            smem_16_address0_local = 'bx;
        end
    end else begin
        smem_16_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & ((trunc_ln172_reg_1684 == 4'd12) | ((trunc_ln172_reg_1684 == 4'd13) | ((trunc_ln172_reg_1684 == 4'd14) | (trunc_ln172_reg_1684 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd11)))) begin
        smem_16_ce0_local = 1'b1;
    end else begin
        smem_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_513)) begin
            smem_16_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd0)) begin
            smem_16_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd1)) begin
            smem_16_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd2)) begin
            smem_16_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd3)) begin
            smem_16_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd4)) begin
            smem_16_d0_local = DATA_y_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd10)) begin
            smem_16_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd11)) begin
            smem_16_d0_local = DATA_y_3_q1;
        end else begin
            smem_16_d0_local = 'bx;
        end
    end else begin
        smem_16_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & ((trunc_ln172_reg_1684 == 4'd12) | ((trunc_ln172_reg_1684 == 4'd13) | ((trunc_ln172_reg_1684 == 4'd14) | (trunc_ln172_reg_1684 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd11)))) begin
        smem_16_we0_local = 1'b1;
    end else begin
        smem_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_513)) begin
            smem_17_address0_local = zext_ln214_fu_1527_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd0)) begin
            smem_17_address0_local = zext_ln212_fu_1495_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd1)) begin
            smem_17_address0_local = zext_ln210_fu_1453_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd2)) begin
            smem_17_address0_local = zext_ln215_fu_1552_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd3)) begin
            smem_17_address0_local = zext_ln213_fu_1511_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd4)) begin
            smem_17_address0_local = zext_ln211_fu_1478_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd5)) begin
            smem_17_address0_local = zext_ln172_2_fu_1437_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd11)) begin
            smem_17_address0_local = zext_ln216_fu_1578_p1;
        end else begin
            smem_17_address0_local = 'bx;
        end
    end else begin
        smem_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & ((trunc_ln172_reg_1684 == 4'd12) | ((trunc_ln172_reg_1684 == 4'd13) | ((trunc_ln172_reg_1684 == 4'd14) | (trunc_ln172_reg_1684 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd11)))) begin
        smem_17_ce0_local = 1'b1;
    end else begin
        smem_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_513)) begin
            smem_17_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd0)) begin
            smem_17_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd1)) begin
            smem_17_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd2)) begin
            smem_17_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd3)) begin
            smem_17_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd4)) begin
            smem_17_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd5)) begin
            smem_17_d0_local = DATA_y_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd11)) begin
            smem_17_d0_local = DATA_y_3_q0;
        end else begin
            smem_17_d0_local = 'bx;
        end
    end else begin
        smem_17_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & ((trunc_ln172_reg_1684 == 4'd12) | ((trunc_ln172_reg_1684 == 4'd13) | ((trunc_ln172_reg_1684 == 4'd14) | (trunc_ln172_reg_1684 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd11)))) begin
        smem_17_we0_local = 1'b1;
    end else begin
        smem_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_513)) begin
            smem_18_address0_local = zext_ln216_fu_1578_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd0)) begin
            smem_18_address0_local = zext_ln214_fu_1527_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd1)) begin
            smem_18_address0_local = zext_ln212_fu_1495_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd2)) begin
            smem_18_address0_local = zext_ln210_fu_1453_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd3)) begin
            smem_18_address0_local = zext_ln215_fu_1552_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd4)) begin
            smem_18_address0_local = zext_ln213_fu_1511_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd5)) begin
            smem_18_address0_local = zext_ln211_fu_1478_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd6)) begin
            smem_18_address0_local = zext_ln172_2_fu_1437_p1;
        end else begin
            smem_18_address0_local = 'bx;
        end
    end else begin
        smem_18_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & ((trunc_ln172_reg_1684 == 4'd12) | ((trunc_ln172_reg_1684 == 4'd13) | ((trunc_ln172_reg_1684 == 4'd14) | (trunc_ln172_reg_1684 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd6)))) begin
        smem_18_ce0_local = 1'b1;
    end else begin
        smem_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_513)) begin
            smem_18_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd0)) begin
            smem_18_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd1)) begin
            smem_18_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd2)) begin
            smem_18_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd3)) begin
            smem_18_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd4)) begin
            smem_18_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd5)) begin
            smem_18_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd6)) begin
            smem_18_d0_local = DATA_y_q1;
        end else begin
            smem_18_d0_local = 'bx;
        end
    end else begin
        smem_18_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & ((trunc_ln172_reg_1684 == 4'd12) | ((trunc_ln172_reg_1684 == 4'd13) | ((trunc_ln172_reg_1684 == 4'd14) | (trunc_ln172_reg_1684 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd6)))) begin
        smem_18_we0_local = 1'b1;
    end else begin
        smem_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((trunc_ln172_reg_1684 == 4'd0)) begin
            smem_19_address0_local = zext_ln216_fu_1578_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd1)) begin
            smem_19_address0_local = zext_ln214_fu_1527_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd2)) begin
            smem_19_address0_local = zext_ln212_fu_1495_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd3)) begin
            smem_19_address0_local = zext_ln210_fu_1453_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd4)) begin
            smem_19_address0_local = zext_ln215_fu_1552_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd5)) begin
            smem_19_address0_local = zext_ln213_fu_1511_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd6)) begin
            smem_19_address0_local = zext_ln211_fu_1478_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd7)) begin
            smem_19_address0_local = zext_ln172_2_fu_1437_p1;
        end else begin
            smem_19_address0_local = 'bx;
        end
    end else begin
        smem_19_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd7)))) begin
        smem_19_ce0_local = 1'b1;
    end else begin
        smem_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((trunc_ln172_reg_1684 == 4'd0)) begin
            smem_19_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd1)) begin
            smem_19_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd2)) begin
            smem_19_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd3)) begin
            smem_19_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd4)) begin
            smem_19_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd5)) begin
            smem_19_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd6)) begin
            smem_19_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd7)) begin
            smem_19_d0_local = DATA_y_q1;
        end else begin
            smem_19_d0_local = 'bx;
        end
    end else begin
        smem_19_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd7)))) begin
        smem_19_we0_local = 1'b1;
    end else begin
        smem_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((trunc_ln172_reg_1684 == 4'd1)) begin
            smem_20_address0_local = zext_ln216_fu_1578_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd2)) begin
            smem_20_address0_local = zext_ln214_fu_1527_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd3)) begin
            smem_20_address0_local = zext_ln212_fu_1495_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd4)) begin
            smem_20_address0_local = zext_ln210_fu_1453_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd5)) begin
            smem_20_address0_local = zext_ln215_fu_1552_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd6)) begin
            smem_20_address0_local = zext_ln213_fu_1511_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd7)) begin
            smem_20_address0_local = zext_ln211_fu_1478_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd8)) begin
            smem_20_address0_local = zext_ln172_2_fu_1437_p1;
        end else begin
            smem_20_address0_local = 'bx;
        end
    end else begin
        smem_20_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd8)))) begin
        smem_20_ce0_local = 1'b1;
    end else begin
        smem_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((trunc_ln172_reg_1684 == 4'd1)) begin
            smem_20_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd2)) begin
            smem_20_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd3)) begin
            smem_20_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd4)) begin
            smem_20_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd5)) begin
            smem_20_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd6)) begin
            smem_20_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd7)) begin
            smem_20_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd8)) begin
            smem_20_d0_local = DATA_y_q1;
        end else begin
            smem_20_d0_local = 'bx;
        end
    end else begin
        smem_20_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd8)))) begin
        smem_20_we0_local = 1'b1;
    end else begin
        smem_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((trunc_ln172_reg_1684 == 4'd2)) begin
            smem_21_address0_local = zext_ln216_fu_1578_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd3)) begin
            smem_21_address0_local = zext_ln214_fu_1527_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd4)) begin
            smem_21_address0_local = zext_ln212_fu_1495_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd5)) begin
            smem_21_address0_local = zext_ln210_fu_1453_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd6)) begin
            smem_21_address0_local = zext_ln215_fu_1552_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd7)) begin
            smem_21_address0_local = zext_ln213_fu_1511_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd8)) begin
            smem_21_address0_local = zext_ln211_fu_1478_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd9)) begin
            smem_21_address0_local = zext_ln172_2_fu_1437_p1;
        end else begin
            smem_21_address0_local = 'bx;
        end
    end else begin
        smem_21_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd9)))) begin
        smem_21_ce0_local = 1'b1;
    end else begin
        smem_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((trunc_ln172_reg_1684 == 4'd2)) begin
            smem_21_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd3)) begin
            smem_21_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd4)) begin
            smem_21_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd5)) begin
            smem_21_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd6)) begin
            smem_21_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd7)) begin
            smem_21_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd8)) begin
            smem_21_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd9)) begin
            smem_21_d0_local = DATA_y_q1;
        end else begin
            smem_21_d0_local = 'bx;
        end
    end else begin
        smem_21_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd9)))) begin
        smem_21_we0_local = 1'b1;
    end else begin
        smem_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((trunc_ln172_reg_1684 == 4'd3)) begin
            smem_22_address0_local = zext_ln216_fu_1578_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd4)) begin
            smem_22_address0_local = zext_ln214_fu_1527_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd5)) begin
            smem_22_address0_local = zext_ln212_fu_1495_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd6)) begin
            smem_22_address0_local = zext_ln210_fu_1453_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd7)) begin
            smem_22_address0_local = zext_ln215_fu_1552_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd8)) begin
            smem_22_address0_local = zext_ln213_fu_1511_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd9)) begin
            smem_22_address0_local = zext_ln211_fu_1478_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd10)) begin
            smem_22_address0_local = zext_ln172_2_fu_1437_p1;
        end else begin
            smem_22_address0_local = 'bx;
        end
    end else begin
        smem_22_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd10)))) begin
        smem_22_ce0_local = 1'b1;
    end else begin
        smem_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((trunc_ln172_reg_1684 == 4'd3)) begin
            smem_22_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd4)) begin
            smem_22_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd5)) begin
            smem_22_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd6)) begin
            smem_22_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd7)) begin
            smem_22_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd8)) begin
            smem_22_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd9)) begin
            smem_22_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd10)) begin
            smem_22_d0_local = DATA_y_q1;
        end else begin
            smem_22_d0_local = 'bx;
        end
    end else begin
        smem_22_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd10)))) begin
        smem_22_we0_local = 1'b1;
    end else begin
        smem_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((trunc_ln172_reg_1684 == 4'd4)) begin
            smem_23_address0_local = zext_ln216_fu_1578_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd5)) begin
            smem_23_address0_local = zext_ln214_fu_1527_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd6)) begin
            smem_23_address0_local = zext_ln212_fu_1495_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd7)) begin
            smem_23_address0_local = zext_ln210_fu_1453_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd8)) begin
            smem_23_address0_local = zext_ln215_fu_1552_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd9)) begin
            smem_23_address0_local = zext_ln213_fu_1511_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd10)) begin
            smem_23_address0_local = zext_ln211_fu_1478_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd11)) begin
            smem_23_address0_local = zext_ln172_2_fu_1437_p1;
        end else begin
            smem_23_address0_local = 'bx;
        end
    end else begin
        smem_23_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd11)))) begin
        smem_23_ce0_local = 1'b1;
    end else begin
        smem_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((trunc_ln172_reg_1684 == 4'd4)) begin
            smem_23_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd5)) begin
            smem_23_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd6)) begin
            smem_23_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd7)) begin
            smem_23_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd8)) begin
            smem_23_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd9)) begin
            smem_23_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd10)) begin
            smem_23_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd11)) begin
            smem_23_d0_local = DATA_y_q1;
        end else begin
            smem_23_d0_local = 'bx;
        end
    end else begin
        smem_23_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd11)))) begin
        smem_23_we0_local = 1'b1;
    end else begin
        smem_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_513)) begin
            smem_24_address0_local = zext_ln172_2_fu_1437_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd5)) begin
            smem_24_address0_local = zext_ln216_fu_1578_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd6)) begin
            smem_24_address0_local = zext_ln214_fu_1527_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd7)) begin
            smem_24_address0_local = zext_ln212_fu_1495_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd8)) begin
            smem_24_address0_local = zext_ln210_fu_1453_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd9)) begin
            smem_24_address0_local = zext_ln215_fu_1552_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd10)) begin
            smem_24_address0_local = zext_ln213_fu_1511_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd11)) begin
            smem_24_address0_local = zext_ln211_fu_1478_p1;
        end else begin
            smem_24_address0_local = 'bx;
        end
    end else begin
        smem_24_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & ((trunc_ln172_reg_1684 == 4'd12) | ((trunc_ln172_reg_1684 == 4'd13) | ((trunc_ln172_reg_1684 == 4'd14) | (trunc_ln172_reg_1684 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd11)))) begin
        smem_24_ce0_local = 1'b1;
    end else begin
        smem_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_513)) begin
            smem_24_d0_local = DATA_y_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd5)) begin
            smem_24_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd6)) begin
            smem_24_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd7)) begin
            smem_24_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd8)) begin
            smem_24_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd9)) begin
            smem_24_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd10)) begin
            smem_24_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd11)) begin
            smem_24_d0_local = DATA_y_q0;
        end else begin
            smem_24_d0_local = 'bx;
        end
    end else begin
        smem_24_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & ((trunc_ln172_reg_1684 == 4'd12) | ((trunc_ln172_reg_1684 == 4'd13) | ((trunc_ln172_reg_1684 == 4'd14) | (trunc_ln172_reg_1684 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd11)))) begin
        smem_24_we0_local = 1'b1;
    end else begin
        smem_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_513)) begin
            smem_address0_local = zext_ln211_fu_1478_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd0)) begin
            smem_address0_local = zext_ln172_2_fu_1437_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd6)) begin
            smem_address0_local = zext_ln216_fu_1578_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd7)) begin
            smem_address0_local = zext_ln214_fu_1527_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd8)) begin
            smem_address0_local = zext_ln212_fu_1495_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd9)) begin
            smem_address0_local = zext_ln210_fu_1453_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd10)) begin
            smem_address0_local = zext_ln215_fu_1552_p1;
        end else if ((trunc_ln172_reg_1684 == 4'd11)) begin
            smem_address0_local = zext_ln213_fu_1511_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & ((trunc_ln172_reg_1684 == 4'd12) | ((trunc_ln172_reg_1684 == 4'd13) | ((trunc_ln172_reg_1684 == 4'd14) | (trunc_ln172_reg_1684 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd11)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_513)) begin
            smem_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd0)) begin
            smem_d0_local = DATA_y_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd6)) begin
            smem_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd7)) begin
            smem_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd8)) begin
            smem_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd9)) begin
            smem_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_1684 == 4'd10)) begin
            smem_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_1684 == 4'd11)) begin
            smem_d0_local = DATA_y_2_q1;
        end else begin
            smem_d0_local = 'bx;
        end
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & ((trunc_ln172_reg_1684 == 4'd12) | ((trunc_ln172_reg_1684 == 4'd13) | ((trunc_ln172_reg_1684 == 4'd14) | (trunc_ln172_reg_1684 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1684 == 4'd11)))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
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
assign DATA_y_1_address0 = zext_ln211_1_fu_1410_p1;
assign DATA_y_1_address1 = zext_ln209_fu_1376_p1;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_ce1 = DATA_y_1_ce1_local;
assign DATA_y_2_address0 = zext_ln211_1_fu_1410_p1;
assign DATA_y_2_address1 = zext_ln209_fu_1376_p1;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_2_ce1 = DATA_y_2_ce1_local;
assign DATA_y_3_address0 = zext_ln211_1_fu_1410_p1;
assign DATA_y_3_address1 = zext_ln209_fu_1376_p1;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_3_ce1 = DATA_y_3_ce1_local;
assign DATA_y_address0 = zext_ln211_1_fu_1410_p1;
assign DATA_y_address1 = zext_ln209_fu_1376_p1;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_ce1 = DATA_y_ce1_local;
assign add_ln204_fu_1253_p2 = (ap_sig_allocacmp_tid + 7'd1);
assign add_ln210_fu_1334_p2 = ($signed(zext_ln172_14_reg_1648) + $signed(9'd264));
assign add_ln212_fu_1339_p2 = ($signed(zext_ln172_14_reg_1648) + $signed(9'd330));
assign add_ln213_fu_1302_p2 = ($signed(zext_ln172_fu_1277_p1) + $signed(8'd132));
assign add_ln214_fu_1328_p2 = ($signed(zext_ln172_fu_1277_p1) + $signed(8'd140));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_513 = ((trunc_ln172_reg_1684 == 4'd12) | ((trunc_ln172_reg_1684 == 4'd13) | ((trunc_ln172_reg_1684 == 4'd14) | (trunc_ln172_reg_1684 == 4'd15))));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_1263_p0 = ap_sig_allocacmp_tid[5:0];
assign grp_fu_1263_p1 = 6'd13;
assign grp_fu_1595_p0 = zext_ln172_fu_1277_p1;
assign grp_fu_1595_p1 = 8'd66;
assign grp_fu_1595_p2 = 17'd316;
assign grp_fu_1604_p0 = grp_fu_1604_p00;
assign grp_fu_1604_p00 = offset_reg_1638_pp0_iter6_reg;
assign grp_fu_1604_p1 = 9'd198;
assign grp_fu_1604_p2 = 19'd631;
assign grp_fu_1613_p0 = grp_fu_1613_p00;
assign grp_fu_1613_p00 = offset_reg_1638_pp0_iter6_reg;
assign grp_fu_1613_p1 = 10'd462;
assign grp_fu_1613_p2 = 21'd1261;
assign icmp_ln204_fu_1247_p2 = ((ap_sig_allocacmp_tid == 7'd64) ? 1'b1 : 1'b0);
assign mul_ln172_2_fu_1286_p0 = mul_ln172_2_fu_1286_p00;
assign mul_ln172_2_fu_1286_p00 = offset_reg_1638_pp0_iter6_reg;
assign mul_ln172_2_fu_1286_p1 = 13'd79;
assign mul_ln210_fu_1387_p0 = mul_ln210_fu_1387_p00;
assign mul_ln210_fu_1387_p00 = add_ln210_reg_1669;
assign mul_ln210_fu_1387_p1 = 19'd631;
assign mul_ln212_fu_1421_p0 = mul_ln212_fu_1421_p00;
assign mul_ln212_fu_1421_p00 = add_ln212_reg_1674;
assign mul_ln212_fu_1421_p1 = 19'd631;
assign mul_ln213_fu_1312_p0 = mul_ln213_fu_1312_p00;
assign mul_ln213_fu_1312_p00 = add_ln213_fu_1302_p2;
assign mul_ln213_fu_1312_p1 = 17'd316;
assign mul_ln214_fu_1351_p0 = mul_ln214_fu_1351_p00;
assign mul_ln214_fu_1351_p00 = $unsigned(sext_ln214_fu_1344_p1);
assign mul_ln214_fu_1351_p1 = 19'd631;
assign offset_fu_1259_p1 = ap_sig_allocacmp_tid[5:0];
assign or_ln3_fu_1403_p3 = {{offset_reg_1638_pp0_iter8_reg}, {1'd1}};
assign sext_ln214_fu_1344_p1 = $signed(add_ln214_reg_1664);
assign shl_ln209_fu_1371_p2 = tid_reg_1629_pp0_iter8_reg << 7'd1;
assign smem_13_address0 = smem_13_address0_local;
assign smem_13_ce0 = smem_13_ce0_local;
assign smem_13_d0 = smem_13_d0_local;
assign smem_13_we0 = smem_13_we0_local;
assign smem_14_address0 = smem_14_address0_local;
assign smem_14_ce0 = smem_14_ce0_local;
assign smem_14_d0 = smem_14_d0_local;
assign smem_14_we0 = smem_14_we0_local;
assign smem_15_address0 = smem_15_address0_local;
assign smem_15_ce0 = smem_15_ce0_local;
assign smem_15_d0 = smem_15_d0_local;
assign smem_15_we0 = smem_15_we0_local;
assign smem_16_address0 = smem_16_address0_local;
assign smem_16_ce0 = smem_16_ce0_local;
assign smem_16_d0 = smem_16_d0_local;
assign smem_16_we0 = smem_16_we0_local;
assign smem_17_address0 = smem_17_address0_local;
assign smem_17_ce0 = smem_17_ce0_local;
assign smem_17_d0 = smem_17_d0_local;
assign smem_17_we0 = smem_17_we0_local;
assign smem_18_address0 = smem_18_address0_local;
assign smem_18_ce0 = smem_18_ce0_local;
assign smem_18_d0 = smem_18_d0_local;
assign smem_18_we0 = smem_18_we0_local;
assign smem_19_address0 = smem_19_address0_local;
assign smem_19_ce0 = smem_19_ce0_local;
assign smem_19_d0 = smem_19_d0_local;
assign smem_19_we0 = smem_19_we0_local;
assign smem_20_address0 = smem_20_address0_local;
assign smem_20_ce0 = smem_20_ce0_local;
assign smem_20_d0 = smem_20_d0_local;
assign smem_20_we0 = smem_20_we0_local;
assign smem_21_address0 = smem_21_address0_local;
assign smem_21_ce0 = smem_21_ce0_local;
assign smem_21_d0 = smem_21_d0_local;
assign smem_21_we0 = smem_21_we0_local;
assign smem_22_address0 = smem_22_address0_local;
assign smem_22_ce0 = smem_22_ce0_local;
assign smem_22_d0 = smem_22_d0_local;
assign smem_22_we0 = smem_22_we0_local;
assign smem_23_address0 = smem_23_address0_local;
assign smem_23_ce0 = smem_23_ce0_local;
assign smem_23_d0 = smem_23_d0_local;
assign smem_23_we0 = smem_23_we0_local;
assign smem_24_address0 = smem_24_address0_local;
assign smem_24_ce0 = smem_24_ce0_local;
assign smem_24_d0 = smem_24_d0_local;
assign smem_24_we0 = smem_24_we0_local;
assign smem_address0 = smem_address0_local;
assign smem_ce0 = smem_ce0_local;
assign smem_d0 = smem_d0_local;
assign smem_we0 = smem_we0_local;
assign tmp_78_fu_1469_p1 = grp_fu_1595_p3;
assign tmp_78_fu_1469_p4 = {{tmp_78_fu_1469_p1[16:12]}};
assign tmp_82_fu_1543_p1 = grp_fu_1604_p3;
assign tmp_82_fu_1543_p4 = {{tmp_82_fu_1543_p1[18:13]}};
assign tmp_83_fu_1569_p1 = grp_fu_1613_p3;
assign tmp_83_fu_1569_p4 = {{tmp_83_fu_1569_p1[20:14]}};
assign trunc_ln172_fu_1367_p1 = grp_fu_1263_p2[3:0];
assign zext_ln172_14_fu_1280_p1 = offset_reg_1638_pp0_iter6_reg;
assign zext_ln172_2_fu_1437_p1 = tmp_reg_1654_pp0_iter9_reg;
assign zext_ln172_fu_1277_p1 = offset_reg_1638_pp0_iter6_reg;
assign zext_ln209_fu_1376_p1 = shl_ln209_fu_1371_p2;
assign zext_ln210_fu_1453_p1 = tmp_77_reg_1698;
assign zext_ln211_1_fu_1410_p1 = or_ln3_fu_1403_p3;
assign zext_ln211_fu_1478_p1 = tmp_78_fu_1469_p4;
assign zext_ln212_fu_1495_p1 = tmp_79_reg_1713;
assign zext_ln213_fu_1511_p1 = tmp_80_reg_1659_pp0_iter9_reg;
assign zext_ln214_fu_1527_p1 = tmp_81_reg_1679_pp0_iter9_reg;
assign zext_ln215_fu_1552_p1 = tmp_82_fu_1543_p4;
assign zext_ln216_fu_1578_p1 = tmp_83_fu_1569_p4;
always @ (posedge ap_clk) begin
    zext_ln172_14_reg_1648[8:6] <= 3'b000;
end
endmodule 