# Heartbeat

Este es un ejemplo de como generar una señal de reloj de 100 MHz.

<br>

Para analizar el codigo se utiliza el comando ghdl con la opción -a
```sh
ghdl -a heartbeat.vhdl
```
Ahora se elabora la unidad con la opción -e
```sh
ghdl -e heartbeat
```
Y se ejecuta la unidad con la opcion -r

Tambien se usa la opcion --wave para guardar las señales de la simulación en un archivo.
```sh
ghdl -r heartbeat --wave=wave.ghw
```

Despues podemos observarlas con el siguiente comando
```sh
gtkwave wave.ghw
```

![Terminal](https://raw.githubusercontent.com/JonathanDNdc/Practica1/master/Heartbeat/Terminal.png)

<br>

Y esta es la forma de onda generada por el codigo.

Se puede observar que el periodo es de 10 ns.
![GTKWave](https://raw.githubusercontent.com/JonathanDNdc/Practica1/master/Heartbeat/GTKWave.png)
