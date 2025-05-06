
module bicg_bicg_node2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v140_address0,v140_ce0,v140_q0,v138_0_address0,v138_0_ce0,v138_0_q0,v138_1_address0,v138_1_ce0,v138_1_q0,v138_2_address0,v138_2_ce0,v138_2_q0,v138_3_address0,v138_3_ce0,v138_3_q0,v138_4_address0,v138_4_ce0,v138_4_q0,v138_5_address0,v138_5_ce0,v138_5_q0,v138_6_address0,v138_6_ce0,v138_6_q0,v138_7_address0,v138_7_ce0,v138_7_q0,v65_0_address0,v65_0_ce0,v65_0_we0,v65_0_d0,v65_0_address1,v65_0_ce1,v65_0_q1,v65_1_address0,v65_1_ce0,v65_1_we0,v65_1_d0,v65_1_address1,v65_1_ce1,v65_1_q1,v65_2_address0,v65_2_ce0,v65_2_we0,v65_2_d0,v65_2_address1,v65_2_ce1,v65_2_q1,v65_3_address0,v65_3_ce0,v65_3_we0,v65_3_d0,v65_3_address1,v65_3_ce1,v65_3_q1,v65_4_address0,v65_4_ce0,v65_4_we0,v65_4_d0,v65_4_q0,v65_5_address0,v65_5_ce0,v65_5_we0,v65_5_d0,v65_5_q0,v65_6_address0,v65_6_ce0,v65_6_we0,v65_6_d0,v65_6_q0,v65_7_address0,v65_7_ce0,v65_7_we0,v65_7_d0,v65_7_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] v140_address0;
output   v140_ce0;
input  [31:0] v140_q0;
output  [8:0] v138_0_address0;
output   v138_0_ce0;
input  [31:0] v138_0_q0;
output  [8:0] v138_1_address0;
output   v138_1_ce0;
input  [31:0] v138_1_q0;
output  [8:0] v138_2_address0;
output   v138_2_ce0;
input  [31:0] v138_2_q0;
output  [8:0] v138_3_address0;
output   v138_3_ce0;
input  [31:0] v138_3_q0;
output  [8:0] v138_4_address0;
output   v138_4_ce0;
input  [31:0] v138_4_q0;
output  [8:0] v138_5_address0;
output   v138_5_ce0;
input  [31:0] v138_5_q0;
output  [8:0] v138_6_address0;
output   v138_6_ce0;
input  [31:0] v138_6_q0;
output  [8:0] v138_7_address0;
output   v138_7_ce0;
input  [31:0] v138_7_q0;
output  [2:0] v65_0_address0;
output   v65_0_ce0;
output   v65_0_we0;
output  [31:0] v65_0_d0;
output  [2:0] v65_0_address1;
output   v65_0_ce1;
input  [31:0] v65_0_q1;
output  [2:0] v65_1_address0;
output   v65_1_ce0;
output   v65_1_we0;
output  [31:0] v65_1_d0;
output  [2:0] v65_1_address1;
output   v65_1_ce1;
input  [31:0] v65_1_q1;
output  [2:0] v65_2_address0;
output   v65_2_ce0;
output   v65_2_we0;
output  [31:0] v65_2_d0;
output  [2:0] v65_2_address1;
output   v65_2_ce1;
input  [31:0] v65_2_q1;
output  [2:0] v65_3_address0;
output   v65_3_ce0;
output   v65_3_we0;
output  [31:0] v65_3_d0;
output  [2:0] v65_3_address1;
output   v65_3_ce1;
input  [31:0] v65_3_q1;
output  [2:0] v65_4_address0;
output   v65_4_ce0;
output   v65_4_we0;
output  [31:0] v65_4_d0;
input  [31:0] v65_4_q0;
output  [2:0] v65_5_address0;
output   v65_5_ce0;
output   v65_5_we0;
output  [31:0] v65_5_d0;
input  [31:0] v65_5_q0;
output  [2:0] v65_6_address0;
output   v65_6_ce0;
output   v65_6_we0;
output  [31:0] v65_6_d0;
input  [31:0] v65_6_q0;
output  [2:0] v65_7_address0;
output   v65_7_ce0;
output   v65_7_we0;
output  [31:0] v65_7_d0;
input  [31:0] v65_7_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] icmp_ln111_fu_407_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_333_p2;
reg   [31:0] reg_365;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] grp_fu_337_p2;
reg   [31:0] reg_371;
wire   [31:0] grp_fu_341_p2;
reg   [31:0] reg_377;
wire   [31:0] grp_fu_345_p2;
reg   [31:0] reg_383;
wire   [6:0] select_ln110_fu_439_p3;
reg   [6:0] select_ln110_reg_675;
wire   [0:0] cmp10_fu_464_p2;
reg   [0:0] cmp10_reg_686;
reg   [0:0] cmp10_reg_686_pp0_iter1_reg;
reg   [0:0] cmp10_reg_686_pp0_iter2_reg;
wire   [2:0] lshr_ln_fu_470_p4;
reg   [2:0] lshr_ln_reg_698;
reg   [2:0] lshr_ln_reg_698_pp0_iter1_reg;
wire   [31:0] v66_fu_522_p3;
reg   [31:0] v66_reg_743;
reg   [31:0] v138_0_load_reg_751;
reg   [31:0] v138_1_load_reg_756;
reg   [31:0] v138_2_load_reg_761;
reg   [31:0] v138_3_load_reg_766;
reg   [31:0] v138_4_load_reg_771;
reg   [31:0] v138_5_load_reg_776;
reg   [31:0] v138_6_load_reg_781;
reg   [31:0] v138_7_load_reg_786;
wire   [31:0] v75_fu_545_p1;
wire   [31:0] v83_fu_549_p1;
wire   [31:0] v91_fu_553_p1;
wire   [31:0] v99_fu_557_p1;
reg   [2:0] v65_0_addr_reg_811;
reg   [2:0] v65_0_addr_reg_811_pp0_iter3_reg;
reg   [2:0] v65_0_addr_reg_811_pp0_iter4_reg;
reg   [2:0] v65_0_addr_reg_811_pp0_iter5_reg;
reg   [2:0] v65_0_addr_reg_811_pp0_iter6_reg;
reg   [2:0] v65_1_addr_reg_817;
reg   [2:0] v65_1_addr_reg_817_pp0_iter3_reg;
reg   [2:0] v65_1_addr_reg_817_pp0_iter4_reg;
reg   [2:0] v65_1_addr_reg_817_pp0_iter5_reg;
reg   [2:0] v65_1_addr_reg_817_pp0_iter6_reg;
reg   [2:0] v65_2_addr_reg_823;
reg   [2:0] v65_2_addr_reg_823_pp0_iter3_reg;
reg   [2:0] v65_2_addr_reg_823_pp0_iter4_reg;
reg   [2:0] v65_2_addr_reg_823_pp0_iter5_reg;
reg   [2:0] v65_2_addr_reg_823_pp0_iter6_reg;
reg   [2:0] v65_3_addr_reg_829;
reg   [2:0] v65_3_addr_reg_829_pp0_iter3_reg;
reg   [2:0] v65_3_addr_reg_829_pp0_iter4_reg;
reg   [2:0] v65_3_addr_reg_829_pp0_iter5_reg;
reg   [2:0] v65_3_addr_reg_829_pp0_iter6_reg;
reg   [2:0] v65_4_addr_reg_835;
reg   [2:0] v65_4_addr_reg_835_pp0_iter3_reg;
reg   [2:0] v65_4_addr_reg_835_pp0_iter4_reg;
reg   [2:0] v65_4_addr_reg_835_pp0_iter5_reg;
reg   [2:0] v65_4_addr_reg_835_pp0_iter6_reg;
reg   [2:0] v65_4_addr_reg_835_pp0_iter7_reg;
wire   [31:0] v107_fu_572_p1;
reg   [2:0] v65_5_addr_reg_845;
reg   [2:0] v65_5_addr_reg_845_pp0_iter3_reg;
reg   [2:0] v65_5_addr_reg_845_pp0_iter4_reg;
reg   [2:0] v65_5_addr_reg_845_pp0_iter5_reg;
reg   [2:0] v65_5_addr_reg_845_pp0_iter6_reg;
reg   [2:0] v65_5_addr_reg_845_pp0_iter7_reg;
wire   [31:0] v115_fu_576_p1;
reg   [2:0] v65_6_addr_reg_855;
reg   [2:0] v65_6_addr_reg_855_pp0_iter3_reg;
reg   [2:0] v65_6_addr_reg_855_pp0_iter4_reg;
reg   [2:0] v65_6_addr_reg_855_pp0_iter5_reg;
reg   [2:0] v65_6_addr_reg_855_pp0_iter6_reg;
reg   [2:0] v65_6_addr_reg_855_pp0_iter7_reg;
wire   [31:0] v123_fu_580_p1;
reg   [2:0] v65_7_addr_reg_865;
reg   [2:0] v65_7_addr_reg_865_pp0_iter3_reg;
reg   [2:0] v65_7_addr_reg_865_pp0_iter4_reg;
reg   [2:0] v65_7_addr_reg_865_pp0_iter5_reg;
reg   [2:0] v65_7_addr_reg_865_pp0_iter6_reg;
reg   [2:0] v65_7_addr_reg_865_pp0_iter7_reg;
wire   [31:0] v131_fu_584_p1;
reg   [31:0] v73_reg_875;
reg   [31:0] v81_reg_880;
reg   [31:0] v89_reg_885;
reg   [31:0] v97_reg_890;
wire   [31:0] grp_fu_349_p2;
reg   [31:0] v76_reg_895;
wire   [31:0] grp_fu_353_p2;
reg   [31:0] v84_reg_900;
wire   [31:0] grp_fu_357_p2;
reg   [31:0] v92_reg_905;
wire   [31:0] grp_fu_361_p2;
reg   [31:0] v100_reg_910;
wire   [31:0] v74_fu_588_p3;
reg   [31:0] v108_reg_920;
reg   [31:0] v116_reg_925;
reg   [31:0] v124_reg_930;
reg   [31:0] v132_reg_935;
wire   [31:0] v82_fu_595_p3;
wire   [31:0] v90_fu_602_p3;
wire   [31:0] v98_fu_609_p3;
wire   [31:0] v106_fu_616_p3;
reg   [31:0] v106_reg_955;
wire   [31:0] v114_fu_623_p3;
reg   [31:0] v114_reg_960;
wire   [31:0] v122_fu_630_p3;
reg   [31:0] v122_reg_965;
wire   [31:0] v130_fu_637_p3;
reg   [31:0] v130_reg_970;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln111_fu_459_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln119_fu_488_p1;
wire   [63:0] zext_ln113_fu_561_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] v66_1_fu_84;
reg   [6:0] v126_fu_88;
wire   [6:0] add_ln112_fu_530_p2;
wire    ap_loop_init;
reg   [6:0] v67_fu_92;
wire   [6:0] select_ln111_fu_447_p3;
reg   [9:0] indvar_flatten_fu_96;
wire   [9:0] add_ln111_1_fu_413_p2;
reg    v140_ce0_local;
reg    v138_0_ce0_local;
reg    v138_1_ce0_local;
reg    v138_2_ce0_local;
reg    v138_3_ce0_local;
reg    v138_4_ce0_local;
reg    v138_5_ce0_local;
reg    v138_6_ce0_local;
reg    v138_7_ce0_local;
reg    v65_0_ce1_local;
reg    v65_0_we0_local;
reg    v65_0_ce0_local;
reg    v65_1_ce1_local;
reg    v65_1_we0_local;
reg    v65_1_ce0_local;
reg    v65_2_ce1_local;
reg    v65_2_we0_local;
reg    v65_2_ce0_local;
reg    v65_3_ce1_local;
reg    v65_3_we0_local;
reg    v65_3_ce0_local;
reg    v65_4_ce0_local;
reg   [2:0] v65_4_address0_local;
reg    v65_4_we0_local;
reg    v65_5_ce0_local;
reg   [2:0] v65_5_address0_local;
reg    v65_5_we0_local;
reg    v65_6_ce0_local;
reg   [2:0] v65_6_address0_local;
reg    v65_6_we0_local;
reg    v65_7_ce0_local;
reg   [2:0] v65_7_address0_local;
reg    v65_7_we0_local;
reg   [31:0] grp_fu_333_p0;
reg   [31:0] grp_fu_333_p1;
reg   [31:0] grp_fu_337_p0;
reg   [31:0] grp_fu_337_p1;
reg   [31:0] grp_fu_341_p0;
reg   [31:0] grp_fu_341_p1;
reg   [31:0] grp_fu_345_p0;
reg   [31:0] grp_fu_345_p1;
reg   [31:0] grp_fu_349_p0;
reg   [31:0] grp_fu_353_p0;
reg   [31:0] grp_fu_357_p0;
reg   [31:0] grp_fu_361_p0;
wire   [0:0] tmp_1_fu_431_p3;
wire   [6:0] add_ln111_fu_425_p2;
wire   [5:0] trunc_ln111_fu_455_p1;
wire   [8:0] tmp_fu_480_p3;
wire   [0:0] icmp_ln115_fu_517_p2;
wire   [31:0] v69_fu_513_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to7;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v66_1_fu_84 = 32'd0;
#0 v126_fu_88 = 7'd0;
#0 v67_fu_92 = 7'd0;
#0 indvar_flatten_fu_96 = 10'd0;
#0 ap_done_reg = 1'b0;
end
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_333_p0),.din1(grp_fu_333_p1),.ce(1'b1),.dout(grp_fu_333_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_337_p0),.din1(grp_fu_337_p1),.ce(1'b1),.dout(grp_fu_337_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_341_p0),.din1(grp_fu_341_p1),.ce(1'b1),.dout(grp_fu_341_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_345_p0),.din1(grp_fu_345_p1),.ce(1'b1),.dout(grp_fu_345_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U5(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_349_p0),.din1(v66_reg_743),.ce(1'b1),.dout(grp_fu_349_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U6(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_353_p0),.din1(v66_reg_743),.ce(1'b1),.dout(grp_fu_353_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U7(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_357_p0),.din1(v66_reg_743),.ce(1'b1),.dout(grp_fu_357_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U8(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_361_p0),.din1(v66_reg_743),.ce(1'b1),.dout(grp_fu_361_p2));
bicg_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_fu_96 <= 10'd0;
    end else if (((icmp_ln111_fu_407_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten_fu_96 <= add_ln111_1_fu_413_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v126_fu_88 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v126_fu_88 <= add_ln112_fu_530_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v67_fu_92 <= 7'd0;
    end else if (((icmp_ln111_fu_407_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v67_fu_92 <= select_ln111_fu_447_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        cmp10_reg_686 <= cmp10_fu_464_p2;
        cmp10_reg_686_pp0_iter1_reg <= cmp10_reg_686;
        cmp10_reg_686_pp0_iter2_reg <= cmp10_reg_686_pp0_iter1_reg;
        lshr_ln_reg_698 <= {{select_ln110_fu_439_p3[5:3]}};
        lshr_ln_reg_698_pp0_iter1_reg <= lshr_ln_reg_698;
        select_ln110_reg_675 <= select_ln110_fu_439_p3;
        v106_reg_955 <= v106_fu_616_p3;
        v114_reg_960 <= v114_fu_623_p3;
        v122_reg_965 <= v122_fu_630_p3;
        v130_reg_970 <= v130_fu_637_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_365 <= grp_fu_333_p2;
        reg_371 <= grp_fu_337_p2;
        reg_377 <= grp_fu_341_p2;
        reg_383 <= grp_fu_345_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v100_reg_910 <= grp_fu_361_p2;
        v76_reg_895 <= grp_fu_349_p2;
        v84_reg_900 <= grp_fu_353_p2;
        v92_reg_905 <= grp_fu_357_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v108_reg_920 <= grp_fu_349_p2;
        v116_reg_925 <= grp_fu_353_p2;
        v124_reg_930 <= grp_fu_357_p2;
        v132_reg_935 <= grp_fu_361_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v138_0_load_reg_751 <= v138_0_q0;
        v138_1_load_reg_756 <= v138_1_q0;
        v138_2_load_reg_761 <= v138_2_q0;
        v138_3_load_reg_766 <= v138_3_q0;
        v138_4_load_reg_771 <= v138_4_q0;
        v138_5_load_reg_776 <= v138_5_q0;
        v138_6_load_reg_781 <= v138_6_q0;
        v138_7_load_reg_786 <= v138_7_q0;
        v65_0_addr_reg_811 <= zext_ln113_fu_561_p1;
        v65_0_addr_reg_811_pp0_iter3_reg <= v65_0_addr_reg_811;
        v65_0_addr_reg_811_pp0_iter4_reg <= v65_0_addr_reg_811_pp0_iter3_reg;
        v65_0_addr_reg_811_pp0_iter5_reg <= v65_0_addr_reg_811_pp0_iter4_reg;
        v65_0_addr_reg_811_pp0_iter6_reg <= v65_0_addr_reg_811_pp0_iter5_reg;
        v65_1_addr_reg_817 <= zext_ln113_fu_561_p1;
        v65_1_addr_reg_817_pp0_iter3_reg <= v65_1_addr_reg_817;
        v65_1_addr_reg_817_pp0_iter4_reg <= v65_1_addr_reg_817_pp0_iter3_reg;
        v65_1_addr_reg_817_pp0_iter5_reg <= v65_1_addr_reg_817_pp0_iter4_reg;
        v65_1_addr_reg_817_pp0_iter6_reg <= v65_1_addr_reg_817_pp0_iter5_reg;
        v65_2_addr_reg_823 <= zext_ln113_fu_561_p1;
        v65_2_addr_reg_823_pp0_iter3_reg <= v65_2_addr_reg_823;
        v65_2_addr_reg_823_pp0_iter4_reg <= v65_2_addr_reg_823_pp0_iter3_reg;
        v65_2_addr_reg_823_pp0_iter5_reg <= v65_2_addr_reg_823_pp0_iter4_reg;
        v65_2_addr_reg_823_pp0_iter6_reg <= v65_2_addr_reg_823_pp0_iter5_reg;
        v65_3_addr_reg_829 <= zext_ln113_fu_561_p1;
        v65_3_addr_reg_829_pp0_iter3_reg <= v65_3_addr_reg_829;
        v65_3_addr_reg_829_pp0_iter4_reg <= v65_3_addr_reg_829_pp0_iter3_reg;
        v65_3_addr_reg_829_pp0_iter5_reg <= v65_3_addr_reg_829_pp0_iter4_reg;
        v65_3_addr_reg_829_pp0_iter6_reg <= v65_3_addr_reg_829_pp0_iter5_reg;
        v65_4_addr_reg_835 <= zext_ln113_fu_561_p1;
        v65_4_addr_reg_835_pp0_iter3_reg <= v65_4_addr_reg_835;
        v65_4_addr_reg_835_pp0_iter4_reg <= v65_4_addr_reg_835_pp0_iter3_reg;
        v65_4_addr_reg_835_pp0_iter5_reg <= v65_4_addr_reg_835_pp0_iter4_reg;
        v65_4_addr_reg_835_pp0_iter6_reg <= v65_4_addr_reg_835_pp0_iter5_reg;
        v65_4_addr_reg_835_pp0_iter7_reg <= v65_4_addr_reg_835_pp0_iter6_reg;
        v65_5_addr_reg_845 <= zext_ln113_fu_561_p1;
        v65_5_addr_reg_845_pp0_iter3_reg <= v65_5_addr_reg_845;
        v65_5_addr_reg_845_pp0_iter4_reg <= v65_5_addr_reg_845_pp0_iter3_reg;
        v65_5_addr_reg_845_pp0_iter5_reg <= v65_5_addr_reg_845_pp0_iter4_reg;
        v65_5_addr_reg_845_pp0_iter6_reg <= v65_5_addr_reg_845_pp0_iter5_reg;
        v65_5_addr_reg_845_pp0_iter7_reg <= v65_5_addr_reg_845_pp0_iter6_reg;
        v65_6_addr_reg_855 <= zext_ln113_fu_561_p1;
        v65_6_addr_reg_855_pp0_iter3_reg <= v65_6_addr_reg_855;
        v65_6_addr_reg_855_pp0_iter4_reg <= v65_6_addr_reg_855_pp0_iter3_reg;
        v65_6_addr_reg_855_pp0_iter5_reg <= v65_6_addr_reg_855_pp0_iter4_reg;
        v65_6_addr_reg_855_pp0_iter6_reg <= v65_6_addr_reg_855_pp0_iter5_reg;
        v65_6_addr_reg_855_pp0_iter7_reg <= v65_6_addr_reg_855_pp0_iter6_reg;
        v65_7_addr_reg_865 <= zext_ln113_fu_561_p1;
        v65_7_addr_reg_865_pp0_iter3_reg <= v65_7_addr_reg_865;
        v65_7_addr_reg_865_pp0_iter4_reg <= v65_7_addr_reg_865_pp0_iter3_reg;
        v65_7_addr_reg_865_pp0_iter5_reg <= v65_7_addr_reg_865_pp0_iter4_reg;
        v65_7_addr_reg_865_pp0_iter6_reg <= v65_7_addr_reg_865_pp0_iter5_reg;
        v65_7_addr_reg_865_pp0_iter7_reg <= v65_7_addr_reg_865_pp0_iter6_reg;
        v66_reg_743 <= v66_fu_522_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v66_1_fu_84 <= v66_fu_522_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v73_reg_875 <= v65_0_q1;
        v81_reg_880 <= v65_1_q1;
        v89_reg_885 <= v65_2_q1;
        v97_reg_890 <= v65_3_q1;
    end
end
always @ (*) begin
    if (((icmp_ln111_fu_407_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to7 = 1'b1;
    end else begin
        ap_idle_pp0_1to7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_333_p0 = v106_reg_955;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_333_p0 = v74_fu_588_p3;
    end else begin
        grp_fu_333_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_333_p1 = v108_reg_920;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_333_p1 = v76_reg_895;
    end else begin
        grp_fu_333_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_337_p0 = v114_reg_960;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_337_p0 = v82_fu_595_p3;
    end else begin
        grp_fu_337_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_337_p1 = v116_reg_925;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_337_p1 = v84_reg_900;
    end else begin
        grp_fu_337_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_341_p0 = v122_reg_965;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_341_p0 = v90_fu_602_p3;
    end else begin
        grp_fu_341_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_341_p1 = v124_reg_930;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_341_p1 = v92_reg_905;
    end else begin
        grp_fu_341_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_345_p0 = v130_reg_970;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_345_p0 = v98_fu_609_p3;
    end else begin
        grp_fu_345_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_345_p1 = v132_reg_935;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_345_p1 = v100_reg_910;
    end else begin
        grp_fu_345_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_349_p0 = v107_fu_572_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_349_p0 = v75_fu_545_p1;
    end else begin
        grp_fu_349_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_353_p0 = v115_fu_576_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_353_p0 = v83_fu_549_p1;
    end else begin
        grp_fu_353_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_357_p0 = v123_fu_580_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_357_p0 = v91_fu_553_p1;
    end else begin
        grp_fu_357_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_361_p0 = v131_fu_584_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_361_p0 = v99_fu_557_p1;
    end else begin
        grp_fu_361_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v138_0_ce0_local = 1'b1;
    end else begin
        v138_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v138_1_ce0_local = 1'b1;
    end else begin
        v138_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v138_2_ce0_local = 1'b1;
    end else begin
        v138_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v138_3_ce0_local = 1'b1;
    end else begin
        v138_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v138_4_ce0_local = 1'b1;
    end else begin
        v138_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v138_5_ce0_local = 1'b1;
    end else begin
        v138_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v138_6_ce0_local = 1'b1;
    end else begin
        v138_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v138_7_ce0_local = 1'b1;
    end else begin
        v138_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v140_ce0_local = 1'b1;
    end else begin
        v140_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_0_ce0_local = 1'b1;
    end else begin
        v65_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_0_ce1_local = 1'b1;
    end else begin
        v65_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_0_we0_local = 1'b1;
    end else begin
        v65_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_1_ce0_local = 1'b1;
    end else begin
        v65_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_1_ce1_local = 1'b1;
    end else begin
        v65_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_1_we0_local = 1'b1;
    end else begin
        v65_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_2_ce0_local = 1'b1;
    end else begin
        v65_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_2_ce1_local = 1'b1;
    end else begin
        v65_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_2_we0_local = 1'b1;
    end else begin
        v65_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_3_ce0_local = 1'b1;
    end else begin
        v65_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_3_ce1_local = 1'b1;
    end else begin
        v65_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_3_we0_local = 1'b1;
    end else begin
        v65_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_4_address0_local = v65_4_addr_reg_835_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_4_address0_local = v65_4_addr_reg_835;
    end else begin
        v65_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v65_4_ce0_local = 1'b1;
    end else begin
        v65_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_4_we0_local = 1'b1;
    end else begin
        v65_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_5_address0_local = v65_5_addr_reg_845_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_5_address0_local = v65_5_addr_reg_845;
    end else begin
        v65_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v65_5_ce0_local = 1'b1;
    end else begin
        v65_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_5_we0_local = 1'b1;
    end else begin
        v65_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_6_address0_local = v65_6_addr_reg_855_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_6_address0_local = v65_6_addr_reg_855;
    end else begin
        v65_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v65_6_ce0_local = 1'b1;
    end else begin
        v65_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_6_we0_local = 1'b1;
    end else begin
        v65_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_7_address0_local = v65_7_addr_reg_865_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_7_address0_local = v65_7_addr_reg_865;
    end else begin
        v65_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v65_7_ce0_local = 1'b1;
    end else begin
        v65_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_7_we0_local = 1'b1;
    end else begin
        v65_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to7 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln111_1_fu_413_p2 = (indvar_flatten_fu_96 + 10'd1);
assign add_ln111_fu_425_p2 = (v67_fu_92 + 7'd1);
assign add_ln112_fu_530_p2 = (select_ln110_reg_675 + 7'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign cmp10_fu_464_p2 = ((select_ln111_fu_447_p3 == 7'd0) ? 1'b1 : 1'b0);
assign icmp_ln111_fu_407_p2 = ((indvar_flatten_fu_96 == 10'd512) ? 1'b1 : 1'b0);
assign icmp_ln115_fu_517_p2 = ((select_ln110_reg_675 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln_fu_470_p4 = {{select_ln110_fu_439_p3[5:3]}};
assign select_ln110_fu_439_p3 = ((tmp_1_fu_431_p3[0:0] == 1'b1) ? 7'd0 : v126_fu_88);
assign select_ln111_fu_447_p3 = ((tmp_1_fu_431_p3[0:0] == 1'b1) ? add_ln111_fu_425_p2 : v67_fu_92);
assign tmp_1_fu_431_p3 = v126_fu_88[32'd6];
assign tmp_fu_480_p3 = {{trunc_ln111_fu_455_p1}, {lshr_ln_fu_470_p4}};
assign trunc_ln111_fu_455_p1 = select_ln111_fu_447_p3[5:0];
assign v106_fu_616_p3 = ((cmp10_reg_686_pp0_iter2_reg[0:0] == 1'b1) ? 32'd0 : v65_4_q0);
assign v107_fu_572_p1 = v138_4_load_reg_771;
assign v114_fu_623_p3 = ((cmp10_reg_686_pp0_iter2_reg[0:0] == 1'b1) ? 32'd0 : v65_5_q0);
assign v115_fu_576_p1 = v138_5_load_reg_776;
assign v122_fu_630_p3 = ((cmp10_reg_686_pp0_iter2_reg[0:0] == 1'b1) ? 32'd0 : v65_6_q0);
assign v123_fu_580_p1 = v138_6_load_reg_781;
assign v130_fu_637_p3 = ((cmp10_reg_686_pp0_iter2_reg[0:0] == 1'b1) ? 32'd0 : v65_7_q0);
assign v131_fu_584_p1 = v138_7_load_reg_786;
assign v138_0_address0 = zext_ln119_fu_488_p1;
assign v138_0_ce0 = v138_0_ce0_local;
assign v138_1_address0 = zext_ln119_fu_488_p1;
assign v138_1_ce0 = v138_1_ce0_local;
assign v138_2_address0 = zext_ln119_fu_488_p1;
assign v138_2_ce0 = v138_2_ce0_local;
assign v138_3_address0 = zext_ln119_fu_488_p1;
assign v138_3_ce0 = v138_3_ce0_local;
assign v138_4_address0 = zext_ln119_fu_488_p1;
assign v138_4_ce0 = v138_4_ce0_local;
assign v138_5_address0 = zext_ln119_fu_488_p1;
assign v138_5_ce0 = v138_5_ce0_local;
assign v138_6_address0 = zext_ln119_fu_488_p1;
assign v138_6_ce0 = v138_6_ce0_local;
assign v138_7_address0 = zext_ln119_fu_488_p1;
assign v138_7_ce0 = v138_7_ce0_local;
assign v140_address0 = zext_ln111_fu_459_p1;
assign v140_ce0 = v140_ce0_local;
assign v65_0_address0 = v65_0_addr_reg_811_pp0_iter6_reg;
assign v65_0_address1 = zext_ln113_fu_561_p1;
assign v65_0_ce0 = v65_0_ce0_local;
assign v65_0_ce1 = v65_0_ce1_local;
assign v65_0_d0 = reg_365;
assign v65_0_we0 = v65_0_we0_local;
assign v65_1_address0 = v65_1_addr_reg_817_pp0_iter6_reg;
assign v65_1_address1 = zext_ln113_fu_561_p1;
assign v65_1_ce0 = v65_1_ce0_local;
assign v65_1_ce1 = v65_1_ce1_local;
assign v65_1_d0 = reg_371;
assign v65_1_we0 = v65_1_we0_local;
assign v65_2_address0 = v65_2_addr_reg_823_pp0_iter6_reg;
assign v65_2_address1 = zext_ln113_fu_561_p1;
assign v65_2_ce0 = v65_2_ce0_local;
assign v65_2_ce1 = v65_2_ce1_local;
assign v65_2_d0 = reg_377;
assign v65_2_we0 = v65_2_we0_local;
assign v65_3_address0 = v65_3_addr_reg_829_pp0_iter6_reg;
assign v65_3_address1 = zext_ln113_fu_561_p1;
assign v65_3_ce0 = v65_3_ce0_local;
assign v65_3_ce1 = v65_3_ce1_local;
assign v65_3_d0 = reg_383;
assign v65_3_we0 = v65_3_we0_local;
assign v65_4_address0 = v65_4_address0_local;
assign v65_4_ce0 = v65_4_ce0_local;
assign v65_4_d0 = reg_365;
assign v65_4_we0 = v65_4_we0_local;
assign v65_5_address0 = v65_5_address0_local;
assign v65_5_ce0 = v65_5_ce0_local;
assign v65_5_d0 = reg_371;
assign v65_5_we0 = v65_5_we0_local;
assign v65_6_address0 = v65_6_address0_local;
assign v65_6_ce0 = v65_6_ce0_local;
assign v65_6_d0 = reg_377;
assign v65_6_we0 = v65_6_we0_local;
assign v65_7_address0 = v65_7_address0_local;
assign v65_7_ce0 = v65_7_ce0_local;
assign v65_7_d0 = reg_383;
assign v65_7_we0 = v65_7_we0_local;
assign v66_fu_522_p3 = ((icmp_ln115_fu_517_p2[0:0] == 1'b1) ? v69_fu_513_p1 : v66_1_fu_84);
assign v69_fu_513_p1 = v140_q0;
assign v74_fu_588_p3 = ((cmp10_reg_686_pp0_iter2_reg[0:0] == 1'b1) ? 32'd0 : v73_reg_875);
assign v75_fu_545_p1 = v138_0_load_reg_751;
assign v82_fu_595_p3 = ((cmp10_reg_686_pp0_iter2_reg[0:0] == 1'b1) ? 32'd0 : v81_reg_880);
assign v83_fu_549_p1 = v138_1_load_reg_756;
assign v90_fu_602_p3 = ((cmp10_reg_686_pp0_iter2_reg[0:0] == 1'b1) ? 32'd0 : v89_reg_885);
assign v91_fu_553_p1 = v138_2_load_reg_761;
assign v98_fu_609_p3 = ((cmp10_reg_686_pp0_iter2_reg[0:0] == 1'b1) ? 32'd0 : v97_reg_890);
assign v99_fu_557_p1 = v138_3_load_reg_766;
assign zext_ln111_fu_459_p1 = select_ln111_fu_447_p3;
assign zext_ln113_fu_561_p1 = lshr_ln_reg_698_pp0_iter1_reg;
assign zext_ln119_fu_488_p1 = tmp_fu_480_p3;
endmodule 
