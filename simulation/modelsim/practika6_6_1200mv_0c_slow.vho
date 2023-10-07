-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "10/07/2023 13:58:07"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	practika6 IS
    PORT (
	q : OUT std_logic_vector(3 DOWNTO 0);
	clk : IN std_logic;
	a : IN std_logic;
	b : IN std_logic
	);
END practika6;

-- Design Ports Information
-- q[3]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[0]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF practika6 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b~input_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \inst28~4_combout\ : std_logic;
SIGNAL \inst28~5_combout\ : std_logic;
SIGNAL \inst12~q\ : std_logic;
SIGNAL \inst29~6_combout\ : std_logic;
SIGNAL \inst29~7_combout\ : std_logic;
SIGNAL \inst14~q\ : std_logic;
SIGNAL \inst26~3_combout\ : std_logic;
SIGNAL \inst26~2_combout\ : std_logic;
SIGNAL \inst26~4_combout\ : std_logic;
SIGNAL \inst10~q\ : std_logic;
SIGNAL \inst30~4_combout\ : std_logic;
SIGNAL \inst30~5_combout\ : std_logic;
SIGNAL \inst16~q\ : std_logic;

BEGIN

q <= ww_q;
ww_clk <= clk;
ww_a <= a;
ww_b <= b;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X14_Y0_N9
\q[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16~q\,
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\q[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14~q\,
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\q[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12~q\,
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\q[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10~q\,
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X14_Y0_N1
\a~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: LCCOMB_X14_Y1_N28
\inst28~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst28~4_combout\ = (\inst14~q\ & (((\inst10~q\)) # (!\a~input_o\))) # (!\inst14~q\ & (((!\inst12~q\ & !\inst10~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14~q\,
	datab => \a~input_o\,
	datac => \inst12~q\,
	datad => \inst10~q\,
	combout => \inst28~4_combout\);

-- Location: LCCOMB_X14_Y1_N24
\inst28~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst28~5_combout\ = (\inst10~q\ & ((\inst16~q\ & (\inst12~q\)) # (!\inst16~q\ & ((\inst28~4_combout\))))) # (!\inst10~q\ & ((\inst28~4_combout\) # (\inst16~q\ $ (!\inst12~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10~q\,
	datab => \inst16~q\,
	datac => \inst12~q\,
	datad => \inst28~4_combout\,
	combout => \inst28~5_combout\);

-- Location: FF_X14_Y1_N25
inst12 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst28~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12~q\);

-- Location: LCCOMB_X14_Y1_N6
\inst29~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst29~6_combout\ = (\inst14~q\ & ((\inst10~q\ & ((\inst16~q\))) # (!\inst10~q\ & (!\a~input_o\)))) # (!\inst14~q\ & ((\inst10~q\ & (!\a~input_o\ & !\inst16~q\)) # (!\inst10~q\ & ((\inst16~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14~q\,
	datab => \a~input_o\,
	datac => \inst10~q\,
	datad => \inst16~q\,
	combout => \inst29~6_combout\);

-- Location: LCCOMB_X14_Y1_N22
\inst29~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst29~7_combout\ = (\inst16~q\ & (\inst29~6_combout\ & (\inst12~q\ $ (\inst14~q\)))) # (!\inst16~q\ & (((\inst29~6_combout\)) # (!\inst12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12~q\,
	datab => \inst16~q\,
	datac => \inst14~q\,
	datad => \inst29~6_combout\,
	combout => \inst29~7_combout\);

-- Location: FF_X14_Y1_N23
inst14 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst29~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14~q\);

-- Location: LCCOMB_X14_Y1_N30
\inst26~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst26~3_combout\ = (\inst14~q\ & (!\inst16~q\ & (!\inst12~q\ & \inst10~q\))) # (!\inst14~q\ & (\inst16~q\ $ (((!\inst10~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14~q\,
	datab => \inst16~q\,
	datac => \inst12~q\,
	datad => \inst10~q\,
	combout => \inst26~3_combout\);

-- Location: LCCOMB_X14_Y1_N12
\inst26~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst26~2_combout\ = (\inst12~q\ & ((\inst10~q\ & ((!\inst14~q\))) # (!\inst10~q\ & (!\inst16~q\)))) # (!\inst12~q\ & (\inst16~q\ $ (\inst14~q\ $ (!\inst10~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16~q\,
	datab => \inst12~q\,
	datac => \inst14~q\,
	datad => \inst10~q\,
	combout => \inst26~2_combout\);

-- Location: LCCOMB_X14_Y1_N18
\inst26~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst26~4_combout\ = (\a~input_o\ & (\inst26~3_combout\)) # (!\a~input_o\ & ((\inst26~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~input_o\,
	datac => \inst26~3_combout\,
	datad => \inst26~2_combout\,
	combout => \inst26~4_combout\);

-- Location: FF_X14_Y1_N19
inst10 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst26~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10~q\);

-- Location: LCCOMB_X14_Y1_N16
\inst30~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst30~4_combout\ = (\inst10~q\ & (((\inst12~q\) # (!\inst16~q\)))) # (!\inst10~q\ & (!\a~input_o\ & (\inst16~q\ $ (\inst12~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~input_o\,
	datab => \inst16~q\,
	datac => \inst12~q\,
	datad => \inst10~q\,
	combout => \inst30~4_combout\);

-- Location: LCCOMB_X14_Y1_N20
\inst30~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst30~5_combout\ = (\inst14~q\ & (((\inst30~4_combout\)))) # (!\inst14~q\ & (((!\inst12~q\ & \inst30~4_combout\)) # (!\inst10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10~q\,
	datab => \inst12~q\,
	datac => \inst14~q\,
	datad => \inst30~4_combout\,
	combout => \inst30~5_combout\);

-- Location: FF_X14_Y1_N21
inst16 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst30~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16~q\);

-- Location: IOIBUF_X8_Y0_N8
\b~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

ww_q(3) <= \q[3]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(0) <= \q[0]~output_o\;
END structure;


