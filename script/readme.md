# Tareas programadas

## 1.Windows -Tarea diferida

En Windows 7 para abrir el programador de tareas vamos a Panel de control -> Herramientas administrativas -> Programador de tareas.

![img](./IMG/1.png)

Ponemos un mensaje para que nos salga en pantalla

![img](./IMG/1.1.png)

Y cuando llega a la hora se ejecutara nuestro script

![img](./IMG/1.1.2.png)

**Ahora hacemos otra tarea que nos inicie algun programa en nuestro caso el VNC**

Ponemos cuando queramos que nos inicie el programa

![img](./IMG/1.2.png)

Ponemos la ruta del programa

![img](./IMG/1.2.1.png)

![img](./IMG/1.2.2.png)

![img](./IMG/1.2.3.png)

Y se nos inicia el programa cuando llega el momento

![img](./IMG/1.2.4.png)

**Ahora creamos una tarea periodica para apagar el sistema**

primero hacemos un acceso directo al shutdown de Windows
>Creamos acceso directo ponemos
``SHUTDOWN /S /P``  y se hará

![img](./IMG/1.2.5.png)

Ahora vamos a crear la tarea y ponemos la ruta del script

![img](./IMG/1.2.6.png)

ponemos el temporizador

![img](./IMG/1.2.7.png)

Y vemos que se ha ejecutado



![img](./IMG/1.2.8.png)


## 2.Gnu/Linux -Tarea diferida   

Creamos el script

![img](./IMG/2.2.png)

Ejecutamos el script y mientras miramos las tareas programadas con ``atq``

![img](./IMG/2.3.png)

Se ejecita el script

![img](./IMG/2.4.png)

Y volvemos a usar ``atq`` para ver si hay tareas programadas

![img](./IMG/2.5.png)


## 3.Gnu/Linux -Tarea periodica

Creamos un script con ``crontab -e``
>Hacemos una tarea periodica por ejemplo esta se ejecutara a los 14 minutos de la hora 12

![img](./IMG/3.2.png)

Ponemos el comando ``crontab -l`` para ver las tareas programadas y esperamos a que se ejecuten

![img](./IMG/3.1.png)
