AutoScann es un script basico que automatiza tareas basicas como:
-actualizacion de paquetes
-actualizcion de sistema
-escaneo de direcciones IP con Nmap
esta hecha con shell scripting basico, el objetivo de este script es facilitar o acelerar la recopilacion
de informacion utilizando Nmap, la idea es que sea de codigo abierto y en constante evolucion, agregando 
nuevas funciones, corrigiendo errores y mejorando la eficiencia y rapidez de los usuarios. de momento soy
el unico que esta trabajando en este scrip T^T por favor tengan pasiencia, y de encontrar un error o un
defecto por favor comuniquense conmigo por mi instagram @lexy_argento

ACLARO:
las herramientas que usa este script no son mias! las usa para automatizar tareas como escaneos SIN MODIFICAR 
EL CODIGO FUENTE de las herramientas, mas abajo estan las licencias de las herramientas que se usan.
NO me hare RESPONSABLE de cualquier uso inapropiado de este script. que tengan buen dia :3
instalacion:
para instalar los programas necesarios para este script ejecuta < ./requerimentos.sh > y se instalaran los
programas necesarios, en caso de que los programas ya esten instalados mostrara un mensaje que dice que los
programas estan instalados.

USO:
1-situate en la carpeta del script
2-dale permisos de ejecucion < chmod +x autoscann.sh >
3-ejecuta el programa ./autoscann.sh
4-una ves en el programa selecciona la opcion, las de actualizacion (1 y 2) son automaticas. 
  la tercera opcion te pedira se utiliza de manera simple:
  -selecciona el escaneo de nmap ingresando 3
  -ingresa la IP que quieres escanear y nmap hara un escaneo completo de esa IP (incluyendo vulnerabilidades)
  -al finalizar el escaneo mostrara una linea que te preguntara si quieres iniciar metasploit en una nueva
  terminal, esto es opcional. para ganar tiempo mientras el usuario revisa los resultados
ACLARACION:
es probable que se muestre un mensaje de error:
./autoscann.sh: línea 19: 172.17.0.2172.17.0.2: orden no encontrada
esto es causado a una linea de codigo que he puesto para evitar que los usuarios ingresen espacios inecesarios
en la direccion IP por que los conozco y se que se van a intentar hacer los graciosos.
este error no causa ningun tipo de problema a la hora de ejecutar el script, es mejor ignorarlo.

Licencias:

	Nmap:
	Licencia: BSD 3-cláusula
	Enlace: https://nmap.org/npsl/npsl-annotated.html
	
	Metasploit Framework
	Licencia: BSD 3-cláusula
	Enlace: https://github.com/rapid7/metasploit-framework/blob/master/LICENSE
	
	QTerminal:
	Licencia: GPL-3.0
	Enlace: https://github.com/lxqt/qterminal/blob/master/LICENSE

Autor:
Lexy_Argento

Historial De Cambios:

Fecha De Publicación [30/10/2024]
Version Inicial [1.0.0]
Version Actual [1.0.0]

---------------------------------------------------------------------------------------------------------------------------------------------------------------------

