--  Programa Hola mundo.
use std.textio.all; -- Importa el paquete estandar textio.

--  Declara la entidad de diseño sin puertos.
entity hello_world is
end hello_world;

architecture behaviour of hello_world is
begin
    process
        variable l : line;
    begin
        write(l, String'("Hello world!"));
        writeline(output, l);
        wait;
    end process;
end behaviour;
