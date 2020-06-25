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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "06/05/2020 23:24:02"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
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

ENTITY 	cpu IS
    PORT (
	ad : OUT std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	dataout : OUT std_logic_vector(7 DOWNTO 0);
	regwirtedata : OUT std_logic_vector(7 DOWNTO 0);
	writeaddr : OUT std_logic_vector(7 DOWNTO 0);
	writedata : OUT std_logic_vector(7 DOWNTO 0);
	inswe : IN std_logic
	);
END cpu;

-- Design Ports Information
-- ad[7]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad[5]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad[4]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad[3]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad[2]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad[1]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[7]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[6]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[4]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[2]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[1]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[0]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regwirtedata[7]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regwirtedata[6]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regwirtedata[5]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regwirtedata[4]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regwirtedata[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regwirtedata[2]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regwirtedata[1]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regwirtedata[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeaddr[7]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeaddr[6]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeaddr[5]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeaddr[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeaddr[3]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeaddr[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeaddr[1]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeaddr[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[7]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[6]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[5]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[4]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[3]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[2]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[1]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[0]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inswe	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cpu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ad : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_dataout : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_regwirtedata : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_writeaddr : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_writedata : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_inswe : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inswe~input_o\ : std_logic;
SIGNAL \ad[7]~output_o\ : std_logic;
SIGNAL \ad[6]~output_o\ : std_logic;
SIGNAL \ad[5]~output_o\ : std_logic;
SIGNAL \ad[4]~output_o\ : std_logic;
SIGNAL \ad[3]~output_o\ : std_logic;
SIGNAL \ad[2]~output_o\ : std_logic;
SIGNAL \ad[1]~output_o\ : std_logic;
SIGNAL \ad[0]~output_o\ : std_logic;
SIGNAL \dataout[7]~output_o\ : std_logic;
SIGNAL \dataout[6]~output_o\ : std_logic;
SIGNAL \dataout[5]~output_o\ : std_logic;
SIGNAL \dataout[4]~output_o\ : std_logic;
SIGNAL \dataout[3]~output_o\ : std_logic;
SIGNAL \dataout[2]~output_o\ : std_logic;
SIGNAL \dataout[1]~output_o\ : std_logic;
SIGNAL \dataout[0]~output_o\ : std_logic;
SIGNAL \regwirtedata[7]~output_o\ : std_logic;
SIGNAL \regwirtedata[6]~output_o\ : std_logic;
SIGNAL \regwirtedata[5]~output_o\ : std_logic;
SIGNAL \regwirtedata[4]~output_o\ : std_logic;
SIGNAL \regwirtedata[3]~output_o\ : std_logic;
SIGNAL \regwirtedata[2]~output_o\ : std_logic;
SIGNAL \regwirtedata[1]~output_o\ : std_logic;
SIGNAL \regwirtedata[0]~output_o\ : std_logic;
SIGNAL \writeaddr[7]~output_o\ : std_logic;
SIGNAL \writeaddr[6]~output_o\ : std_logic;
SIGNAL \writeaddr[5]~output_o\ : std_logic;
SIGNAL \writeaddr[4]~output_o\ : std_logic;
SIGNAL \writeaddr[3]~output_o\ : std_logic;
SIGNAL \writeaddr[2]~output_o\ : std_logic;
SIGNAL \writeaddr[1]~output_o\ : std_logic;
SIGNAL \writeaddr[0]~output_o\ : std_logic;
SIGNAL \writedata[7]~output_o\ : std_logic;
SIGNAL \writedata[6]~output_o\ : std_logic;
SIGNAL \writedata[5]~output_o\ : std_logic;
SIGNAL \writedata[4]~output_o\ : std_logic;
SIGNAL \writedata[3]~output_o\ : std_logic;
SIGNAL \writedata[2]~output_o\ : std_logic;
SIGNAL \writedata[1]~output_o\ : std_logic;
SIGNAL \writedata[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst15|PCOUT[0]~21_combout\ : std_logic;
SIGNAL \inst4|PCOUT[0]~feeder_combout\ : std_logic;
SIGNAL \inst15|PCOUT[1]~8\ : std_logic;
SIGNAL \inst15|PCOUT[2]~9_combout\ : std_logic;
SIGNAL \inst4|PCOUT[2]~feeder_combout\ : std_logic;
SIGNAL \inst15|PCOUT[2]~10\ : std_logic;
SIGNAL \inst15|PCOUT[3]~11_combout\ : std_logic;
SIGNAL \inst4|PCOUT[3]~feeder_combout\ : std_logic;
SIGNAL \inst15|PCOUT[3]~12\ : std_logic;
SIGNAL \inst15|PCOUT[4]~13_combout\ : std_logic;
SIGNAL \inst4|PCOUT[4]~feeder_combout\ : std_logic;
SIGNAL \inst15|PCOUT[4]~14\ : std_logic;
SIGNAL \inst15|PCOUT[5]~15_combout\ : std_logic;
SIGNAL \inst4|PCOUT[5]~feeder_combout\ : std_logic;
SIGNAL \inst15|PCOUT[5]~16\ : std_logic;
SIGNAL \inst15|PCOUT[6]~17_combout\ : std_logic;
SIGNAL \inst4|PCOUT[6]~feeder_combout\ : std_logic;
SIGNAL \inst15|PCOUT[6]~18\ : std_logic;
SIGNAL \inst15|PCOUT[7]~19_combout\ : std_logic;
SIGNAL \inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|DataOut[6]~reg0_q\ : std_logic;
SIGNAL \inst15|PCOUT[1]~7_combout\ : std_logic;
SIGNAL \inst1|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|DataOut[3]~reg0_q\ : std_logic;
SIGNAL \inst1|Mux3~1_combout\ : std_logic;
SIGNAL \inst1|Mux3~2_combout\ : std_logic;
SIGNAL \inst1|DataOut[2]~reg0_q\ : std_logic;
SIGNAL \inst1|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|DataOut[1]~reg0_q\ : std_logic;
SIGNAL \inst1|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|DataOut[0]~reg0_q\ : std_logic;
SIGNAL \inst|DATAOUT[2]~feeder_combout\ : std_logic;
SIGNAL \inst12|DATAOUT[2]~feeder_combout\ : std_logic;
SIGNAL \inst15|PCOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|PCOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|DATAOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst12|DATAOUT\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ad <= ww_ad;
ww_clk <= clk;
dataout <= ww_dataout;
regwirtedata <= ww_regwirtedata;
writeaddr <= ww_writeaddr;
writedata <= ww_writedata;
ww_inswe <= inswe;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X31_Y0_N9
\ad[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ad[7]~output_o\);

-- Location: IOOBUF_X12_Y41_N2
\ad[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|DataOut[6]~reg0_q\,
	oe => GND,
	devoe => ww_devoe,
	o => \ad[6]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\ad[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ad[5]~output_o\);

-- Location: IOOBUF_X50_Y41_N2
\ad[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ad[4]~output_o\);

-- Location: IOOBUF_X18_Y41_N9
\ad[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|DataOut[3]~reg0_q\,
	oe => GND,
	devoe => ww_devoe,
	o => \ad[3]~output_o\);

-- Location: IOOBUF_X12_Y41_N9
\ad[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|DataOut[2]~reg0_q\,
	oe => GND,
	devoe => ww_devoe,
	o => \ad[2]~output_o\);

-- Location: IOOBUF_X14_Y41_N2
\ad[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|DataOut[1]~reg0_q\,
	oe => GND,
	devoe => ww_devoe,
	o => \ad[1]~output_o\);

-- Location: IOOBUF_X14_Y41_N9
\ad[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|DataOut[0]~reg0_q\,
	oe => GND,
	devoe => ww_devoe,
	o => \ad[0]~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\dataout[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataout[7]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\dataout[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataout[6]~output_o\);

-- Location: IOOBUF_X46_Y41_N23
\dataout[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataout[5]~output_o\);

-- Location: IOOBUF_X34_Y41_N9
\dataout[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataout[4]~output_o\);

-- Location: IOOBUF_X29_Y41_N9
\dataout[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataout[3]~output_o\);

-- Location: IOOBUF_X10_Y41_N2
\dataout[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \dataout[2]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\dataout[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataout[1]~output_o\);

-- Location: IOOBUF_X43_Y41_N9
\dataout[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataout[0]~output_o\);

-- Location: IOOBUF_X48_Y0_N9
\regwirtedata[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regwirtedata[7]~output_o\);

-- Location: IOOBUF_X52_Y11_N9
\regwirtedata[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regwirtedata[6]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\regwirtedata[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regwirtedata[5]~output_o\);

-- Location: IOOBUF_X23_Y41_N2
\regwirtedata[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regwirtedata[4]~output_o\);

-- Location: IOOBUF_X41_Y0_N2
\regwirtedata[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regwirtedata[3]~output_o\);

-- Location: IOOBUF_X16_Y41_N9
\regwirtedata[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|DATAOUT\(2),
	devoe => ww_devoe,
	o => \regwirtedata[2]~output_o\);

-- Location: IOOBUF_X41_Y0_N16
\regwirtedata[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regwirtedata[1]~output_o\);

-- Location: IOOBUF_X52_Y15_N2
\regwirtedata[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regwirtedata[0]~output_o\);

-- Location: IOOBUF_X5_Y41_N9
\writeaddr[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \writeaddr[7]~output_o\);

-- Location: IOOBUF_X48_Y41_N2
\writeaddr[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \writeaddr[6]~output_o\);

-- Location: IOOBUF_X43_Y41_N2
\writeaddr[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \writeaddr[5]~output_o\);

-- Location: IOOBUF_X23_Y41_N9
\writeaddr[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \writeaddr[4]~output_o\);

-- Location: IOOBUF_X41_Y0_N23
\writeaddr[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \writeaddr[3]~output_o\);

-- Location: IOOBUF_X16_Y41_N2
\writeaddr[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DATAOUT\(2),
	devoe => ww_devoe,
	o => \writeaddr[2]~output_o\);

-- Location: IOOBUF_X38_Y41_N9
\writeaddr[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \writeaddr[1]~output_o\);

-- Location: IOOBUF_X31_Y41_N16
\writeaddr[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \writeaddr[0]~output_o\);

-- Location: IOOBUF_X46_Y0_N23
\writedata[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \writedata[7]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\writedata[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \writedata[6]~output_o\);

-- Location: IOOBUF_X52_Y23_N2
\writedata[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \writedata[5]~output_o\);

-- Location: IOOBUF_X7_Y41_N2
\writedata[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \writedata[4]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\writedata[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \writedata[3]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\writedata[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \writedata[2]~output_o\);

-- Location: IOOBUF_X41_Y0_N9
\writedata[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \writedata[1]~output_o\);

-- Location: IOOBUF_X31_Y0_N23
\writedata[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \writedata[0]~output_o\);

-- Location: IOIBUF_X27_Y0_N15
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

-- Location: LCCOMB_X15_Y40_N4
\inst15|PCOUT[0]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst15|PCOUT[0]~21_combout\ = !\inst4|PCOUT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|PCOUT\(0),
	combout => \inst15|PCOUT[0]~21_combout\);

-- Location: FF_X15_Y40_N5
\inst15|PCOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst15|PCOUT[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|PCOUT\(0));

-- Location: LCCOMB_X14_Y40_N28
\inst4|PCOUT[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|PCOUT[0]~feeder_combout\ = \inst15|PCOUT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst15|PCOUT\(0),
	combout => \inst4|PCOUT[0]~feeder_combout\);

-- Location: FF_X14_Y40_N29
\inst4|PCOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|PCOUT[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PCOUT\(0));

-- Location: LCCOMB_X14_Y40_N2
\inst15|PCOUT[1]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst15|PCOUT[1]~7_combout\ = (\inst4|PCOUT\(1) & (\inst4|PCOUT\(0) $ (VCC))) # (!\inst4|PCOUT\(1) & (\inst4|PCOUT\(0) & VCC))
-- \inst15|PCOUT[1]~8\ = CARRY((\inst4|PCOUT\(1) & \inst4|PCOUT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PCOUT\(1),
	datab => \inst4|PCOUT\(0),
	datad => VCC,
	combout => \inst15|PCOUT[1]~7_combout\,
	cout => \inst15|PCOUT[1]~8\);

-- Location: LCCOMB_X14_Y40_N4
\inst15|PCOUT[2]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst15|PCOUT[2]~9_combout\ = (\inst4|PCOUT\(2) & (!\inst15|PCOUT[1]~8\)) # (!\inst4|PCOUT\(2) & ((\inst15|PCOUT[1]~8\) # (GND)))
-- \inst15|PCOUT[2]~10\ = CARRY((!\inst15|PCOUT[1]~8\) # (!\inst4|PCOUT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PCOUT\(2),
	datad => VCC,
	cin => \inst15|PCOUT[1]~8\,
	combout => \inst15|PCOUT[2]~9_combout\,
	cout => \inst15|PCOUT[2]~10\);

-- Location: FF_X14_Y40_N5
\inst15|PCOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst15|PCOUT[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|PCOUT\(2));

-- Location: LCCOMB_X14_Y40_N30
\inst4|PCOUT[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|PCOUT[2]~feeder_combout\ = \inst15|PCOUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|PCOUT\(2),
	combout => \inst4|PCOUT[2]~feeder_combout\);

-- Location: FF_X14_Y40_N31
\inst4|PCOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|PCOUT[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PCOUT\(2));

-- Location: LCCOMB_X14_Y40_N6
\inst15|PCOUT[3]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst15|PCOUT[3]~11_combout\ = (\inst4|PCOUT\(3) & (\inst15|PCOUT[2]~10\ $ (GND))) # (!\inst4|PCOUT\(3) & (!\inst15|PCOUT[2]~10\ & VCC))
-- \inst15|PCOUT[3]~12\ = CARRY((\inst4|PCOUT\(3) & !\inst15|PCOUT[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PCOUT\(3),
	datad => VCC,
	cin => \inst15|PCOUT[2]~10\,
	combout => \inst15|PCOUT[3]~11_combout\,
	cout => \inst15|PCOUT[3]~12\);

-- Location: FF_X14_Y40_N7
\inst15|PCOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst15|PCOUT[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|PCOUT\(3));

-- Location: LCCOMB_X14_Y40_N26
\inst4|PCOUT[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|PCOUT[3]~feeder_combout\ = \inst15|PCOUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|PCOUT\(3),
	combout => \inst4|PCOUT[3]~feeder_combout\);

-- Location: FF_X14_Y40_N27
\inst4|PCOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|PCOUT[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PCOUT\(3));

-- Location: LCCOMB_X14_Y40_N8
\inst15|PCOUT[4]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst15|PCOUT[4]~13_combout\ = (\inst4|PCOUT\(4) & (!\inst15|PCOUT[3]~12\)) # (!\inst4|PCOUT\(4) & ((\inst15|PCOUT[3]~12\) # (GND)))
-- \inst15|PCOUT[4]~14\ = CARRY((!\inst15|PCOUT[3]~12\) # (!\inst4|PCOUT\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|PCOUT\(4),
	datad => VCC,
	cin => \inst15|PCOUT[3]~12\,
	combout => \inst15|PCOUT[4]~13_combout\,
	cout => \inst15|PCOUT[4]~14\);

-- Location: FF_X14_Y40_N9
\inst15|PCOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst15|PCOUT[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|PCOUT\(4));

-- Location: LCCOMB_X14_Y40_N24
\inst4|PCOUT[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|PCOUT[4]~feeder_combout\ = \inst15|PCOUT\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst15|PCOUT\(4),
	combout => \inst4|PCOUT[4]~feeder_combout\);

-- Location: FF_X14_Y40_N25
\inst4|PCOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|PCOUT[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PCOUT\(4));

-- Location: LCCOMB_X14_Y40_N10
\inst15|PCOUT[5]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst15|PCOUT[5]~15_combout\ = (\inst4|PCOUT\(5) & (\inst15|PCOUT[4]~14\ $ (GND))) # (!\inst4|PCOUT\(5) & (!\inst15|PCOUT[4]~14\ & VCC))
-- \inst15|PCOUT[5]~16\ = CARRY((\inst4|PCOUT\(5) & !\inst15|PCOUT[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|PCOUT\(5),
	datad => VCC,
	cin => \inst15|PCOUT[4]~14\,
	combout => \inst15|PCOUT[5]~15_combout\,
	cout => \inst15|PCOUT[5]~16\);

-- Location: FF_X14_Y40_N11
\inst15|PCOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst15|PCOUT[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|PCOUT\(5));

-- Location: LCCOMB_X14_Y40_N18
\inst4|PCOUT[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|PCOUT[5]~feeder_combout\ = \inst15|PCOUT\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|PCOUT\(5),
	combout => \inst4|PCOUT[5]~feeder_combout\);

-- Location: FF_X14_Y40_N19
\inst4|PCOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|PCOUT[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PCOUT\(5));

-- Location: LCCOMB_X14_Y40_N12
\inst15|PCOUT[6]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst15|PCOUT[6]~17_combout\ = (\inst4|PCOUT\(6) & (!\inst15|PCOUT[5]~16\)) # (!\inst4|PCOUT\(6) & ((\inst15|PCOUT[5]~16\) # (GND)))
-- \inst15|PCOUT[6]~18\ = CARRY((!\inst15|PCOUT[5]~16\) # (!\inst4|PCOUT\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|PCOUT\(6),
	datad => VCC,
	cin => \inst15|PCOUT[5]~16\,
	combout => \inst15|PCOUT[6]~17_combout\,
	cout => \inst15|PCOUT[6]~18\);

-- Location: FF_X14_Y40_N13
\inst15|PCOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst15|PCOUT[6]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|PCOUT\(6));

-- Location: LCCOMB_X14_Y40_N0
\inst4|PCOUT[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|PCOUT[6]~feeder_combout\ = \inst15|PCOUT\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst15|PCOUT\(6),
	combout => \inst4|PCOUT[6]~feeder_combout\);

-- Location: FF_X14_Y40_N1
\inst4|PCOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|PCOUT[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PCOUT\(6));

-- Location: LCCOMB_X14_Y40_N14
\inst15|PCOUT[7]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst15|PCOUT[7]~19_combout\ = \inst4|PCOUT\(7) $ (!\inst15|PCOUT[6]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PCOUT\(7),
	cin => \inst15|PCOUT[6]~18\,
	combout => \inst15|PCOUT[7]~19_combout\);

-- Location: FF_X14_Y40_N15
\inst15|PCOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst15|PCOUT[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|PCOUT\(7));

-- Location: FF_X14_Y40_N21
\inst4|PCOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst15|PCOUT\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PCOUT\(7));

-- Location: LCCOMB_X14_Y40_N20
\inst1|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Mux3~0_combout\ = (!\inst4|PCOUT\(4) & (!\inst4|PCOUT\(6) & (!\inst4|PCOUT\(7) & !\inst4|PCOUT\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PCOUT\(4),
	datab => \inst4|PCOUT\(6),
	datac => \inst4|PCOUT\(7),
	datad => \inst4|PCOUT\(5),
	combout => \inst1|Mux3~0_combout\);

-- Location: LCCOMB_X15_Y40_N12
\inst1|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Mux2~0_combout\ = (!\inst4|PCOUT\(2) & (!\inst4|PCOUT\(3) & \inst1|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|PCOUT\(2),
	datac => \inst4|PCOUT\(3),
	datad => \inst1|Mux3~0_combout\,
	combout => \inst1|Mux2~0_combout\);

-- Location: FF_X15_Y40_N13
\inst1|DataOut[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|DataOut[6]~reg0_q\);

-- Location: FF_X14_Y40_N3
\inst15|PCOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst15|PCOUT[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|PCOUT\(1));

-- Location: FF_X14_Y40_N23
\inst4|PCOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst15|PCOUT\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PCOUT\(1));

-- Location: LCCOMB_X15_Y40_N26
\inst1|Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Mux2~1_combout\ = (!\inst4|PCOUT\(3) & (!\inst4|PCOUT\(2) & (!\inst4|PCOUT\(1) & \inst1|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PCOUT\(3),
	datab => \inst4|PCOUT\(2),
	datac => \inst4|PCOUT\(1),
	datad => \inst1|Mux3~0_combout\,
	combout => \inst1|Mux2~1_combout\);

-- Location: FF_X15_Y40_N27
\inst1|DataOut[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|DataOut[3]~reg0_q\);

-- Location: LCCOMB_X14_Y40_N22
\inst1|Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Mux3~1_combout\ = (\inst4|PCOUT\(3)) # ((\inst4|PCOUT\(2)) # ((\inst4|PCOUT\(0) & !\inst4|PCOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PCOUT\(3),
	datab => \inst4|PCOUT\(0),
	datac => \inst4|PCOUT\(1),
	datad => \inst4|PCOUT\(2),
	combout => \inst1|Mux3~1_combout\);

-- Location: LCCOMB_X14_Y40_N16
\inst1|Mux3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Mux3~2_combout\ = (!\inst1|Mux3~1_combout\ & \inst1|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mux3~1_combout\,
	datad => \inst1|Mux3~0_combout\,
	combout => \inst1|Mux3~2_combout\);

-- Location: FF_X14_Y40_N17
\inst1|DataOut[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|DataOut[2]~reg0_q\);

-- Location: LCCOMB_X15_Y40_N28
\inst1|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Mux4~0_combout\ = (!\inst4|PCOUT\(3) & (!\inst4|PCOUT\(2) & (\inst4|PCOUT\(1) & \inst1|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PCOUT\(3),
	datab => \inst4|PCOUT\(2),
	datac => \inst4|PCOUT\(1),
	datad => \inst1|Mux3~0_combout\,
	combout => \inst1|Mux4~0_combout\);

-- Location: FF_X15_Y40_N29
\inst1|DataOut[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|DataOut[1]~reg0_q\);

-- Location: LCCOMB_X15_Y40_N6
\inst1|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Mux5~0_combout\ = (!\inst4|PCOUT\(2) & (\inst4|PCOUT\(0) & (!\inst4|PCOUT\(3) & \inst1|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PCOUT\(2),
	datab => \inst4|PCOUT\(0),
	datac => \inst4|PCOUT\(3),
	datad => \inst1|Mux3~0_combout\,
	combout => \inst1|Mux5~0_combout\);

-- Location: FF_X15_Y40_N7
\inst1|DataOut[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|DataOut[0]~reg0_q\);

-- Location: LCCOMB_X17_Y40_N18
\inst|DATAOUT[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|DATAOUT[2]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|DATAOUT[2]~feeder_combout\);

-- Location: FF_X17_Y40_N19
\inst|DATAOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|DATAOUT[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DATAOUT\(2));

-- Location: LCCOMB_X17_Y40_N24
\inst12|DATAOUT[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst12|DATAOUT[2]~feeder_combout\ = \inst|DATAOUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|DATAOUT\(2),
	combout => \inst12|DATAOUT[2]~feeder_combout\);

-- Location: FF_X17_Y40_N25
\inst12|DATAOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst12|DATAOUT[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|DATAOUT\(2));

-- Location: IOIBUF_X52_Y21_N8
\inswe~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inswe,
	o => \inswe~input_o\);

ww_ad(7) <= \ad[7]~output_o\;

ww_ad(6) <= \ad[6]~output_o\;

ww_ad(5) <= \ad[5]~output_o\;

ww_ad(4) <= \ad[4]~output_o\;

ww_ad(3) <= \ad[3]~output_o\;

ww_ad(2) <= \ad[2]~output_o\;

ww_ad(1) <= \ad[1]~output_o\;

ww_ad(0) <= \ad[0]~output_o\;

ww_dataout(7) <= \dataout[7]~output_o\;

ww_dataout(6) <= \dataout[6]~output_o\;

ww_dataout(5) <= \dataout[5]~output_o\;

ww_dataout(4) <= \dataout[4]~output_o\;

ww_dataout(3) <= \dataout[3]~output_o\;

ww_dataout(2) <= \dataout[2]~output_o\;

ww_dataout(1) <= \dataout[1]~output_o\;

ww_dataout(0) <= \dataout[0]~output_o\;

ww_regwirtedata(7) <= \regwirtedata[7]~output_o\;

ww_regwirtedata(6) <= \regwirtedata[6]~output_o\;

ww_regwirtedata(5) <= \regwirtedata[5]~output_o\;

ww_regwirtedata(4) <= \regwirtedata[4]~output_o\;

ww_regwirtedata(3) <= \regwirtedata[3]~output_o\;

ww_regwirtedata(2) <= \regwirtedata[2]~output_o\;

ww_regwirtedata(1) <= \regwirtedata[1]~output_o\;

ww_regwirtedata(0) <= \regwirtedata[0]~output_o\;

ww_writeaddr(7) <= \writeaddr[7]~output_o\;

ww_writeaddr(6) <= \writeaddr[6]~output_o\;

ww_writeaddr(5) <= \writeaddr[5]~output_o\;

ww_writeaddr(4) <= \writeaddr[4]~output_o\;

ww_writeaddr(3) <= \writeaddr[3]~output_o\;

ww_writeaddr(2) <= \writeaddr[2]~output_o\;

ww_writeaddr(1) <= \writeaddr[1]~output_o\;

ww_writeaddr(0) <= \writeaddr[0]~output_o\;

ww_writedata(7) <= \writedata[7]~output_o\;

ww_writedata(6) <= \writedata[6]~output_o\;

ww_writedata(5) <= \writedata[5]~output_o\;

ww_writedata(4) <= \writedata[4]~output_o\;

ww_writedata(3) <= \writedata[3]~output_o\;

ww_writedata(2) <= \writedata[2]~output_o\;

ww_writedata(1) <= \writedata[1]~output_o\;

ww_writedata(0) <= \writedata[0]~output_o\;
END structure;


