module fft1D_512_fft1D_512_Pipeline_loop2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_3_address0,smem_3_ce0,smem_3_we0,smem_3_d0,smem_2_address0,smem_2_ce0,smem_2_we0,smem_2_d0,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_address0,smem_ce0,smem_we0,smem_d0,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_address1,DATA_x_ce1,DATA_x_q1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_q1); 
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
output  [7:0] smem_3_address0;
output   smem_3_ce0;
output   smem_3_we0;
output  [63:0] smem_3_d0;
output  [7:0] smem_2_address0;
output   smem_2_ce0;
output   smem_2_we0;
output  [63:0] smem_2_d0;
output  [7:0] smem_1_address0;
output   smem_1_ce0;
output   smem_1_we0;
output  [63:0] smem_1_d0;
output  [7:0] smem_address0;
output   smem_ce0;
output   smem_we0;
output  [63:0] smem_d0;
output  [7:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [7:0] DATA_x_address1;
output   DATA_x_ce1;
input  [63:0] DATA_x_q1;
output  [7:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [7:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
input  [63:0] DATA_x_1_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_1122;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [63:0] reg_548;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_556;
reg   [6:0] tid_reg_1114;
wire   [0:0] tmp_fu_572_p3;
wire   [5:0] offset_fu_580_p1;
reg   [5:0] offset_reg_1126;
wire   [0:0] icmp_ln178_fu_632_p2;
reg   [0:0] icmp_ln178_reg_1156;
wire   [0:0] icmp_ln178_1_fu_638_p2;
reg   [0:0] icmp_ln178_1_reg_1160;
reg   [0:0] icmp_ln178_1_reg_1160_pp0_iter1_reg;
wire   [7:0] zext_ln172_7_fu_644_p1;
reg   [7:0] zext_ln172_7_reg_1164;
wire   [4:0] tmp_36_fu_686_p4;
reg   [4:0] tmp_36_reg_1170;
reg   [7:0] smem_1_addr_reg_1181;
reg   [7:0] smem_3_addr_reg_1186;
reg   [6:0] lshr_ln13_reg_1221;
wire   [9:0] trunc_ln172_3_fu_844_p1;
reg   [9:0] trunc_ln172_3_reg_1231;
reg   [5:0] trunc_ln3_reg_1241;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln178_fu_596_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln180_2_fu_610_p1;
wire   [63:0] zext_ln172_fu_656_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln180_fu_680_p1;
wire   [63:0] zext_ln178_1_fu_703_p1;
wire   [63:0] zext_ln180_3_fu_717_p1;
wire   [63:0] zext_ln179_fu_745_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln181_fu_767_p1;
wire   [63:0] zext_ln182_2_fu_780_p1;
wire   [63:0] zext_ln184_2_fu_793_p1;
wire   [63:0] zext_ln180_1_fu_864_p1;
wire   [63:0] zext_ln182_fu_895_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln184_fu_916_p1;
wire   [63:0] zext_ln179_1_fu_936_p1;
wire   [63:0] zext_ln181_1_fu_957_p1;
wire   [63:0] zext_ln182_3_fu_970_p1;
wire   [63:0] zext_ln184_3_fu_983_p1;
wire   [63:0] zext_ln183_fu_995_p1;
wire   [63:0] zext_ln185_fu_1017_p1;
wire   [63:0] zext_ln182_1_fu_1038_p1;
wire   [63:0] zext_ln184_1_fu_1059_p1;
wire   [63:0] zext_ln183_1_fu_1080_p1;
wire   [63:0] zext_ln185_1_fu_1101_p1;
reg   [6:0] tid_1_fu_116;
wire   [6:0] add_ln174_fu_870_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid;
reg    DATA_x_ce1_local;
reg   [7:0] DATA_x_address1_local;
reg    DATA_x_ce0_local;
reg   [7:0] DATA_x_address0_local;
reg    DATA_x_1_ce1_local;
reg   [7:0] DATA_x_1_address1_local;
reg    DATA_x_1_ce0_local;
reg   [7:0] DATA_x_1_address0_local;
reg    smem_2_we0_local;
reg   [63:0] smem_2_d0_local;
reg    smem_2_ce0_local;
reg   [7:0] smem_2_address0_local;
reg    smem_we0_local;
reg   [63:0] smem_d0_local;
reg    smem_ce0_local;
reg   [7:0] smem_address0_local;
reg    smem_3_we0_local;
reg   [63:0] smem_3_d0_local;
reg    smem_3_ce0_local;
reg   [7:0] smem_3_address0_local;
reg    smem_1_we0_local;
reg   [63:0] smem_1_d0_local;
reg    smem_1_ce0_local;
reg   [7:0] smem_1_address0_local;
wire   [7:0] shl_ln1_fu_588_p3;
wire   [7:0] or_ln7_fu_602_p3;
wire   [0:0] tmp_28_fu_616_p3;
wire   [1:0] trunc_ln172_fu_584_p1;
wire   [1:0] or_ln176_cast_fu_624_p3;
wire   [3:0] lshr_ln8_fu_647_p4;
wire   [7:0] add_ln180_fu_664_p2;
wire   [5:0] lshr_ln10_fu_670_p4;
wire   [7:0] shl_ln178_1_fu_695_p3;
wire   [7:0] or_ln180_1_fu_709_p3;
wire   [8:0] zext_ln172_9_fu_726_p1;
wire   [8:0] add_ln179_fu_729_p2;
wire   [6:0] lshr_ln9_fu_735_p4;
wire   [8:0] add_ln181_fu_751_p2;
wire   [6:0] lshr_ln11_fu_757_p4;
wire   [7:0] or_ln8_fu_773_p3;
wire   [7:0] or_ln9_fu_786_p3;
wire   [8:0] add_ln184_fu_799_p2;
wire   [1:0] tmp_s_fu_815_p4;
wire   [31:0] zext_ln175_fu_723_p1;
wire   [2:0] or_ln10_fu_824_p3;
wire   [31:0] offset_1_fu_832_p5;
wire   [9:0] add_ln180_1_fu_848_p2;
wire   [7:0] lshr_ln180_1_fu_854_p4;
wire   [7:0] add_ln182_fu_880_p2;
wire   [5:0] lshr_ln12_fu_885_p4;
wire   [7:0] add_ln183_fu_901_p2;
wire   [9:0] add_ln179_1_fu_921_p2;
wire   [7:0] lshr_ln179_1_fu_926_p4;
wire   [9:0] add_ln181_1_fu_942_p2;
wire   [7:0] lshr_ln181_1_fu_947_p4;
wire   [7:0] or_ln182_1_fu_963_p3;
wire   [7:0] or_ln184_1_fu_976_p3;
wire  signed [6:0] sext_ln183_fu_992_p1;
wire   [9:0] zext_ln172_6_fu_989_p1;
wire   [9:0] add_ln185_fu_1001_p2;
wire   [7:0] lshr_ln14_fu_1007_p4;
wire   [9:0] add_ln182_1_fu_1023_p2;
wire   [7:0] lshr_ln182_1_fu_1028_p4;
wire   [9:0] add_ln184_1_fu_1044_p2;
wire   [7:0] lshr_ln184_1_fu_1049_p4;
wire   [9:0] add_ln183_1_fu_1065_p2;
wire   [7:0] lshr_ln183_1_fu_1070_p4;
wire   [9:0] add_ln185_1_fu_1086_p2;
wire   [7:0] lshr_ln185_1_fu_1091_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
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
#0 tid_1_fu_116 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_1_fu_116 <= 7'd0;
    end else if (((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tid_1_fu_116 <= add_ln174_fu_870_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln178_1_reg_1160 <= icmp_ln178_1_fu_638_p2;
        icmp_ln178_1_reg_1160_pp0_iter1_reg <= icmp_ln178_1_reg_1160;
        icmp_ln178_reg_1156 <= icmp_ln178_fu_632_p2;
        offset_reg_1126 <= offset_fu_580_p1;
        tid_reg_1114 <= ap_sig_allocacmp_tid;
        tmp_reg_1122 <= ap_sig_allocacmp_tid[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        lshr_ln13_reg_1221 <= {{add_ln184_fu_799_p2[8:2]}};
        trunc_ln172_3_reg_1231 <= trunc_ln172_3_fu_844_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_548 <= DATA_x_1_q1;
        reg_556 <= DATA_x_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_addr_reg_1181[3 : 0] <= zext_ln172_fu_656_p1[3 : 0];
        smem_3_addr_reg_1186[3 : 0] <= zext_ln172_fu_656_p1[3 : 0];
        tmp_36_reg_1170 <= {{tid_reg_1114[5:1]}};
        zext_ln172_7_reg_1164[5 : 0] <= zext_ln172_7_fu_644_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        trunc_ln3_reg_1241 <= {{add_ln183_fu_901_p2[7:2]}};
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_1_address0_local = zext_ln184_3_fu_983_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_1_address0_local = zext_ln184_2_fu_793_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address0_local = zext_ln180_3_fu_717_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address0_local = zext_ln180_2_fu_610_p1;
        end else begin
            DATA_x_1_address0_local = 'bx;
        end
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_1_address1_local = zext_ln182_3_fu_970_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_1_address1_local = zext_ln182_2_fu_780_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address1_local = zext_ln178_1_fu_703_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address1_local = zext_ln178_fu_596_p1;
        end else begin
            DATA_x_1_address1_local = 'bx;
        end
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_address0_local = zext_ln184_3_fu_983_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_address0_local = zext_ln184_2_fu_793_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address0_local = zext_ln180_3_fu_717_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address0_local = zext_ln180_2_fu_610_p1;
        end else begin
            DATA_x_address0_local = 'bx;
        end
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_address1_local = zext_ln182_3_fu_970_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_address1_local = zext_ln182_2_fu_780_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address1_local = zext_ln178_1_fu_703_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address1_local = zext_ln178_fu_596_p1;
        end else begin
            DATA_x_address1_local = 'bx;
        end
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_1122 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid = 7'd0;
    end else begin
        ap_sig_allocacmp_tid = tid_1_fu_116;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln178_1_reg_1160_pp0_iter1_reg == 1'd1))) begin
        smem_1_address0_local = zext_ln183_1_fu_1080_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln178_1_reg_1160_pp0_iter1_reg == 1'd0))) begin
        smem_1_address0_local = zext_ln185_1_fu_1101_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln178_1_reg_1160 == 1'd1))) begin
        smem_1_address0_local = zext_ln182_1_fu_1038_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln178_1_reg_1160 == 1'd0))) begin
        smem_1_address0_local = zext_ln184_1_fu_1059_p1;
    end else if (((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln178_1_reg_1160 == 1'd1))) begin
        smem_1_address0_local = zext_ln179_1_fu_936_p1;
    end else if (((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln178_1_reg_1160 == 1'd0))) begin
        smem_1_address0_local = zext_ln181_1_fu_957_p1;
    end else if (((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln178_1_reg_1160 == 1'd0))) begin
        smem_1_address0_local = zext_ln180_1_fu_864_p1;
    end else if (((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln178_1_reg_1160 == 1'd1))) begin
        smem_1_address0_local = smem_1_addr_reg_1181;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln178_1_reg_1160 == 1'd1)) | ((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln178_1_reg_1160 == 1'd0)) | ((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln178_1_reg_1160 == 1'd1)) | ((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln178_1_reg_1160 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln178_1_reg_1160 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln178_1_reg_1160 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln178_1_reg_1160_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln178_1_reg_1160_pp0_iter1_reg == 1'd0)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln178_1_reg_1160 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln178_1_reg_1160_pp0_iter1_reg == 1'd1)))) begin
        smem_1_d0_local = reg_548;
    end else if ((((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln178_1_reg_1160 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln178_1_reg_1160_pp0_iter1_reg == 1'd0)))) begin
        smem_1_d0_local = reg_556;
    end else if ((((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln178_1_reg_1160 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln178_1_reg_1160 == 1'd0)))) begin
        smem_1_d0_local = DATA_x_q0;
    end else if ((((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln178_1_reg_1160 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln178_1_reg_1160 == 1'd1)))) begin
        smem_1_d0_local = DATA_x_q1;
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln178_1_reg_1160 == 1'd1)) | ((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln178_1_reg_1160 == 1'd0)) | ((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln178_1_reg_1160 == 1'd1)) | ((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln178_1_reg_1160 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln178_1_reg_1160 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln178_1_reg_1160 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln178_1_reg_1160_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln178_1_reg_1160_pp0_iter1_reg == 1'd0)))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln178_reg_1156 == 1'd1))) begin
        smem_2_address0_local = zext_ln185_fu_1017_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln178_reg_1156 == 1'd0))) begin
        smem_2_address0_local = zext_ln183_fu_995_p1;
    end else if (((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln178_reg_1156 == 1'd1))) begin
        smem_2_address0_local = zext_ln184_fu_916_p1;
    end else if (((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln178_reg_1156 == 1'd0))) begin
        smem_2_address0_local = zext_ln182_fu_895_p1;
    end else if (((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln178_reg_1156 == 1'd1))) begin
        smem_2_address0_local = zext_ln181_fu_767_p1;
    end else if (((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln178_reg_1156 == 1'd0))) begin
        smem_2_address0_local = zext_ln179_fu_745_p1;
    end else if (((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln178_reg_1156 == 1'd1))) begin
        smem_2_address0_local = zext_ln180_fu_680_p1;
    end else if (((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln178_reg_1156 == 1'd0))) begin
        smem_2_address0_local = zext_ln172_fu_656_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln178_reg_1156 == 1'd1)) | ((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln178_reg_1156 == 1'd0)) | ((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln178_reg_1156 == 1'd1)) | ((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln178_reg_1156 == 1'd0)) | ((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln178_reg_1156 == 1'd1)) | ((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln178_reg_1156 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln178_reg_1156 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln178_reg_1156 == 1'd0)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln178_reg_1156 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln178_reg_1156 == 1'd1)))) begin
        smem_2_d0_local = reg_556;
    end else if ((((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln178_reg_1156 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln178_reg_1156 == 1'd0)))) begin
        smem_2_d0_local = reg_548;
    end else if ((((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln178_reg_1156 == 1'd1)) | ((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln178_reg_1156 == 1'd1)))) begin
        smem_2_d0_local = DATA_x_q0;
    end else if ((((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln178_reg_1156 == 1'd0)) | ((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln178_reg_1156 == 1'd0)))) begin
        smem_2_d0_local = DATA_x_q1;
    end else begin
        smem_2_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln178_reg_1156 == 1'd1)) | ((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln178_reg_1156 == 1'd0)) | ((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln178_reg_1156 == 1'd1)) | ((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln178_reg_1156 == 1'd0)) | ((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln178_reg_1156 == 1'd1)) | ((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln178_reg_1156 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln178_reg_1156 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln178_reg_1156 == 1'd0)))) begin
        smem_2_we0_local = 1'b1;
    end else begin
        smem_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln178_1_reg_1160_pp0_iter1_reg == 1'd1))) begin
        smem_3_address0_local = zext_ln185_1_fu_1101_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln178_1_reg_1160_pp0_iter1_reg == 1'd0))) begin
        smem_3_address0_local = zext_ln183_1_fu_1080_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln178_1_reg_1160 == 1'd1))) begin
        smem_3_address0_local = zext_ln184_1_fu_1059_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln178_1_reg_1160 == 1'd0))) begin
        smem_3_address0_local = zext_ln182_1_fu_1038_p1;
    end else if (((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln178_1_reg_1160 == 1'd1))) begin
        smem_3_address0_local = zext_ln181_1_fu_957_p1;
    end else if (((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln178_1_reg_1160 == 1'd0))) begin
        smem_3_address0_local = zext_ln179_1_fu_936_p1;
    end else if (((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln178_1_reg_1160 == 1'd1))) begin
        smem_3_address0_local = zext_ln180_1_fu_864_p1;
    end else if (((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln178_1_reg_1160 == 1'd0))) begin
        smem_3_address0_local = smem_3_addr_reg_1186;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln178_1_reg_1160 == 1'd1)) | ((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln178_1_reg_1160 == 1'd0)) | ((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln178_1_reg_1160 == 1'd1)) | ((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln178_1_reg_1160 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln178_1_reg_1160 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln178_1_reg_1160 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln178_1_reg_1160_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln178_1_reg_1160_pp0_iter1_reg == 1'd0)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln178_1_reg_1160 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln178_1_reg_1160_pp0_iter1_reg == 1'd1)))) begin
        smem_3_d0_local = reg_556;
    end else if ((((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln178_1_reg_1160 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln178_1_reg_1160_pp0_iter1_reg == 1'd0)))) begin
        smem_3_d0_local = reg_548;
    end else if ((((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln178_1_reg_1160 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln178_1_reg_1160 == 1'd1)))) begin
        smem_3_d0_local = DATA_x_q0;
    end else if ((((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln178_1_reg_1160 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln178_1_reg_1160 == 1'd0)))) begin
        smem_3_d0_local = DATA_x_q1;
    end else begin
        smem_3_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln178_1_reg_1160 == 1'd1)) | ((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln178_1_reg_1160 == 1'd0)) | ((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln178_1_reg_1160 == 1'd1)) | ((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln178_1_reg_1160 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln178_1_reg_1160 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln178_1_reg_1160 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln178_1_reg_1160_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln178_1_reg_1160_pp0_iter1_reg == 1'd0)))) begin
        smem_3_we0_local = 1'b1;
    end else begin
        smem_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln178_reg_1156 == 1'd1))) begin
        smem_address0_local = zext_ln183_fu_995_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln178_reg_1156 == 1'd0))) begin
        smem_address0_local = zext_ln185_fu_1017_p1;
    end else if (((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln178_reg_1156 == 1'd1))) begin
        smem_address0_local = zext_ln182_fu_895_p1;
    end else if (((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln178_reg_1156 == 1'd0))) begin
        smem_address0_local = zext_ln184_fu_916_p1;
    end else if (((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln178_reg_1156 == 1'd1))) begin
        smem_address0_local = zext_ln179_fu_745_p1;
    end else if (((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln178_reg_1156 == 1'd0))) begin
        smem_address0_local = zext_ln181_fu_767_p1;
    end else if (((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln178_reg_1156 == 1'd0))) begin
        smem_address0_local = zext_ln180_fu_680_p1;
    end else if (((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln178_reg_1156 == 1'd1))) begin
        smem_address0_local = zext_ln172_fu_656_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln178_reg_1156 == 1'd1)) | ((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln178_reg_1156 == 1'd0)) | ((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln178_reg_1156 == 1'd1)) | ((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln178_reg_1156 == 1'd0)) | ((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln178_reg_1156 == 1'd1)) | ((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln178_reg_1156 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln178_reg_1156 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln178_reg_1156 == 1'd0)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln178_reg_1156 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln178_reg_1156 == 1'd1)))) begin
        smem_d0_local = reg_548;
    end else if ((((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln178_reg_1156 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln178_reg_1156 == 1'd0)))) begin
        smem_d0_local = reg_556;
    end else if ((((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln178_reg_1156 == 1'd0)) | ((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln178_reg_1156 == 1'd0)))) begin
        smem_d0_local = DATA_x_q0;
    end else if ((((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln178_reg_1156 == 1'd1)) | ((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln178_reg_1156 == 1'd1)))) begin
        smem_d0_local = DATA_x_q1;
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln178_reg_1156 == 1'd1)) | ((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln178_reg_1156 == 1'd0)) | ((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln178_reg_1156 == 1'd1)) | ((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln178_reg_1156 == 1'd0)) | ((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln178_reg_1156 == 1'd1)) | ((tmp_reg_1122 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln178_reg_1156 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln178_reg_1156 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln178_reg_1156 == 1'd0)))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
assign DATA_x_address0 = DATA_x_address0_local;
assign DATA_x_address1 = DATA_x_address1_local;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign add_ln174_fu_870_p2 = (tid_reg_1114 + 7'd2);
assign add_ln179_1_fu_921_p2 = (trunc_ln172_3_reg_1231 + 10'd264);
assign add_ln179_fu_729_p2 = ($signed(zext_ln172_9_fu_726_p1) + $signed(9'd264));
assign add_ln180_1_fu_848_p2 = (trunc_ln172_3_fu_844_p1 + 10'd66);
assign add_ln180_fu_664_p2 = (zext_ln172_7_fu_644_p1 + 8'd66);
assign add_ln181_1_fu_942_p2 = (trunc_ln172_3_reg_1231 + 10'd330);
assign add_ln181_fu_751_p2 = ($signed(zext_ln172_9_fu_726_p1) + $signed(9'd330));
assign add_ln182_1_fu_1023_p2 = (trunc_ln172_3_reg_1231 + 10'd132);
assign add_ln182_fu_880_p2 = ($signed(zext_ln172_7_reg_1164) + $signed(8'd132));
assign add_ln183_1_fu_1065_p2 = (trunc_ln172_3_reg_1231 + 10'd396);
assign add_ln183_fu_901_p2 = ($signed(zext_ln172_7_reg_1164) + $signed(8'd140));
assign add_ln184_1_fu_1044_p2 = (trunc_ln172_3_reg_1231 + 10'd198);
assign add_ln184_fu_799_p2 = (zext_ln172_9_fu_726_p1 + 9'd198);
assign add_ln185_1_fu_1086_p2 = (trunc_ln172_3_reg_1231 + 10'd462);
assign add_ln185_fu_1001_p2 = (zext_ln172_6_fu_989_p1 + 10'd462);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign icmp_ln178_1_fu_638_p2 = ((or_ln176_cast_fu_624_p3 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln178_fu_632_p2 = ((trunc_ln172_fu_584_p1 == 2'd0) ? 1'b1 : 1'b0);
assign lshr_ln10_fu_670_p4 = {{add_ln180_fu_664_p2[7:2]}};
assign lshr_ln11_fu_757_p4 = {{add_ln181_fu_751_p2[8:2]}};
assign lshr_ln12_fu_885_p4 = {{add_ln182_fu_880_p2[7:2]}};
assign lshr_ln14_fu_1007_p4 = {{add_ln185_fu_1001_p2[9:2]}};
assign lshr_ln179_1_fu_926_p4 = {{add_ln179_1_fu_921_p2[9:2]}};
assign lshr_ln180_1_fu_854_p4 = {{add_ln180_1_fu_848_p2[9:2]}};
assign lshr_ln181_1_fu_947_p4 = {{add_ln181_1_fu_942_p2[9:2]}};
assign lshr_ln182_1_fu_1028_p4 = {{add_ln182_1_fu_1023_p2[9:2]}};
assign lshr_ln183_1_fu_1070_p4 = {{add_ln183_1_fu_1065_p2[9:2]}};
assign lshr_ln184_1_fu_1049_p4 = {{add_ln184_1_fu_1044_p2[9:2]}};
assign lshr_ln185_1_fu_1091_p4 = {{add_ln185_1_fu_1086_p2[9:2]}};
assign lshr_ln8_fu_647_p4 = {{tid_reg_1114[5:2]}};
assign lshr_ln9_fu_735_p4 = {{add_ln179_fu_729_p2[8:2]}};
assign offset_1_fu_832_p5 = {{zext_ln175_fu_723_p1[31:3]}, {or_ln10_fu_824_p3}};
assign offset_fu_580_p1 = ap_sig_allocacmp_tid[5:0];
assign or_ln10_fu_824_p3 = {{tmp_s_fu_815_p4}, {1'd1}};
assign or_ln176_cast_fu_624_p3 = {{tmp_28_fu_616_p3}, {1'd1}};
assign or_ln180_1_fu_709_p3 = {{tmp_36_fu_686_p4}, {3'd6}};
assign or_ln182_1_fu_963_p3 = {{tmp_36_reg_1170}, {3'd5}};
assign or_ln184_1_fu_976_p3 = {{tmp_36_reg_1170}, {3'd7}};
assign or_ln7_fu_602_p3 = {{offset_fu_580_p1}, {2'd2}};
assign or_ln8_fu_773_p3 = {{offset_reg_1126}, {2'd1}};
assign or_ln9_fu_786_p3 = {{offset_reg_1126}, {2'd3}};
assign sext_ln183_fu_992_p1 = $signed(trunc_ln3_reg_1241);
assign shl_ln178_1_fu_695_p3 = {{tmp_36_fu_686_p4}, {3'd4}};
assign shl_ln1_fu_588_p3 = {{offset_fu_580_p1}, {2'd0}};
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
assign smem_address0 = smem_address0_local;
assign smem_ce0 = smem_ce0_local;
assign smem_d0 = smem_d0_local;
assign smem_we0 = smem_we0_local;
assign tmp_28_fu_616_p3 = ap_sig_allocacmp_tid[32'd1];
assign tmp_36_fu_686_p4 = {{tid_reg_1114[5:1]}};
assign tmp_fu_572_p3 = ap_sig_allocacmp_tid[32'd6];
assign tmp_s_fu_815_p4 = {{tid_reg_1114[2:1]}};
assign trunc_ln172_3_fu_844_p1 = offset_1_fu_832_p5[9:0];
assign trunc_ln172_fu_584_p1 = ap_sig_allocacmp_tid[1:0];
assign zext_ln172_6_fu_989_p1 = offset_reg_1126;
assign zext_ln172_7_fu_644_p1 = offset_reg_1126;
assign zext_ln172_9_fu_726_p1 = offset_reg_1126;
assign zext_ln172_fu_656_p1 = lshr_ln8_fu_647_p4;
assign zext_ln175_fu_723_p1 = offset_reg_1126;
assign zext_ln178_1_fu_703_p1 = shl_ln178_1_fu_695_p3;
assign zext_ln178_fu_596_p1 = shl_ln1_fu_588_p3;
assign zext_ln179_1_fu_936_p1 = lshr_ln179_1_fu_926_p4;
assign zext_ln179_fu_745_p1 = lshr_ln9_fu_735_p4;
assign zext_ln180_1_fu_864_p1 = lshr_ln180_1_fu_854_p4;
assign zext_ln180_2_fu_610_p1 = or_ln7_fu_602_p3;
assign zext_ln180_3_fu_717_p1 = or_ln180_1_fu_709_p3;
assign zext_ln180_fu_680_p1 = lshr_ln10_fu_670_p4;
assign zext_ln181_1_fu_957_p1 = lshr_ln181_1_fu_947_p4;
assign zext_ln181_fu_767_p1 = lshr_ln11_fu_757_p4;
assign zext_ln182_1_fu_1038_p1 = lshr_ln182_1_fu_1028_p4;
assign zext_ln182_2_fu_780_p1 = or_ln8_fu_773_p3;
assign zext_ln182_3_fu_970_p1 = or_ln182_1_fu_963_p3;
assign zext_ln182_fu_895_p1 = lshr_ln12_fu_885_p4;
assign zext_ln183_1_fu_1080_p1 = lshr_ln183_1_fu_1070_p4;
assign zext_ln183_fu_995_p1 = $unsigned(sext_ln183_fu_992_p1);
assign zext_ln184_1_fu_1059_p1 = lshr_ln184_1_fu_1049_p4;
assign zext_ln184_2_fu_793_p1 = or_ln9_fu_786_p3;
assign zext_ln184_3_fu_983_p1 = or_ln184_1_fu_976_p3;
assign zext_ln184_fu_916_p1 = lshr_ln13_reg_1221;
assign zext_ln185_1_fu_1101_p1 = lshr_ln185_1_fu_1091_p4;
assign zext_ln185_fu_1017_p1 = lshr_ln14_fu_1007_p4;
always @ (posedge ap_clk) begin
    zext_ln172_7_reg_1164[7:6] <= 2'b00;
    smem_1_addr_reg_1181[7:4] <= 4'b0000;
    smem_3_addr_reg_1186[7:4] <= 4'b0000;
end
endmodule 