# Docker

## 1.- Instalamos Docker  

> `zypper in docker`  

![img](./IMG/3.1.PNG)

    Lo iniciamos con el comando  `systemctl start docker`   

> Miramos que version de docker tenemos instalada   y añadimos permisos a nuestro usuario  


![img](./IMG/3.2.png)

*  Ahora salimos de la sesion y entramos con nuestro usuario y ejecutamos lo siguientes comandos:

> `docker images` sirve para ver las imagenes descargadas hasta ahora  

![img](./IMG/3.3.png)  
> `docker ps -a` enseña los contenedores creados

![img](./IMG/3.4.png)   

>Ahora hacemos `docker run hello-world` para descargar y ejecutar el contenedor "hello-world"

![img](./IMG/3.5.png)

>Ahora ejecutamos  `docker images` y podemos ver a "hello-world"

![img](./IMG/3.6.png)

>y yambien podemos ver su contenedor si ejecutamos `docker ps -a`  

![img](./IMG/3.7.png)


## 2.- Configuración de la red
* Si queremos que nuestro contenedor tenga acceso a la red exterior, debemos activar la opción IP_FORWARD (net.ipv4.ip_forward). Lo podemos hacer en YAST.

>  Yast -> Dispositivos de red -> Encaminamiento -> Habilitar reenvío IPv4

![img](./IMG/4.1.png)

> y la otra forma es ir a esta ruta y `/etc/sysconfig/SuSEfirewall2` y poner `FW_ROUTE="yes"`.

![img](./IMG/4.2.png)


## 3.- Creamos una imagen manualmente  
>  Vemos las imágenes disponibles localmente

![img](./IMG/5.1.png)

>Buscamos en los repositorios de Docker Hub

![img](./IMG/5.1.2.png)


>Descargamos una imagen `debian:8` en local

![img](./IMG/5.1.3.png)

![img](./IMG/5.1.5.png)

> Vemos todos los contenedores

![img](./IMG/5.1.6.png)

> Vemos sólo los contenedores en ejecución

![img](./IMG/5.1.7.png)

* Vamos a crear un contenedor con nombre `cont_debian` a partir de la imagen debian:8, y ejecutaremos `/bin/bash`:

![img](./IMG/5.1.8.png)

>Comprobamos que estamos en Debian

![img](./IMG/5.1.9.png)

![img](./IMG/5.1.10.png)

>Instalamos nginx en el contenedor

![img](./IMG/5.1.11.png)

> Instalamos el nano en el contenedor

![img](./IMG/5.1.12.png)

> iniciamos nginx

![img](./IMG/5.1.13.png)

* Creamos un fichero holamundo.html
> echo `<p>Hola nombre-del-alumno</p>` `/var/www/html/holamundo.html`

![img](./IMG/5.1.14.png)

* y creamos un script llamado server.sh  en la ruta `/root/server.sh`

![img](./IMG/5.1.15.png)
* Ya tenemos nuestro contenedor auto-suficiente de Nginx, ahora debemos crear una nueva imagen con los cambios que hemos hecho, para esto abrimos otra ventana de terminal y busquemos el IDContenedor:

![img](./IMG/5.1.16.png)  

* Ahora con esto podemos crear la nueva imagen a partir de los cambios que realizamos sobre la imagen base:

![img](./IMG/5.1.17.png)

* Ahora paramos el contenedor y lo eliminamos

![img](./IMG/5.1.18.png)  


## 4.- Creamos contenedor con nginx

> creamos el contenedor

![img](./IMG/5.2.1.png)

> Comprobamos y miramos el puerto que usa en este caso es el `32771`

![img](./IMG/5.2.2.png)

> abrimos el navegador y ponemos `localhost:32771` y nos saldra la pagina principal de Nginx

![img](./IMG/5.2.3.png)

* Ahora paramos el contenedor y lo eliminamos

![img](./IMG/5.2.4.png)

![img](./IMG/5.2.5.png)

## 4 .- Crear un contenedor Dockerfile  

![img](./IMG/6.2.png)

![img](./IMG/6.2.2.png)

> Creamos el fichero dockerfile con el siguiente contenido:

![img](./IMG/6.2.3.png)

![img](./IMG/6.2.4.png)

![img](./IMG/6.3.1.png)  
> Construye imagen a partir del Dockefile

![img](./IMG/6.3.png)

> Ahora creamos un contendor con el nombre cont_nginx2 paara que ejecute el siguiente programa

![img](./IMG/6.4.1.png)
> Luego vamos al navegador y ponemos `localhost:32771/holamundo.html` y nos saldra nuestra pagina funcionando con nginx

![img](./IMG/6.4.2.png)

![img](./IMG/6.4.3.png)

## 5 .- Migrar imagenes de docker a otro servidor  


![img](./IMG/7.1.png)

>Grabo una imagen con el nombre container-backup

![img](./IMG/7.2.png)
* Ahora cojere la imagen de una compañera para probar la migración

> cargamos la imagen docker a partir del fichero tar.

![img](./IMG/7.3.png)

> ejecutamos la imagen 

![img](./IMG/7.4.png)

![img](./IMG/7.5.png)

> y vemos que funciona correctamente

![img](./IMG/7.6.png)
