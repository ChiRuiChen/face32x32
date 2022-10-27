// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module zeropad2d_cl_ss_ap_fixed_ap_fixed_config36_s (
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

parameter    ap_ST_fsm_state1 = 12'd1;
parameter    ap_ST_fsm_pp0_stage0 = 12'd2;
parameter    ap_ST_fsm_state4 = 12'd4;
parameter    ap_ST_fsm_state5 = 12'd8;
parameter    ap_ST_fsm_pp1_stage0 = 12'd16;
parameter    ap_ST_fsm_state8 = 12'd32;
parameter    ap_ST_fsm_pp2_stage0 = 12'd64;
parameter    ap_ST_fsm_state11 = 12'd128;
parameter    ap_ST_fsm_pp3_stage0 = 12'd256;
parameter    ap_ST_fsm_state14 = 12'd512;
parameter    ap_ST_fsm_pp4_stage0 = 12'd1024;
parameter    ap_ST_fsm_state17 = 12'd2048;

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
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    data_V_V_blk_n;
wire    ap_CS_fsm_pp2_stage0;
reg    ap_enable_reg_pp2_iter1;
wire    ap_block_pp2_stage0;
reg   [0:0] icmp_ln121_reg_280;
reg    res_V_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln112_reg_253;
wire    ap_CS_fsm_pp1_stage0;
reg    ap_enable_reg_pp1_iter1;
wire    ap_block_pp1_stage0;
reg   [0:0] icmp_ln24_reg_271;
wire    ap_CS_fsm_pp3_stage0;
reg    ap_enable_reg_pp3_iter1;
wire    ap_block_pp3_stage0;
reg   [0:0] icmp_ln24_5_reg_289;
wire    ap_CS_fsm_pp4_stage0;
reg    ap_enable_reg_pp4_iter1;
wire    ap_block_pp4_stage0;
reg   [0:0] icmp_ln130_reg_298;
reg   [10:0] indvar_flatten_reg_115;
reg   [5:0] c_0_i28_reg_137;
reg   [10:0] indvar_flatten11_reg_148;
reg   [5:0] c_0_i22_reg_159;
reg   [10:0] indvar_flatten23_reg_170;
wire   [0:0] icmp_ln112_fu_181_p2;
wire    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [10:0] add_ln112_fu_187_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] icmp_ln117_fu_193_p2;
wire    ap_CS_fsm_state5;
wire   [5:0] i_fu_199_p2;
reg   [5:0] i_reg_266;
wire   [0:0] icmp_ln24_fu_205_p2;
wire    ap_block_state6_pp1_stage0_iter0;
reg    ap_block_state7_pp1_stage0_iter1;
reg    ap_block_pp1_stage0_11001;
wire   [5:0] c_fu_211_p2;
reg    ap_enable_reg_pp1_iter0;
wire   [0:0] icmp_ln121_fu_217_p2;
wire    ap_block_state9_pp2_stage0_iter0;
reg    ap_block_state10_pp2_stage0_iter1;
reg    ap_block_pp2_stage0_11001;
wire   [10:0] add_ln121_fu_223_p2;
reg    ap_enable_reg_pp2_iter0;
wire   [0:0] icmp_ln24_5_fu_229_p2;
wire    ap_block_state12_pp3_stage0_iter0;
reg    ap_block_state13_pp3_stage0_iter1;
reg    ap_block_pp3_stage0_11001;
wire   [5:0] c_5_fu_235_p2;
reg    ap_enable_reg_pp3_iter0;
wire   [0:0] icmp_ln130_fu_241_p2;
wire    ap_block_state15_pp4_stage0_iter0;
reg    ap_block_state16_pp4_stage0_iter1;
reg    ap_block_pp4_stage0_11001;
wire   [10:0] add_ln130_fu_247_p2;
reg    ap_enable_reg_pp4_iter0;
reg    ap_block_state1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_block_pp1_stage0_subdone;
reg    ap_condition_pp1_exit_iter0_state6;
wire    ap_CS_fsm_state8;
reg    ap_block_pp2_stage0_subdone;
reg    ap_condition_pp2_exit_iter0_state9;
wire    ap_CS_fsm_state11;
reg    ap_block_pp3_stage0_subdone;
reg    ap_condition_pp3_exit_iter0_state12;
reg    ap_block_pp4_stage0_subdone;
reg    ap_condition_pp4_exit_iter0_state15;
reg   [5:0] i1_0_reg_126;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state4;
reg    ap_block_pp0_stage0_01001;
reg    ap_block_pp1_stage0_01001;
reg    ap_block_pp2_stage0_01001;
reg    ap_block_pp3_stage0_01001;
reg    ap_block_pp4_stage0_01001;
wire    ap_CS_fsm_state17;
reg   [11:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_idle_pp1;
wire    ap_enable_pp1;
reg    ap_idle_pp2;
wire    ap_enable_pp2;
reg    ap_idle_pp3;
wire    ap_enable_pp3;
reg    ap_idle_pp4;
wire    ap_enable_pp4;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 12'd1;
#0 ap_enable_reg_pp2_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp1_iter1 = 1'b0;
#0 ap_enable_reg_pp3_iter1 = 1'b0;
#0 ap_enable_reg_pp4_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp1_iter0 = 1'b0;
#0 ap_enable_reg_pp2_iter0 = 1'b0;
#0 ap_enable_reg_pp3_iter0 = 1'b0;
#0 ap_enable_reg_pp4_iter0 = 1'b0;
end

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
        end else if ((1'b1 == ap_CS_fsm_state17)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp1_stage0_subdone) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b1 == ap_condition_pp1_exit_iter0_state6))) begin
            ap_enable_reg_pp1_iter0 <= 1'b0;
        end else if (((icmp_ln117_fu_193_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
            ap_enable_reg_pp1_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp1_stage0_subdone) & (1'b1 == ap_condition_pp1_exit_iter0_state6))) begin
            ap_enable_reg_pp1_iter1 <= (1'b1 ^ ap_condition_pp1_exit_iter0_state6);
        end else if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter1 <= ap_enable_reg_pp1_iter0;
        end else if (((icmp_ln117_fu_193_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
            ap_enable_reg_pp1_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp2_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp2_stage0_subdone) & (1'b1 == ap_CS_fsm_pp2_stage0) & (1'b1 == ap_condition_pp2_exit_iter0_state9))) begin
            ap_enable_reg_pp2_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state8)) begin
            ap_enable_reg_pp2_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp2_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp2_stage0_subdone) & (1'b1 == ap_condition_pp2_exit_iter0_state9))) begin
            ap_enable_reg_pp2_iter1 <= (1'b1 ^ ap_condition_pp2_exit_iter0_state9);
        end else if ((1'b0 == ap_block_pp2_stage0_subdone)) begin
            ap_enable_reg_pp2_iter1 <= ap_enable_reg_pp2_iter0;
        end else if ((1'b1 == ap_CS_fsm_state8)) begin
            ap_enable_reg_pp2_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp3_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp3_stage0_subdone) & (1'b1 == ap_condition_pp3_exit_iter0_state12) & (1'b1 == ap_CS_fsm_pp3_stage0))) begin
            ap_enable_reg_pp3_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state11)) begin
            ap_enable_reg_pp3_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp3_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp3_stage0_subdone) & (1'b1 == ap_condition_pp3_exit_iter0_state12))) begin
            ap_enable_reg_pp3_iter1 <= (1'b1 ^ ap_condition_pp3_exit_iter0_state12);
        end else if ((1'b0 == ap_block_pp3_stage0_subdone)) begin
            ap_enable_reg_pp3_iter1 <= ap_enable_reg_pp3_iter0;
        end else if ((1'b1 == ap_CS_fsm_state11)) begin
            ap_enable_reg_pp3_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp4_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp4_stage0_subdone) & (1'b1 == ap_condition_pp4_exit_iter0_state15) & (1'b1 == ap_CS_fsm_pp4_stage0))) begin
            ap_enable_reg_pp4_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln117_fu_193_p2 == 1'd1))) begin
            ap_enable_reg_pp4_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp4_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp4_stage0_subdone) & (1'b1 == ap_condition_pp4_exit_iter0_state15))) begin
            ap_enable_reg_pp4_iter1 <= (1'b1 ^ ap_condition_pp4_exit_iter0_state15);
        end else if ((1'b0 == ap_block_pp4_stage0_subdone)) begin
            ap_enable_reg_pp4_iter1 <= ap_enable_reg_pp4_iter0;
        end else if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln117_fu_193_p2 == 1'd1))) begin
            ap_enable_reg_pp4_iter1 <= 1'b0;
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
    if (((icmp_ln24_5_fu_229_p2 == 1'd0) & (1'b0 == ap_block_pp3_stage0_11001) & (ap_enable_reg_pp3_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp3_stage0))) begin
        c_0_i22_reg_159 <= c_5_fu_235_p2;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        c_0_i22_reg_159 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln24_fu_205_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        c_0_i28_reg_137 <= c_fu_211_p2;
    end else if (((icmp_ln117_fu_193_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        c_0_i28_reg_137 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i1_0_reg_126 <= 6'd0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        i1_0_reg_126 <= i_reg_266;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln121_fu_217_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp2_stage0) & (ap_enable_reg_pp2_iter0 == 1'b1) & (1'b0 == ap_block_pp2_stage0_11001))) begin
        indvar_flatten11_reg_148 <= add_ln121_fu_223_p2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        indvar_flatten11_reg_148 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln130_fu_241_p2 == 1'd0) & (1'b0 == ap_block_pp4_stage0_11001) & (ap_enable_reg_pp4_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp4_stage0))) begin
        indvar_flatten23_reg_170 <= add_ln130_fu_247_p2;
    end else if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln117_fu_193_p2 == 1'd1))) begin
        indvar_flatten23_reg_170 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln112_fu_181_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        indvar_flatten_reg_115 <= add_ln112_fu_187_p2;
    end else if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten_reg_115 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        i_reg_266 <= i_fu_199_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln112_reg_253 <= icmp_ln112_fu_181_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp2_stage0) & (1'b0 == ap_block_pp2_stage0_11001))) begin
        icmp_ln121_reg_280 <= icmp_ln121_fu_217_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp4_stage0_11001) & (1'b1 == ap_CS_fsm_pp4_stage0))) begin
        icmp_ln130_reg_298 <= icmp_ln130_fu_241_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp3_stage0_11001) & (1'b1 == ap_CS_fsm_pp3_stage0))) begin
        icmp_ln24_5_reg_289 <= icmp_ln24_5_fu_229_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        icmp_ln24_reg_271 <= icmp_ln24_fu_205_p2;
    end
end

always @ (*) begin
    if ((icmp_ln112_fu_181_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln24_fu_205_p2 == 1'd1)) begin
        ap_condition_pp1_exit_iter0_state6 = 1'b1;
    end else begin
        ap_condition_pp1_exit_iter0_state6 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln121_fu_217_p2 == 1'd1)) begin
        ap_condition_pp2_exit_iter0_state9 = 1'b1;
    end else begin
        ap_condition_pp2_exit_iter0_state9 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln24_5_fu_229_p2 == 1'd1)) begin
        ap_condition_pp3_exit_iter0_state12 = 1'b1;
    end else begin
        ap_condition_pp3_exit_iter0_state12 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln130_fu_241_p2 == 1'd1)) begin
        ap_condition_pp4_exit_iter0_state15 = 1'b1;
    end else begin
        ap_condition_pp4_exit_iter0_state15 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter1 == 1'b0) & (ap_enable_reg_pp1_iter0 == 1'b0))) begin
        ap_idle_pp1 = 1'b1;
    end else begin
        ap_idle_pp1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp2_iter1 == 1'b0) & (ap_enable_reg_pp2_iter0 == 1'b0))) begin
        ap_idle_pp2 = 1'b1;
    end else begin
        ap_idle_pp2 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp3_iter0 == 1'b0) & (ap_enable_reg_pp3_iter1 == 1'b0))) begin
        ap_idle_pp3 = 1'b1;
    end else begin
        ap_idle_pp3 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp4_iter0 == 1'b0) & (ap_enable_reg_pp4_iter1 == 1'b0))) begin
        ap_idle_pp4 = 1'b1;
    end else begin
        ap_idle_pp4 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln121_reg_280 == 1'd0) & (1'b0 == ap_block_pp2_stage0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0))) begin
        data_V_V_blk_n = data_V_V_empty_n;
    end else begin
        data_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln121_reg_280 == 1'd0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0) & (1'b0 == ap_block_pp2_stage0_11001))) begin
        data_V_V_read = 1'b1;
    end else begin
        data_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
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
    if ((((1'b0 == ap_block_pp1_stage0) & (icmp_ln24_reg_271 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0)) | ((1'b0 == ap_block_pp0_stage0) & (icmp_ln112_reg_253 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln121_reg_280 == 1'd0) & (1'b0 == ap_block_pp2_stage0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0)) | ((icmp_ln130_reg_298 == 1'd0) & (ap_enable_reg_pp4_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp4_stage0) & (1'b0 == ap_block_pp4_stage0)) | ((icmp_ln24_5_reg_289 == 1'd0) & (ap_enable_reg_pp3_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp3_stage0) & (1'b0 == ap_block_pp3_stage0)))) begin
        res_V_V_blk_n = res_V_V_full_n;
    end else begin
        res_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln121_reg_280 == 1'd0) & (1'b0 == ap_block_pp2_stage0_01001) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0))) begin
        res_V_V_din = data_V_V_dout;
    end else if ((((icmp_ln24_reg_271 == 1'd0) & (1'b0 == ap_block_pp1_stage0_01001) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0)) | ((icmp_ln112_reg_253 == 1'd0) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln130_reg_298 == 1'd0) & (1'b0 == ap_block_pp4_stage0_01001) & (ap_enable_reg_pp4_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp4_stage0)) | ((icmp_ln24_5_reg_289 == 1'd0) & (1'b0 == ap_block_pp3_stage0_01001) & (ap_enable_reg_pp3_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp3_stage0)))) begin
        res_V_V_din = 18'd0;
    end else begin
        res_V_V_din = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln24_reg_271 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001)) | ((icmp_ln112_reg_253 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((icmp_ln121_reg_280 == 1'd0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0) & (1'b0 == ap_block_pp2_stage0_11001)) | ((icmp_ln130_reg_298 == 1'd0) & (1'b0 == ap_block_pp4_stage0_11001) & (ap_enable_reg_pp4_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp4_stage0)) | ((icmp_ln24_5_reg_289 == 1'd0) & (1'b0 == ap_block_pp3_stage0_11001) & (ap_enable_reg_pp3_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp3_stage0)))) begin
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
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln112_fu_181_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln112_fu_181_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln117_fu_193_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_pp4_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_pp1_stage0 : begin
            if (~((1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter0 == 1'b1) & (icmp_ln24_fu_205_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else if (((1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter0 == 1'b1) & (icmp_ln24_fu_205_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_pp2_stage0;
        end
        ap_ST_fsm_pp2_stage0 : begin
            if (~((1'b0 == ap_block_pp2_stage0_subdone) & (ap_enable_reg_pp2_iter0 == 1'b1) & (icmp_ln121_fu_217_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_pp2_stage0;
            end else if (((1'b0 == ap_block_pp2_stage0_subdone) & (ap_enable_reg_pp2_iter0 == 1'b1) & (icmp_ln121_fu_217_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp2_stage0;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_pp3_stage0;
        end
        ap_ST_fsm_pp3_stage0 : begin
            if (~((1'b0 == ap_block_pp3_stage0_subdone) & (icmp_ln24_5_fu_229_p2 == 1'd1) & (ap_enable_reg_pp3_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp3_stage0;
            end else if (((1'b0 == ap_block_pp3_stage0_subdone) & (icmp_ln24_5_fu_229_p2 == 1'd1) & (ap_enable_reg_pp3_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp3_stage0;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_pp4_stage0 : begin
            if (~((1'b0 == ap_block_pp4_stage0_subdone) & (icmp_ln130_fu_241_p2 == 1'd1) & (ap_enable_reg_pp4_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp4_stage0;
            end else if (((1'b0 == ap_block_pp4_stage0_subdone) & (icmp_ln130_fu_241_p2 == 1'd1) & (ap_enable_reg_pp4_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp4_stage0;
            end
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln112_fu_187_p2 = (indvar_flatten_reg_115 + 11'd1);

assign add_ln121_fu_223_p2 = (indvar_flatten11_reg_148 + 11'd1);

assign add_ln130_fu_247_p2 = (indvar_flatten23_reg_170 + 11'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp1_stage0 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_pp2_stage0 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_pp3_stage0 = ap_CS_fsm[32'd8];

assign ap_CS_fsm_pp4_stage0 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd5];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((icmp_ln112_reg_253 == 1'd0) & (res_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((icmp_ln112_reg_253 == 1'd0) & (res_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((icmp_ln112_reg_253 == 1'd0) & (res_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_pp1_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp1_stage0_01001 = ((icmp_ln24_reg_271 == 1'd0) & (res_V_V_full_n == 1'b0) & (ap_enable_reg_pp1_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp1_stage0_11001 = ((icmp_ln24_reg_271 == 1'd0) & (res_V_V_full_n == 1'b0) & (ap_enable_reg_pp1_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp1_stage0_subdone = ((icmp_ln24_reg_271 == 1'd0) & (res_V_V_full_n == 1'b0) & (ap_enable_reg_pp1_iter1 == 1'b1));
end

assign ap_block_pp2_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp2_stage0_01001 = ((ap_enable_reg_pp2_iter1 == 1'b1) & (((icmp_ln121_reg_280 == 1'd0) & (data_V_V_empty_n == 1'b0)) | ((icmp_ln121_reg_280 == 1'd0) & (res_V_V_full_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp2_stage0_11001 = ((ap_enable_reg_pp2_iter1 == 1'b1) & (((icmp_ln121_reg_280 == 1'd0) & (data_V_V_empty_n == 1'b0)) | ((icmp_ln121_reg_280 == 1'd0) & (res_V_V_full_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp2_stage0_subdone = ((ap_enable_reg_pp2_iter1 == 1'b1) & (((icmp_ln121_reg_280 == 1'd0) & (data_V_V_empty_n == 1'b0)) | ((icmp_ln121_reg_280 == 1'd0) & (res_V_V_full_n == 1'b0))));
end

assign ap_block_pp3_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp3_stage0_01001 = ((icmp_ln24_5_reg_289 == 1'd0) & (res_V_V_full_n == 1'b0) & (ap_enable_reg_pp3_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp3_stage0_11001 = ((icmp_ln24_5_reg_289 == 1'd0) & (res_V_V_full_n == 1'b0) & (ap_enable_reg_pp3_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp3_stage0_subdone = ((icmp_ln24_5_reg_289 == 1'd0) & (res_V_V_full_n == 1'b0) & (ap_enable_reg_pp3_iter1 == 1'b1));
end

assign ap_block_pp4_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp4_stage0_01001 = ((icmp_ln130_reg_298 == 1'd0) & (res_V_V_full_n == 1'b0) & (ap_enable_reg_pp4_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp4_stage0_11001 = ((icmp_ln130_reg_298 == 1'd0) & (res_V_V_full_n == 1'b0) & (ap_enable_reg_pp4_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp4_stage0_subdone = ((icmp_ln130_reg_298 == 1'd0) & (res_V_V_full_n == 1'b0) & (ap_enable_reg_pp4_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (real_start == 1'b0));
end

always @ (*) begin
    ap_block_state10_pp2_stage0_iter1 = (((icmp_ln121_reg_280 == 1'd0) & (data_V_V_empty_n == 1'b0)) | ((icmp_ln121_reg_280 == 1'd0) & (res_V_V_full_n == 1'b0)));
end

assign ap_block_state12_pp3_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state13_pp3_stage0_iter1 = ((icmp_ln24_5_reg_289 == 1'd0) & (res_V_V_full_n == 1'b0));
end

assign ap_block_state15_pp4_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state16_pp4_stage0_iter1 = ((icmp_ln130_reg_298 == 1'd0) & (res_V_V_full_n == 1'b0));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = ((icmp_ln112_reg_253 == 1'd0) & (res_V_V_full_n == 1'b0));
end

assign ap_block_state6_pp1_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state7_pp1_stage0_iter1 = ((icmp_ln24_reg_271 == 1'd0) & (res_V_V_full_n == 1'b0));
end

assign ap_block_state9_pp2_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_pp1 = (ap_idle_pp1 ^ 1'b1);

assign ap_enable_pp2 = (ap_idle_pp2 ^ 1'b1);

assign ap_enable_pp3 = (ap_idle_pp3 ^ 1'b1);

assign ap_enable_pp4 = (ap_idle_pp4 ^ 1'b1);

assign ap_ready = internal_ap_ready;

assign c_5_fu_235_p2 = (c_0_i22_reg_159 + 6'd1);

assign c_fu_211_p2 = (c_0_i28_reg_137 + 6'd1);

assign i_fu_199_p2 = (i1_0_reg_126 + 6'd1);

assign icmp_ln112_fu_181_p2 = ((indvar_flatten_reg_115 == 11'd1088) ? 1'b1 : 1'b0);

assign icmp_ln117_fu_193_p2 = ((i1_0_reg_126 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln121_fu_217_p2 = ((indvar_flatten11_reg_148 == 11'd1024) ? 1'b1 : 1'b0);

assign icmp_ln130_fu_241_p2 = ((indvar_flatten23_reg_170 == 11'd1088) ? 1'b1 : 1'b0);

assign icmp_ln24_5_fu_229_p2 = ((c_0_i22_reg_159 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln24_fu_205_p2 = ((c_0_i28_reg_137 == 6'd32) ? 1'b1 : 1'b0);

assign start_out = real_start;

endmodule //zeropad2d_cl_ss_ap_fixed_ap_fixed_config36_s