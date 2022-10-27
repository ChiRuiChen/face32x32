// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dense_ss_ap_fixed_ap_fixed_18_8_5_3_0_config31_s (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        data_V_V_dout,
        data_V_V_empty_n,
        data_V_V_read,
        res_V_V_din,
        res_V_V_full_n,
        res_V_V_write
);

parameter    ap_ST_fsm_state1 = 11'd1;
parameter    ap_ST_fsm_pp0_stage0 = 11'd2;
parameter    ap_ST_fsm_pp0_stage1 = 11'd4;
parameter    ap_ST_fsm_pp0_stage2 = 11'd8;
parameter    ap_ST_fsm_pp0_stage3 = 11'd16;
parameter    ap_ST_fsm_pp0_stage4 = 11'd32;
parameter    ap_ST_fsm_state8 = 11'd64;
parameter    ap_ST_fsm_state9 = 11'd128;
parameter    ap_ST_fsm_state10 = 11'd256;
parameter    ap_ST_fsm_state11 = 11'd512;
parameter    ap_ST_fsm_state12 = 11'd1024;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [17:0] data_V_V_dout;
input   data_V_V_empty_n;
output   data_V_V_read;
output  [17:0] res_V_V_din;
input   res_V_V_full_n;
output   res_V_V_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg data_V_V_read;
reg[17:0] res_V_V_din;
reg res_V_V_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
wire   [9:0] w31_V_address0;
reg    w31_V_ce0;
wire   [66:0] w31_V_q0;
reg    data_V_V_blk_n;
wire    ap_CS_fsm_pp0_stage1;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage1;
reg   [0:0] icmp_ln579_reg_392;
reg    res_V_V_blk_n;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state12;
reg   [17:0] tmp_V_209_reg_130;
reg   [17:0] tmp_V_208_reg_143;
reg   [17:0] tmp_V_207_reg_156;
reg   [17:0] tmp_V_206_reg_169;
reg   [17:0] tmp_V_205_reg_182;
reg   [10:0] i_in_0_reg_195;
wire   [0:0] icmp_ln579_fu_206_p2;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state7_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [10:0] i_in_fu_212_p2;
reg   [10:0] i_in_reg_396;
wire  signed [28:0] sext_ln1116_cast_fu_227_p1;
reg  signed [28:0] sext_ln1116_cast_reg_406;
reg    ap_block_state3_pp0_stage1_iter0;
reg    ap_block_pp0_stage1_11001;
reg   [17:0] trunc_ln_reg_414;
reg  signed [13:0] tmp_43_reg_419;
reg  signed [13:0] tmp_44_reg_424;
reg  signed [13:0] tmp_45_reg_429;
reg  signed [10:0] tmp_1_reg_434;
wire   [17:0] acc_0_0_V_fu_284_p2;
reg   [17:0] acc_0_0_V_reg_439;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_state4_pp0_stage2_iter0;
wire    ap_block_pp0_stage2_11001;
wire   [17:0] acc_0_1_V_fu_301_p2;
reg   [17:0] acc_0_1_V_reg_444;
wire   [17:0] acc_0_2_V_fu_319_p2;
reg   [17:0] acc_0_2_V_reg_449;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_state5_pp0_stage3_iter0;
wire    ap_block_pp0_stage3_11001;
wire   [17:0] acc_0_3_V_fu_337_p2;
reg   [17:0] acc_0_3_V_reg_454;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_state6_pp0_stage4_iter0;
wire    ap_block_pp0_stage4_11001;
wire   [17:0] acc_0_4_V_fu_355_p2;
reg    ap_enable_reg_pp0_iter1;
reg    ap_block_state1;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage0;
reg   [10:0] ap_phi_mux_i_in_0_phi_fu_199_p4;
wire   [63:0] zext_ln587_fu_218_p1;
wire  signed [13:0] trunc_ln587_fu_223_p1;
wire  signed [28:0] mul_ln1118_fu_361_p2;
wire    ap_block_pp0_stage2;
wire  signed [28:0] mul_ln1118_1_fu_368_p2;
wire   [17:0] trunc_ln708_1_fu_292_p4;
wire    ap_block_pp0_stage3;
wire  signed [28:0] mul_ln1118_2_fu_374_p2;
wire   [17:0] trunc_ln708_2_fu_310_p4;
wire    ap_block_pp0_stage4;
wire  signed [28:0] mul_ln1118_3_fu_380_p2;
wire   [17:0] trunc_ln708_3_fu_328_p4;
wire  signed [28:0] mul_ln1118_4_fu_386_p2;
wire   [17:0] trunc_ln708_4_fu_346_p4;
wire  signed [17:0] mul_ln1118_1_fu_368_p1;
wire  signed [17:0] mul_ln1118_2_fu_374_p1;
wire  signed [17:0] mul_ln1118_3_fu_380_p1;
wire  signed [17:0] mul_ln1118_4_fu_386_p1;
reg   [10:0] ap_NS_fsm;
reg    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 11'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

dense_ss_ap_fixed_ap_fixed_18_8_5_3_0_config31_s_w31_V #(
    .DataWidth( 67 ),
    .AddressRange( 1024 ),
    .AddressWidth( 10 ))
w31_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(w31_V_address0),
    .ce0(w31_V_ce0),
    .q0(w31_V_q0)
);

myproject_mul_mul_14s_18s_29_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 14 ),
    .din1_WIDTH( 18 ),
    .dout_WIDTH( 29 ))
myproject_mul_mul_14s_18s_29_1_1_U378(
    .din0(trunc_ln587_fu_223_p1),
    .din1(data_V_V_dout),
    .dout(mul_ln1118_fu_361_p2)
);

myproject_mul_mul_14s_18s_29_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 14 ),
    .din1_WIDTH( 18 ),
    .dout_WIDTH( 29 ))
myproject_mul_mul_14s_18s_29_1_1_U379(
    .din0(tmp_43_reg_419),
    .din1(mul_ln1118_1_fu_368_p1),
    .dout(mul_ln1118_1_fu_368_p2)
);

myproject_mul_mul_14s_18s_29_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 14 ),
    .din1_WIDTH( 18 ),
    .dout_WIDTH( 29 ))
myproject_mul_mul_14s_18s_29_1_1_U380(
    .din0(tmp_44_reg_424),
    .din1(mul_ln1118_2_fu_374_p1),
    .dout(mul_ln1118_2_fu_374_p2)
);

myproject_mul_mul_14s_18s_29_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 14 ),
    .din1_WIDTH( 18 ),
    .dout_WIDTH( 29 ))
myproject_mul_mul_14s_18s_29_1_1_U381(
    .din0(tmp_45_reg_429),
    .din1(mul_ln1118_3_fu_380_p1),
    .dout(mul_ln1118_3_fu_380_p2)
);

myproject_mul_mul_11s_18s_29_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 11 ),
    .din1_WIDTH( 18 ),
    .dout_WIDTH( 29 ))
myproject_mul_mul_11s_18s_29_1_1_U382(
    .din0(tmp_1_reg_434),
    .din1(mul_ln1118_4_fu_386_p1),
    .dout(mul_ln1118_4_fu_386_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((res_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln579_reg_392 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_in_0_reg_195 <= i_in_reg_396;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_in_0_reg_195 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln579_reg_392 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_V_205_reg_182 <= acc_0_0_V_reg_439;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_V_205_reg_182 <= 18'd241;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln579_reg_392 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_V_206_reg_169 <= acc_0_1_V_reg_444;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_V_206_reg_169 <= 18'd12;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln579_reg_392 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_V_207_reg_156 <= acc_0_2_V_reg_449;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_V_207_reg_156 <= 18'd261852;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln579_reg_392 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_V_208_reg_143 <= acc_0_3_V_reg_454;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_V_208_reg_143 <= 18'd261911;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln579_reg_392 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_V_209_reg_130 <= acc_0_4_V_fu_355_p2;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_V_209_reg_130 <= 18'd262026;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln579_reg_392 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        acc_0_0_V_reg_439 <= acc_0_0_V_fu_284_p2;
        acc_0_1_V_reg_444 <= acc_0_1_V_fu_301_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln579_reg_392 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        acc_0_2_V_reg_449 <= acc_0_2_V_fu_319_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln579_reg_392 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        acc_0_3_V_reg_454 <= acc_0_3_V_fu_337_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_in_reg_396 <= i_in_fu_212_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln579_reg_392 <= icmp_ln579_fu_206_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln579_reg_392 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        sext_ln1116_cast_reg_406 <= sext_ln1116_cast_fu_227_p1;
        tmp_1_reg_434 <= {{w31_V_q0[66:56]}};
        tmp_43_reg_419 <= {{w31_V_q0[27:14]}};
        tmp_44_reg_424 <= {{w31_V_q0[41:28]}};
        tmp_45_reg_429 <= {{w31_V_q0[55:42]}};
        trunc_ln_reg_414 <= {{mul_ln1118_fu_361_p2[28:11]}};
    end
end

always @ (*) begin
    if ((icmp_ln579_fu_206_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if (((res_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if (((icmp_ln579_reg_392 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_i_in_0_phi_fu_199_p4 = i_in_reg_396;
    end else begin
        ap_phi_mux_i_in_0_phi_fu_199_p4 = i_in_0_reg_195;
    end
end

always @ (*) begin
    if (((icmp_ln579_reg_392 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        data_V_V_blk_n = data_V_V_empty_n;
    end else begin
        data_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln579_reg_392 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        data_V_V_read = 1'b1;
    end else begin
        data_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((res_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        res_V_V_blk_n = res_V_V_full_n;
    end else begin
        res_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((res_V_V_full_n == 1'b1)) begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            res_V_V_din = tmp_V_209_reg_130;
        end else if ((1'b1 == ap_CS_fsm_state11)) begin
            res_V_V_din = tmp_V_208_reg_143;
        end else if ((1'b1 == ap_CS_fsm_state10)) begin
            res_V_V_din = tmp_V_207_reg_156;
        end else if ((1'b1 == ap_CS_fsm_state9)) begin
            res_V_V_din = tmp_V_206_reg_169;
        end else if ((1'b1 == ap_CS_fsm_state8)) begin
            res_V_V_din = tmp_V_205_reg_182;
        end else begin
            res_V_V_din = 'bx;
        end
    end else begin
        res_V_V_din = 'bx;
    end
end

always @ (*) begin
    if ((((res_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state10)) | ((res_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state9)) | ((res_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state8)) | ((res_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state12)) | ((res_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state11)))) begin
        res_V_V_write = 1'b1;
    end else begin
        res_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        w31_V_ce0 = 1'b1;
    end else begin
        w31_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln579_fu_206_p2 == 1'd1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln579_fu_206_p2 == 1'd1))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((res_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            if (((res_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((res_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            if (((res_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            if (((res_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign acc_0_0_V_fu_284_p2 = (tmp_V_205_reg_182 + trunc_ln_reg_414);

assign acc_0_1_V_fu_301_p2 = (tmp_V_206_reg_169 + trunc_ln708_1_fu_292_p4);

assign acc_0_2_V_fu_319_p2 = (tmp_V_207_reg_156 + trunc_ln708_2_fu_310_p4);

assign acc_0_3_V_fu_337_p2 = (tmp_V_208_reg_143 + trunc_ln708_3_fu_328_p4);

assign acc_0_4_V_fu_355_p2 = (tmp_V_209_reg_130 + trunc_ln708_4_fu_346_p4);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd8];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd7];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage1_11001 = ((icmp_ln579_reg_392 == 1'd0) & (data_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage1_subdone = ((icmp_ln579_reg_392 == 1'd0) & (data_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage1_iter0 = ((icmp_ln579_reg_392 == 1'd0) & (data_V_V_empty_n == 1'b0));
end

assign ap_block_state4_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage3_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage4_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_ready = internal_ap_ready;

assign i_in_fu_212_p2 = (ap_phi_mux_i_in_0_phi_fu_199_p4 + 11'd1);

assign icmp_ln579_fu_206_p2 = ((ap_phi_mux_i_in_0_phi_fu_199_p4 == 11'd1024) ? 1'b1 : 1'b0);

assign mul_ln1118_1_fu_368_p1 = sext_ln1116_cast_reg_406;

assign mul_ln1118_2_fu_374_p1 = sext_ln1116_cast_reg_406;

assign mul_ln1118_3_fu_380_p1 = sext_ln1116_cast_reg_406;

assign mul_ln1118_4_fu_386_p1 = sext_ln1116_cast_reg_406;

assign sext_ln1116_cast_fu_227_p1 = $signed(data_V_V_dout);

assign start_out = real_start;

assign trunc_ln587_fu_223_p1 = w31_V_q0[13:0];

assign trunc_ln708_1_fu_292_p4 = {{mul_ln1118_1_fu_368_p2[28:11]}};

assign trunc_ln708_2_fu_310_p4 = {{mul_ln1118_2_fu_374_p2[28:11]}};

assign trunc_ln708_3_fu_328_p4 = {{mul_ln1118_3_fu_380_p2[28:11]}};

assign trunc_ln708_4_fu_346_p4 = {{mul_ln1118_4_fu_386_p2[28:11]}};

assign w31_V_address0 = zext_ln587_fu_218_p1;

assign zext_ln587_fu_218_p1 = ap_phi_mux_i_in_0_phi_fu_199_p4;

endmodule //dense_ss_ap_fixed_ap_fixed_18_8_5_3_0_config31_s