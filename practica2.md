# **Introducción a los Sistemas Operativos 2022**
### Práctica 2
### Marcos Levis

### **1) Editor de texto**

**Nombre al menos 3 editores de texto que puede utilizar desde la línea de comandos**

- vim
- vi
- nano
- gnuemacs


**En qué se diferencia un editor de texto de los comandos cat, more o less? Enumere
los modos de operación que posee el editor de textos vi**
	
- cat: concatenar. Puede combinar multiples archivos en uno solo, puede crear archivo e imprimir el contenidode un archivo en consola
	
- more: more es un comando para ver (pero no modificar) el contenido de un archivo o comando y visualizarlo por páginas.
	
- less: es un visualizador de archivos de texto que funciona en intérpretes de comando.
	
Existen tres modos o estados de vi:

- Modo comando: este es el modo en el que se encuentra el editor cada vez que se inicia.
Las teclas ejecutan acciones (comandos) que permiten mover el cursor, ejecutar comandos
de edición de texto, salir de vi, guardar cambios, etc.

- Modo inserción o texto: este es el modo que se usa para insertar el texto. Existen varios
comandos que se pueden utilizar para ingresar a este modo.

- Modo línea o ex: se escriben comandos en la última línea al final de la pantalla. 

**Nombre los comandos más comunes que se le pueden enviar al editor de textos vi**

    Comando    Acción

    /texto     Busca hacia adelante la cadena de caracteres “texto”
    ?texto     Busca hacia atrás la cadena de caracteres “texto”

Salir de vi, salvar, no salvar cambios, etc.:

    Comando 	Acción
	:q 		    Salir si no hubo cambios
	:q! 		Salir sin guardar cambios
	:w 		    Guardar cambios
	:w archivo1 Guardar cambios en archivo1
	:wq 		Guardar cambios y salir 
	

### **2) Proceso de Arranque SystemV**

**Enumere los pasos del proceso de inicio de un sistema GNU/Linux, desde que se prende
la PC hasta que se logra obtener el login en el sistema.**

1. El BIOS realiza las tareas de inicio específicas de la plataforma de hardware.

2. Una vez que el hardware es reconocido y se inicia correctamente, el BIOS carga y ejecuta el código de la partición de arranque del dispositivo de arranque designado, que contiene la fase 1 de un gestor de arranque Linux. La fase 1 carga la fase 2 (la mayor parte del código del gestor de arranque). Algunos cargadores pueden utilizar una fase intermedia (conocida como la fase 1.5) para lograr esto, ya que los modernos discos de gran tamaño no pueden ser totalmente leídos sin código adicional.

3. El gestor de arranque a menudo presenta al usuario un menú de opciones posibles de arranque. A continuación, carga el sistema operativo, que descomprime en la memoria, y establece las funciones del sistema como del hardware esencial y la paginación de memoria, antes de llamar a la función start_kernel().

4. La función start_kernel() a continuación realiza la mayor parte de la configuración del sistema (interrupciones, el resto de la gestión de memoria, la inicialización del dispositivo, controladores, etc), antes de continuar por separado el proceso inactivo y planificador, y el proceso de Init (que se ejecuta en el espacio de usuario).

5. El planificador toma control efectivo de la gestión del sistema, y el núcleo queda dormido (inactivo).

6. El proceso Init ejecuta secuencias de comandos (Scripts) necesarios para configurar todos los servicios y estructuras que no sean del sistema operativo, a fin de permitir que el entorno de usuario sea creado y pueda presentarse al usuario con una pantalla de inicio de sesión

En GNU/Linux es el fichero encargado de establecer los runlevels disponibles, para que pueda ser leído por init. A continuación se muestra un ejemplo del inicio de este fichero, en el cual se establece el runlevel 5, y sus características:
	
	SystemV
	/etc/inittab: init(8) configuración
	$Id: inittab, v 1.9 2001/05/31
	El runlevel por defecto
	id:5:initdefault:
	Runlevel 0 es detener
	Runlevel 1 es monousuario
	Runlevels 2-5 son multiusuario
	Runlevel 6 es reinicio
	
	Debian, RedHat y algunas otras distribuciones de Linux utilizan ahora Systemd como reemplazo para el proceso de inicialización tradicionales.



**Proceso INIT. ¿Quién lo ejecuta? ¿Cuál es su objetivo?**

En sistemas tipo Unix, init (abreviatura de initialization) es el primer proceso en ejecución tras la carga del núcleo y el que a su vez genera todos los demás procesos. Se ejecuta como demonio y por lo general tiene PID 1.

** Ejecute el comando pstree. ¿Qué es lo que se puede observar a partir de la ejecución
de este comando?**

Podes ver un arbol de procesos.

**Suponga que se encuentra en el runlevel X. Indique qué comando(s) ejecutaría para
cambiar al runlevel Y. ¿Este cambio es permanente? ¿Por qué?**

Existe una utilidad para línea de comandos que permite cambiar de un nivel de ejecución a otro. Esta es la herramienta init. Para cambiar de nivel de ejecución sólo hay que ejecutar init seguido del número del runlevel. Por ejemplo:

- init 0: Cambia al runlevel 0 (se apaga el sistema, equivalente al comando halt).
- init 2: Cambia al runlevel 2.
- init 6: Cambia al runlevel 6 (reinicia el sistema, equivalente al comando reboot).

 Por defecto, el sistema suele arrancar en el nivel de ejecución 5 (modo gráfico). Si se quisiera modificar este comportamiento, habría que editar el fichero /etc/inittab.
 Más concretamente, habría que modificar en el fichero /etc/inittab la línea

id:5:initdefault:

 Donde el número 5 indica que el nivel de ejecución por defecto es el 5.

**Scripts RC. ¿Cuál es su finalidad? ¿Dónde se almacenan? Cuando un sistema GNU/Li-
nux arranca o se detiene se ejecutan scripts, indique cómo determina qué script ejecutar
ante cada acción. ¿Existe un orden para llamarlos? Justifique.**

Unix: from runcom files on the CTSS system 1962-63, via the startup script /etc/rc] Archivo de secuencia de comandos que contiene instrucciones de inicio para un programa de aplicación (o un sistema operativo completo), generalmente un archivo de texto que contiene comandos del tipo que podrían haberse invocado manualmente una vez que el sistema se estaba ejecutando...

Cuando init entra en un nivel de ejecución, llama al script rc con un argumento numérico que especifica el nivel de ejecución al que ir. rc luego inicia y detiene los servicios en el sistema según sea necesario para llevar el sistema a ese nivel de ejecución. Aunque normalmente se llama al inicio, init puede llamar al script rc para cambiar los niveles de ejecución.

En el contexto de sistemas similares a Unix, el término rc representa la frase “ejecutar comandos”. Se utiliza para cualquier archivo que contenga información de inicio para un comando. … Aunque no es históricamente preciso, rc también puede expandirse como “control de ejecución”, porque un archivo rc controla cómo se ejecuta un programa.

**¿Qué es insserv? ¿Para qué se utiliza? ¿Qué ventajas provee respecto de un arranque
tradicional?**

Insserv command is used to control the start and stop order of the services that are on a Linux system. It enables an installed system init script (boot script) by reading comment header of the init script and calculating the dependencies between all the scripts.

El programa insserv se usa para actualizar el orden de los enlaces simbólicos que
están en «/etc/rc?.d/» en forma dinámica, con un sysv-rc basado en dependencias
especificadas en los propios scripts utilizando las cabeceras LSB de los scripts de
init.d.

Esto permite a cada mantenedor de paquetes especificar en su script de init.d la
relación con otros scripts y poder detectar y evitar bucles de dependencias entre
scripts así como asegurarse de que todos los scripts se inician en el orden pretendido.
El programa insserv que contiene este paquete se debería utilizar con cuidado y junto
al paquete sysv-rc, ya que utilizarlo incorrectamente puede llevar a un sistema
inarrancable. Mejora la performance del arranque en sistemas multiprocesadores.

**¿Cómo maneja Upstart el proceso de arranque del sistema?**

El upstart es un reemplazo basado en eventos, y no en niveles. Los servicios se
pueden levantar o desactivar en respuesta a ciertos eventos, y este procedimiento
permite por ejemplo manejar el reinicio de servicios que mueren de forma
inesperada. Upstart (programado por Scott James Remnant, trabajador de Canonical
Ltd) opera asíncronamente. Las tareas y servicios son ejecutados ante eventos
(arranque del equipo o inserción de un dispositivo USB) definidos como tareas o Jobs. Los jobs se almacenan en el directorio /etc/init. Son scripts en texto plano que definen las acciones a ejecutar. Es compatible con el System V.

**Cite las principales diferencias entre SystemV y Upstart.**

Upstart es el reemplazo de SystemV (generalmente incluido en Ubuntu y Fedora,
openSUSE y otros). Permite la ejecución de tareas en forma asincrónica como
principal diferencia con sysVinit que es estrictamente sincrónico. Las tareas y
servicios son ejecutados ante eventos (arranque del equipo o inserción de un
dispositivo USB) definidos como tareas o jobs. Los jobs se almacenan en el
directorio /etc/init. Son scripts en texto plano que definen las acciones a ejecutar.
El init es el responsable de lanzar las tareas. Es compatible con el System V.

**Qué reemplaza a los scripts rc de SystemV en Upstart? ¿En que ubicación del filesystem se encuentran?**

Las tareas y servicios son ejecutados ante eventos (arranque del equipo o inserción de un dispositivo USB) definidos como tareas o jobs. Los jobs se almacenan en el
directorio /etc/init. Son scripts en texto plano que definen las acciones a ejecutar.

**Dado el siguiente job de upstart perteneciente al servicio de base de datos del mysql
indique a qué hace referencia cada línea del mismo:**

    MySQL S e r v i c e 
    d e s c r i p t i o n "MySQL S e r v e r "
    author " i n f o autor "
    s t a r t on ( net−d e v i c e −up
    and l o c a l −f i l e s y s t e m s
    and r u n l e v e l [ 2 3 4 5 ] )
    s t o p on r u n l e v e l [ 0 1 6 ]
    [...]
    e x e c / u s r / s b i n / mysqld
    [...]

**¿Qué es sytemd?**

systemd es un conjunto de demonios o daemons de administración de sistema, bibliotecas y herramientas diseñados como una plataforma de administración y configuración central para interactuar con el núcleo del Sistema operativo GNU/Linux. Descrito por sus autores como un "bloque de construcción básico" para un sistema operativo, systemd se puede utilizar como un sistema de inicio de Linux (el proceso init llamado por el núcleo o kernel de Linux para inicializar el espacio de usuario durante el proceso de arranque de Linux y gestionar posteriormente todos los demás procesos). 

El nombre systemd se adhiere a la convención Unix de distinguir los demonios fácilmente por tener la letra d como la última letra del nombre de archivo. En el proceso de arranque en Linux, es el primer proceso que se ejecuta en el espacio de usuario, por lo tanto, también es el proceso padre de todos los procesos hijos en el espacio de usuario. systemd se diseñó para el núcleo Linux y programado exclusivamente para la API de Linux.

​Uno de los principales objetivos de systemd es unificar configuraciones básicas de Linux y los comportamientos de servicios en todas las distribuciones. systemd es mucho más que el nombre del demonio de inicio, sino también se refiere al paquete de software completo alrededor de él, el cual, además del demonio init systemd, incluye a los daemons journald, logind y networkd, junto a otros componentes de bajo nivel. 

### **3) Usuarios**
**¿Qué archivos son utilizados en un sistema GNU/Linux para guardar la información
de los usuarios?**

/home en cuanto a sus “cosas” que quieran hacer, en cuanto a información personal
son /etc/passwd o /etc/shadow
**
**¿A qué hacen referencia las siglas UID y GID? ¿Pueden coexistir UIDs iguales en un sistema GNU/Linux? Justifique.**

UID: USER ID

GID: GROUP ID

Se supone que no, pero hay un caso excepcional, el UID = 0 (sería el root). Pueden
llegar a haber más de un root, y coexisten, pero son casos excepcionales, se supone
que no pueden haber varios usuarios con un mismo ID.

**¿Qué es el usuario root? ¿Puede existir más de un usuario con este perfil en GNU/Linux? ¿Cuál es la UID del root?.**

Usuario root
- También llamado súper usuario o administrador.
- Su UID (User ID) y GID es 0 (cero).
- Es la única cuenta de usuario con privilegios sobre todo el sistema.
- Acceso total a todos los archivos y directorios con independencia de propietarios y
permisos.
- Controla la administración de cuentas de usuarios.
- Ejecuta tareas de mantenimiento del sistema.
- Puede detener el sistema.
- Instala software en el sistema.
- Puede modificar o reconfigurar el kernel, controladores, etc.


**Agregue un nuevo usuario llamado iso2017 a su instalación de GNU/Linux, especifique que su home sea creada en /home/iso_2017, y hágalo miembro del grupo catedra (si no existe, deberá crearlo).   Luego, sin iniciar sesión como este usuario cree un archivo en su home personal que le pertenezca. Luego de todo esto, borre el usuario y verifique
que no queden registros de él en los archivos de información de los usuarios y grupos.**

**Investigue la funcionalidad y parámetros de los siguientes comandos:**

- useradd ó adduser: crea un nuevo usuario, el segundo es full.
- userdel: elimina un usuario
- groupadd: crea un nuevo grupo
- groupdel: elimina un grupo
- usermod: cambia las opciones del usuario
- su: inicia con un nuevo usuario (nuevo shell)
- who: muestra usuarios en el sistema.
- passwd: cambia la contraseña del usuario

### **4) FileSystem**


**¿Cómo son definidos los permisos sobre archivos en un sistema GNU/Linux?**

Tipos de permisos

Cada archivo pertenece a un usuario y a un grupo en particular. Un grupo es un
conjunto de usuarios definido (cada usuario pertenece al menos a un grupo, pero
puede pertenecer a varios).

Los grupos usualmente son definidos por el tipo de usuarios que acceden al sistema.
Por ejemplo, en un sistema Unix de una universidad, los usuarios pueden ser
divididos en los grupos estudiantes, dirección, profesores e invitados. Hay también
unos pocos grupos definidos por el sistema (como bin y daemon) que son usados por
el propio sistema para controlar el acceso a los recursos. Normalmente los usuarios
comunes no pertenecen a estos grupos.

Los permisos están divididos en tres tipos: lectura, escritura y ejecución. Estos
permisos pueden ser fijados para tres clases de usuarios: el propietario del archivo o
directorio, los integrantes del grupo al que pertenece y todos los demás usuarios.

- El permiso de lectura permite a un usuario leer el contenido del archivo o en el caso
de un directorio, listar el contenido del mismo (usando ls).
- El permiso de escritura permite a un usuario escribir y modificar el archivo (inclusive,
eliminarlo). Para directorios, el permiso de escritura permite crear nuevos archivos o
borrar archivos ya existentes en el mismo.
- El permiso de ejecución permite a un usuario ejecutar el archivo si es un
programa. Para directorios, el permiso de ejecución permite al usuario ingresar al
mismo (por ejemplo, con el comando cd).

Interpretando los permisos de archivos

Veamos un ejemplo del uso de permisos de archivos. Usando el comando ls con la
opción “-l” se mostrara un listado “largo” de los archivos, el cual incluye los
permisos.

mark@mark: /$ ls -l

-rwxr-xr-- 1 mark users 505 May 5 19:05 prueba.exe

El primer campo representa los permisos del archivo. El tercer campo es el
propietario del mismo (mark), el cuarto es el grupo al cual pertenece el archivo
(users) y el último campo es el nombre del archivo (prueba.exe).

La cadena “-rwxr-xr--” nos informa, por orden, los permisos para el propietario, los
usuarios del grupo y el resto de los usuarios.

El primer carácter de la cadena de permisos (“-”) representa el tipo de archivo. El “-”
significa que es un archivo regular, “d” indicaría que se trata de un directorio. Los
siguientes tres caracteres (“rwx”) representan los permisos para el propietario del
archivo, fabrizio. Éste tiene permisos para leer (r), escribir (w) y ejecutar (x) el
archivo prueba.exe.

Los siguientes tres caracteres, “r-x”, representan los permisos para los miembros del
grupo al que pertenece el archivo (en este caso, users). Como sólo aparece “r-x”
cualquier usuario que pertenezca al grupo users puede leer este archivo, y ejecutarlo,
pero no modificarlo.

Los últimos tres caracteres, “r--”, representan los permisos para cualquier otro
usuario del sistema (que no sea fabrizio ni pertenezca al grupo users). Como sólo está
presente la “r”, los demás usuarios pueden leer el archivo, pero no escribir en él o
ejecutarlo.

Aquí tenemos otros ejemplos de permisos de grupo:
-rw-------

El propietario del archivo puede leer y escribir. Nadie más puede acceder al archivo.

-rwxrwxrwx

Todos los usuarios pueden leer, escribir y ejecutar el archivo.

drwxr-xr-x

El propietario del directorio puede leer, escribir y entrar al mismo. Los usuarios
pertenecientes al grupo del directorio y todos los demás usuarios pueden leer e
ingresar al directorio.

**Investigue la funcionalidad y parámetros de los siguientes comandos relacionados con los permisos en GNU/Linux:**

chmod: modifica los permisos de un archivo especificado.
chown: cambia el propietario de un fichero/directorio.
chgrp: cambia el grupo propietario de un fichero/directorio.

**Al utilizar el comando chmod generalmente se utiliza una notación octal asociada para
definir permisos. ¿Qué significa esto? ¿A qué hace referencia cada valor?**

R: read: solo lectura = 4
W: write: solo escritura = 2
X: execute: solo ejecución = 1

**¿Existe la posibilidad de que algún usuario del sistema pueda acceder a determinado archivo para el cual no posee permisos? Nombrelo, y realice las pruebas correspondientes.**

Existe la posibilidad, si es que el usuario puede utilizar el comando su, o sudo. Sino,
sin poseer los permisos necesarios no puede acceder al archivo. Sólo root.

**Explique los conceptos de “full path name” y “relative path name”. De ejemplos claros de cada uno de ellos.**

Nombre de ruta completo: Un nombre de vía de acceso completo empieza en el
directorio raíz y efectúa un rastreo de todos los directorios que quedan por debajo
hasta llegar al archivo y directorio de destino.
Por ejemplo, /etc/uucp/Devices hace referencia al archivo Devices del
directorio uucp del directorio raíz etc.

Para indicar un directorio raíz, siempre es preciso especificar delante el carácter de
barra inclinada (/). Separe siempre los elementos de la vía de acceso mediante el
carácter de barra inclinada (/).

Nombre de ruta relativo: El nombre de vía de acceso relativo sólo contiene los
directorios que dependen del directorio actual.
Por ejemplo, si el directorio actual es /usr/bin y el directorio de destino
es /usr/bin/reports, escriba el nombre de vía de acceso relativo reports (sin la
barra inclinada inicial).

**¿Con qué comando puede determinar en qué directorio se encuentra actualmente?
¿Existe alguna forma de ingresar a su directorio personal sin necesidad de escribir
todo el path completo? ¿Podría utilizar la misma idea para acceder a otros directorios? ¿Cómo? Explique con un ejemplo.**

pwd.
si: /home o cd
Si, ejemplo /etc

**Investigue la funcionalidad y parámetros de los siguientes comandos relacionados con el uso del FileSystem:**

- cd: cambia de directorio
- mkdir: crea un directorio
- rmdir: elimina un directorio
- mount: monta un dispositivo
- umount: desmonta un dispositivo
- du: muestra lo que ocupa y el tamaño total de los directorios dentro del
directorio donde me encuentro
- df: muestra los sistemas de ficheros montados
- ln: crea enlaces a archivos (crea un fichero que apunta a otro)
- ls: lista los archivos y directorios dentro del entorno de trabajo
- pwd: muestra el directorio actual de trabajo
- cp: copia archivos en el directorio indicado
- mv: renombra un conjunto

### **5) Procesos**

**¿Qué es un proceso? ¿A que hacen referencia las siglas PID y PPID? ¿Todos los
procesos tienen estos atributos en GNU/Linux? Justifique. Indique qué otros atributos tiene un proceso.**

Un programa es un archivo ejecutable, un proceso es un programa que esta siendo
ejecutado. Cada proceso tiene su propio medio ambiente. La sigla PID hace referencia
al ID del Proceso y la sigla PPID hace referencia al ID del Proceso Padre del proceso.
Todos los procesos tienen estos atributos, además de estos (que son los más importantes pero no todos): Usuario (UID), Grupo (GID), Prioridad, etc. Con ps –ejH
PUEDO VER EL PPID.

**Indique qué comandos se podrían utilizar para ver qué procesos están en ejecución en un sistema GNU/Linux.**

Ps, pstree y top. Las opciones más importantes y utilizadas de este comando son: -a para mostrar los procesos de todos los teminales, -u para mostrar el usuario al que pertenece el
proceso y la hora de inicio, y -x para mostrar procesos que no estan controlados por
ningún terminal. Suelen usarse combiandas para tener una visión global de los
procesos que están en ejecutan. Otros dos comandos útiles a la hora de visualizar los
procesos son: pstree, que nos muestra los procesos en una estructura de árbol; y top.

**¿Qué significa que un proceso se está ejecutando en Background? ¿Y en Foreground?**

En Linux, podemos colocar un proceso en background, esto es, el proceso continúa la
ejecución mientras que el shell se libera para otras actividades; Foreground es
exactamente lo contrario.

**¿Cómo puedo hacer para ejecutar un proceso en Background? ¿Como puedo hacer para
pasar un proceso de background a foreground y viceversa?**

Foreground: Los procesos se inician de este modo simplemente escribiendo el
comando en la línea de comandos.

Background: Los procesos se inician de este modo escribiendo un & al final de la línea
del comando.

También se puede colocar un proceso en background a través de la utilización de las
teclas Ctrl+z seguido del comando bg. Para retornar el proceso al shell principal,
utilizamos el comando fg [N*], de esta forma el proceso vuelve a shell inicial.
N*: número de orden de entrada en el sistema

** Pipe ( | ). ¿Cuál es su finalidad? Cite ejemplos de su utilización. **

Un pipe es un par de "archivos inexistentes", que tienen la cualidad de que lo que se
escribe en uno se lee en el otro.

Este mecanismo nos permite pasar la salida de un comando a otro. Para ello se usa la
sintaxis: <comando1> | <comando2>. Con esto, la salida de comando1 será la
entrada de comando2. Vamos a ver unos ejemplos:

$ rpm -qa | grep <nombre_paquete>

El primero de los dos comandos nos haría una lista de todos los paquetes instalados.
Imaginemos que sólo queremos saber si tenemos instalado uno en concreto. Con el
segundo comando limitamos la salida a los paquetes que en el nombre que
contengan el patrón que especificamos en <nombre_paquete>. Por ejemplo, para
saber si tenemos instalado algún paquete llamado glibc haríamos:

$ rpm -qa | grep "glibc"

grep es un parseador de expresiones regulares, es decir, le damos un patrón y un
fichero (o introducimos lo que sea por consola, o lo pasamos con un pipe) y de ese
texto nos devuelve sólo lo que coincide con el patrón.

Otro ejemplo útil seria, por ejemplo, cuando queremos saber el PID de un proceso. En
vez de mostrarlos todos y tener que buscarlo podríamos hacer:

$ ps -e | grep <nombre_proceso>

y así nos mostraría sólo las líneas que contuvieran <nombre_proceso> (es decir,
limitaríamos la salida al proceso que queremos).

**Redirección. ¿Qué tipo de redirecciones existen? ¿Cuál es su finalidad? Cite ejemplos
de utilización.**

En Linux, al final todo es tratado como si fuera un fichero y como tal,
tenemos descriptores de fichero para aquellos puntos donde queramos acceder. Hay
unos descriptores de fichero por defecto:
- 0: Entrada estándar (normalmente el teclado).
- 1: Salida estándar (normalmente la consola).
- 2: Salida de error.

Para redirigir las salidas utilizaremos el descriptor de fichero seguido del símbolo
'>' (o < si redirigimos la entrada hacia un comando). Veamos unos ejemplos:

$ ls -l > fichero

Guarda la salida de ls -l en fichero. Si no existe lo crea, y si existe lo
sobreescribe.

$ ls -l >> fichero

Añade la salida del comando a fichero. Si no existe lo crea, y si existe, lo
añade al final.

$ ls -l 2> fichero

Si hay algún error, lo guarda en fichero (podría salir un error si no tuviéramos
permiso de lectura en el directorio).

Es importante ver que si no se especifica el descriptor de fichero se asume que se
redirige la salida estándar. En el caso del operador < se redirige la entrada estándar,
es decir, el contenido del fichero que especificáramos, se pasaría como parámetro al
comando.

Si quisiéramos redirigir todas las salidas a la vez hacia un mismo fichero, podríamos
utilizar >&. Además, con el carácter & podemos redirigir salidas de un tipo hacia
otras, por ejemplo, si quisiéramos redirigir la salida de error hacia la salida estándar
podríamos indicarlo con: 2>&1. Es importante tener en cuenta que el orden de las
redirecciones es significativo: se ejecutarán de izquierda a derecha.

**Comando kill. ¿Cuál es su funcionalidad? Cite ejemplos.**

En Unix y los sistemas operativos tipo Unix, kill es un comando utilizado para enviar
mensajes sencillos a los procesos ejecutándose en el sistema. Por defecto el mensaje
que se envía es la señal de terminación (SIGTERM), que solicita al proceso limpiar su
estado y salir. Pero kill no tiene por que tener que ver con matar al proceso. El
comando kill es un wrapper alrededor de la llamada al sistema kill(), que
envía señales a procesos o grupos de procesos en el sistema, referenciados por
sus IDs de proceso (PIDs) o IDs de grupo de procesos (PGIDs). kill se ofrece siempre
como programa independiente, pero la mayoría de las shells tienen intrínsecamente
comandos kill que pueden diferir levemente de ella.

Pueden enviarse numerosas señales. La señal por defecto es SIGTERM. Los
programas que cazan esta señal pueden limpiar su estado (como guardar datos de la
configuración a un archivo) antes de terminarse. Para los programas que no capturan
esta señal, se utiliza una gestión por defecto. En otras ocasiones, un proceso capaz
de capturar la señal puede quedar en un estado que le impide manejarla.

Todas las señales excepto SIGKILL y SIGSTOP pueden ser interceptadas por el
proceso, esto es, tener una función especial que es llamada cuando el programa
recibe tales señales. Sin embargo, SIGKILL y SIGSTOP sólo las ve el kernel, lo que
provee formas seguras de controlar la ejecución de los procesos. SIGKILL finaliza el
proceso, y SIGSTOP lo pone en pausa hasta que se reciba una señal SIGCONT.
Unix cuenta con mecanismos de seguridad para evitar que usuarios no autorizados
puedan finalizar otros procesos. Básicamente, para que un proceso pueda enviar una
señal a otro, deben tener el mismo propietario, o ser enviada por el superusuario.
Las señales disponibles tienen distintos nombres, asignados a determinados
números. El número de las señales puede cambiar entre distintas implementaciones
de Unix. SIGKILL suele tener el número 9 y SIGTERM el 15.

**Investigue la funcionalidad y parámetros de los siguientes comandos relacionados con el manejo de procesos en GNU/Linux. Además, compárelos entre ellos:**

- ps: muestra la lista de procesos del usuario
- pstree: ps en forma de árbol
- top: ps en la Terminal, tipo texto
- kill: Permite interactuar con cualquier proceso mandando señales. Kill <pid>
- termina un proceso y Kill -9 <pid> fuerza a terminar un proceso en caso de
que la anterior opción falle.
- killall: mata todos los procesos que el usuario es capaz de matar (Sistem V) o
solo los procesos especificados en la línea de comandos (psmisc).
- nice: es usado para iniciar un proceso con una determinada prioridad. nice -10
- named: Esto bajaría la prioridad de named en 10 unidades(Si estaba en -10,
pasará a -20)MENOS GENTIL = MAS PRIORIDAD.
### **6) Otros comandos de Linux (Indique funcionalidad y parámetros)***

**¿A qué hace referencia el concepto de empaquetar archivos en GNU/Linux?**

Los archivos TAR no son archivos comprimidos sino empaquetados. TAR es un
empaquetador, es algo más parecido a un compresor como “arj” ó “zip” pero sin
compresión. Su función es la de incluir todos los ficheros juntos en el mismo archivo,
conservando las estructuras de directorios y permisos de los mismos.

Para crear un archivo .tar

tar –cvf mi_archivo.tar /directorio/a/empaquetar

Para extraer el contenido de un archivo .tar ya creado

tar –xvf mi_archivo.tar

Para actualizar el contenido de un archivo .tar ya existente

tar –uvf mi_archivo.tar

Para agregar un directorio a un archivo .tar ya existente

tar –rvf archivo.tar /directorio/a/agregar

Para empaquetar y comprimir el archivo .tar

tar –cvzf archivo.tgz /directorio/a/empaquetar/y/comprimir

Para desempaquetar el archivo .tgz

tar –xvzf archivo.tgz

Ojo : Observa la extensión ".tgz" para el tar comprimido. Aunque también podemos
ponerle como extensión ".tar.gz"

**Seleccione 4 archivos dentro de algún directorio al que tenga permiso y sume el tamaño de cada uno de estos archivos. Cree un archivo empaquetado conteniendo estos 4 archivos y compare los tamaños de los mismos. ¿Qué característica nota?**

El tamaño del archivo empaquetado es menor al tamaño de los 4 archivos por
separado, sin empaquetar.

**¿Qué acciones debe llevar a cabo para comprimir 4 archivos en uno solo? Indique 
la secuencia de comandos ejecutados.**

tar –cvzf mi_archivo_comprimido.tgz /home/mark/archivo1o2o3o4

**¿Pueden comprimirse un conjunto de archivos utilizando un único comando?**

No, debo comprimir de a uno, aunque sea engorroso, es así. Lo que si puedo es
empaquetar, primero, varios archivos en uno, y a esto comprimirlo, con lo cual
estaría comprimiendo un conjunto de archivos, pero antes empaquetandolo, como
dijimos.

** Investigue la funcionalidad de los siguientes comandos:**

- tar: empaqueta o comprime archivos usando la extensión .tar
- gzip: comprime solo archivos utilizando la extensión .gz
- wc: cuenta los caracteres, palabras y líneas del archivo de texto.
- grep: escribe en la salida estándar aquellas líneas que coincidan con un
patrón
- zgrep: Busca archivos comprimidos para una expresión.

### **7) Algunos comandos**

Indique qué acción realiza cada uno de los comandos indicados a continuación considerando
su orden. Suponga que se ejecutan desde un usuario que no es root ni pertenece al grupo
de root. (Asuma que se encuentra posicionado en el directorio de trabajo del usuario con el
que se logueó). En caso de no poder ejecutarse el comando, indique la razón:

**ls -l > prueba**

Genera un archivo de nombre prueba que contiene un listado detallado con los
contenidos del directorio home del usuario. Se redirije la salida estandar de ls
mediante el carácter > hacia el archivo prueba.

**ps > PRUEBA**

Genera un archivo de nombre PRUEBA que contiene un listado de los procesos en
ejecución en el directorio home del usuario. AL igual que en el ejemplo anterior, se
redirije la salida estandar mediante >.

**chmod 710 prueba**

Cambia los permisos del archivo prueba a 710 para UGO (usuario, Grupo, Otros).

**chown root:root PRUEBA**

Se intenta cambiar el propietario del archivo prueba pero la operación no está
permitida.

e) chmod 777 PRUEBA
Cambia los permisos del archivo PRUEBA a 777. Es decir, todos los usuarios pueden
leer, escribir y ejecutar el archivo.

f) chmod 700 /etc/passwd
Intenta cambiar los permisos a 700, pero la operaciòn no está permitida para un
usuario que no es root, esto por el archivo que esta intentando cambiar.

g) passwd root
passwd: No debe ver o cambiar la información de la contraseña para root.

h) rm PRUEBA
Se elimina el archivo PRUEBA.

i) man /etc/shadow
Permiso denegad, porque “man” no debe recibir una ruta, si hago “man shadow” si
anda.

j) find / -name *.conf
Lista todos los archivos cuyo nombres terminan con .conf, empezando la búsqueda
en el directorio raíz /.

k) usermod root –d /home/newroot –L

l) cd /root
Se intenta acceder a la carpeta root, pero la operación falla porque el usuario no
tiene los permisos.

m) rm *
Borra todos los archivos del directorio donde está posicionado el usuario.

n) cd /etc
Cambia el directorio a /etc, osea “se mueve” a /etc

o) cp * /home –R
Intenta copiar el contenido de /etc a home, pero el usuario no tiene los permisos
necesarios para crear archivos en el directorio /home.

p) shutdown
Apaga el equipo


8.- Indique que comando seria necesario ejecutar para realizar cada una de las
siguientes acciones:

a) Terminar el proceso con PID 23
KILL -9 23

b) Terminar el proceso llamado init. ¿Qué resultados obtuvo?
KILL -9 1. Nada, no hace nada, porque el proceso init, no puede terminarse, así que ni responde al comando.

c) Buscar todos los archivos de usuarios en los que su nombre contiene la cadena
“.conf”
find / -name *.conf

d) Guardar una lista de procesos en ejecución el archivo /home/<su nombre de
usuario>/procesos
ps > /home/fabrizio/procesos

e) Cambiar los permisos del archivo /home/<su nombre de usuario>/xxxx a:
a. Usuario: Lectura, escritura, ejecución
b. Grupo: Lectura, ejecución
c. Otros: ejecución
chmod 751 /home/fabrizio/xxxx

f) Cambiar los permisos del archivo /home/<su nombre de usuario>/yyyy a:
a. Usuario: Lectura, escritura.
b. Grupo: Lectura, ejecución
c. Otros: Ninguno
chmod 650 /home/fabrizio/yyyy

g) Borrar todos los archivos del directorio /tmp
rm /tmp/* o me paro en tmp con (cd /tmp) y hago rm *

h) Cambiar el propietario del archivo /opt/isodata al usuario iso2010
chown iso2010 /opt/isodata

i) Guardar en el archivo /home/<su nombre de usuario>/donde el directorio donde
me encuentro en este momento, en caso de que el archivo exista no se debe eliminar
su contenido anterior.
pwd >> /home/fabrizio/donde

9) Indique que comando seria necesario ejecutar para realizar cada una de las
siguientes acciones:

a) Ingrese al sistema como usuario “root”
su root

b) Cree un usuario. Elija para como nombre, por convención, la primer letra de su
nombre seguida de su apellido. Asígnele una contraseña de acceso.
adduser fgelsi

c) ¿Qué archivos fueron modificados luego de crear el usuario y qué directorios se
crearon?
Se modificaron los archivos de etc/shadow y se creó el directorio home/fgelsi

d) Crear un directorio en /tmp llamado cursada2010
mkdir /tmp/cursada2010

e) Copiar todos los archivos de /var/log al directorio antes creado.
cp /var/log/* /tmp/cursada2010

f) Para el directorio antes creado (y los archivos y subdirectorios contenidos en él) cambiar el propietario y grupo al usuario creado y grupo users.
chown adibello:users /tmp/cursada2010

g) Agregue permiso total al dueño, de escritura al grupo y escritura y ejecución a
todos los demás usuarios para todos los archivos dentro de un directorio en forma
recursiva.
chmod 723 /directorio/ -R

h) Acceda a otra terminal virtual para loguearse con el usuario antes creado.
screen su fgelsi

i) Una vez logueado con el usuario antes creado, averigüe cual es el nombre de su
terminal.
who “root pts/0 2012-05-05 19:39 (:tty1:S.0)”

j) Verifique la cantidad de procesos activos que hay en el sistema.
ps

k) Verifiqué la cantidad de usuarios conectados al sistema.
who

l) Vuelva a la terminal del usuario root, y envíele un mensaje al usuario anteriormente creado, avisándole que el sistema va a ser apagado.
write fgelsi
echo “El sistema será apagado, guarde sus trabajos”

m) Apague el sistema.
Shutdown


10.- Indique que comando seria necesario ejecutar para realizar cada una de las
siguientes acciones:

a) Cree un directorio cuyo nombre sea su número de legajo e ingrese a él.
mkdir 306
cd 306

b) Cree un archivo utilizando el editor de textos vi, e introduzca su información
personal: Nombre, Apellido, Número de alumno y dirección de correo electrónico. El
archivo debe llamarse LEAME
vi LEAME;
apreto “i” para ingresar todo lo necesario, escape y :wq.

c) Cambie los permisos del archivo LEAME, de manera que se puedan ver reflejados
los siguientes permisos:
_ Dueño: ningún permiso
_ Grupo: permiso de ejecución
_ Otros: todos los permisos
chmod 017 LEAME

d) Vaya al directorio /etc y verifique su contenido. Cree un archivo dentro de su
directorio personal cuyo nombre sea leame donde el contenido del mismo sea el
listado de todos los archivos y directorios contenidos en /etc. ¿Cuál es la razón por lacuál puede crear este archivo si ya existe un archivo llamado LEAME en este
directorio?

cd /etc
ls -l > leame

Se puede porque unix es case sensitive y distingue entre mayúsculas y minúsculas.

e) ¿Qué comando utilizaría y de qué manera si tuviera que localizar un archivo
dentro del file system? ¿Y si tuviera que localizar varios archivos con características
similares? Explique el concepto teórico y ejemplifique
Encontrar un archivo en el filesystem: sudo find / -name “archivo” –type f
Encontrar todas las imágenes en el filesystem: sudo find / -name “*.jpg” –type f
dinf
f) Utilizando los conceptos aprendidos en el punto e), busque todos los archivos cuya extensión sea .so y almacene el resultado de esta búsqueda en un archivo dentro del directorio creado en a). El archivo deberá llamarse ejercicio_f
find / -name “*.so” –type f > /home/fabrizio/306/ejercicio_f

11) Indique que acción realiza cada uno de los comandos indicados a continuación
considerando su orden. Suponga que se ejecutan desde un usuario que no es root ni
pertenece al grupo de root. (Asuma que se encuentra posicionado en el directorio de
trabajo del usuario con el que se logueó). En caso de no poder ejecutarse el comando
indique la razón:

1) mkdir iso
Crea el directorio iso

2) cd ./iso; ps > f0
Cambia al directorio iso, crea una lista de los procesos de iso y lo guarda en un
archivo que se llama f0.

3) ls > f1
Lista el contenido de directorio actual (/iso) y lo guarda en el archivo f1.
4) cd /
Me voya raíz.

5) echo $HOME
Imprime el directorio home del usuario

6) ls -l > $HOME/iso/ls
Guarda el listado detallado del directorio actual en el archivo llamado ls contenido en el directorio iso

7) cd $HOME; mkdir f2
Va a home y crea el directorio f2

8) ls –ld f2
Lista los detalles del directorio f2

9) chmod 341 f2
Cambia los permisos del directorio f2. escritura y ejecución al dueño, lectura al grupo y ejecución a otros.

10) touch dir
Cambia (actualiza) la fecha al directorio.

11) cd f2
Se posiciona en el directorio f2

12) cd ~/iso
Cambia al directorio /home/user/iso

13) pwd >f3
Lista el directorio actual (/home/user/iso) y lo guarda en un archivo llamado f3

14) ps | grep 'ps' | wc -l >> ../f2/f3
Guarda en el archivo f3, sin sobreescritura, ubicado en el directorio f2, la cantidad de líneas que contienen la palabra “ps” entre la lista de procesos.

15) chmod 700 ../f2; cd ..
Modifica los permisos del directorio f2: total para usuario, nada para grupo y nada
para otros. Vuelve a home.

16) find . -name etc/passwd

17) find / -name etc/passwd
Permiso denegado, no puede un usuario comun, buscar en la raíz. Sólo root.

18) mkdir ejercicio5
Crea el directorio ejercicio5 si que esta parado dentro su home.

19) cp /home/iso/* /home/306

copia todo lo del directorio iso en el directorio 306

20) cp ejercicio5 /home/306
copia todo lo del directorio a al b

b) Complete en el cuadro superior los comandos 19 y 20, de manera tal que realicen
la siguiente acción:

19: Copiar el directorio iso y todo su contenido al directorio creado en el inciso 9,a)
20: Copiar el resto de los archivos y directorios que se crearon en este ejercicio al directorio creado en el ejercicio 9.a

13)Indique que comando/s es necesario para realizar cada una de las acciones de la
siguiente secuencia de pasos (considerando su orden de aparición):

_ Cree un directorio llamado logs en el directorio /tmp.
_ Copie todo el contenido del directorio /var/log en el directorio creado en el punto
anterior.
_ Empaquete el directorio creado en 1, el archivo resultante se debe llamar
misLogs.tar
_ Empaquete y comprima el directorio creado en 1, el archivo resultante se debe
llamar misLogs.tar.gz
_ Copie los archivos creados en 3 y 4 al directorio de trabajo de su usuario
_ Elimine el directorio creado en 1, logs.
_ Desempaquete los archivos creados en 3 y 4 en 2 directorios diferentes.

Me logueo como root
su –
contraseña
cd /tmp
mkdir logs
cp /home/root/var/log/ * /Home/root/tmp/logs
tar –cvf misLogs.tar /home/root/tmp/logs
tar –cvzf misLogs.tar.gz /home/root/tmp/logs
cp /home/root/tmp/logs/misLogs.tar /home/root
cp /home/root/tmp/logs/misLogs.tar.gz /home/root
cd /home/root/tmp
rmdir logs
cd
tar –xvf misLogs.tar > /home/root/directorio1
tar-xvzf misLogs.tar.gz > /home/root/directorio2



