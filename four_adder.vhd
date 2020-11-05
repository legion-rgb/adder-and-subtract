----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:55:26 10/29/2020 
-- Design Name: 
-- Module Name:    four_adder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity four_adder is
    Port ( ain : in  STD_LOGIC_VECTOR (3 downto 0);
           bin : in  STD_LOGIC_VECTOR (3 downto 0);
           sout : out  STD_LOGIC_VECTOR (3 downto 0);
           co : out  STD_LOGIC);
end four_adder;

architecture Behavioral of four_adder is

signal c: std_logic_vector (2 downto 0);
begin

U1 : entity work.full_add 
port map(
 a => ain(0),
 b => bin(0),
 cin => '0',
 s => sout(0),
 cout => c(0) 
 );
 
 U2 : entity work.full_add 
port map(
 a => ain(1),
 b => bin(1),
 cin => c(0) ,
 s => sout(1),
 cout => c(1) 
 );
 
 U3 : entity work.full_add 
port map(
 a => ain(2),
 b => bin(2),
 cin => c(1),
 s => sout(2),
 cout => c(2) 
 );
 
 U4 : entity work.full_add 
port map(
 a => ain(3),
 b => bin(3),
 cin => c(2),
 s => sout(3),
 cout => co 
 );

 
 
 
   

end Behavioral;

