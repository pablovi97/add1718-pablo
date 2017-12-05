# Vagrant

## 2. Primeros pasos

### 2.1 Instalamos vagrant:
>Vagrant version

![img](./IMG/2.1.png)

> VboxManage -v

![img](./IMG/2.1.2.png)

### 2.2 Proyecto:
**Creamos un directorio para nuestro vagrant llamado vagrant17 en nuestro caso**
>  Dentro de la carpeta ejecutamos Vagrant init

![img](./IMG/2.2.png)

### 2.3 Imagen, caja o box
>* primero hacemos un vdir para ver si se ha creado el fichero vagrantfile,
* despues ejecutamos: "vagrant box add micajaXX_ubuntu_precise32 http://files.vagrantup.com/precise32.box"

![img](./IMG/2.3.png)

**Luego ejecutamos "vagrant box list" para ver las imagenes o cajas disponibles**

![img](./IMG/2.3.1.png)

**Ahora nos metemos en el fichero vagrantfile y configuramos el fichero de la siguiente forma:**

![img](./IMG/2.3.2.png)

### 2.4 Iniciamos una nueva maquina
**Nos metemos en la carpeta vargarnt 17 y ejecutamos "vagrant up" para que se inicie la maquina**

![img](./IMG/2.4.png)

**Ahora nos conectamos por SSH a la maquina vagrant**

![img](./IMG/2.4.1.png)


### 3. configuramos el entorno virtual  

**con "ls/vagrant" podemos ver que aparece el archivo vagrantfile que esta siendo compartido desde la maquina real**

![img](./IMG/3.1.png)

> Instalamos el apache2

![img](./IMG/3.2.png)

> Ahora modificamos el fichero vagrantfile de la siguiente manera  de modo que el puerto 4567 del sistema anfitrión sea enrutado al puerto 80 del ambiente virtualizado.  

![img](./IMG/3.2.1.png)

>y recargamos el vagrant con reload:  

![img](./IMG/3.2.3.png)

* Ahora hacemos los siguientes comandos de comprobacion :  

> nmap -p 4500-4600
(debe estar abierto el puerto 4567)

![img](./IMG/3.2.4.png)   


> netstat -ntap, debe mostrar tcp 0.0.0.0:4567 0.0.0.0:* ESCUCHAR.

![img](./IMG/3.2.5.png)

> y cuando vamos e el navegador a  http://127.0.0.1:4567   nos funciona porque estamos accediendo al servicio virtualizado en el puerto 80  

![img](./IMG/3.2.6.png)

### 4 Suministro  

**Creamos el script install_apache.sh**  

![img](./IMG/5.1.png)


**Ahora vamos al fichero vagrantfile y ponemos esta linea dentro del fichero**

>config.vm.provision :shell, :path => "install_apache.sh"

![img](./IMG/5.1.2.png)

> recargamos la maquina con reload para que se actualizen los cambios :  

![img](./IMG/5.1.3.png)  

> y lo volvemos a ejecutar con vagrant provision

![img](./IMG/5.1.4.png)  

**Para verificar que efectivamente el servidor Apache ha sido instalado e iniciado, abrimos navegador en la máquina real con URL http://127.0.0.1:4567.**



![img](./IMG/5.1.5.png)


### 4.1 Suministro mediante puppet  

**vamos a crear un  entorno de desarrollo vagrant y puppet :**

> Modificar el archivo el archivo Vagrantfile de la siguiente forma:

![img](./IMG/5.2.png)

> Crear un fichero manifests/default.pp, con las órdenes/instrucciones puppet para instalar el programa nmap. Ejemplo:  


![img](./IMG/5.3.png)  

> y hacemos reload para que se cojan los cambios:  

![img](./IMG/5.4.png)   

> y lo volvemos a ejecutar con vagrant provision

![img](./IMG/5.5.png)   


### 5.Nuestra caja personalizada  

> * Crear una MV VirtualBox nueva o usar una que ya tengamos
pd: Tenerla con el guet aditios instalado

> * Instalar OpenSSH Server en la MV.  

**Instalamos OpenSHH**  

![img](./IMG/6.0.png)   

**Creamos el usuario vagrant**  

![img](./IMG/6.1.png)

**Le ponemos una contraseña**

>Contraseña :vagrant  

![img](./IMG/6.1.2.png)

**Creamos el fichero .ssh**

![img](./IMG/6.1.5.png)  

**Le ponemos una clave publica al fichero**

![img](./IMG/6.1.3.png)  


**Le damos permisos**  

![img](./IMG/6.1.4.png)

**Vamos a etc/sudoers y añadimos la siguiente liena para que no nos solicite la contraseña del root cuando hagamos operaciones con el usuario vagrant**


>Añadir vagrant ALL=(ALL) NOPASSWD: ALL a /etc/sudoers.

![img](./IMG/6.1.6.png)  

**Miramos la version de Nuestra VirtualBox para asegurarnos de que tengamos una version compatible**  

![img](./IMG/6.1.7.png)


### 5.1.Creamos la caja vagrant  

**Vamos a crear una nueva carpeta mivagrant17conmicaja**

![img](./IMG/6.2.png)

**Ejecutamos Vagrant init para crear el fichero vagrantfile**

![img](./IMG/6.2.2.png)  

**y dentro ponemos esto:**  
![img](./IMG/6.2.1.1.png)

**Creamos package.box a partir de la MV**  

![img](./IMG/packagebien.png)

**Comprobamos que se ha creado la caja package.box**

![img](./IMG/34.png)

**Añadimos la caja creada a nuestro repositorio de vagrant**  

![img](./IMG/6.2.4.png)

**Y mostramos la lista de maquinas disponibles**  

![img](./IMG/6.2.5.png)   


![img](./IMG/antesfinal.png)   

**Y ya podemos acceder por SSH a nuestra maquina**  

![img](./IMG/final.png)   
