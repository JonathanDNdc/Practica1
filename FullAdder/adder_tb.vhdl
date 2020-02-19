-- Los testbenchs no tienen puertos.
entity adder_tb is
end adder_tb;

architecture behav of adder_tb is
  --  Declaracion del componente que se instanciara.
  component adder
    port (i0, i1 : in bit; ci : in bit; s : out bit; co : out bit);
  end component;

  --  Especifica que entidad esta ligada con el componente.
  for adder_0: adder use entity work.adder;
  signal i0, i1, ci, s, co : bit;
begin
  --  Instanciación del componente.
  adder_0: adder port map (i0 => i0, i1 => i1, ci => ci, s => s, co => co);

  --  Este proceso hace el trabajo.
  process
    type pattern_type is record
      --  Entradas del sumador.
      i0, i1, ci : bit;
      --  Salidas esperadas del sumador.
      s, co : bit;
    end record;
    --  Los patrones a aplicar.
    type pattern_array is array (natural range <>) of pattern_type;
    constant patterns : pattern_array :=
      (('0', '0', '0', '0', '0'),
       ('0', '0', '1', '1', '0'),
       ('0', '1', '0', '1', '0'),
       ('0', '1', '1', '0', '1'),
       ('1', '0', '0', '1', '0'),
       ('1', '0', '1', '0', '1'),
       ('1', '1', '0', '0', '1'),
       ('1', '1', '1', '1', '1'));
  begin
    --  Checar cada patrón.
    for i in patterns'range loop
      --  Establecer las entradas.
      i0 <= patterns(i).i0;
      i1 <= patterns(i).i1;
      ci <= patterns(i).ci;
      --  Esperar resultados.
      wait for 1 ns;
      --  Checar las salidas
      assert s = patterns(i).s
        report "bad sum value" severity error;
      assert co = patterns(i).co
        report "bad carry out value" severity error;
    end loop;
    assert false report "end of test" severity note;
    --  Espera para siempre; esto terminara la simulación.
    wait;
  end process;

end behav;
