library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity tb_testbench is
end tb_testbench;

architecture teste of tb_testbench is

component testbench is
port ( 
	SW : in std_logic_vector(9 downto 0);
	KEY : in std_logic_vector(3 downto 0);
	CLOCK_50 : in std_logic;
	HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : out std_logic_vector(6 downto 0);
	LEDR : out std_logic_vector(9 downto 0));
end component;

signal 	SW :  std_logic_vector(9 downto 0):= "0000000000";
signal	KEY :  std_logic_vector(3 downto 0) := "0000";
signal	CLOCK_50 :  std_logic := '0';
signal	HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 :  std_logic_vector(6 downto 0);
signal	LEDR :  std_logic_vector(9 downto 0);

begin 
instancia_testbench: testbench port map(SW=>SW, KEY=>KEY, CLOCK_50=>CLOCK_50, HEX0=>HEX0, HEX1=>HEX1, HEX2=>HEX2, HEX3=>HEX3,HEX4=>HEX4, HEX5=>HEX5, LEDR=>LEDR);
CLOCK_50 <= not CLOCK_50 after 1 ms;
end teste;
