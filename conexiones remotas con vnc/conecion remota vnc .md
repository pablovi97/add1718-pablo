## Conexiones remotas con VNC

* ####  Paso 1/ conexiones remotas
  * Tenemos que tener dos maquinas de windows con vnc que sean cliente y servidor

    * ips de maquinas de windows:

servidor:  

![imagen](./IMG/ipwindosVNC.png)  

cliente:   

![imagen](./IMG/ipvnc2.png)


  * Dos maquinas de open suse con vnc tanto cliente como servidor

       * ips maquinas open suse :    

servidor:     
![imagen](./IMG/ipopensusevnc.png)  

cliente:
![imagen](./IMG/1.png)  

* ####  Paso 2/ descargamos Tight VNC en las maquinas de windows

  * instalamos el vnc tanto en el servidor como el cliente  

        en el ponemos abrimos el vnc , ponemos la  ip y le damos a connect

      ![imagen](./IMG/VNCENWINDOWSSERVIDOR.png)   
  * ponemos la ip y nos saldra una contraseña , la ponemos y ya nos podremos conectar  

      ![imagen](./IMG/CONTRASEÑA.png)     

 * y ya nos podremos conectar    


  ![imagen](./IMG/conecionwindows.png)   

      por ultimo ponemos el comando de comprobacion "nestat -n" para comrpobar
      que se ha conectado correctamente

  ![imagen](./IMG/coneccionremotawindows.png)         


* #### Paso 3/  instalamos y conectamos opensuse server con cliente

 * Vamos a yast ponemos "vnc" y configuramos cliente y servidor de la siguiente manera  

 cliente:   

   ![imagen](./IMG/cliente.png)  

 servidor:  
 
   ![imagen](./IMG/servidor.png)   

       ahora si queremos poner una contraseña para las conecciones remotas
       tenemos que poner en el terminal "vncserver" y ya podremos cambiarla  

  * Para conectarnos ponemos "vncviewer" metemos la ip junto al puerto

    ![imagen](./IMG/01.png)  

  * Y ya estaria conectado  

    ![imagen](./IMG/conectardeclienteaservidor.png)      

         ahora ponemos el comando ps -ef|grep vnc para comprobar que las conecciones han funcionado  

      ![imagen](./IMG/comandodecomprobacionserver.png)     

* ##### Paso 4/ conectamos maquina windows con open suse y viceversa    


  * Windows en open suse:  
    ![imagen](./IMG/deopensuseclienteawidndows.png)   

  * Open suse en windows:
      ![imagen](./IMG/dewindowsclienteaopensuseserver.png)
