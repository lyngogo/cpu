library verilog;
use verilog.vl_types.all;
entity cpu_vlg_check_tst is
    port(
        ad              : in     vl_logic_vector(7 downto 0);
        Alu             : in     vl_logic;
        ALudata         : in     vl_logic_vector(7 downto 0);
        dataout         : in     vl_logic_vector(7 downto 0);
        datout2         : in     vl_logic_vector(7 downto 0);
        m0              : in     vl_logic_vector(7 downto 0);
        m1              : in     vl_logic_vector(7 downto 0);
        m2              : in     vl_logic_vector(7 downto 0);
        m3              : in     vl_logic_vector(7 downto 0);
        m4              : in     vl_logic_vector(7 downto 0);
        memre           : in     vl_logic;
        memwe           : in     vl_logic;
        pcvalue         : in     vl_logic_vector(7 downto 0);
        regwe           : in     vl_logic;
        regwirtedata    : in     vl_logic_vector(7 downto 0);
        rg0             : in     vl_logic_vector(7 downto 0);
        rg1             : in     vl_logic_vector(7 downto 0);
        rg2             : in     vl_logic_vector(7 downto 0);
        rg3             : in     vl_logic_vector(7 downto 0);
        writeaddr       : in     vl_logic_vector(7 downto 0);
        writedata       : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end cpu_vlg_check_tst;
