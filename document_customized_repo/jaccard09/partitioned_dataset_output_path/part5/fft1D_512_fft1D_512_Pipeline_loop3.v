
module fft1D_512_fft1D_512_Pipeline_loop3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1,smem_3_address0,smem_3_ce0,smem_3_q0,smem_3_address1,smem_3_ce1,smem_3_q1);  
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
output   DATA_x_1_we0;
output  [63:0] DATA_x_1_d0;
output  [7:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
output   DATA_x_1_we1;
output  [63:0] DATA_x_1_d1;
output  [7:0] DATA_x_address0;
output   DATA_x_ce0;
output   DATA_x_we0;
output  [63:0] DATA_x_d0;
output  [7:0] DATA_x_address1;
output   DATA_x_ce1;
output   DATA_x_we1;
output  [63:0] DATA_x_d1;
output  [7:0] smem_address0;
output   smem_ce0;
input  [63:0] smem_q0;
output  [7:0] smem_address1;
output   smem_ce1;
input  [63:0] smem_q1;
output  [7:0] smem_1_address0;
output   smem_1_ce0;
input  [63:0] smem_1_q0;
output  [7:0] smem_1_address1;
output   smem_1_ce1;
input  [63:0] smem_1_q1;
output  [7:0] smem_2_address0;
output   smem_2_ce0;
input  [63:0] smem_2_q0;
output  [7:0] smem_2_address1;
output   smem_2_ce1;
input  [63:0] smem_2_q1;
output  [7:0] smem_3_address0;
output   smem_3_ce0;
input  [63:0] smem_3_q0;
output  [7:0] smem_3_address1;
output   smem_3_ce1;
input  [63:0] smem_3_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_1553;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
wire   [63:0] grp_fu_802_p11;
reg   [63:0] reg_894;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] grp_fu_825_p11;
reg   [63:0] reg_901;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] grp_fu_848_p11;
reg   [63:0] reg_908;
wire   [63:0] grp_fu_871_p11;
reg   [63:0] reg_914;
reg   [6:0] tid_reg_1546;
wire    ap_block_pp0_stage0_11001;
wire   [8:0] offset_fu_966_p2;
reg   [8:0] offset_reg_1557;
wire   [1:0] trunc_ln172_fu_972_p1;
reg   [1:0] trunc_ln172_reg_1567;
wire   [8:0] offset_4_fu_1016_p2;
reg   [8:0] offset_4_reg_1593;
wire   [1:0] trunc_ln172_3_fu_1022_p1;
reg   [1:0] trunc_ln172_3_reg_1603;
wire   [5:0] trunc_ln193_fu_1090_p1;
reg   [5:0] trunc_ln193_reg_1671;
wire   [63:0] zext_ln193_fu_1101_p1;
reg   [63:0] zext_ln193_reg_1678;
wire   [4:0] tmp_35_fu_1152_p4;
reg   [4:0] tmp_35_reg_1723;
wire   [63:0] zext_ln193_1_fu_1169_p1;
reg   [63:0] zext_ln193_1_reg_1730;
wire   [63:0] zext_ln194_2_fu_1184_p1;
reg   [63:0] zext_ln194_2_reg_1735;
reg   [7:0] lshr_ln21_reg_1780;
wire   [63:0] zext_ln197_2_fu_1259_p1;
reg   [63:0] zext_ln197_2_reg_1785;
wire   [63:0] zext_ln198_2_fu_1301_p1;
reg   [63:0] zext_ln198_2_reg_1830;
wire   [63:0] zext_ln194_3_fu_1362_p1;
reg   [63:0] zext_ln194_3_reg_1875;
reg   [6:0] lshr_ln199_1_reg_1920;
reg   [7:0] lshr_ln200_1_reg_1925;
wire   [63:0] zext_ln197_3_fu_1476_p1;
reg   [63:0] zext_ln197_3_reg_1970;
wire   [63:0] zext_ln198_3_fu_1488_p1;
reg   [63:0] zext_ln198_3_reg_1975;
wire   [63:0] tmp_32_fu_1493_p11;
reg   [63:0] tmp_32_reg_1980;
wire   [63:0] tmp_33_fu_1516_p11;
reg   [63:0] tmp_33_reg_1985;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln172_1_fu_986_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln172_2_fu_1036_p1;
wire   [63:0] zext_ln194_fu_1059_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln195_fu_1082_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln196_fu_1121_p1;
wire   [63:0] zext_ln197_fu_1144_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln198_fu_1205_p1;
wire   [63:0] zext_ln199_fu_1228_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln200_fu_1264_p1;
wire   [63:0] zext_ln194_1_fu_1286_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln195_1_fu_1321_p1;
wire   [63:0] zext_ln196_1_fu_1344_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln197_1_fu_1382_p1;
wire   [63:0] zext_ln198_1_fu_1406_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln199_1_fu_1445_p1;
wire   [63:0] zext_ln200_1_fu_1452_p1;
reg   [6:0] tid_2_fu_104;
wire   [6:0] add_ln188_fu_1459_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid;
reg    smem_ce1_local;
reg   [7:0] smem_address1_local;
reg    smem_ce0_local;
reg   [7:0] smem_address0_local;
reg    smem_1_ce1_local;
reg   [7:0] smem_1_address1_local;
reg    smem_1_ce0_local;
reg   [7:0] smem_1_address0_local;
reg    smem_2_ce1_local;
reg   [7:0] smem_2_address1_local;
reg    smem_2_ce0_local;
reg   [7:0] smem_2_address0_local;
reg    smem_3_ce1_local;
reg   [7:0] smem_3_address1_local;
reg    smem_3_ce0_local;
reg   [7:0] smem_3_address0_local;
reg    DATA_x_we1_local;
reg   [63:0] DATA_x_d1_local;
reg    DATA_x_ce1_local;
reg   [7:0] DATA_x_address1_local;
reg    DATA_x_we0_local;
reg   [63:0] DATA_x_d0_local;
reg    DATA_x_ce0_local;
reg   [7:0] DATA_x_address0_local;
reg    DATA_x_1_we0_local;
reg   [63:0] DATA_x_1_d0_local;
reg    DATA_x_1_ce0_local;
reg   [7:0] DATA_x_1_address0_local;
reg    DATA_x_1_we1_local;
reg   [63:0] DATA_x_1_d1_local;
reg    DATA_x_1_ce1_local;
reg   [7:0] DATA_x_1_address1_local;
wire   [63:0] grp_fu_802_p9;
wire   [63:0] grp_fu_825_p9;
wire   [63:0] grp_fu_848_p9;
wire   [63:0] grp_fu_871_p9;
wire   [2:0] hi_fu_936_p4;
wire   [2:0] trunc_ln191_fu_950_p1;
wire   [8:0] mul_ln_fu_954_p5;
wire   [8:0] zext_ln114_fu_946_p1;
wire   [6:0] lshr_ln172_1_fu_976_p4;
wire   [1:0] tmp_34_fu_994_p4;
wire   [8:0] mul_ln191_1_fu_1004_p5;
wire   [6:0] lshr_ln172_2_fu_1026_p4;
wire   [8:0] add_ln194_fu_1044_p2;
wire   [6:0] lshr_ln15_fu_1049_p4;
wire   [8:0] add_ln195_fu_1067_p2;
wire   [6:0] lshr_ln16_fu_1072_p4;
wire   [7:0] shl_ln2_fu_1093_p3;
wire   [8:0] add_ln196_fu_1106_p2;
wire   [6:0] lshr_ln17_fu_1111_p4;
wire   [8:0] add_ln197_fu_1129_p2;
wire   [6:0] lshr_ln18_fu_1134_p4;
wire   [7:0] shl_ln193_1_fu_1161_p3;
wire   [7:0] or_ln11_fu_1177_p3;
wire   [9:0] zext_ln172_fu_1174_p1;
wire   [9:0] add_ln198_fu_1189_p2;
wire   [7:0] lshr_ln19_fu_1195_p4;
wire   [8:0] add_ln199_fu_1213_p2;
wire   [6:0] lshr_ln20_fu_1218_p4;
wire   [9:0] add_ln200_fu_1236_p2;
wire   [7:0] or_ln12_fu_1252_p3;
wire   [8:0] add_ln194_1_fu_1271_p2;
wire   [6:0] lshr_ln194_1_fu_1276_p4;
wire   [7:0] or_ln13_fu_1294_p3;
wire   [8:0] add_ln195_1_fu_1306_p2;
wire   [6:0] lshr_ln195_1_fu_1311_p4;
wire   [8:0] add_ln196_1_fu_1329_p2;
wire   [6:0] lshr_ln196_1_fu_1334_p4;
wire   [7:0] or_ln194_1_fu_1355_p3;
wire   [8:0] add_ln197_1_fu_1367_p2;
wire   [6:0] lshr_ln197_1_fu_1372_p4;
wire   [9:0] zext_ln172_10_fu_1352_p1;
wire   [9:0] add_ln198_1_fu_1390_p2;
wire   [7:0] lshr_ln198_1_fu_1396_p4;
wire   [8:0] add_ln199_1_fu_1414_p2;
wire   [9:0] add_ln200_1_fu_1429_p2;
wire   [7:0] or_ln197_1_fu_1469_p3;
wire   [7:0] or_ln198_1_fu_1481_p3;
wire   [63:0] tmp_32_fu_1493_p9;
wire   [63:0] tmp_33_fu_1516_p9;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] grp_fu_802_p1;
wire   [1:0] grp_fu_802_p3;
wire  signed [1:0] grp_fu_802_p5;
wire  signed [1:0] grp_fu_802_p7;
wire   [1:0] grp_fu_825_p1;
wire   [1:0] grp_fu_825_p3;
wire  signed [1:0] grp_fu_825_p5;
wire  signed [1:0] grp_fu_825_p7;
wire   [1:0] grp_fu_848_p1;
wire   [1:0] grp_fu_848_p3;
wire  signed [1:0] grp_fu_848_p5;
wire  signed [1:0] grp_fu_848_p7;
wire   [1:0] grp_fu_871_p1;
wire   [1:0] grp_fu_871_p3;
wire  signed [1:0] grp_fu_871_p5;
wire  signed [1:0] grp_fu_871_p7;
wire   [1:0] tmp_32_fu_1493_p1;
wire   [1:0] tmp_32_fu_1493_p3;
wire  signed [1:0] tmp_32_fu_1493_p5;
wire  signed [1:0] tmp_32_fu_1493_p7;
wire   [1:0] tmp_33_fu_1516_p1;
wire   [1:0] tmp_33_fu_1516_p3;
wire  signed [1:0] tmp_33_fu_1516_p5;
wire  signed [1:0] tmp_33_fu_1516_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_2_fu_104 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U163(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.def(grp_fu_802_p9),.sel(trunc_ln172_reg_1567),.dout(grp_fu_802_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U164(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.def(grp_fu_825_p9),.sel(trunc_ln172_3_reg_1603),.dout(grp_fu_825_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U165(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.def(grp_fu_848_p9),.sel(trunc_ln172_reg_1567),.dout(grp_fu_848_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U166(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.def(grp_fu_871_p9),.sel(trunc_ln172_3_reg_1603),.dout(grp_fu_871_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U167(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.def(tmp_32_fu_1493_p9),.sel(trunc_ln172_3_reg_1603),.dout(tmp_32_fu_1493_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U168(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.def(tmp_33_fu_1516_p9),.sel(trunc_ln172_3_reg_1603),.dout(tmp_33_fu_1516_p11));
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
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_2_fu_104 <= 7'd0;
    end else if (((tmp_reg_1553 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tid_2_fu_104 <= add_ln188_fu_1459_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        lshr_ln199_1_reg_1920 <= {{add_ln199_1_fu_1414_p2[8:2]}};
        lshr_ln200_1_reg_1925 <= {{add_ln200_1_fu_1429_p2[9:2]}};
        zext_ln194_3_reg_1875[7 : 3] <= zext_ln194_3_fu_1362_p1[7 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        lshr_ln21_reg_1780 <= {{add_ln200_fu_1236_p2[9:2]}};
        zext_ln194_2_reg_1735[7 : 2] <= zext_ln194_2_fu_1184_p1[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        offset_4_reg_1593 <= offset_4_fu_1016_p2;
        offset_reg_1557 <= offset_fu_966_p2;
        tid_reg_1546 <= ap_sig_allocacmp_tid;
        tmp_32_reg_1980 <= tmp_32_fu_1493_p11;
        tmp_33_reg_1985 <= tmp_33_fu_1516_p11;
        tmp_reg_1553 <= ap_sig_allocacmp_tid[32'd6];
        trunc_ln172_3_reg_1603 <= trunc_ln172_3_fu_1022_p1;
        trunc_ln172_reg_1567 <= trunc_ln172_fu_972_p1;
        zext_ln197_3_reg_1970[7 : 3] <= zext_ln197_3_fu_1476_p1[7 : 3];
        zext_ln198_3_reg_1975[7 : 3] <= zext_ln198_3_fu_1488_p1[7 : 3];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_894 <= grp_fu_802_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_901 <= grp_fu_825_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_908 <= grp_fu_848_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_914 <= grp_fu_871_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_35_reg_1723 <= {{tid_reg_1546[5:1]}};
        trunc_ln193_reg_1671 <= trunc_ln193_fu_1090_p1;
        zext_ln193_1_reg_1730[7 : 3] <= zext_ln193_1_fu_1169_p1[7 : 3];
        zext_ln193_reg_1678[7 : 2] <= zext_ln193_fu_1101_p1[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        zext_ln197_2_reg_1785[7 : 2] <= zext_ln197_2_fu_1259_p1[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        zext_ln198_2_reg_1830[7 : 2] <= zext_ln198_2_fu_1301_p1[7 : 2];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address0_local = zext_ln198_3_reg_1975;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_1_address0_local = zext_ln194_3_reg_1875;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_1_address0_local = zext_ln197_2_reg_1785;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address0_local = zext_ln193_reg_1678;
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address1_local = zext_ln197_3_reg_1970;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_1_address1_local = zext_ln193_1_reg_1730;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_1_address1_local = zext_ln198_2_reg_1830;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_1_address1_local = zext_ln194_2_reg_1735;
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d0_local = tmp_33_reg_1985;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_1_d0_local = reg_901;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        DATA_x_1_d0_local = reg_908;
    end else begin
        DATA_x_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d1_local = tmp_32_reg_1980;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_1_d1_local = reg_914;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        DATA_x_1_d1_local = reg_894;
    end else begin
        DATA_x_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_1553 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_1553 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_1553 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_1553 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_1553 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_1553 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_we1_local = 1'b1;
    end else begin
        DATA_x_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address0_local = zext_ln198_3_fu_1488_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_address0_local = zext_ln198_2_fu_1301_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address0_local = zext_ln194_2_fu_1184_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address0_local = zext_ln193_1_fu_1169_p1;
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address1_local = zext_ln197_3_fu_1476_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_address1_local = zext_ln194_3_fu_1362_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_address1_local = zext_ln197_2_fu_1259_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address1_local = zext_ln193_fu_1101_p1;
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        DATA_x_d0_local = reg_894;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_d0_local = reg_901;
    end else begin
        DATA_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d1_local = reg_914;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_d1_local = reg_901;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_d1_local = reg_908;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_d1_local = reg_894;
    end else begin
        DATA_x_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_1553 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_1553 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_1553 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_1553 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_1553 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_1553 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we1_local = 1'b1;
    end else begin
        DATA_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_1553 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid = 7'd0;
    end else begin
        ap_sig_allocacmp_tid = tid_2_fu_104;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            smem_1_address0_local = zext_ln200_1_fu_1452_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            smem_1_address0_local = zext_ln198_1_fu_1406_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_1_address0_local = zext_ln196_1_fu_1344_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_1_address0_local = zext_ln194_1_fu_1286_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_1_address0_local = zext_ln199_fu_1228_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_1_address0_local = zext_ln197_fu_1144_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_1_address0_local = zext_ln195_fu_1082_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_1_address0_local = zext_ln172_2_fu_1036_p1;
        end else begin
            smem_1_address0_local = 'bx;
        end
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            smem_1_address1_local = zext_ln199_1_fu_1445_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            smem_1_address1_local = zext_ln197_1_fu_1382_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_1_address1_local = zext_ln195_1_fu_1321_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_1_address1_local = zext_ln200_fu_1264_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_1_address1_local = zext_ln198_fu_1205_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_1_address1_local = zext_ln196_fu_1121_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_1_address1_local = zext_ln194_fu_1059_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_1_address1_local = zext_ln172_1_fu_986_p1;
        end else begin
            smem_1_address1_local = 'bx;
        end
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            smem_2_address0_local = zext_ln200_1_fu_1452_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            smem_2_address0_local = zext_ln198_1_fu_1406_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_2_address0_local = zext_ln196_1_fu_1344_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_2_address0_local = zext_ln194_1_fu_1286_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_2_address0_local = zext_ln199_fu_1228_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_2_address0_local = zext_ln197_fu_1144_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_2_address0_local = zext_ln195_fu_1082_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_2_address0_local = zext_ln172_2_fu_1036_p1;
        end else begin
            smem_2_address0_local = 'bx;
        end
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            smem_2_address1_local = zext_ln199_1_fu_1445_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            smem_2_address1_local = zext_ln197_1_fu_1382_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_2_address1_local = zext_ln195_1_fu_1321_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_2_address1_local = zext_ln200_fu_1264_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_2_address1_local = zext_ln198_fu_1205_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_2_address1_local = zext_ln196_fu_1121_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_2_address1_local = zext_ln194_fu_1059_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_2_address1_local = zext_ln172_1_fu_986_p1;
        end else begin
            smem_2_address1_local = 'bx;
        end
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            smem_3_address0_local = zext_ln200_1_fu_1452_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            smem_3_address0_local = zext_ln198_1_fu_1406_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_3_address0_local = zext_ln196_1_fu_1344_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_3_address0_local = zext_ln194_1_fu_1286_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_3_address0_local = zext_ln199_fu_1228_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_3_address0_local = zext_ln197_fu_1144_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_3_address0_local = zext_ln195_fu_1082_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_3_address0_local = zext_ln172_2_fu_1036_p1;
        end else begin
            smem_3_address0_local = 'bx;
        end
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            smem_3_address1_local = zext_ln199_1_fu_1445_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            smem_3_address1_local = zext_ln197_1_fu_1382_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_3_address1_local = zext_ln195_1_fu_1321_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_3_address1_local = zext_ln200_fu_1264_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_3_address1_local = zext_ln198_fu_1205_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_3_address1_local = zext_ln196_fu_1121_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_3_address1_local = zext_ln194_fu_1059_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_3_address1_local = zext_ln172_1_fu_986_p1;
        end else begin
            smem_3_address1_local = 'bx;
        end
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            smem_address0_local = zext_ln200_1_fu_1452_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            smem_address0_local = zext_ln198_1_fu_1406_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_address0_local = zext_ln196_1_fu_1344_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_address0_local = zext_ln194_1_fu_1286_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_address0_local = zext_ln199_fu_1228_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_address0_local = zext_ln197_fu_1144_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_address0_local = zext_ln195_fu_1082_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_address0_local = zext_ln172_2_fu_1036_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            smem_address1_local = zext_ln199_1_fu_1445_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            smem_address1_local = zext_ln197_1_fu_1382_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_address1_local = zext_ln195_1_fu_1321_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_address1_local = zext_ln200_fu_1264_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_address1_local = zext_ln198_fu_1205_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_address1_local = zext_ln196_fu_1121_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_address1_local = zext_ln194_fu_1059_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_address1_local = zext_ln172_1_fu_986_p1;
        end else begin
            smem_address1_local = 'bx;
        end
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_idle_pp0_1to1 == 1'b1) & (ap_start_int == 1'b0)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
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
assign DATA_x_1_d0 = DATA_x_1_d0_local;
assign DATA_x_1_d1 = DATA_x_1_d1_local;
assign DATA_x_1_we0 = DATA_x_1_we0_local;
assign DATA_x_1_we1 = DATA_x_1_we1_local;
assign DATA_x_address0 = DATA_x_address0_local;
assign DATA_x_address1 = DATA_x_address1_local;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign DATA_x_d0 = DATA_x_d0_local;
assign DATA_x_d1 = DATA_x_d1_local;
assign DATA_x_we0 = DATA_x_we0_local;
assign DATA_x_we1 = DATA_x_we1_local;
assign add_ln188_fu_1459_p2 = (tid_reg_1546 + 7'd2);
assign add_ln194_1_fu_1271_p2 = (offset_4_reg_1593 + 9'd32);
assign add_ln194_fu_1044_p2 = (offset_reg_1557 + 9'd32);
assign add_ln195_1_fu_1306_p2 = (offset_4_reg_1593 + 9'd8);
assign add_ln195_fu_1067_p2 = (offset_reg_1557 + 9'd8);
assign add_ln196_1_fu_1329_p2 = (offset_4_reg_1593 + 9'd40);
assign add_ln196_fu_1106_p2 = (offset_reg_1557 + 9'd40);
assign add_ln197_1_fu_1367_p2 = (offset_4_reg_1593 + 9'd16);
assign add_ln197_fu_1129_p2 = (offset_reg_1557 + 9'd16);
assign add_ln198_1_fu_1390_p2 = (zext_ln172_10_fu_1352_p1 + 10'd48);
assign add_ln198_fu_1189_p2 = (zext_ln172_fu_1174_p1 + 10'd48);
assign add_ln199_1_fu_1414_p2 = (offset_4_reg_1593 + 9'd24);
assign add_ln199_fu_1213_p2 = (offset_reg_1557 + 9'd24);
assign add_ln200_1_fu_1429_p2 = (zext_ln172_10_fu_1352_p1 + 10'd56);
assign add_ln200_fu_1236_p2 = (zext_ln172_fu_1174_p1 + 10'd56);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
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
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign grp_fu_802_p9 = 'bx;
assign grp_fu_825_p9 = 'bx;
assign grp_fu_848_p9 = 'bx;
assign grp_fu_871_p9 = 'bx;
assign hi_fu_936_p4 = {{ap_sig_allocacmp_tid[5:3]}};
assign lshr_ln15_fu_1049_p4 = {{add_ln194_fu_1044_p2[8:2]}};
assign lshr_ln16_fu_1072_p4 = {{add_ln195_fu_1067_p2[8:2]}};
assign lshr_ln172_1_fu_976_p4 = {{offset_fu_966_p2[8:2]}};
assign lshr_ln172_2_fu_1026_p4 = {{offset_4_fu_1016_p2[8:2]}};
assign lshr_ln17_fu_1111_p4 = {{add_ln196_fu_1106_p2[8:2]}};
assign lshr_ln18_fu_1134_p4 = {{add_ln197_fu_1129_p2[8:2]}};
assign lshr_ln194_1_fu_1276_p4 = {{add_ln194_1_fu_1271_p2[8:2]}};
assign lshr_ln195_1_fu_1311_p4 = {{add_ln195_1_fu_1306_p2[8:2]}};
assign lshr_ln196_1_fu_1334_p4 = {{add_ln196_1_fu_1329_p2[8:2]}};
assign lshr_ln197_1_fu_1372_p4 = {{add_ln197_1_fu_1367_p2[8:2]}};
assign lshr_ln198_1_fu_1396_p4 = {{add_ln198_1_fu_1390_p2[9:2]}};
assign lshr_ln19_fu_1195_p4 = {{add_ln198_fu_1189_p2[9:2]}};
assign lshr_ln20_fu_1218_p4 = {{add_ln199_fu_1213_p2[8:2]}};
assign mul_ln191_1_fu_1004_p5 = {{{{tmp_34_fu_994_p4}, {3'd4}}, {tmp_34_fu_994_p4}}, {2'd2}};
assign mul_ln_fu_954_p5 = {{{{trunc_ln191_fu_950_p1}, {2'd0}}, {trunc_ln191_fu_950_p1}}, {1'd0}};
assign offset_4_fu_1016_p2 = (mul_ln191_1_fu_1004_p5 + zext_ln114_fu_946_p1);
assign offset_fu_966_p2 = (mul_ln_fu_954_p5 + zext_ln114_fu_946_p1);
assign or_ln11_fu_1177_p3 = {{trunc_ln193_reg_1671}, {2'd2}};
assign or_ln12_fu_1252_p3 = {{trunc_ln193_reg_1671}, {2'd1}};
assign or_ln13_fu_1294_p3 = {{trunc_ln193_reg_1671}, {2'd3}};
assign or_ln194_1_fu_1355_p3 = {{tmp_35_reg_1723}, {3'd6}};
assign or_ln197_1_fu_1469_p3 = {{tmp_35_reg_1723}, {3'd5}};
assign or_ln198_1_fu_1481_p3 = {{tmp_35_reg_1723}, {3'd7}};
assign shl_ln193_1_fu_1161_p3 = {{tmp_35_fu_1152_p4}, {3'd4}};
assign shl_ln2_fu_1093_p3 = {{trunc_ln193_fu_1090_p1}, {2'd0}};
assign smem_1_address0 = smem_1_address0_local;
assign smem_1_address1 = smem_1_address1_local;
assign smem_1_ce0 = smem_1_ce0_local;
assign smem_1_ce1 = smem_1_ce1_local;
assign smem_2_address0 = smem_2_address0_local;
assign smem_2_address1 = smem_2_address1_local;
assign smem_2_ce0 = smem_2_ce0_local;
assign smem_2_ce1 = smem_2_ce1_local;
assign smem_3_address0 = smem_3_address0_local;
assign smem_3_address1 = smem_3_address1_local;
assign smem_3_ce0 = smem_3_ce0_local;
assign smem_3_ce1 = smem_3_ce1_local;
assign smem_address0 = smem_address0_local;
assign smem_address1 = smem_address1_local;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign tmp_32_fu_1493_p9 = 'bx;
assign tmp_33_fu_1516_p9 = 'bx;
assign tmp_34_fu_994_p4 = {{ap_sig_allocacmp_tid[2:1]}};
assign tmp_35_fu_1152_p4 = {{tid_reg_1546[5:1]}};
assign trunc_ln172_3_fu_1022_p1 = offset_4_fu_1016_p2[1:0];
assign trunc_ln172_fu_972_p1 = offset_fu_966_p2[1:0];
assign trunc_ln191_fu_950_p1 = ap_sig_allocacmp_tid[2:0];
assign trunc_ln193_fu_1090_p1 = tid_reg_1546[5:0];
assign zext_ln114_fu_946_p1 = hi_fu_936_p4;
assign zext_ln172_10_fu_1352_p1 = offset_4_reg_1593;
assign zext_ln172_1_fu_986_p1 = lshr_ln172_1_fu_976_p4;
assign zext_ln172_2_fu_1036_p1 = lshr_ln172_2_fu_1026_p4;
assign zext_ln172_fu_1174_p1 = offset_reg_1557;
assign zext_ln193_1_fu_1169_p1 = shl_ln193_1_fu_1161_p3;
assign zext_ln193_fu_1101_p1 = shl_ln2_fu_1093_p3;
assign zext_ln194_1_fu_1286_p1 = lshr_ln194_1_fu_1276_p4;
assign zext_ln194_2_fu_1184_p1 = or_ln11_fu_1177_p3;
assign zext_ln194_3_fu_1362_p1 = or_ln194_1_fu_1355_p3;
assign zext_ln194_fu_1059_p1 = lshr_ln15_fu_1049_p4;
assign zext_ln195_1_fu_1321_p1 = lshr_ln195_1_fu_1311_p4;
assign zext_ln195_fu_1082_p1 = lshr_ln16_fu_1072_p4;
assign zext_ln196_1_fu_1344_p1 = lshr_ln196_1_fu_1334_p4;
assign zext_ln196_fu_1121_p1 = lshr_ln17_fu_1111_p4;
assign zext_ln197_1_fu_1382_p1 = lshr_ln197_1_fu_1372_p4;
assign zext_ln197_2_fu_1259_p1 = or_ln12_fu_1252_p3;
assign zext_ln197_3_fu_1476_p1 = or_ln197_1_fu_1469_p3;
assign zext_ln197_fu_1144_p1 = lshr_ln18_fu_1134_p4;
assign zext_ln198_1_fu_1406_p1 = lshr_ln198_1_fu_1396_p4;
assign zext_ln198_2_fu_1301_p1 = or_ln13_fu_1294_p3;
assign zext_ln198_3_fu_1488_p1 = or_ln198_1_fu_1481_p3;
assign zext_ln198_fu_1205_p1 = lshr_ln19_fu_1195_p4;
assign zext_ln199_1_fu_1445_p1 = lshr_ln199_1_reg_1920;
assign zext_ln199_fu_1228_p1 = lshr_ln20_fu_1218_p4;
assign zext_ln200_1_fu_1452_p1 = lshr_ln200_1_reg_1925;
assign zext_ln200_fu_1264_p1 = lshr_ln21_reg_1780;
always @ (posedge ap_clk) begin
    zext_ln193_reg_1678[1:0] <= 2'b00;
    zext_ln193_reg_1678[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln193_1_reg_1730[2:0] <= 3'b100;
    zext_ln193_1_reg_1730[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln194_2_reg_1735[1:0] <= 2'b10;
    zext_ln194_2_reg_1735[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln197_2_reg_1785[1:0] <= 2'b01;
    zext_ln197_2_reg_1785[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln198_2_reg_1830[1:0] <= 2'b11;
    zext_ln198_2_reg_1830[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln194_3_reg_1875[2:0] <= 3'b110;
    zext_ln194_3_reg_1875[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln197_3_reg_1970[2:0] <= 3'b101;
    zext_ln197_3_reg_1970[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln198_3_reg_1975[2:0] <= 3'b111;
    zext_ln198_3_reg_1975[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 
