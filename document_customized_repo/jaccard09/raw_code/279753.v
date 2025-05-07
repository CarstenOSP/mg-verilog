module backprop_backprop_Pipeline_label_35 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v8_129136_reload,v8_130138_reload,v8_131140_reload,v8_132142_reload,v8_133144_reload,v8_134146_reload,v8_135148_reload,v8_136150_reload,v8_137152_reload,v8_138154_reload,v8_139156_reload,v8_140158_reload,v8_141160_reload,v8_142162_reload,v8_143164_reload,v8_144166_reload,v8_145168_reload,v8_146170_reload,v8_147172_reload,v8_148174_reload,v8_149176_reload,v8_150178_reload,v8_151180_reload,v8_152182_reload,v8_153184_reload,v8_154186_reload,v8_155188_reload,v8_156190_reload,v8_157192_reload,v8_158194_reload,v8_159196_reload,v8_160198_reload,v8_161200_reload,v8_162202_reload,v8_163204_reload,v8_164206_reload,v8_165208_reload,v8_166210_reload,v8_167212_reload,v8_168214_reload,v8_169216_reload,v8_170218_reload,v8_171220_reload,v8_172222_reload,v8_173224_reload,v8_174226_reload,v8_175228_reload,v8_176230_reload,v8_177232_reload,v8_178234_reload,v8_179236_reload,v8_180238_reload,v8_181240_reload,v8_182242_reload,v8_183244_reload,v8_184246_reload,v8_185248_reload,v8_186250_reload,v8_187252_reload,v8_188254_reload,v8_189256_reload,v8_190258_reload,v8_191260_reload,v8_192262_reload,v4_address0,v4_ce0,v4_we0,v4_d0,v4_q0,v194_out,v194_out_ap_vld,grp_fu_18515_p_din0,grp_fu_18515_p_din1,grp_fu_18515_p_opcode,grp_fu_18515_p_dout0,grp_fu_18515_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 7'd1;
parameter    ap_ST_fsm_pp0_stage1 = 7'd2;
parameter    ap_ST_fsm_pp0_stage2 = 7'd4;
parameter    ap_ST_fsm_pp0_stage3 = 7'd8;
parameter    ap_ST_fsm_pp0_stage4 = 7'd16;
parameter    ap_ST_fsm_pp0_stage5 = 7'd32;
parameter    ap_ST_fsm_pp0_stage6 = 7'd64;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] v8_129136_reload;
input  [63:0] v8_130138_reload;
input  [63:0] v8_131140_reload;
input  [63:0] v8_132142_reload;
input  [63:0] v8_133144_reload;
input  [63:0] v8_134146_reload;
input  [63:0] v8_135148_reload;
input  [63:0] v8_136150_reload;
input  [63:0] v8_137152_reload;
input  [63:0] v8_138154_reload;
input  [63:0] v8_139156_reload;
input  [63:0] v8_140158_reload;
input  [63:0] v8_141160_reload;
input  [63:0] v8_142162_reload;
input  [63:0] v8_143164_reload;
input  [63:0] v8_144166_reload;
input  [63:0] v8_145168_reload;
input  [63:0] v8_146170_reload;
input  [63:0] v8_147172_reload;
input  [63:0] v8_148174_reload;
input  [63:0] v8_149176_reload;
input  [63:0] v8_150178_reload;
input  [63:0] v8_151180_reload;
input  [63:0] v8_152182_reload;
input  [63:0] v8_153184_reload;
input  [63:0] v8_154186_reload;
input  [63:0] v8_155188_reload;
input  [63:0] v8_156190_reload;
input  [63:0] v8_157192_reload;
input  [63:0] v8_158194_reload;
input  [63:0] v8_159196_reload;
input  [63:0] v8_160198_reload;
input  [63:0] v8_161200_reload;
input  [63:0] v8_162202_reload;
input  [63:0] v8_163204_reload;
input  [63:0] v8_164206_reload;
input  [63:0] v8_165208_reload;
input  [63:0] v8_166210_reload;
input  [63:0] v8_167212_reload;
input  [63:0] v8_168214_reload;
input  [63:0] v8_169216_reload;
input  [63:0] v8_170218_reload;
input  [63:0] v8_171220_reload;
input  [63:0] v8_172222_reload;
input  [63:0] v8_173224_reload;
input  [63:0] v8_174226_reload;
input  [63:0] v8_175228_reload;
input  [63:0] v8_176230_reload;
input  [63:0] v8_177232_reload;
input  [63:0] v8_178234_reload;
input  [63:0] v8_179236_reload;
input  [63:0] v8_180238_reload;
input  [63:0] v8_181240_reload;
input  [63:0] v8_182242_reload;
input  [63:0] v8_183244_reload;
input  [63:0] v8_184246_reload;
input  [63:0] v8_185248_reload;
input  [63:0] v8_186250_reload;
input  [63:0] v8_187252_reload;
input  [63:0] v8_188254_reload;
input  [63:0] v8_189256_reload;
input  [63:0] v8_190258_reload;
input  [63:0] v8_191260_reload;
input  [63:0] v8_192262_reload;
output  [5:0] v4_address0;
output   v4_ce0;
output   v4_we0;
output  [63:0] v4_d0;
input  [63:0] v4_q0;
output  [63:0] v194_out;
output   v194_out_ap_vld;
output  [63:0] grp_fu_18515_p_din0;
output  [63:0] grp_fu_18515_p_din1;
output  [1:0] grp_fu_18515_p_opcode;
input  [63:0] grp_fu_18515_p_dout0;
output   grp_fu_18515_p_ce;
reg ap_idle;
reg v194_out_ap_vld;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln313_reg_1062;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln313_fu_736_p2;
reg   [0:0] icmp_ln313_reg_1062_pp0_iter1_reg;
reg   [0:0] icmp_ln313_reg_1062_pp0_iter2_reg;
reg   [0:0] icmp_ln313_reg_1062_pp0_iter3_reg;
wire   [63:0] v195_fu_757_p131;
reg   [63:0] v195_reg_1066;
reg   [5:0] v4_addr_reg_1071;
reg   [5:0] v4_addr_reg_1071_pp0_iter1_reg;
reg   [5:0] v4_addr_reg_1071_pp0_iter2_reg;
reg   [63:0] v4_load_reg_1076;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] grp_fu_718_p2;
reg   [63:0] v196_reg_1081;
wire   [63:0] v197_fu_1026_p1;
reg   [63:0] v198_reg_1091;
reg   [63:0] v199_reg_1098;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln313_fu_748_p1;
wire    ap_block_pp0_stage0;
reg   [63:0] v192_fu_302;
reg   [63:0] ap_sig_allocacmp_v192_load_1;
wire    ap_block_pp0_stage2;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage6_11001;
reg    ap_condition_exit_pp0_iter3_stage2;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [6:0] v193_fu_306;
wire   [6:0] add_ln313_fu_742_p2;
reg   [6:0] ap_sig_allocacmp_v193_1;
wire    ap_block_pp0_stage2_01001;
reg    v4_ce0_local;
reg   [5:0] v4_address0_local;
reg    v4_we0_local;
wire   [63:0] bitcast_ln319_fu_1030_p1;
reg   [63:0] grp_fu_714_p0;
reg   [63:0] grp_fu_714_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] grp_fu_718_p0;
reg   [63:0] grp_fu_718_p1;
wire   [63:0] v195_fu_757_p129;
wire   [5:0] v195_fu_757_p130;
reg   [1:0] grp_fu_714_opcode;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage1_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [6:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [5:0] v195_fu_757_p1;
wire   [5:0] v195_fu_757_p3;
wire   [5:0] v195_fu_757_p5;
wire   [5:0] v195_fu_757_p7;
wire   [5:0] v195_fu_757_p9;
wire   [5:0] v195_fu_757_p11;
wire   [5:0] v195_fu_757_p13;
wire   [5:0] v195_fu_757_p15;
wire   [5:0] v195_fu_757_p17;
wire   [5:0] v195_fu_757_p19;
wire   [5:0] v195_fu_757_p21;
wire   [5:0] v195_fu_757_p23;
wire   [5:0] v195_fu_757_p25;
wire   [5:0] v195_fu_757_p27;
wire   [5:0] v195_fu_757_p29;
wire   [5:0] v195_fu_757_p31;
wire   [5:0] v195_fu_757_p33;
wire   [5:0] v195_fu_757_p35;
wire   [5:0] v195_fu_757_p37;
wire   [5:0] v195_fu_757_p39;
wire   [5:0] v195_fu_757_p41;
wire   [5:0] v195_fu_757_p43;
wire   [5:0] v195_fu_757_p45;
wire   [5:0] v195_fu_757_p47;
wire   [5:0] v195_fu_757_p49;
wire   [5:0] v195_fu_757_p51;
wire   [5:0] v195_fu_757_p53;
wire   [5:0] v195_fu_757_p55;
wire   [5:0] v195_fu_757_p57;
wire   [5:0] v195_fu_757_p59;
wire   [5:0] v195_fu_757_p61;
wire   [5:0] v195_fu_757_p63;
wire  signed [5:0] v195_fu_757_p65;
wire  signed [5:0] v195_fu_757_p67;
wire  signed [5:0] v195_fu_757_p69;
wire  signed [5:0] v195_fu_757_p71;
wire  signed [5:0] v195_fu_757_p73;
wire  signed [5:0] v195_fu_757_p75;
wire  signed [5:0] v195_fu_757_p77;
wire  signed [5:0] v195_fu_757_p79;
wire  signed [5:0] v195_fu_757_p81;
wire  signed [5:0] v195_fu_757_p83;
wire  signed [5:0] v195_fu_757_p85;
wire  signed [5:0] v195_fu_757_p87;
wire  signed [5:0] v195_fu_757_p89;
wire  signed [5:0] v195_fu_757_p91;
wire  signed [5:0] v195_fu_757_p93;
wire  signed [5:0] v195_fu_757_p95;
wire  signed [5:0] v195_fu_757_p97;
wire  signed [5:0] v195_fu_757_p99;
wire  signed [5:0] v195_fu_757_p101;
wire  signed [5:0] v195_fu_757_p103;
wire  signed [5:0] v195_fu_757_p105;
wire  signed [5:0] v195_fu_757_p107;
wire  signed [5:0] v195_fu_757_p109;
wire  signed [5:0] v195_fu_757_p111;
wire  signed [5:0] v195_fu_757_p113;
wire  signed [5:0] v195_fu_757_p115;
wire  signed [5:0] v195_fu_757_p117;
wire  signed [5:0] v195_fu_757_p119;
wire  signed [5:0] v195_fu_757_p121;
wire  signed [5:0] v195_fu_757_p123;
wire  signed [5:0] v195_fu_757_p125;
wire  signed [5:0] v195_fu_757_p127;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v192_fu_302 = 64'd0;
#0 v193_fu_306 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U4324(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_718_p0),.din1(grp_fu_718_p1),.ce(1'b1),.dout(grp_fu_718_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_129_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h1 ),.din1_WIDTH( 64 ),.CASE2( 6'h2 ),.din2_WIDTH( 64 ),.CASE3( 6'h3 ),.din3_WIDTH( 64 ),.CASE4( 6'h4 ),.din4_WIDTH( 64 ),.CASE5( 6'h5 ),.din5_WIDTH( 64 ),.CASE6( 6'h6 ),.din6_WIDTH( 64 ),.CASE7( 6'h7 ),.din7_WIDTH( 64 ),.CASE8( 6'h8 ),.din8_WIDTH( 64 ),.CASE9( 6'h9 ),.din9_WIDTH( 64 ),.CASE10( 6'hA ),.din10_WIDTH( 64 ),.CASE11( 6'hB ),.din11_WIDTH( 64 ),.CASE12( 6'hC ),.din12_WIDTH( 64 ),.CASE13( 6'hD ),.din13_WIDTH( 64 ),.CASE14( 6'hE ),.din14_WIDTH( 64 ),.CASE15( 6'hF ),.din15_WIDTH( 64 ),.CASE16( 6'h10 ),.din16_WIDTH( 64 ),.CASE17( 6'h11 ),.din17_WIDTH( 64 ),.CASE18( 6'h12 ),.din18_WIDTH( 64 ),.CASE19( 6'h13 ),.din19_WIDTH( 64 ),.CASE20( 6'h14 ),.din20_WIDTH( 64 ),.CASE21( 6'h15 ),.din21_WIDTH( 64 ),.CASE22( 6'h16 ),.din22_WIDTH( 64 ),.CASE23( 6'h17 ),.din23_WIDTH( 64 ),.CASE24( 6'h18 ),.din24_WIDTH( 64 ),.CASE25( 6'h19 ),.din25_WIDTH( 64 ),.CASE26( 6'h1A ),.din26_WIDTH( 64 ),.CASE27( 6'h1B ),.din27_WIDTH( 64 ),.CASE28( 6'h1C ),.din28_WIDTH( 64 ),.CASE29( 6'h1D ),.din29_WIDTH( 64 ),.CASE30( 6'h1E ),.din30_WIDTH( 64 ),.CASE31( 6'h1F ),.din31_WIDTH( 64 ),.CASE32( 6'h20 ),.din32_WIDTH( 64 ),.CASE33( 6'h21 ),.din33_WIDTH( 64 ),.CASE34( 6'h22 ),.din34_WIDTH( 64 ),.CASE35( 6'h23 ),.din35_WIDTH( 64 ),.CASE36( 6'h24 ),.din36_WIDTH( 64 ),.CASE37( 6'h25 ),.din37_WIDTH( 64 ),.CASE38( 6'h26 ),.din38_WIDTH( 64 ),.CASE39( 6'h27 ),.din39_WIDTH( 64 ),.CASE40( 6'h28 ),.din40_WIDTH( 64 ),.CASE41( 6'h29 ),.din41_WIDTH( 64 ),.CASE42( 6'h2A ),.din42_WIDTH( 64 ),.CASE43( 6'h2B ),.din43_WIDTH( 64 ),.CASE44( 6'h2C ),.din44_WIDTH( 64 ),.CASE45( 6'h2D ),.din45_WIDTH( 64 ),.CASE46( 6'h2E ),.din46_WIDTH( 64 ),.CASE47( 6'h2F ),.din47_WIDTH( 64 ),.CASE48( 6'h30 ),.din48_WIDTH( 64 ),.CASE49( 6'h31 ),.din49_WIDTH( 64 ),.CASE50( 6'h32 ),.din50_WIDTH( 64 ),.CASE51( 6'h33 ),.din51_WIDTH( 64 ),.CASE52( 6'h34 ),.din52_WIDTH( 64 ),.CASE53( 6'h35 ),.din53_WIDTH( 64 ),.CASE54( 6'h36 ),.din54_WIDTH( 64 ),.CASE55( 6'h37 ),.din55_WIDTH( 64 ),.CASE56( 6'h38 ),.din56_WIDTH( 64 ),.CASE57( 6'h39 ),.din57_WIDTH( 64 ),.CASE58( 6'h3A ),.din58_WIDTH( 64 ),.CASE59( 6'h3B ),.din59_WIDTH( 64 ),.CASE60( 6'h3C ),.din60_WIDTH( 64 ),.CASE61( 6'h3D ),.din61_WIDTH( 64 ),.CASE62( 6'h3E ),.din62_WIDTH( 64 ),.CASE63( 6'h3F ),.din63_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_129_6_64_1_1_U4325(.din0(v8_129136_reload),.din1(v8_130138_reload),.din2(v8_131140_reload),.din3(v8_132142_reload),.din4(v8_133144_reload),.din5(v8_134146_reload),.din6(v8_135148_reload),.din7(v8_136150_reload),.din8(v8_137152_reload),.din9(v8_138154_reload),.din10(v8_139156_reload),.din11(v8_140158_reload),.din12(v8_141160_reload),.din13(v8_142162_reload),.din14(v8_143164_reload),.din15(v8_144166_reload),.din16(v8_145168_reload),.din17(v8_146170_reload),.din18(v8_147172_reload),.din19(v8_148174_reload),.din20(v8_149176_reload),.din21(v8_150178_reload),.din22(v8_151180_reload),.din23(v8_152182_reload),.din24(v8_153184_reload),.din25(v8_154186_reload),.din26(v8_155188_reload),.din27(v8_156190_reload),.din28(v8_157192_reload),.din29(v8_158194_reload),.din30(v8_159196_reload),.din31(v8_160198_reload),.din32(v8_161200_reload),.din33(v8_162202_reload),.din34(v8_163204_reload),.din35(v8_164206_reload),.din36(v8_165208_reload),.din37(v8_166210_reload),.din38(v8_167212_reload),.din39(v8_168214_reload),.din40(v8_169216_reload),.din41(v8_170218_reload),.din42(v8_171220_reload),.din43(v8_172222_reload),.din44(v8_173224_reload),.din45(v8_174226_reload),.din46(v8_175228_reload),.din47(v8_176230_reload),.din48(v8_177232_reload),.din49(v8_178234_reload),.din50(v8_179236_reload),.din51(v8_180238_reload),.din52(v8_181240_reload),.din53(v8_182242_reload),.din54(v8_183244_reload),.din55(v8_184246_reload),.din56(v8_185248_reload),.din57(v8_186250_reload),.din58(v8_187252_reload),.din59(v8_188254_reload),.din60(v8_189256_reload),.din61(v8_190258_reload),.din62(v8_191260_reload),.din63(v8_192262_reload),.def(v195_fu_757_p129),.sel(v195_fu_757_p130),.dout(v195_fu_757_p131));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage2))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v192_fu_302 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v192_fu_302 <= grp_fu_18515_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln313_fu_736_p2 == 1'd0))) begin
            v193_fu_306 <= add_ln313_fu_742_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v193_fu_306 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln313_reg_1062 <= icmp_ln313_fu_736_p2;
        icmp_ln313_reg_1062_pp0_iter1_reg <= icmp_ln313_reg_1062;
        icmp_ln313_reg_1062_pp0_iter2_reg <= icmp_ln313_reg_1062_pp0_iter1_reg;
        icmp_ln313_reg_1062_pp0_iter3_reg <= icmp_ln313_reg_1062_pp0_iter2_reg;
        v195_reg_1066 <= v195_fu_757_p131;
        v4_addr_reg_1071 <= zext_ln313_fu_748_p1;
        v4_addr_reg_1071_pp0_iter1_reg <= v4_addr_reg_1071;
        v4_addr_reg_1071_pp0_iter2_reg <= v4_addr_reg_1071_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v196_reg_1081 <= grp_fu_718_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v198_reg_1091 <= grp_fu_18515_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v199_reg_1098 <= grp_fu_718_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v4_load_reg_1076 <= v4_q0;
    end
end
always @ (*) begin
    if (((icmp_ln313_reg_1062 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln313_reg_1062_pp0_iter3_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter3_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_sig_allocacmp_v192_load_1 = grp_fu_18515_p_dout0;
    end else begin
        ap_sig_allocacmp_v192_load_1 = v192_fu_302;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v193_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_v193_1 = v193_fu_306;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_714_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_714_opcode = 2'd0;
    end else begin
        grp_fu_714_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_714_p0 = ap_sig_allocacmp_v192_load_1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_714_p0 = v197_fu_1026_p1;
    end else begin
        grp_fu_714_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_714_p1 = v199_reg_1098;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_714_p1 = v196_reg_1081;
    end else begin
        grp_fu_714_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_718_p0 = v198_reg_1091;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_718_p0 = v195_reg_1066;
    end else begin
        grp_fu_718_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_718_p1 = v198_reg_1091;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_718_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_718_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln313_reg_1062_pp0_iter3_reg == 1'd1))) begin
        v194_out_ap_vld = 1'b1;
    end else begin
        v194_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v4_address0_local = v4_addr_reg_1071_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4_address0_local = zext_ln313_fu_748_p1;
    end else begin
        v4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v4_ce0_local = 1'b1;
    end else begin
        v4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v4_we0_local = 1'b1;
    end else begin
        v4_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln313_fu_742_p2 = (ap_sig_allocacmp_v193_1 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign bitcast_ln319_fu_1030_p1 = v198_reg_1091;
assign grp_fu_18515_p_ce = 1'b1;
assign grp_fu_18515_p_din0 = grp_fu_714_p0;
assign grp_fu_18515_p_din1 = grp_fu_714_p1;
assign grp_fu_18515_p_opcode = grp_fu_714_opcode;
assign icmp_ln313_fu_736_p2 = ((ap_sig_allocacmp_v193_1 == 7'd64) ? 1'b1 : 1'b0);
assign v194_out = v192_fu_302;
assign v195_fu_757_p129 = 'bx;
assign v195_fu_757_p130 = ap_sig_allocacmp_v193_1[5:0];
assign v197_fu_1026_p1 = v4_load_reg_1076;
assign v4_address0 = v4_address0_local;
assign v4_ce0 = v4_ce0_local;
assign v4_d0 = bitcast_ln319_fu_1030_p1;
assign v4_we0 = v4_we0_local;
assign zext_ln313_fu_748_p1 = ap_sig_allocacmp_v193_1;
endmodule 