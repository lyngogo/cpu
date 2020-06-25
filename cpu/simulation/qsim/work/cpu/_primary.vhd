library verilog;
use verilog.vl_types.all;
entity cpu is
    port(
        Alu             : out    vl_logic;
        clk             : in     vl_logic;
        memwe           : out    vl_logic;
        memre           : out    vl_logic;
        regwe           : out    vl_logic;
        ad              : out    vl_logic_vector(7 downto 0);
        ALudata         : out    vl_logic_vector(7 downto 0);
        dataout         : out    vl_logic_vector(7 downto 0);
        datout2         : out    vl_logic_vector(7 downto 0);
        m0              : out    vl_logic_vector(7 downto 0);
        m1              : out    vl_logic_vector(7 downto 0);
        m2              : out    vl_logic_vector(7 downto 0);
        m3              : out    vl_logic_vector(7 downto 0);
        m4              : out    vl_logic_vector(7 downto 0);
        pcvalue         : out    vl_logic_vector(7 downto 0);
        regwirtedata    : out    vl_logic_vector(7 downto 0);
        rg0             : out    vl_logic_vector(7 downto 0);
        rg1             : out    vl_logic_vector(7 downto 0);
        rg2             : out    vl_logic_vector(7 downto 0);
        rg3             : out    vl_logic_vector(7 downto 0);
        writeaddr       : out    vl_logic_vector(7 downto 0);
        writedata       : out    vl_logic_vector(7 downto 0)
    );
end cpu;
