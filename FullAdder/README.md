# Full Adder

El diseño de hardware de este ejemplo usa el subconjunto sintetizable de VHDL

<br>

Primero se analiza el bloque con el comando ghdl con la opción -a
```sh
ghdl -a adder.vhdl
```
Tambien se tiene que analizar el archivo del testbench
```sh
ghdl -a adder_tb.vhdl
```
Ahora se elabora el archivo con la opción -e
```sh
ghdl -e adder_tb
```
Y para finalizar se ejecuta con la opcion -r
```sh
ghdl -r adder_tb
```

![Terminal](https://raw.githubusercontent.com/JonathanDNdc/Practica1/master/FullAdder/Terminal.png)

La ultima linea es el resultado de la siguiente linea de codigo
```vhdl
assert false report "end of test" severity note;
```
