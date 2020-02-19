entity adder is
  -- `i0`, `i1`, y el accarreo de entrada `ci` son entradas del sumador.
  -- `s` es la salida de suma, `co` es el accarreo de salida.
    port(i0, i1, ci : in bit;
        s, co : out bit);
end adder;

architecture rtl of adder is
begin
  --  La arquitectura de este sumador completo contiene dos asignaciones concurrentes.
  --  Calcula la suma.
  s <= i0 xor i1 xor ci;
  --  Calcula el acarreo.
    co <= (i0 and i1) or (i0 and ci) or (i1 and ci);
end rtl;
