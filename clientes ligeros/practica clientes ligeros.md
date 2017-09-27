# Cientes ligeros#

## SERVIDOR LTSP

**1/Preparando la maquina**  
Primero creamos la maquina servidor con dos interfaces de red una externa y otra interna.

![imagen](IMAGENES/servidor interna.png)  

![imagen](IMAGENES/servidor puente.png)

la de red externa la ponermos en modo adaptador puente y la segunda es la que debe conectarse al cliente ,esta debe ser estatica y estar en la misma qçred que el cliente

  **2/Instalacion de SSOO**  
  instalamos xubuntu  
  y ponermos los siguientes comandos  
  ![imagen](IMAGENES/comandos 3.2.png)   

  ![imagen](IMAGENES/comandos otros 3.2.png)

  tambien creamos 3 usuarios locales  llamados: primer-apellido-alumno1, primer-apellido-alumno2, primer-apellido-alumno3.  

  ![imagen](IMAGENES/usuarios 3.2.png)

  **3/instalar el servicio LTSP**  
  Instalar el servidor SSH apt-get install openssh-server, para permitir acceso remoto a la máquina.  

  ![imagen](IMAGENES/3.3 apt-get install openssh.png)

  Modificamos SSH con PermitRootLogin Yes.    

  ![imagen](IMAGENES/3.3 permit root loginyes.png)  

 instalamos el servidor del cliente ligero    

  ![imagen](IMAGENES/3.3 apt-get standaslone.png)    

  Ahora vamos a crear un imagen del SO a partir del sistema real haciendo ltsp-build-client

  ![imagen](IMAGENES/comando para crear imagen.png)     

  y la imagen creada  

  ![imagen](IMAGENES/imagen creada.png)

antes consultamos informacion con ltsp-info  
![imagen](IMAGENES/3.3lstp-info.png)




Finalmente Modificamos el fichero de configuracion /etc/ltsp/dhcpd.conf
y cambiamos todo lo que pone "1386" por "amd64"  
![imagen](IMAGENES/consultar ficher dhcpd.png)

En el fichero /etc/ltsp/dhcpd.conf modificar el valor range 192.168.67.1XX 192.168.67.2XX;. Donde XX es el número de puesto de cada alumno.  

![imagen](IMAGENES/3.3range.png)    

Reiniciamos el servidor, y comprobamos que los servicios están corriendo  

![imagen](IMAGENES/3.3 parte ultima.png)     


**3/ Preparar Cliente**

  *Sin disco duro y sin unidad de DVD.

  *Sólo tiene RAM, floppy


  *Tarjeta de red PXE en modo "red interna".

  ![imagen](IMAGENES/cliente en red interna.png)  

  ![imagen](IMAGENES/cliente en red.png)  

Con el servidor encendido, iniciar la MV cliente desde red/PXE:

  Comprobar que todo funciona correctamente.  
  ![imagen](IMAGENES/cliente.png)  
