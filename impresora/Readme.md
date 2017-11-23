# Servidor de Impresión en Windows
>Necesitamos:
* 1 Windows Server
* 1 Windows Cliente

## PASO 1-.Impresora compartida:
* ### Rol de impresion

       Instalar rol/función de servidor de impresión en el servidor.
        Incluir impresión por Internet.

![img](./IMG/1.1.png)

![img](./IMG/1.1.2.png)

* ### Instalar impresora PDF
>*  Instalamos PDF Creator
 *  En PDFCreator, configurar en perfiles -> Guardar -> Automático. Ahí configuramos carpeta destino.

![img](./IMG/1.2.1.png)

* **Ponemos la ruta donde se guardaran los archivos que imprimiremos**

![img](./IMG/1.2.3.png)

* ### Probamos la impresora local
 >Probamos la nueva impresora abriendo el Bloc de notas y creando un fichero luego selecciona imprimir. Cuando finalice el proceso se abrirá un fichero PDF con el resultado de la impresión.

 ![img](./IMG/1.3.png)

 ![img](./IMG/1.3.1.png)

* ### Compartir por red  
>Vamos al servidor:
  * Botón derecho -> Propiedades -> Compartir
    Como nombre del recurso compartido utilizar PDFnombrealumnoXX

    ![img](./IMG/1.44.png)  

* **luego en el cliente vamos a dispositivos e impresoras , ponemos la ip del servidor arriba y asgnamos la impresora del server**

    ![img](./IMG/2.png)

    ![img](./IMG/1.2.png)

## PASO 2 -. Acceso Web :   

>* Vamos al servidor.
* Nos aseguramos de tener instalado el servicio "Impresión de Internet"  


* **Configuramos impresion web :**  
>  * Vamos al cliente.
  * Abrimos un navegador Web.
  * Ponemos URL http://<ip-del-servidor>/printers (o http://<nombre-del-servidor>/printers) para que aparezca en nuestro navegador un entorno que permite gestionar las impresoras de dicho equipo

![img](./IMG/2.1.png)  

![img](./IMG/2.1.2.png)  

* **Agregamos la impresora en el cliente utilizando la URL, como se muestra en la siguiente pantalla:**  

![img](./IMG/2.3.7.png)

![img](./IMG/2.3.8.png)
## PASO 3 .-    

>* A través del navegador pausa todos los trabajos en la impresora.
*  Envía a imprimir en tu impresora compartida un documento del Bloc de notas. La siguiente pantalla muestra que la impresora esta en pausa y con el trabajo en cola de impresión.  

![img](./IMG/2.3.png)  

![img](./IMG/2.3.4.png)  



> Finalmente pulsa en reanudar el trabajo para que tu documento se convierta a PDF. Comprobar que se puede imprimir desde un cliente Windows.  

![img](./IMG/2.3.5.png)  

![img](./IMG/2.3.6.png)  
