-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity GradientMag_XMC_120_160_1_s is
port (
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    SobelFilter_XMC_out1_i_dout : IN STD_LOGIC_VECTOR (15 downto 0);
    SobelFilter_XMC_out1_i_empty_n : IN STD_LOGIC;
    SobelFilter_XMC_out1_i_read : OUT STD_LOGIC;
    SobelFilter_XMC_out2_i_dout : IN STD_LOGIC_VECTOR (15 downto 0);
    SobelFilter_XMC_out2_i_empty_n : IN STD_LOGIC;
    SobelFilter_XMC_out2_i_read : OUT STD_LOGIC;
    GradientMag_XMC_out1_i_din : OUT STD_LOGIC_VECTOR (15 downto 0);
    GradientMag_XMC_out1_i_full_n : IN STD_LOGIC;
    GradientMag_XMC_out1_i_write : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC );
end;


architecture behav of GradientMag_XMC_120_160_1_s is 
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal internal_ap_ready : STD_LOGIC;
    signal GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_ap_start : STD_LOGIC;
    signal GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_ap_done : STD_LOGIC;
    signal GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_ap_continue : STD_LOGIC;
    signal GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_ap_idle : STD_LOGIC;
    signal GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_ap_ready : STD_LOGIC;
    signal GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_SobelFilter_XMC_out1_i_read : STD_LOGIC;
    signal GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_SobelFilter_XMC_out2_i_read : STD_LOGIC;
    signal GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_srcX_obj_data_din : STD_LOGIC_VECTOR (15 downto 0);
    signal GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_srcX_obj_data_write : STD_LOGIC;
    signal GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_srcY_obj_data_din : STD_LOGIC_VECTOR (15 downto 0);
    signal GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_srcY_obj_data_write : STD_LOGIC;
    signal GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_start_out : STD_LOGIC;
    signal GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_start_write : STD_LOGIC;
    signal xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_ap_start : STD_LOGIC;
    signal xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_ap_done : STD_LOGIC;
    signal xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_ap_continue : STD_LOGIC;
    signal xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_ap_idle : STD_LOGIC;
    signal xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_ap_ready : STD_LOGIC;
    signal xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_start_out : STD_LOGIC;
    signal xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_start_write : STD_LOGIC;
    signal xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_srcX_obj_449_read : STD_LOGIC;
    signal xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_srcY_obj_450_read : STD_LOGIC;
    signal xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_dst_obj_451_din : STD_LOGIC_VECTOR (15 downto 0);
    signal xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_dst_obj_451_write : STD_LOGIC;
    signal GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0_ap_start : STD_LOGIC;
    signal GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0_ap_done : STD_LOGIC;
    signal GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0_ap_continue : STD_LOGIC;
    signal GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0_ap_idle : STD_LOGIC;
    signal GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0_ap_ready : STD_LOGIC;
    signal GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0_dst_obj_data_read : STD_LOGIC;
    signal GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0_GradientMag_XMC_out1_i_din : STD_LOGIC_VECTOR (15 downto 0);
    signal GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0_GradientMag_XMC_out1_i_write : STD_LOGIC;
    signal srcX_obj_data_full_n : STD_LOGIC;
    signal srcX_obj_data_dout : STD_LOGIC_VECTOR (15 downto 0);
    signal srcX_obj_data_empty_n : STD_LOGIC;
    signal srcY_obj_data_full_n : STD_LOGIC;
    signal srcY_obj_data_dout : STD_LOGIC_VECTOR (15 downto 0);
    signal srcY_obj_data_empty_n : STD_LOGIC;
    signal dst_obj_data_full_n : STD_LOGIC;
    signal dst_obj_data_dout : STD_LOGIC_VECTOR (15 downto 0);
    signal dst_obj_data_empty_n : STD_LOGIC;
    signal ap_sync_ready : STD_LOGIC;
    signal start_for_xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_full_n : STD_LOGIC;
    signal start_for_xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_empty_n : STD_LOGIC;
    signal start_for_GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0_full_n : STD_LOGIC;
    signal start_for_GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0_empty_n : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        SobelFilter_XMC_out1_i_dout : IN STD_LOGIC_VECTOR (15 downto 0);
        SobelFilter_XMC_out1_i_empty_n : IN STD_LOGIC;
        SobelFilter_XMC_out1_i_read : OUT STD_LOGIC;
        SobelFilter_XMC_out2_i_dout : IN STD_LOGIC_VECTOR (15 downto 0);
        SobelFilter_XMC_out2_i_empty_n : IN STD_LOGIC;
        SobelFilter_XMC_out2_i_read : OUT STD_LOGIC;
        srcX_obj_data_din : OUT STD_LOGIC_VECTOR (15 downto 0);
        srcX_obj_data_full_n : IN STD_LOGIC;
        srcX_obj_data_write : OUT STD_LOGIC;
        srcY_obj_data_din : OUT STD_LOGIC_VECTOR (15 downto 0);
        srcY_obj_data_full_n : IN STD_LOGIC;
        srcY_obj_data_write : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC );
    end component;


    component xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_s IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        srcX_obj_449_dout : IN STD_LOGIC_VECTOR (15 downto 0);
        srcX_obj_449_empty_n : IN STD_LOGIC;
        srcX_obj_449_read : OUT STD_LOGIC;
        srcY_obj_450_dout : IN STD_LOGIC_VECTOR (15 downto 0);
        srcY_obj_450_empty_n : IN STD_LOGIC;
        srcY_obj_450_read : OUT STD_LOGIC;
        dst_obj_451_din : OUT STD_LOGIC_VECTOR (15 downto 0);
        dst_obj_451_full_n : IN STD_LOGIC;
        dst_obj_451_write : OUT STD_LOGIC );
    end component;


    component GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        dst_obj_data_dout : IN STD_LOGIC_VECTOR (15 downto 0);
        dst_obj_data_empty_n : IN STD_LOGIC;
        dst_obj_data_read : OUT STD_LOGIC;
        GradientMag_XMC_out1_i_din : OUT STD_LOGIC_VECTOR (15 downto 0);
        GradientMag_XMC_out1_i_full_n : IN STD_LOGIC;
        GradientMag_XMC_out1_i_write : OUT STD_LOGIC );
    end component;


    component fifo_w16_d2_S_x IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (15 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (15 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component start_for_xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0 IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component start_for_GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0 IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;



begin
    GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0 : component GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_ap_start,
        start_full_n => start_for_xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_full_n,
        ap_done => GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_ap_done,
        ap_continue => GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_ap_continue,
        ap_idle => GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_ap_idle,
        ap_ready => GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_ap_ready,
        SobelFilter_XMC_out1_i_dout => SobelFilter_XMC_out1_i_dout,
        SobelFilter_XMC_out1_i_empty_n => SobelFilter_XMC_out1_i_empty_n,
        SobelFilter_XMC_out1_i_read => GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_SobelFilter_XMC_out1_i_read,
        SobelFilter_XMC_out2_i_dout => SobelFilter_XMC_out2_i_dout,
        SobelFilter_XMC_out2_i_empty_n => SobelFilter_XMC_out2_i_empty_n,
        SobelFilter_XMC_out2_i_read => GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_SobelFilter_XMC_out2_i_read,
        srcX_obj_data_din => GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_srcX_obj_data_din,
        srcX_obj_data_full_n => srcX_obj_data_full_n,
        srcX_obj_data_write => GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_srcX_obj_data_write,
        srcY_obj_data_din => GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_srcY_obj_data_din,
        srcY_obj_data_full_n => srcY_obj_data_full_n,
        srcY_obj_data_write => GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_srcY_obj_data_write,
        start_out => GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_start_out,
        start_write => GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_start_write);

    xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0 : component xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_ap_start,
        start_full_n => start_for_GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0_full_n,
        ap_done => xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_ap_done,
        ap_continue => xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_ap_continue,
        ap_idle => xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_ap_idle,
        ap_ready => xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_ap_ready,
        start_out => xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_start_out,
        start_write => xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_start_write,
        srcX_obj_449_dout => srcX_obj_data_dout,
        srcX_obj_449_empty_n => srcX_obj_data_empty_n,
        srcX_obj_449_read => xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_srcX_obj_449_read,
        srcY_obj_450_dout => srcY_obj_data_dout,
        srcY_obj_450_empty_n => srcY_obj_data_empty_n,
        srcY_obj_450_read => xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_srcY_obj_450_read,
        dst_obj_451_din => xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_dst_obj_451_din,
        dst_obj_451_full_n => dst_obj_data_full_n,
        dst_obj_451_write => xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_dst_obj_451_write);

    GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0 : component GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0_ap_start,
        ap_done => GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0_ap_done,
        ap_continue => GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0_ap_continue,
        ap_idle => GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0_ap_idle,
        ap_ready => GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0_ap_ready,
        dst_obj_data_dout => dst_obj_data_dout,
        dst_obj_data_empty_n => dst_obj_data_empty_n,
        dst_obj_data_read => GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0_dst_obj_data_read,
        GradientMag_XMC_out1_i_din => GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0_GradientMag_XMC_out1_i_din,
        GradientMag_XMC_out1_i_full_n => GradientMag_XMC_out1_i_full_n,
        GradientMag_XMC_out1_i_write => GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0_GradientMag_XMC_out1_i_write);

    srcX_obj_data_U : component fifo_w16_d2_S_x
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_srcX_obj_data_din,
        if_full_n => srcX_obj_data_full_n,
        if_write => GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_srcX_obj_data_write,
        if_dout => srcX_obj_data_dout,
        if_empty_n => srcX_obj_data_empty_n,
        if_read => xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_srcX_obj_449_read);

    srcY_obj_data_U : component fifo_w16_d2_S_x
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_srcY_obj_data_din,
        if_full_n => srcY_obj_data_full_n,
        if_write => GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_srcY_obj_data_write,
        if_dout => srcY_obj_data_dout,
        if_empty_n => srcY_obj_data_empty_n,
        if_read => xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_srcY_obj_450_read);

    dst_obj_data_U : component fifo_w16_d2_S_x
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_dst_obj_451_din,
        if_full_n => dst_obj_data_full_n,
        if_write => xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_dst_obj_451_write,
        if_dout => dst_obj_data_dout,
        if_empty_n => dst_obj_data_empty_n,
        if_read => GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0_dst_obj_data_read);

    start_for_xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_U : component start_for_xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_din,
        if_full_n => start_for_xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_full_n,
        if_write => GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_start_write,
        if_dout => start_for_xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_dout,
        if_empty_n => start_for_xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_empty_n,
        if_read => xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_ap_ready);

    start_for_GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0_U : component start_for_GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0_din,
        if_full_n => start_for_GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0_full_n,
        if_write => xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_start_write,
        if_dout => start_for_GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0_dout,
        if_empty_n => start_for_GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0_empty_n,
        if_read => GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0_ap_ready);





    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((real_start = ap_const_logic_1) and (internal_ap_ready = ap_const_logic_0))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0_ap_continue <= ap_continue;
    GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0_ap_start <= start_for_GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0_empty_n;
    GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_ap_continue <= ap_const_logic_1;
    GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_ap_start <= real_start;
    GradientMag_XMC_out1_i_din <= GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0_GradientMag_XMC_out1_i_din;
    GradientMag_XMC_out1_i_write <= GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0_GradientMag_XMC_out1_i_write;
    SobelFilter_XMC_out1_i_read <= GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_SobelFilter_XMC_out1_i_read;
    SobelFilter_XMC_out2_i_read <= GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_SobelFilter_XMC_out2_i_read;
    ap_done <= GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0_ap_done;
    ap_idle <= (xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_ap_idle and GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_ap_idle and GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0_ap_idle);
    ap_ready <= GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_ap_ready;
    ap_sync_ready <= GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_93_1_proc9_U0_ap_ready;
    internal_ap_ready <= ap_sync_ready;

    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (start_full_n = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    start_for_GradientMag_XMC_120_160_1_Loop_VITIS_LOOP_106_3_proc10_U0_din <= (0=>ap_const_logic_1, others=>'-');
    start_for_xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_din <= (0=>ap_const_logic_1, others=>'-');
    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

    xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_ap_continue <= ap_const_logic_1;
    xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_ap_start <= start_for_xFMagnitudeKernel_2_2_120_160_3_3_1_5_5_160_2_U0_empty_n;
end behav;
