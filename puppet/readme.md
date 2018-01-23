# PUPPET
## 1.-Preconfiguracion de la masquinas virtuales
* MV1 -master (el servidor)

![img](./IMG/1.1.png)

* MV2 -cli1

![img](./IMG/1.2.png)
* MV3 -cli3

![img](./IMG/1.3.4.png)
### 1.1.-comprobar las configuraciones anteriores
* en MV1

![img](./IMG/1.3.1.master.png)
![img](./IMG/1.3.2.master.png)

* en MV2

![img](./IMG/1.3.3.cli1.png)

* en MV3

![img](./IMG/1.3.6.cli2.png)

![img](./IMG/1.3.7.png)
## 2.-Instalacion y configuracion de los servidores
>Instalamos PUPPET

![img](./IMG/2.0.png)

**Con lo siguiente que haremos sera para que se active automaticamente cuando se abra la maquina**

![img](./IMG/2.0.1.png)

![img](./IMG/2.0.2.png)
> Contenido de readme.txt

![img](./IMG/2.1.png)

### 2.1 .-Site.pp
>site.pp es el fichero principal de configuración de órdenes para los agentes/nodos puppet.

![img](./IMG/2.2.png)

### 2.2 .-hostlinux1.pp
**Crearemos la primera configuracion que llamaremos hostlinux1.pp**

![img](./IMG/2.3.1.png)

**Miramos  quien es el propientario y en que grupo estan de los ficheros de PUPPET:**

![img](./IMG/2.3.2.png)

> y reiniciamos puppet

![img](./IMG/2.3.3.png)

**Comprobamos si hay algun error:**

![img](./IMG/2.3.4.png)

**Desactivamos el cortafuegos para que no haya porblemas con el servicio:**

![img](./IMG/2.3.5.png)

##3.-Instalacion y configuracion del cliente 1

**Instalamos el agente puppet:**

![img](./IMG/3.0.png)

**El cliente puppet debe ser informado de quien será su master. Para ello, vamos a configurar /etc/puppet/puppet.conf:**

![img](./IMG/3.1.png)

![img](./IMG/3.2.png)

**Iniciamos puppet de nuevo**

![img](./IMG/3.3.png)

![img](./IMG/3.4.png)


## 4.-Certificados
>Debemos entrar como usuario root

**Consultamos las peticiones pendientes de unión al master:**

![img](./IMG/4.1.png)

** Aceptamos al nuevo cliente desde el master y generamos un certificado:**

![img](./IMG/4.1.2.png)
![img](./IMG/4.1.3.png)

## 4.1 .-Comprobacion
>Nos aseguramos de que somos root

**Ejecutamos el siguiente comando para forzar la ejecución del agente puppet:**

![img](./IMG/4.2.png)

**Comprobamos si hay errores**
![img](./IMG/4.2.1.png)

## 5 .-Segunda versión del fichero pp
**Creamos un segundo fchero de configuracion que lamaremos hostlinux2.pp**

![img](./IMG/5.1.png)

**Modificamos /etc/puppet/manifests/site.pp para que se use la configuración de hostlinux2 el lugar de la anterior:**

![img](./IMG/5.1.2.png)

![img](./IMG/5.1.3.png)

**por ultimo vamos al cliente usamos el comando pupper agent para iniciar la configuracion del master**

![img](./IMG/5.1.4.png)

![img](./IMG/5.1.5.png)



## 6.- Cliente Windows

**Creamos hostwindows3.pp y lo metemos en site.pp**

![img](./IMG/6.1.png)

![img](./IMG/6.1.2.png)

![img](./IMG/6.1.3.png)

![img](./IMG/6.1.4.png)

### 6.1.-Instalamos puppet en Windows
![img](./IMG/6.2.png)

**Le decimos a puppet de windows quien es su master**

![img](./IMG/6.2.1.png)

**Generamos el certificado**

![img](./IMG/6.2.3.png)

![img](./IMG/6.2.4.png)

**Abrimos la consola de puppet y ejecutamos con el agente puppet**

![img](./IMG/6.2.5.png)


![img](./IMG/6.2.6.png)

**Ponemos los siguientes comandos de configuracion**

![img](./IMG/6.2.7.png)

>puppet agent -t --debug --verbose

![img](./IMG/6.2.8.png)

>Facter

![img](./IMG/6.2.9.png)


![img](./IMG/6.2.10.png)


![img](./IMG/6.2.11.png)


## 7.- Configuramos hostlinux4.pp

**Hacemos un nuevo fichero hostwindows4.pp y un hostwindows5 creado por nosotros**

![img](./IMG/6.2.12.png)

![img](./IMG/6.2.13.png)

![img](./IMG/6.2.14.png)

**Y en el cliente windows lo ejecutamos**
![img](./IMG/6.2.15.png)
