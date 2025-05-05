module needwun_needwun_Pipeline_pad_b (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,b_str_idx_7,alignedB_0_address0,alignedB_0_ce0,alignedB_0_we0,alignedB_0_d0,alignedB_0_address1,alignedB_0_ce1,alignedB_0_we1,alignedB_0_d1,alignedB_7_address0,alignedB_7_ce0,alignedB_7_we0,alignedB_7_d0,alignedB_7_address1,alignedB_7_ce1,alignedB_7_we1,alignedB_7_d1,alignedB_6_address0,alignedB_6_ce0,alignedB_6_we0,alignedB_6_d0,alignedB_6_address1,alignedB_6_ce1,alignedB_6_we1,alignedB_6_d1,alignedB_5_address0,alignedB_5_ce0,alignedB_5_we0,alignedB_5_d0,alignedB_5_address1,alignedB_5_ce1,alignedB_5_we1,alignedB_5_d1,alignedB_4_address0,alignedB_4_ce0,alignedB_4_we0,alignedB_4_d0,alignedB_4_address1,alignedB_4_ce1,alignedB_4_we1,alignedB_4_d1,alignedB_3_address0,alignedB_3_ce0,alignedB_3_we0,alignedB_3_d0,alignedB_3_address1,alignedB_3_ce1,alignedB_3_we1,alignedB_3_d1,alignedB_2_address0,alignedB_2_ce0,alignedB_2_we0,alignedB_2_d0,alignedB_2_address1,alignedB_2_ce1,alignedB_2_we1,alignedB_2_d1,alignedB_1_address0,alignedB_1_ce0,alignedB_1_we0,alignedB_1_d0,alignedB_1_address1,alignedB_1_ce1,alignedB_1_we1,alignedB_1_d1); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] b_str_idx_7;
output  [4:0] alignedB_0_address0;
output   alignedB_0_ce0;
output   alignedB_0_we0;
output  [7:0] alignedB_0_d0;
output  [4:0] alignedB_0_address1;
output   alignedB_0_ce1;
output   alignedB_0_we1;
output  [7:0] alignedB_0_d1;
output  [4:0] alignedB_7_address0;
output   alignedB_7_ce0;
output   alignedB_7_we0;
output  [7:0] alignedB_7_d0;
output  [4:0] alignedB_7_address1;
output   alignedB_7_ce1;
output   alignedB_7_we1;
output  [7:0] alignedB_7_d1;
output  [4:0] alignedB_6_address0;
output   alignedB_6_ce0;
output   alignedB_6_we0;
output  [7:0] alignedB_6_d0;
output  [4:0] alignedB_6_address1;
output   alignedB_6_ce1;
output   alignedB_6_we1;
output  [7:0] alignedB_6_d1;
output  [4:0] alignedB_5_address0;
output   alignedB_5_ce0;
output   alignedB_5_we0;
output  [7:0] alignedB_5_d0;
output  [4:0] alignedB_5_address1;
output   alignedB_5_ce1;
output   alignedB_5_we1;
output  [7:0] alignedB_5_d1;
output  [4:0] alignedB_4_address0;
output   alignedB_4_ce0;
output   alignedB_4_we0;
output  [7:0] alignedB_4_d0;
output  [4:0] alignedB_4_address1;
output   alignedB_4_ce1;
output   alignedB_4_we1;
output  [7:0] alignedB_4_d1;
output  [4:0] alignedB_3_address0;
output   alignedB_3_ce0;
output   alignedB_3_we0;
output  [7:0] alignedB_3_d0;
output  [4:0] alignedB_3_address1;
output   alignedB_3_ce1;
output   alignedB_3_we1;
output  [7:0] alignedB_3_d1;
output  [4:0] alignedB_2_address0;
output   alignedB_2_ce0;
output   alignedB_2_we0;
output  [7:0] alignedB_2_d0;
output  [4:0] alignedB_2_address1;
output   alignedB_2_ce1;
output   alignedB_2_we1;
output  [7:0] alignedB_2_d1;
output  [4:0] alignedB_1_address0;
output   alignedB_1_ce0;
output   alignedB_1_we0;
output  [7:0] alignedB_1_d0;
output  [4:0] alignedB_1_address1;
output   alignedB_1_ce1;
output   alignedB_1_we1;
output  [7:0] alignedB_1_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln86_7_fu_984_p2;
wire   [0:0] icmp_ln86_6_fu_948_p2;
wire   [0:0] icmp_ln86_5_fu_912_p2;
wire   [0:0] icmp_ln86_4_fu_876_p2;
wire   [0:0] icmp_ln86_3_fu_840_p2;
wire   [0:0] icmp_ln86_2_fu_804_p2;
wire   [0:0] icmp_ln86_1_fu_768_p2;
wire   [0:0] icmp_ln86_fu_706_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] b_str_idx_2_reg_1007;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln86_reg_1012;
wire   [2:0] trunc_ln86_fu_712_p1;
reg   [2:0] trunc_ln86_reg_1016;
wire   [63:0] zext_ln86_fu_754_p1;
reg   [63:0] zext_ln86_reg_1020;
reg   [0:0] icmp_ln86_1_reg_1032;
wire   [63:0] zext_ln86_1_fu_790_p1;
reg   [63:0] zext_ln86_1_reg_1036;
reg   [0:0] icmp_ln86_2_reg_1048;
wire   [63:0] zext_ln86_2_fu_826_p1;
reg   [63:0] zext_ln86_2_reg_1052;
reg   [0:0] icmp_ln86_3_reg_1064;
wire   [63:0] zext_ln86_3_fu_862_p1;
reg   [63:0] zext_ln86_3_reg_1068;
reg   [0:0] icmp_ln86_4_reg_1080;
wire   [63:0] zext_ln86_4_fu_898_p1;
reg   [63:0] zext_ln86_4_reg_1084;
reg   [0:0] icmp_ln86_5_reg_1096;
wire   [63:0] zext_ln86_5_fu_934_p1;
reg   [63:0] zext_ln86_5_reg_1100;
reg   [0:0] icmp_ln86_6_reg_1112;
wire   [63:0] zext_ln86_6_fu_970_p1;
reg   [63:0] zext_ln86_6_reg_1116;
reg   [0:0] icmp_ln86_7_reg_1128;
wire   [63:0] zext_ln18_fu_726_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] b_str_idx_fu_78;
wire   [31:0] add_ln86_7_fu_990_p2;
reg   [31:0] ap_sig_allocacmp_b_str_idx_2;
wire    ap_loop_init;
reg    alignedB_6_we1_local;
reg    alignedB_6_ce1_local;
reg    alignedB_6_we0_local;
reg    alignedB_6_ce0_local;
reg   [4:0] alignedB_6_address0_local;
reg    alignedB_5_we1_local;
reg    alignedB_5_ce1_local;
reg    alignedB_5_we0_local;
reg    alignedB_5_ce0_local;
reg   [4:0] alignedB_5_address0_local;
reg    alignedB_4_we1_local;
reg    alignedB_4_ce1_local;
reg    alignedB_4_we0_local;
reg    alignedB_4_ce0_local;
reg   [4:0] alignedB_4_address0_local;
reg    alignedB_3_we1_local;
reg    alignedB_3_ce1_local;
reg    alignedB_3_we0_local;
reg    alignedB_3_ce0_local;
reg   [4:0] alignedB_3_address0_local;
reg    alignedB_2_we1_local;
reg    alignedB_2_ce1_local;
reg    alignedB_2_we0_local;
reg    alignedB_2_ce0_local;
reg   [4:0] alignedB_2_address0_local;
reg    alignedB_1_we1_local;
reg    alignedB_1_ce1_local;
reg    alignedB_1_we0_local;
reg    alignedB_1_ce0_local;
reg   [4:0] alignedB_1_address0_local;
reg    alignedB_0_we1_local;
reg    alignedB_0_ce1_local;
reg    alignedB_0_we0_local;
reg    alignedB_0_ce0_local;
reg   [4:0] alignedB_0_address0_local;
reg    alignedB_7_we1_local;
reg    alignedB_7_ce1_local;
reg    alignedB_7_we0_local;
reg    alignedB_7_ce0_local;
reg   [4:0] alignedB_7_address0_local;
wire   [23:0] tmp_fu_696_p4;
wire   [4:0] lshr_ln18_2_fu_716_p4;
wire   [31:0] add_ln86_fu_738_p2;
wire   [4:0] lshr_ln_fu_744_p4;
wire   [23:0] tmp_1_fu_758_p4;
wire   [31:0] add_ln86_1_fu_774_p2;
wire   [4:0] lshr_ln86_1_fu_780_p4;
wire   [23:0] tmp_2_fu_794_p4;
wire   [31:0] add_ln86_2_fu_810_p2;
wire   [4:0] lshr_ln86_2_fu_816_p4;
wire   [23:0] tmp_3_fu_830_p4;
wire   [31:0] add_ln86_3_fu_846_p2;
wire   [4:0] lshr_ln86_3_fu_852_p4;
wire   [23:0] tmp_4_fu_866_p4;
wire   [31:0] add_ln86_4_fu_882_p2;
wire   [4:0] lshr_ln86_4_fu_888_p4;
wire   [23:0] tmp_5_fu_902_p4;
wire   [31:0] add_ln86_5_fu_918_p2;
wire   [4:0] lshr_ln86_5_fu_924_p4;
wire   [23:0] tmp_6_fu_938_p4;
wire   [31:0] add_ln86_6_fu_954_p2;
wire   [4:0] lshr_ln86_6_fu_960_p4;
wire   [23:0] tmp_7_fu_974_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_895;
reg    ap_condition_900;
reg    ap_condition_906;
reg    ap_condition_913;
reg    ap_condition_921;
reg    ap_condition_892;
reg    ap_condition_927;
reg    ap_condition_930;
reg    ap_condition_933;
reg    ap_condition_936;
reg    ap_condition_939;
reg    ap_condition_943;
reg    ap_condition_946;
reg    ap_condition_949;
reg    ap_condition_952;
reg    ap_condition_955;
reg    ap_condition_959;
reg    ap_condition_962;
reg    ap_condition_965;
reg    ap_condition_968;
reg    ap_condition_971;
reg    ap_condition_975;
reg    ap_condition_978;
reg    ap_condition_981;
reg    ap_condition_984;
reg    ap_condition_987;
reg    ap_condition_991;
reg    ap_condition_994;
reg    ap_condition_997;
reg    ap_condition_1000;
reg    ap_condition_1003;
reg    ap_condition_1007;
reg    ap_condition_1010;
reg    ap_condition_1013;
reg    ap_condition_1016;
reg    ap_condition_1019;
reg    ap_condition_1023;
reg    ap_condition_1026;
reg    ap_condition_1029;
reg    ap_condition_1032;
reg    ap_condition_1035;
reg    ap_condition_1046;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 b_str_idx_fu_78 = 32'd0;
#0 ap_done_reg = 1'b0;
end
needwun_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if (((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
            ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            b_str_idx_fu_78 <= b_str_idx_7;
        end else if ((1'b1 == ap_condition_1046)) begin
            b_str_idx_fu_78 <= add_ln86_7_fu_990_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_str_idx_2_reg_1007 <= ap_sig_allocacmp_b_str_idx_2;
        icmp_ln86_1_reg_1032 <= icmp_ln86_1_fu_768_p2;
        icmp_ln86_2_reg_1048 <= icmp_ln86_2_fu_804_p2;
        icmp_ln86_3_reg_1064 <= icmp_ln86_3_fu_840_p2;
        icmp_ln86_4_reg_1080 <= icmp_ln86_4_fu_876_p2;
        icmp_ln86_5_reg_1096 <= icmp_ln86_5_fu_912_p2;
        icmp_ln86_6_reg_1112 <= icmp_ln86_6_fu_948_p2;
        icmp_ln86_7_reg_1128 <= icmp_ln86_7_fu_984_p2;
        icmp_ln86_reg_1012 <= icmp_ln86_fu_706_p2;
        trunc_ln86_reg_1016 <= trunc_ln86_fu_712_p1;
        zext_ln86_1_reg_1036[4 : 0] <= zext_ln86_1_fu_790_p1[4 : 0];
        zext_ln86_2_reg_1052[4 : 0] <= zext_ln86_2_fu_826_p1[4 : 0];
        zext_ln86_3_reg_1068[4 : 0] <= zext_ln86_3_fu_862_p1[4 : 0];
        zext_ln86_4_reg_1084[4 : 0] <= zext_ln86_4_fu_898_p1[4 : 0];
        zext_ln86_5_reg_1100[4 : 0] <= zext_ln86_5_fu_934_p1[4 : 0];
        zext_ln86_6_reg_1116[4 : 0] <= zext_ln86_6_fu_970_p1[4 : 0];
        zext_ln86_reg_1020[4 : 0] <= zext_ln86_fu_754_p1[4 : 0];
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_892)) begin
        if ((1'b1 == ap_condition_921)) begin
            alignedB_0_address0_local = zext_ln86_6_reg_1116;
        end else if ((1'b1 == ap_condition_913)) begin
            alignedB_0_address0_local = zext_ln86_5_reg_1100;
        end else if ((1'b1 == ap_condition_906)) begin
            alignedB_0_address0_local = zext_ln86_4_reg_1084;
        end else if ((1'b1 == ap_condition_900)) begin
            alignedB_0_address0_local = zext_ln86_3_reg_1068;
        end else if ((1'b1 == ap_condition_895)) begin
            alignedB_0_address0_local = zext_ln86_2_reg_1052;
        end else if (((icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd6))) begin
            alignedB_0_address0_local = zext_ln86_1_reg_1036;
        end else if ((trunc_ln86_reg_1016 == 3'd7)) begin
            alignedB_0_address0_local = zext_ln86_reg_1020;
        end else begin
            alignedB_0_address0_local = 'bx;
        end
    end else begin
        alignedB_0_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_7_reg_1128 == 1'd1) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd1) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd2) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032== 1'd1) & (trunc_ln86_reg_1016 == 3'd3) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd4) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd5) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd6) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_1_reg_1032 == 1'd1)& (trunc_ln86_reg_1016 == 3'd7) & (icmp_ln86_reg_1012 == 1'd1)))) begin
        alignedB_0_ce0_local = 1'b1;
    end else begin
        alignedB_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_0_ce1_local = 1'b1;
    end else begin
        alignedB_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_7_reg_1128 == 1'd1) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd1) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd2) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032== 1'd1) & (trunc_ln86_reg_1016 == 3'd3) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd4) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd5) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd6) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_1_reg_1032 == 1'd1)& (trunc_ln86_reg_1016 == 3'd7) & (icmp_ln86_reg_1012 == 1'd1)))) begin
        alignedB_0_we0_local = 1'b1;
    end else begin
        alignedB_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln86_fu_706_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln86_fu_712_p1 == 3'd0))) begin
        alignedB_0_we1_local = 1'b1;
    end else begin
        alignedB_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_892)) begin
        if ((1'b1 == ap_condition_939)) begin
            alignedB_1_address0_local = zext_ln86_6_reg_1116;
        end else if ((1'b1 == ap_condition_936)) begin
            alignedB_1_address0_local = zext_ln86_5_reg_1100;
        end else if ((1'b1 == ap_condition_933)) begin
            alignedB_1_address0_local = zext_ln86_4_reg_1084;
        end else if ((1'b1 == ap_condition_930)) begin
            alignedB_1_address0_local = zext_ln86_3_reg_1068;
        end else if ((1'b1 == ap_condition_927)) begin
            alignedB_1_address0_local = zext_ln86_2_reg_1052;
        end else if (((icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd7))) begin
            alignedB_1_address0_local = zext_ln86_1_reg_1036;
        end else if ((trunc_ln86_reg_1016 == 3'd0)) begin
            alignedB_1_address0_local = zext_ln86_reg_1020;
        end else begin
            alignedB_1_address0_local = 'bx;
        end
    end else begin
        alignedB_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_7_reg_1128 == 1'd1) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd2) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd3) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032== 1'd1) & (trunc_ln86_reg_1016 == 3'd4) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd5) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd6) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd7) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_1_reg_1032 == 1'd1)& (trunc_ln86_reg_1016 == 3'd0) & (icmp_ln86_reg_1012 == 1'd1)))) begin
        alignedB_1_ce0_local = 1'b1;
    end else begin
        alignedB_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_1_ce1_local = 1'b1;
    end else begin
        alignedB_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_7_reg_1128 == 1'd1) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd2) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd3) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032== 1'd1) & (trunc_ln86_reg_1016 == 3'd4) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd5) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd6) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd7) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_1_reg_1032 == 1'd1)& (trunc_ln86_reg_1016 == 3'd0) & (icmp_ln86_reg_1012 == 1'd1)))) begin
        alignedB_1_we0_local = 1'b1;
    end else begin
        alignedB_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln86_fu_706_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln86_fu_712_p1 == 3'd1))) begin
        alignedB_1_we1_local = 1'b1;
    end else begin
        alignedB_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_892)) begin
        if ((1'b1 == ap_condition_955)) begin
            alignedB_2_address0_local = zext_ln86_6_reg_1116;
        end else if ((1'b1 == ap_condition_952)) begin
            alignedB_2_address0_local = zext_ln86_5_reg_1100;
        end else if ((1'b1 == ap_condition_949)) begin
            alignedB_2_address0_local = zext_ln86_4_reg_1084;
        end else if ((1'b1 == ap_condition_946)) begin
            alignedB_2_address0_local = zext_ln86_3_reg_1068;
        end else if ((1'b1 == ap_condition_943)) begin
            alignedB_2_address0_local = zext_ln86_2_reg_1052;
        end else if (((icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd0))) begin
            alignedB_2_address0_local = zext_ln86_1_reg_1036;
        end else if ((trunc_ln86_reg_1016 == 3'd1)) begin
            alignedB_2_address0_local = zext_ln86_reg_1020;
        end else begin
            alignedB_2_address0_local = 'bx;
        end
    end else begin
        alignedB_2_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_7_reg_1128 == 1'd1) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd3) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd4) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032== 1'd1) & (trunc_ln86_reg_1016 == 3'd5) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd6) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd7) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd0) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_1_reg_1032 == 1'd1)& (trunc_ln86_reg_1016 == 3'd1) & (icmp_ln86_reg_1012 == 1'd1)))) begin
        alignedB_2_ce0_local = 1'b1;
    end else begin
        alignedB_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_2_ce1_local = 1'b1;
    end else begin
        alignedB_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_7_reg_1128 == 1'd1) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd3) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd4) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032== 1'd1) & (trunc_ln86_reg_1016 == 3'd5) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd6) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd7) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd0) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_1_reg_1032 == 1'd1)& (trunc_ln86_reg_1016 == 3'd1) & (icmp_ln86_reg_1012 == 1'd1)))) begin
        alignedB_2_we0_local = 1'b1;
    end else begin
        alignedB_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln86_fu_706_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln86_fu_712_p1 == 3'd2))) begin
        alignedB_2_we1_local = 1'b1;
    end else begin
        alignedB_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_892)) begin
        if ((1'b1 == ap_condition_971)) begin
            alignedB_3_address0_local = zext_ln86_6_reg_1116;
        end else if ((1'b1 == ap_condition_968)) begin
            alignedB_3_address0_local = zext_ln86_5_reg_1100;
        end else if ((1'b1 == ap_condition_965)) begin
            alignedB_3_address0_local = zext_ln86_4_reg_1084;
        end else if ((1'b1 == ap_condition_962)) begin
            alignedB_3_address0_local = zext_ln86_3_reg_1068;
        end else if ((1'b1 == ap_condition_959)) begin
            alignedB_3_address0_local = zext_ln86_2_reg_1052;
        end else if (((icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd1))) begin
            alignedB_3_address0_local = zext_ln86_1_reg_1036;
        end else if ((trunc_ln86_reg_1016 == 3'd2)) begin
            alignedB_3_address0_local = zext_ln86_reg_1020;
        end else begin
            alignedB_3_address0_local = 'bx;
        end
    end else begin
        alignedB_3_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_7_reg_1128 == 1'd1) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd4) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd5) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032== 1'd1) & (trunc_ln86_reg_1016 == 3'd6) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd7) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd0) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd1) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_1_reg_1032 == 1'd1)& (trunc_ln86_reg_1016 == 3'd2) & (icmp_ln86_reg_1012 == 1'd1)))) begin
        alignedB_3_ce0_local = 1'b1;
    end else begin
        alignedB_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_3_ce1_local = 1'b1;
    end else begin
        alignedB_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_7_reg_1128 == 1'd1) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd4) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd5) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032== 1'd1) & (trunc_ln86_reg_1016 == 3'd6) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd7) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd0) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd1) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_1_reg_1032 == 1'd1)& (trunc_ln86_reg_1016 == 3'd2) & (icmp_ln86_reg_1012 == 1'd1)))) begin
        alignedB_3_we0_local = 1'b1;
    end else begin
        alignedB_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln86_fu_706_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln86_fu_712_p1 == 3'd3))) begin
        alignedB_3_we1_local = 1'b1;
    end else begin
        alignedB_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_892)) begin
        if ((1'b1 == ap_condition_987)) begin
            alignedB_4_address0_local = zext_ln86_6_reg_1116;
        end else if ((1'b1 == ap_condition_984)) begin
            alignedB_4_address0_local = zext_ln86_5_reg_1100;
        end else if ((1'b1 == ap_condition_981)) begin
            alignedB_4_address0_local = zext_ln86_4_reg_1084;
        end else if ((1'b1 == ap_condition_978)) begin
            alignedB_4_address0_local = zext_ln86_3_reg_1068;
        end else if ((1'b1 == ap_condition_975)) begin
            alignedB_4_address0_local = zext_ln86_2_reg_1052;
        end else if (((icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd2))) begin
            alignedB_4_address0_local = zext_ln86_1_reg_1036;
        end else if ((trunc_ln86_reg_1016 == 3'd3)) begin
            alignedB_4_address0_local = zext_ln86_reg_1020;
        end else begin
            alignedB_4_address0_local = 'bx;
        end
    end else begin
        alignedB_4_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_7_reg_1128 == 1'd1) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd5) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd6) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032== 1'd1) & (trunc_ln86_reg_1016 == 3'd7) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd0) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd1) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd2) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_1_reg_1032 == 1'd1)& (trunc_ln86_reg_1016 == 3'd3) & (icmp_ln86_reg_1012 == 1'd1)))) begin
        alignedB_4_ce0_local = 1'b1;
    end else begin
        alignedB_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_4_ce1_local = 1'b1;
    end else begin
        alignedB_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_7_reg_1128 == 1'd1) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd5) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd6) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032== 1'd1) & (trunc_ln86_reg_1016 == 3'd7) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd0) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd1) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd2) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_1_reg_1032 == 1'd1)& (trunc_ln86_reg_1016 == 3'd3) & (icmp_ln86_reg_1012 == 1'd1)))) begin
        alignedB_4_we0_local = 1'b1;
    end else begin
        alignedB_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln86_fu_706_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln86_fu_712_p1 == 3'd4))) begin
        alignedB_4_we1_local = 1'b1;
    end else begin
        alignedB_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_892)) begin
        if ((1'b1 == ap_condition_1003)) begin
            alignedB_5_address0_local = zext_ln86_6_reg_1116;
        end else if ((1'b1 == ap_condition_1000)) begin
            alignedB_5_address0_local = zext_ln86_5_reg_1100;
        end else if ((1'b1 == ap_condition_997)) begin
            alignedB_5_address0_local = zext_ln86_4_reg_1084;
        end else if ((1'b1 == ap_condition_994)) begin
            alignedB_5_address0_local = zext_ln86_3_reg_1068;
        end else if ((1'b1 == ap_condition_991)) begin
            alignedB_5_address0_local = zext_ln86_2_reg_1052;
        end else if (((icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd3))) begin
            alignedB_5_address0_local = zext_ln86_1_reg_1036;
        end else if ((trunc_ln86_reg_1016 == 3'd4)) begin
            alignedB_5_address0_local = zext_ln86_reg_1020;
        end else begin
            alignedB_5_address0_local = 'bx;
        end
    end else begin
        alignedB_5_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_7_reg_1128 == 1'd1) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd6) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd7) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032== 1'd1) & (trunc_ln86_reg_1016 == 3'd0) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd1) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd2) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd3) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_1_reg_1032 == 1'd1)& (trunc_ln86_reg_1016 == 3'd4) & (icmp_ln86_reg_1012 == 1'd1)))) begin
        alignedB_5_ce0_local = 1'b1;
    end else begin
        alignedB_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_5_ce1_local = 1'b1;
    end else begin
        alignedB_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_7_reg_1128 == 1'd1) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd6) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd7) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032== 1'd1) & (trunc_ln86_reg_1016 == 3'd0) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd1) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd2) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd3) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_1_reg_1032 == 1'd1)& (trunc_ln86_reg_1016 == 3'd4) & (icmp_ln86_reg_1012 == 1'd1)))) begin
        alignedB_5_we0_local = 1'b1;
    end else begin
        alignedB_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln86_fu_706_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln86_fu_712_p1 == 3'd5))) begin
        alignedB_5_we1_local = 1'b1;
    end else begin
        alignedB_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_892)) begin
        if ((1'b1 == ap_condition_1019)) begin
            alignedB_6_address0_local = zext_ln86_6_reg_1116;
        end else if ((1'b1 == ap_condition_1016)) begin
            alignedB_6_address0_local = zext_ln86_5_reg_1100;
        end else if ((1'b1 == ap_condition_1013)) begin
            alignedB_6_address0_local = zext_ln86_4_reg_1084;
        end else if ((1'b1 == ap_condition_1010)) begin
            alignedB_6_address0_local = zext_ln86_3_reg_1068;
        end else if ((1'b1 == ap_condition_1007)) begin
            alignedB_6_address0_local = zext_ln86_2_reg_1052;
        end else if (((icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd4))) begin
            alignedB_6_address0_local = zext_ln86_1_reg_1036;
        end else if ((trunc_ln86_reg_1016 == 3'd5)) begin
            alignedB_6_address0_local = zext_ln86_reg_1020;
        end else begin
            alignedB_6_address0_local = 'bx;
        end
    end else begin
        alignedB_6_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_7_reg_1128 == 1'd1) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd7) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd0) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032== 1'd1) & (trunc_ln86_reg_1016 == 3'd1) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd2) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd3) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd4) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_1_reg_1032 == 1'd1)& (trunc_ln86_reg_1016 == 3'd5) & (icmp_ln86_reg_1012 == 1'd1)))) begin
        alignedB_6_ce0_local = 1'b1;
    end else begin
        alignedB_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_6_ce1_local = 1'b1;
    end else begin
        alignedB_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_7_reg_1128 == 1'd1) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd7) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd0) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032== 1'd1) & (trunc_ln86_reg_1016 == 3'd1) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd2) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd3) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd4) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_1_reg_1032 == 1'd1)& (trunc_ln86_reg_1016 == 3'd5) & (icmp_ln86_reg_1012 == 1'd1)))) begin
        alignedB_6_we0_local = 1'b1;
    end else begin
        alignedB_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln86_fu_706_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln86_fu_712_p1 == 3'd6))) begin
        alignedB_6_we1_local = 1'b1;
    end else begin
        alignedB_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_892)) begin
        if ((1'b1 == ap_condition_1035)) begin
            alignedB_7_address0_local = zext_ln86_6_reg_1116;
        end else if ((1'b1 == ap_condition_1032)) begin
            alignedB_7_address0_local = zext_ln86_5_reg_1100;
        end else if ((1'b1 == ap_condition_1029)) begin
            alignedB_7_address0_local = zext_ln86_4_reg_1084;
        end else if ((1'b1 == ap_condition_1026)) begin
            alignedB_7_address0_local = zext_ln86_3_reg_1068;
        end else if ((1'b1 == ap_condition_1023)) begin
            alignedB_7_address0_local = zext_ln86_2_reg_1052;
        end else if (((icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd5))) begin
            alignedB_7_address0_local = zext_ln86_1_reg_1036;
        end else if ((trunc_ln86_reg_1016 == 3'd6)) begin
            alignedB_7_address0_local = zext_ln86_reg_1020;
        end else begin
            alignedB_7_address0_local = 'bx;
        end
    end else begin
        alignedB_7_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_7_reg_1128 == 1'd1) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd0) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd1) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032== 1'd1) & (trunc_ln86_reg_1016 == 3'd2) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd3) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd4) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd5) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_1_reg_1032 == 1'd1)& (trunc_ln86_reg_1016 == 3'd6) & (icmp_ln86_reg_1012 == 1'd1)))) begin
        alignedB_7_ce0_local = 1'b1;
    end else begin
        alignedB_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_7_ce1_local = 1'b1;
    end else begin
        alignedB_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_7_reg_1128 == 1'd1) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd0) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd1) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032== 1'd1) & (trunc_ln86_reg_1016 == 3'd2) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd3) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd4) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (trunc_ln86_reg_1016 == 3'd5) & (icmp_ln86_reg_1012 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_1_reg_1032 == 1'd1)& (trunc_ln86_reg_1016 == 3'd6) & (icmp_ln86_reg_1012 == 1'd1)))) begin
        alignedB_7_we0_local = 1'b1;
    end else begin
        alignedB_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln86_fu_706_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln86_fu_712_p1 == 3'd7))) begin
        alignedB_7_we1_local = 1'b1;
    end else begin
        alignedB_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln86_fu_706_p2 == 1'd0) | ((icmp_ln86_1_fu_768_p2 == 1'd0) | ((icmp_ln86_2_fu_804_p2 == 1'd0) | ((icmp_ln86_3_fu_840_p2 == 1'd0) | ((icmp_ln86_4_fu_876_p2 == 1'd0) | ((icmp_ln86_5_fu_912_p2 == 1'd0) | ((icmp_ln86_6_fu_948_p2 == 1'd0) | (icmp_ln86_7_fu_984_p2 == 1'd0)))))))))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            ap_sig_allocacmp_b_str_idx_2 = b_str_idx_7;
        end else if ((1'b1 == ap_condition_1046)) begin
            ap_sig_allocacmp_b_str_idx_2 = add_ln86_7_fu_990_p2;
        end else begin
            ap_sig_allocacmp_b_str_idx_2 = b_str_idx_fu_78;
        end
    end else begin
        ap_sig_allocacmp_b_str_idx_2 = b_str_idx_fu_78;
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
assign add_ln86_1_fu_774_p2 = (ap_sig_allocacmp_b_str_idx_2 + 32'd2);
assign add_ln86_2_fu_810_p2 = (ap_sig_allocacmp_b_str_idx_2 + 32'd3);
assign add_ln86_3_fu_846_p2 = (ap_sig_allocacmp_b_str_idx_2 + 32'd4);
assign add_ln86_4_fu_882_p2 = (ap_sig_allocacmp_b_str_idx_2 + 32'd5);
assign add_ln86_5_fu_918_p2 = (ap_sig_allocacmp_b_str_idx_2 + 32'd6);
assign add_ln86_6_fu_954_p2 = (ap_sig_allocacmp_b_str_idx_2 + 32'd7);
assign add_ln86_7_fu_990_p2 = (b_str_idx_2_reg_1007 + 32'd8);
assign add_ln86_fu_738_p2 = (ap_sig_allocacmp_b_str_idx_2 + 32'd1);
assign alignedB_0_address0 = alignedB_0_address0_local;
assign alignedB_0_address1 = zext_ln18_fu_726_p1;
assign alignedB_0_ce0 = alignedB_0_ce0_local;
assign alignedB_0_ce1 = alignedB_0_ce1_local;
assign alignedB_0_d0 = 8'd95;
assign alignedB_0_d1 = 8'd95;
assign alignedB_0_we0 = alignedB_0_we0_local;
assign alignedB_0_we1 = alignedB_0_we1_local;
assign alignedB_1_address0 = alignedB_1_address0_local;
assign alignedB_1_address1 = zext_ln18_fu_726_p1;
assign alignedB_1_ce0 = alignedB_1_ce0_local;
assign alignedB_1_ce1 = alignedB_1_ce1_local;
assign alignedB_1_d0 = 8'd95;
assign alignedB_1_d1 = 8'd95;
assign alignedB_1_we0 = alignedB_1_we0_local;
assign alignedB_1_we1 = alignedB_1_we1_local;
assign alignedB_2_address0 = alignedB_2_address0_local;
assign alignedB_2_address1 = zext_ln18_fu_726_p1;
assign alignedB_2_ce0 = alignedB_2_ce0_local;
assign alignedB_2_ce1 = alignedB_2_ce1_local;
assign alignedB_2_d0 = 8'd95;
assign alignedB_2_d1 = 8'd95;
assign alignedB_2_we0 = alignedB_2_we0_local;
assign alignedB_2_we1 = alignedB_2_we1_local;
assign alignedB_3_address0 = alignedB_3_address0_local;
assign alignedB_3_address1 = zext_ln18_fu_726_p1;
assign alignedB_3_ce0 = alignedB_3_ce0_local;
assign alignedB_3_ce1 = alignedB_3_ce1_local;
assign alignedB_3_d0 = 8'd95;
assign alignedB_3_d1 = 8'd95;
assign alignedB_3_we0 = alignedB_3_we0_local;
assign alignedB_3_we1 = alignedB_3_we1_local;
assign alignedB_4_address0 = alignedB_4_address0_local;
assign alignedB_4_address1 = zext_ln18_fu_726_p1;
assign alignedB_4_ce0 = alignedB_4_ce0_local;
assign alignedB_4_ce1 = alignedB_4_ce1_local;
assign alignedB_4_d0 = 8'd95;
assign alignedB_4_d1 = 8'd95;
assign alignedB_4_we0 = alignedB_4_we0_local;
assign alignedB_4_we1 = alignedB_4_we1_local;
assign alignedB_5_address0 = alignedB_5_address0_local;
assign alignedB_5_address1 = zext_ln18_fu_726_p1;
assign alignedB_5_ce0 = alignedB_5_ce0_local;
assign alignedB_5_ce1 = alignedB_5_ce1_local;
assign alignedB_5_d0 = 8'd95;
assign alignedB_5_d1 = 8'd95;
assign alignedB_5_we0 = alignedB_5_we0_local;
assign alignedB_5_we1 = alignedB_5_we1_local;
assign alignedB_6_address0 = alignedB_6_address0_local;
assign alignedB_6_address1 = zext_ln18_fu_726_p1;
assign alignedB_6_ce0 = alignedB_6_ce0_local;
assign alignedB_6_ce1 = alignedB_6_ce1_local;
assign alignedB_6_d0 = 8'd95;
assign alignedB_6_d1 = 8'd95;
assign alignedB_6_we0 = alignedB_6_we0_local;
assign alignedB_6_we1 = alignedB_6_we1_local;
assign alignedB_7_address0 = alignedB_7_address0_local;
assign alignedB_7_address1 = zext_ln18_fu_726_p1;
assign alignedB_7_ce0 = alignedB_7_ce0_local;
assign alignedB_7_ce1 = alignedB_7_ce1_local;
assign alignedB_7_d0 = 8'd95;
assign alignedB_7_d1 = 8'd95;
assign alignedB_7_we0 = alignedB_7_we0_local;
assign alignedB_7_we1 = alignedB_7_we1_local;
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1000 = ((icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd7));
end
always @ (*) begin
    ap_condition_1003 = ((icmp_ln86_7_reg_1128 == 1'd1) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd6));
end
always @ (*) begin
    ap_condition_1007 = ((icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd3));
end
always @ (*) begin
    ap_condition_1010 = ((icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd2));
end
always @ (*) begin
    ap_condition_1013 = ((icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd1));
end
always @ (*) begin
    ap_condition_1016 = ((icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd0));
end
always @ (*) begin
    ap_condition_1019 = ((icmp_ln86_7_reg_1128 == 1'd1) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd7));
end
always @ (*) begin
    ap_condition_1023 = ((icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd4));
end
always @ (*) begin
    ap_condition_1026 = ((icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd3));
end
always @ (*) begin
    ap_condition_1029 = ((icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd2));
end
always @ (*) begin
    ap_condition_1032 = ((icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd1));
end
always @ (*) begin
    ap_condition_1035 = ((icmp_ln86_7_reg_1128 == 1'd1) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd0));
end
always @ (*) begin
    ap_condition_1046 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln86_7_reg_1128 == 1'd1) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (icmp_ln86_1_reg_1032 == 1'd1) & (icmp_ln86_reg_1012 == 1'd1));
end
always @ (*) begin
    ap_condition_892 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_1_reg_1032 == 1'd1) & (icmp_ln86_reg_1012 == 1'd1));
end
always @ (*) begin
    ap_condition_895 = ((icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd5));
end
always @ (*) begin
    ap_condition_900 = ((icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd4));
end
always @ (*) begin
    ap_condition_906 = ((icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd3));
end
always @ (*) begin
    ap_condition_913 = ((icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd2));
end
always @ (*) begin
    ap_condition_921 = ((icmp_ln86_7_reg_1128 == 1'd1) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd1));
end
always @ (*) begin
    ap_condition_927 = ((icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd6));
end
always @ (*) begin
    ap_condition_930 = ((icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd5));
end
always @ (*) begin
    ap_condition_933 = ((icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd4));
end
always @ (*) begin
    ap_condition_936 = ((icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd3));
end
always @ (*) begin
    ap_condition_939 = ((icmp_ln86_7_reg_1128 == 1'd1) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd2));
end
always @ (*) begin
    ap_condition_943 = ((icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd7));
end
always @ (*) begin
    ap_condition_946 = ((icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd6));
end
always @ (*) begin
    ap_condition_949 = ((icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd5));
end
always @ (*) begin
    ap_condition_952 = ((icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd4));
end
always @ (*) begin
    ap_condition_955 = ((icmp_ln86_7_reg_1128 == 1'd1) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd3));
end
always @ (*) begin
    ap_condition_959 = ((icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd0));
end
always @ (*) begin
    ap_condition_962 = ((icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd7));
end
always @ (*) begin
    ap_condition_965 = ((icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd6));
end
always @ (*) begin
    ap_condition_968 = ((icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd5));
end
always @ (*) begin
    ap_condition_971 = ((icmp_ln86_7_reg_1128 == 1'd1) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd4));
end
always @ (*) begin
    ap_condition_975 = ((icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd1));
end
always @ (*) begin
    ap_condition_978 = ((icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd0));
end
always @ (*) begin
    ap_condition_981 = ((icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd7));
end
always @ (*) begin
    ap_condition_984 = ((icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd6));
end
always @ (*) begin
    ap_condition_987 = ((icmp_ln86_7_reg_1128 == 1'd1) & (icmp_ln86_6_reg_1112 == 1'd1) & (icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd5));
end
always @ (*) begin
    ap_condition_991 = ((icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd2));
end
always @ (*) begin
    ap_condition_994 = ((icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd1));
end
always @ (*) begin
    ap_condition_997 = ((icmp_ln86_5_reg_1096 == 1'd1) & (icmp_ln86_4_reg_1080 == 1'd1) & (icmp_ln86_3_reg_1064 == 1'd1) & (icmp_ln86_2_reg_1048 == 1'd1) & (trunc_ln86_reg_1016 == 3'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln86_1_fu_768_p2 = (($signed(tmp_1_fu_758_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_2_fu_804_p2 = (($signed(tmp_2_fu_794_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_3_fu_840_p2 = (($signed(tmp_3_fu_830_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_4_fu_876_p2 = (($signed(tmp_4_fu_866_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_5_fu_912_p2 = (($signed(tmp_5_fu_902_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_6_fu_948_p2 = (($signed(tmp_6_fu_938_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_7_fu_984_p2 = (($signed(tmp_7_fu_974_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_fu_706_p2 = (($signed(tmp_fu_696_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign lshr_ln18_2_fu_716_p4 = {{ap_sig_allocacmp_b_str_idx_2[7:3]}};
assign lshr_ln86_1_fu_780_p4 = {{add_ln86_1_fu_774_p2[7:3]}};
assign lshr_ln86_2_fu_816_p4 = {{add_ln86_2_fu_810_p2[7:3]}};
assign lshr_ln86_3_fu_852_p4 = {{add_ln86_3_fu_846_p2[7:3]}};
assign lshr_ln86_4_fu_888_p4 = {{add_ln86_4_fu_882_p2[7:3]}};
assign lshr_ln86_5_fu_924_p4 = {{add_ln86_5_fu_918_p2[7:3]}};
assign lshr_ln86_6_fu_960_p4 = {{add_ln86_6_fu_954_p2[7:3]}};
assign lshr_ln_fu_744_p4 = {{add_ln86_fu_738_p2[7:3]}};
assign tmp_1_fu_758_p4 = {{add_ln86_fu_738_p2[31:8]}};
assign tmp_2_fu_794_p4 = {{add_ln86_1_fu_774_p2[31:8]}};
assign tmp_3_fu_830_p4 = {{add_ln86_2_fu_810_p2[31:8]}};
assign tmp_4_fu_866_p4 = {{add_ln86_3_fu_846_p2[31:8]}};
assign tmp_5_fu_902_p4 = {{add_ln86_4_fu_882_p2[31:8]}};
assign tmp_6_fu_938_p4 = {{add_ln86_5_fu_918_p2[31:8]}};
assign tmp_7_fu_974_p4 = {{add_ln86_6_fu_954_p2[31:8]}};
assign tmp_fu_696_p4 = {{ap_sig_allocacmp_b_str_idx_2[31:8]}};
assign trunc_ln86_fu_712_p1 = ap_sig_allocacmp_b_str_idx_2[2:0];
assign zext_ln18_fu_726_p1 = lshr_ln18_2_fu_716_p4;
assign zext_ln86_1_fu_790_p1 = lshr_ln86_1_fu_780_p4;
assign zext_ln86_2_fu_826_p1 = lshr_ln86_2_fu_816_p4;
assign zext_ln86_3_fu_862_p1 = lshr_ln86_3_fu_852_p4;
assign zext_ln86_4_fu_898_p1 = lshr_ln86_4_fu_888_p4;
assign zext_ln86_5_fu_934_p1 = lshr_ln86_5_fu_924_p4;
assign zext_ln86_6_fu_970_p1 = lshr_ln86_6_fu_960_p4;
assign zext_ln86_fu_754_p1 = lshr_ln_fu_744_p4;
always @ (posedge ap_clk) begin
    zext_ln86_reg_1020[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln86_1_reg_1036[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln86_2_reg_1052[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln86_3_reg_1068[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln86_4_reg_1084[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln86_5_reg_1100[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln86_6_reg_1116[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
end
endmodule 