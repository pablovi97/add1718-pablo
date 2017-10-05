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
