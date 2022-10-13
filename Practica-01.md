# **Introducción a los Sistemas Operativos 2022**
### Práctica 1
### Marcos Levis



### **1) Características de GNU/Linux:**

**Mencione y explique las características más relevantes de GNU/Linux:**

Es importante desambiguar el término Linux, de GNU/Linux. Actualmente se suele hablar de Linux como un Sistema Operativo (SO), pero el término correcto para el SO, es GNU/Linux. Linux es en sí un núcleo (kernel); es el kernel, que junto al sistema GNU, creado por Stallman, dieron origen al SO GNU/Linux. Linux es un sistema operativo completamente libre y gratuito. A diferencia de Windows y Mac, Linux no pertenece a ninguna compañía, sino que su desarrollo depende de la colaboración de un gran número de empresas y profesionales. Y es que, al tratarse de un software libre, cualquiera puede modificar libremente su código fuente, respetando siempre los términos de las licencias correspondientes.  Estas son las principales características de Linux: 
- Gratuito. Linux es un sistema operativo completamente gratuito. Además, cuenta con múltiples distribuciones diferentes, para que cada usuario escoja el sistema que mejor se adapta a sus necesidades. 
- Código abierto e independiente. Cualquier profesional puede desarrollar y distribuir nuevas funciones, sin necesidad de permisos ni protocolos previos. Esto agiliza la aparición de mejoras y actualizaciones. 
- Muy estable. Linux está considerado uno de los sistemas operativos más estables y robustos. Por eso, es el más utilizado en servidores que tienen que permanecer siempre encendidos.
- Altamente seguro. Como se trata de un software libre, los delincuentes informáticos no tienen mucho interés en desarrollar virus para Linux. Además, su arquitectura dificulta la aparición de malware y facilita la eliminación de cualquier amenaza. 
- Multitarea y multiusuario. La potencia de este sistema permite ejecutar a la vez numerosos programas y aplicaciones. Además, permite que múltiples usuarios accedan a sus recursos de forma simultánea y segura. 

**¿Qué es GNU?**

El sistema GNU es el sistema operativo similar a Unix, constituido en su totalidad por software libre, está constituido por muchos programas. Es un proyecto liberado bajo la licencia GPL, Licencia General Pública, que permite a todo los usuarios ejecutarlo, copiarlo, modificarlo y distribuirlo. La expresión programas GNU es equivalente a software de GNU. El software de GNU es el software liberado bajo el auspicio del proyecto GNU. A un programa que sea software de GNU, también se lo denomina programa GNU o paquete GNU. El manual del paquete GNU debería indicar que lo es.

**Indique una breve historia sobre la evolución del proyecto GNU**

En 1985, Richard Stallman creó la Free Software Foundation (FSF o Fundación para el Software Libre) para proveer soportes logísticos, legales y financieros al proyecto GNU. En 1990, faltaba un componente clave llamado núcleo (kernel). En abril de 1991, Linus Torvalds de 21 años, empezó a trabajar en unas simples ideas para un SO. Comenzó con un intento por obtener un SO libre similar a Unix que funcionara con microprocesadores Intel 80386. Ese mismo año empezó a escribir el núcleo Linux y decidió distribuirlo bajo la licencia GPL. Rápidamente, múltiples programadores se unieron a Linus en el desarrollo, colaborando a través de Internet y consiguiendo paulatinamente que Linux llegase a ser un núcleo compatible con UNIX. En 1992, el núcleo Linux fue combinado con el sistema GNU, resultando en un SO libre y completamente funcional. El SO formado por esta combinación es usualmente conocido como "GNU/Linux" o como una “distribución Linux" y existen diversas variantes.

**Explique qué es la multitarea e indique si GNU/Linux hace uso de ella.**

GNU/Linux utiliza la llamada multitarea preventiva, la cual asegura que todos los programas que se están utilizando en un momento dado serán ejecutados, siendo el sistema operativo el encargado de ceder tiempo de microprocesador a cada programa. Un sistema operativo multitarea es aquél que le permite al usuario estar realizando varias labores al mismo tiempo. Por ejemplo, puede estar editando el código fuente de un programa durante su depuración mientras compila otro programa, a la vez que está recibiendo correo electrónico en un proceso en background.

**¿Qué es POSIX?**

POSIX (acrónimo de Portable Operating System Interface, y X viene de UNIX como seña de identidad de la API) es una norma escrita por la IEEE, que define una interfaz estándar del sistema operativo y el entorno, incluyendo un intérprete de comandos.
POSIX es una norma escrita y una marca registrada por la Institute of Electrical and Electronics Engineers.​ Dicha norma define una interfaz estándar del sistema operativo y el entorno, incluyendo un intérprete de comandos (o "shell"), y programas de utilidades comunes para apoyar la portabilidad de las aplicaciones a nivel de código fuente. El nombre POSIX surgió de la recomendación de Richard Stallman, que por aquel entonces en la década de 1980 formaba parte del comité de IEEE. Una serie de pruebas acompañan al estándar POSIX. Son llamadas "PCTS" en alusión al acrónimo "Posix Conformance Test Suite". Desde que la IEEE empezó a cobrar altos precios por la documentación de POSIX y se ha negado a publicar los estándares, se ha aumentado el uso del modelo Single Unix Specification. Este modelo es abierto, acepta entradas de todo el mundo y está libremente disponible en Internet. Fue creado por The Open Group.

### **2) Distribuciones de GNU/Linux:**

**¿Qué es una distribución de GNU/Linux? Nombre al menos 4 distribuciones de GNU/Linux y cite diferencias básicas entre ellas.**

Una distribución GNU/Linux (coloquialmente llamada distro) es una distribución de software basada en el núcleo Linux que incluye determinados paquetes de software para satisfacer las necesidades de un grupo específico de usuarios, dando así origen a ediciones domésticas, empresariales y para servidores.

**¿En qué se diferencia una distribución de otra?**

Las distro de Linux tienen en común el kernel, pero el resto de componentes (las herramientas, la shell, el Display Server, la GUI) varían entre sí, se personalizan o se crean desde cero, por eso las distribuciones son tan diferentes entre sí. Aunque en la mayoría de los casos la principal diferencia es la GUI, o los programas y herramientas que vienen incluidos. Cada distribución Linux tiene un objetivo, que justifica su existencia. Por ejemplo, distros como Ubuntu se centran en ser lo más amigables posible a la hora de instalarse o descargar programas. Linux Mint aprovecha el hardware potente para competir con Windows o MacOS de tu a tu. Si tienes un ordenador viejo, hay distros ligeras como Puppy Linux. ¿Quieres instalar Linux en un servidor? Usa Debian. ¿Deseas jugar a videojuegos en Linux? SteamOS es la mejor.

**¿Qué es Debian? Acceda al sitio una breve cronología del mismo e indique cuáles son los objetivos del proyecto.**

Debian es una de las distribuciones Linux más puras que podemos encontrar en Internet. Esta distro está formada exclusivamente por software libre y busca abrirse hueco entre los usuarios que quieran una distribución sin ningún tipo de software comercial o atado a licencias. Esta es una de las distribuciones más estables que podemos encontrar, y cuenta con un soporte, formado por la comunidad, excelente. Sin embargo, puede resultar algo complicada para algunos usuarios ya que, de serie, viene solo con los paquetes esenciales para funcionar.
Nació en el año 1993, de la mano del proyecto Debian, con la idea de crear un sistema GNU usando Linux como núcleo. El proyecto Debian es la organización responsable de su mantenimiento en la actualidad, y también desarrolla sistemas GNU basados en otros núcleos (Debian GNU/Hurd, Debian GNU/NetBSD y Debian GNU/kFreeBSD).
Uno de sus principales objetivos es separar en sus versiones el software libre del software no libre. El modelo de desarrollo es independiente a empresas, creado por los propios usuarios, sin depender de ninguna manera de necesidades comerciales. Debian no vende directamente su software, sino que lo pone a disposición de cualquiera en Internet, aunque sí permite a personas o empresas distribuir comercialmente este software mientras se respete su licencia.

### **3) Estructura de GNU/Linux:**

**Nombre cuales son los 3 componentes fundamentales de GNU/Linux.**

Cuando hablamos de un SO GNU hacemos referencia a tres elementos fundamentales:
- El kernel (núcleo)
- El Shell (intérprete de comandos)
- El FileSystem (sistema de archivos)

El kernel (también conocido como núcleo) es la parte fundamental de un sistema operativo. El kernel o núcleo de linux se podría definir como el corazón de este sistema operativo. Es, a grandes rasgos, el encargado de que el software y el hardware de una computadora puedan trabajar juntos.
El Shell (intérprete de comandos) es el programa que recibe lo que se escribe en la terminal y lo convierte en instrucciones para el sistema operativo. Un intérprete de comandos es un programa que lee las entradas del usuario y las traduce a instrucciones que el sistema es capaz de entender y utilizar.
El Filesystem se traduce como “sistema de archivos”; y es la forma en que dentro de un SO se organizan y se administran los archivos. En GNU/Linux todo es un archivo.

**Mencione y explique la estructura básica del Sistema Operativo GNU/Linux.**

De la misma manera que el Unix, el Linux se puede dividir generalmente en cuatro componentes principales: el núcleo(kernel), el shell, el sistema de archivos y las utilidades. El núcleo es el programa medular que ejecuta programas y gestiona dispositivos de hardware tales como los discos y las impresoras. El shell proporciona una interfaz para el usuario. Recibe órdenes del usuario y las envía al núcleo para ser ejecutadas. El sistema de archivos organiza la forma en que se almacenan los archivos en dispositivos de almacenamiento tales como los discos. Los archivos están organizados en directorios. Cada directorio puede contener un número cualquiera de subdirectorios, cada uno de los cuales puede a su vez, contener otros archivos. El núcleo, el shell y el sistema de archivos forman en conjunto la estructura básica del sistema operativo. Con estos tres elementos puede ejecutar programas, gestionar archivos e interactuar con el sistema. Además, Linux cuenta con unos programas de software llamados utilidades que han pasado a ser considerados como características estándar del sistema. Las utilidades son programas especializados, tales como editores, compiladores y programas de comunicaciones, que realizan operaciones de computación estándar. Incluso uno mismo puede crear sus propias utilidades.

### **4) Kernel**

**¿Qué es el kernel?**

El kernel es el núcleo del SO, en sí, es el sistema operativo. El kernel o núcleo es la parte esencial de un sistema operativo. El kernel proporciona todos los servicios básicos requeridos por otras partes del sistema operativo y aplicaciones, y en complemento, se encarga de la administración de la memoria, los procesos y los discos. El kernel es independiente de la distribución GNU/Linux utilizada, de tal forma que el mismo kernel debería servir en cualquier caso. La actualización del kernel se divide en 2 partes: compilación e instalación del nuevo kernel. El primer Kernel de GNU/Linux presentado al público fue la versión 0.01 en mayo de 1991.No disponía de capacidad de interconexión por red, sólo se ejecutaba sobre procesadores Intel compatibles con el 80386 y HW PC. La siguiente versión importante, Linux 1.0, fue lanzada en marzo de 1994. Esta versión culminó tres años de rápido desarrollo del kernel de Linux. Quizá la novedad más importante era la conexión por red: la versión 1.0 incluía soporte para los protocolos de red estándar TCP/IP de UNIX. El kernel 1.0 también incluía un nuevo sistema de archivos muy mejorado, sin las limitaciones del sistema de archivos Minix original, y soportaba diversos controladores SCSI para el acceso a discos de alta velocidad. Luego de dos años, de generar nuevas y nuevas versiones, que agregan varias funcionalidades a la versión que las antecede, se terminó por lanzar la versión 2.0. Con este lanzamiento se incrementó el número de versión principal para reflejar dos nuevas capacidades: el soporte para múltiples arquitecturas, y el soporte para arquitecturas multiprocesador. Y aún desde esas versiones, hasta las actuales se sigue trabajando constantemente para agregarle mejoras al kernel.

**¿Cuáles son sus funciones principales?**

Ejecutar programas y gestionar dispositivos de hardware, es el encargado de que el software y el hardware puedan trabajar juntos. Las funciones más importantes son las de administrar la memoria, comunicación y concurrencia, administración de procesos y gestión del HW.

**¿Cuál es la versión actual? ¿Qué versiones existen? ¿Cómo se diferencian? ¿Qué cambió en el versionado se impuso a partir de la versión 2.6?**

La versión actual de kernel es la 5.15.x. Antiguamente había dos tipos de versiones del núcleo:
Producción (estable):
Era la versión estable del momento y la que se debía de utilizar, ya que, esta versión era el resultado final de las versiones que estaban en desarrollo. 
Desarrollo:
Era la versión que estaba en desarrollo y la que los programadores utilizan para corregir bugs. Esta versión era muy inestable.

Se interpretan con X.Y.ZX: Indica serie principal. Cambia cuando su funcionalidad sufre un cambio muy importante. Y: Indica producción o desarrollo (los números impares indican desarrollo, los pares producción). Z: Indica si el kernel tiene revisiones dentro de la versión (sólo se modificaban fallos de programación). 

A partir de la versión 2.6 se introdujo un cambio en el versionado: A.B.C.[D]. A: Denota Versión. Cambia con menor Frecuencia. En 1994 (versión 1.0) y en 1996 (versión 2.0). B: denota mayor revisión. Da igual verlos de forma par o impar, ya no tienen significado. C: Denota menor revisión. Solo cambia cuando hay nuevos drivers o características. D: Cambia cuando se corrige un grave error sin agregar nueva funcionalidad

**¿Es posible tener más de un Kernel de GNU/Linux instalado en la misma máquina?**

Es posible tener más de un Kernel gracias a los cargadores como GRUB o LILO que permiten elegirlos al iniciar el sistema. Podemos tener más de un Kernel en una misma partición con GNU/Linux, los distintos Kernels formarían parte del núcleo, y GNU es lo que abraza a ese núcleo que sería uno solo, para los distintos Kernel que yo tenga.

**¿Dónde se encuentran ubicados dentro del File System?**

Las librerías esenciales y módulos del Kernel se encuentran en /boot/.

**¿El Kernel de GNU/Linux es monolítico? Justifique.**

Hoy por hoy, Linux es un núcleo monolítico híbrido. La mayoría de los núcleos Linux son monolíticos. Un núcleo monolítico es aquel que incluye prácticamente toda la funcionalidad del sistema operativo en un gran bloque de código que ejecuta como un único proceso con un único espacio de direccionamiento. Todos los componentes fundamentales del núcleo tienen acceso a todas las estructuras internas de datos y rutinas. Si los cambios se hacen en cualquier porción de un sistema operativo monolítico, todos los módulos y rutinas deben volverse a instalar y reinstalar, y el sistema debe de ser reiniciado para que los cambios tengan efecto. Como resultado, cualquier modificación, como por ejemplo añadir un nuevo controlador de dispositivo o función del sistema de archivos, es difícil. Aunque Linux no utiliza una técnica de micronúcleos, logran muchas de las ventajas potenciales de esta técnica por medio de su arquitectura modular particular. Linux está estructurado como una colección de módulos, alguno de los cuales pueden cargarse y descargarse automáticamente bajo demanda. Por tanto, aunque Linux se puede tomar como monolítico, su estructura modular elimina algunas de las dificultades para desarrollar y evolucionar el núcleo. Por lo tanto, se puede decir que es monolítico híbrido.

### **5) Intérprete de comandos (Shell)**

**¿Qué es?**

El Shell (intérprete de comandos) es el programa que recibe lo que se escribe en la terminal y lo convierte en instrucciones para el sistema operativo. Un intérprete de comandos es un programa que lee las entradas del usuario y las traduce a instrucciones que el sistema es capaz de entender y utilizar.

**¿Cuáles son sus funciones?**

El shell es un programa que actúa como interfaz, para comunicar al usuario con el sistema operativo mediante una ventana que espera comandos textuales ingresados por el usuario en el teclado, los interpreta y los entrega al SO para su ejecución. La respuesta del SO es mostrada al usuario en la misma ventana. A continuación, la shell queda esperando más instrucciones. Se interactúa con la información de la manera más simple posible, sin gráficas, solo el texto.

**Mencione al menos 3 intérpretes de comandos que posee GNU/Linux y compárelos entre ellos.**

Es posible que un sistema operativo tenga varios intérpretes de comandos; dentro de GNU/Linux y Unix, existen tres grandes familias de Shells, estas son: 
- Korn-Shell (ksh)
- Bourne-Shell (sh)
- C-Shell (csh).

Estas se diferencian entre sí básicamente en la sintaxis de sus comandos y en la interacción con el usuario. El más usado hoy en día es bash (-su nombre es un acrónimo de bourne-again shell, haciendo un juego de palabras sobre el Bourne-shell-).

**¿Dónde se ubican (path) los comandos propios y externos al Shell?**

Los comandos propios y externos al Shell se ubican en /bin/.

**¿Por qué considera que el Shell no es parte del Kernel de GNU/Linux?**

La shell no forma parte del kernel básico del SO; sino que la misma “dialoga” con el kernel. La shell es iniciada por un proceso denominado “login”, y dado que cada usuario tiene asignado una shell por defecto, la misma se inicia cada vez que un usuario comienza a trabajar en su estación de trabajo (es decir se “loguea” en una terminal). Dentro del contenido del archivo /etc/passwd, se puede ver cuál es las shell que cada usuario tiene asignada por defecto. El funcionamiento del shell consiste en que, en su forma más básica, se muestra un prompt (- conjunto de caracteres que se muestran en una línea de comandos para indicarnos que está a la espera de órdenes. En el Bourne Shell y sus derivados, el prompt suele ser el carácter $ para los usuarios y # para el administrador-), en donde el usuario teclea una orden en el teclado y finaliza la orden (normalmente con la tecla Intro/Enter), y la computadora ejecuta la orden, proporcionando una salida de texto.

### **6) Sistema de Archivos (File System):**

**¿Qué es?**

Filesystem se traduce como “sistema de archivos”. Es la forma en que dentro de un sistema de cómputo se organizan, se administran, los archivos. Esa administración comprende:
- Métodos de acceso: cómo se acceden los datos contenidos en el archivo.
- Manejo de archivos: cómo actúan los mecanismos para almacenar, referenciar,compartir y proteger los archivos.
- Manejo de la memoria secundaria: cómo se administra el espacio para los archivos en memoria secundaria.
- Mecanismos de integridad: con qué métodos se garantiza la incorruptibilidad de archivo.

La mayoría de los sistemas operativos poseen su propio sistema de archivos. Los sistemas de archivos estructuran la información que luego será representada ya sea textual o gráficamente utilizando un gestor de archivos (por ejemplo, Midnight Commander, Nautilus, Konqueror, etc.). Los filesystem más comunes utilizan dispositivos de almacenamiento de datos que permiten el acceso a los datos como una cadena de bloques de un mismo tamaño, a veces llamados sectores (usualmente de 512 bytes de longitud). El software del sistema de archivos es responsable de la organización de estos sectores en archivos y directorios y mantiene un registro de qué sectores pertenecen a qué archivos y cuáles no han sido utilizados. Generalmente un sistema de archivos (filesystem) tiene directorios que asocian nombres de archivos con archivos, usualmente conectando el nombre de archivo a un índice en una tabla de asignación de archivos de algún tipo, como FAT en sistemas de archivos MS-DOS o los inodos de los sistemas Unix. La estructura de directorios puede ser plana o jerárquica (ramificada o "en árbol"). En algunos sistemas de archivos los nombres de archivos son estructurados, con sintaxis especiales para extensiones de archivos y números de versión. En otros, los nombres de archivos son simplemente cadenas de texto y los metadatos de cada archivo son alojados separadamente.

En sistemas de archivos jerárquicos, en lo usual, se declara la ubicación precisa de un archivo con una cadena de texto llamada "ruta" (path). La nomenclatura para rutas varía ligeramente de sistema en sistema, pero mantienen por lo general una misma estructura. Una ruta viene dada por una sucesión de nombres de directorios y subdirectorios, ordenados jerárquicamente de izquierda a derecha y separados por algún carácter especial que suele ser una barra ('/') o barra invertida ('\') y puede terminar en el nombre de un archivo presente en la última rama de directorios especificada. Los sistemas de archivos tradicionales proveen métodos para crear, mover y eliminar tanto archivos como directorios, pero carecen de métodos para crear, por ejemplo, enlaces adicionales a un directorio o archivo (enlace duro en Unix - los enlaces duros son una referencia, ó indicador a los datos físicos sobre un sistema de archivos-) y renombrar enlaces padres (el ".." en Unix).

**Mencione sistemas de archivos soportados por GNU/Linux.**

- ext2 (second extended filesystem o "segundo sistema de archivos extendido") es un sistema de archivos para el sistema operativo GNU/Linux. La principal desventaja de ext2 es que no implementa el registro por diario o bitácora (Journaling) que sí implementa su sucesor ext3, el cual es totalmente compatible. ext2 fue el sistema de archivos por defecto de las distribuciones Red Hat Linux, Fedora Core y Debian hasta ser reemplazado recientemente por su sucesor ext3.

- ext3 (third extended filesystem o "tercer sistema de archivos extendido") es un sistema de archivos con registro por diario. Es el sistema de archivo más usado en distribuciones GNU/Linux. La principal diferencia con ext2 es el registro por diario. Un sistema de archivos ext3 puede ser montado y usado como un sistema de archivos ext2. Otra diferencia importante es que ext3 utiliza un árbol binario balanceado (árbol AVL) e incorpora el asignador de bloques de disco Orlov.

- ReiserFS es un sistema de archivos de propósito general. Actualmente es soportado por Linux y existen planes de futuro para incluirlo en otros sistemas operativos. A partir de la versión 2.4.1 del núcleo de Linux, ReiserFS se convirtió en el primer sistema de ficheros con journal en ser incluido en el núcleo estándar. También es el sistema de archivos por defecto en varias distribuciones, como SuSE (excepto en openSuSE 10.2 que su formato por defecto es ext3), Xandros, Linspire y Knoppix.

- XFS es un sistema de archivos de 64 bits con journaling de alto rendimiento. XFS se incorporó a Linux a partir de la versión 2.4.25. Los programas de instalación de las distribuciones de SuSE, Gentoo, Mandriva,Slackware, Fedora Core, Ubuntu y Debian ofrecen XFS como un sistema de archivos más. En FreeBSD el soporte para solo-lectura de XFS se añadió a partir de diciembre de 2005 y en Junio de 2006 un soporte experimental de escritura fue incorporado a FreeBSD-7.0- CURRENT.


**¿Es posible visualizar particiones del tipo FAT y NTFS en GNU/Linux?**

Si, es posible.

**¿Cuál es la estructura básica de los File System en GNU/Linux? Mencione los directorios más importantes e indique qué tipo de información se encuentra en ellos. ¿A qué hace referencia la sigla FHS?**

FHS (Filesystem Hierarchy Standard) define los directorios principales y sus contenidos en el sistema operativo Linux y otros sistemas de la familia Unix. Se diseñó originalmente en 1994 para estandarizar el sistema de archivos de las distribuciones GNU/Linux, basándose en la tradicional organización de directorios de los sistemas Unix. En 1995 se amplió el ámbito del estándar a cualquier Unix que se adhiriese voluntariamente. Todos los archivos y directorios aparecen bajo el directorio raíz /, aunque se encuentre en distintos dispositivos físicos. En GNU/Linux no existen unidades, todo se “monta” como carpetas que empiezan en el directorio principal (también llamado raíz), además, aunque puedes crear las carpetas que quieras, existe una estructura básica:

- **/** [Raíz] el equivalente al C: de windows
- **/bin** binarios y ejecutables del sistema.
- **/boot** aquí se encuentra lo más importante del sistema; el kernel y los archivos necesarios para que el sistema funcione correctamente.
- **/dev** archivos que se relacionan con los diferentes dispositivos que pueden estar funcionando en una PC (discos duros, terminales, sonido, video, lectores dvd/cd, etc)
- **/etc** uno de los más importantes, porque se encuentran todas las configuraciones del sistema.
- **/lib** librerías esenciales compartidas y módulos del Kernel
- **/media** punto de montaje para dispositivos removibles.
- **/mnt** punto de montaje para montar filesystems temporarios
- **/home** aquí cada usuario posee un directorio donde se guarda toda su configuración, los programas instalados y documentos personales.
- **/opt** paquetes de software de aplicación agregados.
- **/tmp** archivos temporarios.
- **/proc** usado en lugar del /dev/kmem – soportar los procesos.
- **/usr** jerarquía secundaria para datos compartidos de solo lectura (Unix system resources).
- **/root** similar al /home, pero para el usuario root (solo puede ser visto por el administrador).
- **/var** archivos variables, como son bases de datos, directorio raíz de servidores HTTP y FTP, colas de correo, archivos temporales, etc.

### **7) Particiones**

**Definición. Tipos de particiones. Ventajas y Desventajas.**

Particionar el disco duro es una manera de dividir el disco físico en varios discos lógicos. O lo que es lo mismo, al particionar un disco, dividimos el disco en varias particiones independientes unas de otras, creando la ilusión de que tenemos diferentes discos, cuando en realidad, lo que tenemos es un solo disco físico dividido en partes. La tabla de particiones situada en el MBR restringe a 4 la cantidad posible de particiones primarias en un disco. Sin embargo, es posible crear más de 4 particiones utilizando particiones extendidas.

Las particiones extendidas son similares a un nuevo disco, ya que poseen sus propias tablas de particiones que apunta a una o más particiones (ahora llamadas particiones lógicas) contenidas íntegramente en la partición extendida. A diferencia de las particiones primarias, las particiones extendidas deben ser contiguas. La razón de este hecho se debe a que cada partición extendida contiene un puntero a la siguiente partición extendida, lo que implicaría que el número de este tipo de particiones sería ilimitado. Sin embargo, Linux impone un límite en este número. Por ello se limita a 15 el número de particiones extendidas sobre discos SCSI y a 63 en discos IDE. Cualquier disco que tengamos en nuestro ordenador tiene al menos una partición primaria, que en la mayoría de los casos tiene un tamaño equivalente al total del disco.

Desventajas de tener el disco dividido en diferentes particiones:

- Tener el disco muy particionado puede pasar a ser malo, porque quizás tenemos, un archivo o un programa muy grande que guardar, y de tan chicas que son las particiones, porque dijimos que teníamos muchas, entonces, capaz no podemos guardar ese archivo o programa
Agrega más complejidad para el usuario.


.Ventajas en tener el disco particionado en varias particiones:

- Si ocurre un error/problema en una de ellas, las demás no se verán afectadas. Poder tener diferentes sistemas operativos en una sola máquina, totalmente independientes unos de otros.
Poder tener sus archivos de datos en particiones totalmente independientes.oPoder borrar/cambiar el contenido de una partición, sin que esto afecte a las demás.
Aumentar la seguridad del sistema.

**¿Cómo se identifican las particiones en GNU/Linux? (Considere discos IDE, SCSI y SATA).**

Al contrario que Ms-Dos, Windows, OS/2, las diferentes particiones en linux no se denominan C:,D: E:, etc, existe una denominación propia.

DISCOS IDE:

- /dev/hda: Disco duro IDE como master en el canal IDE 1.
- /dev/hda1: Partición primaria 1 en
- /dev/hda
- /dev/hda2: Partición primaria 2 en
- /dev/hda
- /dev/hda3: Partición primaria 3 en
- /dev/hda
- /dev/hda4: Partición primaria 4 en
- /dev/hda
- /dev/hda5: Partición extendida 1 en
- /dev/hda
- /dev/hda6: Partición extendida 2 en
- /dev/hda

 .....
- /dev/hda16: Partición extendida 16
en 
- /dev/hda
- /dev/hdb: Disco duro IDE como esclavo en el canal IDE 1.
- /dev/hdb1: Partición primaria 1 en
- /dev/hdb

........
- /dev/hdc: Disco duro IDE como master en el canal IDE 2.
- /dev/hdc1: Partición primaria 1 en
- /dev/hdd: Disco duro IDE como esclavo en el canal IDE 2.
- /dev/hdd1: Partición primaria 1 en
- /dev/hdd

........

DISCOS SCSI:
- /dev/sda: Disco duro SCSI número1.
- /dev/sda1: Partición primaria 1 en /dev/sda

........
- /dev/sdb: Disco duro SCSI número2.
- /dev/sdb1: Partición primaria 1 en /dev/sdb

**¿Cuántas particiones son necesarias como mínimo para instalar GNU/Linux? Nombrarlas indicando tipo de partición, identificación, tipo de File System y punto de montaje.**

Básicamente podemos decir que para instalar Linux necesitaremos 3 particiones, pero como mínimo con 2 ya estaría bien (/ y SWAP: 
una para el sistema/datos, otra para albergar el kernel y otra para Swap. 

Usualmente se suelen tener más, una para el sistema/programas (/), otra para el kernel (/boot), otra para swap, otra para los archivos de los usuarios (/home), otra para la información temporal (/tmp), otra para la información variable (/var), etc.

Esta decisión dependerá del uso que le quiera dar a su sistema. Para sistemas que se utilicen de forma particular y por uno o pocos usuarios bastará con tres particiones antes mencionadas, esto evitará los problemas de saber que cantidad de espacio necesitan las diferentes particiones y el quedarnos sin espacio en alguna partición vital, mientras que nos sobra en otras. 

Para sistemas servidores, con gran cantidad de servicios y usuarios es muy recomendable tener varias particiones/discos.

**Ejemplifica diversos casos de particionamiento dependiendo del tipo de tarea que se deba realizar en su sistema operativo.**

Para máquinas de usuarios novatos, equipos personales, sistemas para el hogar y en general, cuando será usado por un solo usuario, probablemente una partición en / (además de la de intercambio), es la forma más fácil de comenzar. 

Para sistemas multiusuario, o bien, con una gran cantidad de espacio libre para usar, lo mejor es dejar /usr, /var, /tmp y /home separadas de la partición /.

Si la máquina va a ser un servidor de correo, se necesitará crear una partición separada para /var/mail. A menudo, dejar una partición separada para /tmp es una muy buena idea. Es suficiente dejarla con 20 ó 50 MB.

Si se está configurando un servidor con una gran cantidad de cuentas de usuarios, es altamente recomendable dejar separada la partición /home. 

En general, cómo se debe particionar el disco depende del uso que se quiera dar al ordenador. Con respecto al tamaño de la partición de intercambio, hay diversos puntos de vista. Uno de ellos, que generalmente funciona muy bien, es asignar tanto espacio a la partición de intercambio como memoria tenga el sistema. En la mayoría de los casos no es recomendable que sea más pequeña que 16 MB. Obviamente, hay excepciones a estas reglas. Si se está tratando resolver 10000 ecuaciones simultáneas en una máquina con 256 MB de memoria, se necesitará un gigabyte (o más) de espacio de intercambio. En arquitecturas de 32 bits (i386, m68k, 32-bit SPARC y PowerPC), el tamaño máximo para una partición de intercambio es de 2 GB. Esto debería ser suficiente para cualquier tipo de instalación. Sin embargo, si los requisitos para el espacio de intercambio son realmente altos, probablemente se debería tratar de separar la carga del intercambio, a través de diversos discos (también llamados “spindles”) y, si es posible, en diferentes canales SCSI o IDE. El núcleo podrá balancear el uso de la zona de intercambio entre múltiples particiones de intercambio dando así un mejor rendimiento.

**¿Qué tipo de software para particionar existe? Menciónelos y compare.**

Existe una amplia variedad de software para realizar el particionamiento. Algunos programas realizan un particionamiento destructivo y otros no.

- Fdisk: Este es el software más conocido y utilizado, debido a que es distribuido gratuitamente con cualquier versión de DOS/Windows y Linux. Se emplea de una forma muy sencilla desde la línea de comandos, y luego presenta una serie de menús para realizar las tareas de particionamiento. La desventaja de fdisk es que es un particionador destructivo, por lo cual no le permitirá cambiar el tamaño de una partición ya creada. Para utilizar este programa, la forma más sencilla es crear un disco de inicio en DOS/Windows, iniciar el sistema booteando con el disco de inicio y luego escribir fdisk. Esta puede ser una práctica interesante para que se familiarice con el software de particionamiento. No tenga miedo utilizarlo, ya que antes de realizar cualquier cambio sobre su disco rígido el mismo sistema le consultará seguidamente.

- FIPS (First nondestructive Interactive Partition Splitting program): Este es un programa diseñado para dividir una partición del tipo Fat sin la necesidad de perder los datos. Antes de poder utilizar Fips, se deberá desfragmentar la partición que se desea dividir, de manera tal que los datos queden contiguos en el inicio del disco. Para desfragmentar el disco utilice la herramienta defrag que viene incluida con su distribución de Windows. Fips sólo dividirá la partición si es que existe suficiente espacio disponible al final de la misma. Además se deberá realizar un escaneo del disco antes de utilizar fips. La herramienta más adecuada para hacerlo es scandisk. Básicamente la tarea de fips es cambiar los valores de inicio y fin de una partición en la tabla de particiones y en el sector de booteo, reduciendo una partición existente y creando una nueva partición primaria con el espacio que se le sacó a la primera partición. Para utilizar esta nueva partición, antes debe ser formateada. Lo primero que mostrará fips cuando lo ejecute es la información de la tabla de particiones.

- Software Comercial: Este software le permitirá particionar su disco duro, e incluso dividir una partición ya existente. Existen distintos tipos de software comercial para particionar (destructivos y no destructivos). Dentro de los más conocidos podemos enumerar al Partition Magic, al System Commander, etc. Todos estos se instalan en entorno Windows y proveen de un menú gráfico para realizar la tarea. Es importante recalcar que muchos de ellos se rigen por licencias propietarias y no libres y que además la mayoría de ellos tienen un costo para su utilización.

**Particiones**

Una partición es una forma de dividir lógicamente el disco físico:

DOS y W95 no pueden manejar filesystems mayores a 2 GB. Cada sistema operativo es instalado en una partición separada.
Cada partición se formatea con un tipo de File System distinto (fat, ntfs, ext, etcétera). Es una buena práctica separar los datos del usuario de las aplicaciones y/o Sistema Operativo instalado.

Tener una partición de Restore de todo el sistema.
Poder ubicar el Kernel en una partición de solo lectura.
Debido al tamaño acotado en el MBR para la tabla de particiones:
- Se restringe a 4 la cantidad de particiones primarias o 3 particiones primarias y una extendida con sus volúmenes lógicos.

- Una de las 4 particiones puede ser extendida, la cual se subdivide en volúmenes lógicos.

Para Linux se necesitan al menos 2 (/ y SWAP)- Para crearlas, se utiliza software denominado Particionador. Existen 2 tipos:

- Destructivos: Permiten crear y eliminar particiones (fdisk)

- No destructivos: Permiten crear, eliminar y MODIFICAR particiones (fips, gparted).

### **8)  Arranque (bootstrap) de un Sistema Operativo**

**¿Qué es el BIOS? ¿Qué tarea realiza?**

La BIOS es un elemento fundamental de cualquier PC. Inicializa y chequea durante el arranque todos los componentes de hardware. Como el disco duro, el teclado, la pantalla, el ratón, la memoria RAM. Luego prepara el equipo para que Windows se cargue y se ejecute. Su nombre viene de las siglas de Basic Input Output System (Sistema Básico de Entrada/Salida). El trabajo de la BIOS empieza justo en el momento en que enciendes el PC. Hace de intermediaria entre el hardware (placa, procesador, RAM, discos, etc.) y el SO. Al arrancar el equipo el hardware y el software están separados. Ninguno de los dos "sabe" que el otro existe. La BIOS se encarga entre otras cosas de resolver ese problema. Primero comprueba que está todo bien. Luego le dice al hardware dónde buscar el sistema operativo. Y al SO qué hardware hay y si está o no disponible. Si la BIOS detecta un problema grave ni siquiera deja que el SO se cargue. Eso da una idea de lo esencial que es.

**¿Qué es UEFI? ¿Cuál es su función?**

UEFI – Unified Extensible Firmware Interface. Es la alianza entre varias compañías con el objetivo de modernizar el proceso de arranque. Tiene representantes como AMD, American Megatrends, Apple, HP, Dell, IBM, Insyde Software, Intel, Lenovo, Microsoft, Phoenix Technologies.

UEFI aporta criptografía, autenticación de red y una interfaz gráfica. La función del UEFI es definir la ubicación del gestor de arranque, la interfaz entre el gestor de arranque y el firmware. Expone información para el gestor de arranque como:

- Información de hardware y configuración del firmware.

- Punteros a rutinas que implementan los servicios que el firmware ofrece a los bootloaders u otras aplicaciones UEFI.
- Provee un Boot Manager para cargar aplicaciones UEFI (e.j.: Grub) y drivers desde un UEFI filesystem.

El bootloader ahora es un tipo de aplicación UEFI:

- El Grub será una aplicación UEFI, que reside en el UEFI filesystem donde están los drivers necesarios para arrancar el sistema operativo (FAT32).
Para el Grub deja de ser necesario el arranque en varias etapas.
 
**¿Qué es el MBR? ¿Qué es el MBC?**

El Master Boot Record es el primer sector del disco físico. Se ubica en el cilindro 0, cabeza 0, sector 1 del disco. Existe un MBR en todos los discos, pero solo es ejecutado si el disco contiene las particiones del sistema. Si existiese más de un disco rígido en la máquina, sólo uno es designado como Primary Master Disk. Es de este disco de donde el sistema realiza el booteo. 

El MBR es creado con algún utilitario que permite diseñar la estructura del disco rígido como, por ejemplo, fdisk, Partition Magic, System Comander, etc. La tabla de particiones provee información respecto a las particiones realizadas sobre el disco, como por ejemplo donde comienzan y terminan. Si se pierde esta tabla, se perderá la clave para acceder al contenido en el disco rígido, y no existe una tabla de particiones de backup. 

La última acción del BIOS (después de realizar los testeos POST) es leer el primer sector de la unidad primaria (ya sea el disco rígido, disquete o CDROM). El programa de booteo lleva el sector leído a memoria, y si los datos son correctos, lo ejecuta, es decir ejecuta el arranque del sistema operativo.

El proceso de inicio de una máquina y carga del sistema operativo se denomina proceso de bootstrap (carga) o booteo. El encendido de la máquina y carga del sistema operativo presenta un interesante dilema. 

Por definición, una máquina no puede realizar nada hasta que el sistema operativo es cargado. Él es el responsable de correr programas almacenados en el disco. Por ello, la máquina no podría correr un programa sin haber cargado previamente el sistema operativo, y por otra parte los programas del sistema operativo se almacenan en disco. 

Entonces, ¿cómo se carga el sistema operativo? 

En las arquitecturas x86, el BIOS (Basic I/O System) es el responsable de cargar el sistema operativo. Para ello, el BIOS analiza el MBR, asumiendo que él puede llevar a cabo el resto de las tareas involucradas en la carga del sistema operativo. Si se mantiene un sistema operativo instalado, entonces el MBR estándar será suficiente. El MBR buscará la primera partición booteable en el disco, y luego correrá el código en esa partición para proceder con la carga del resto del sistema operativo. En el caso de tener múltiples sistemas operativos instalados, entonces es posible instalar un MBR diferente, uno que pueda mostrar la lista de los diferentes sistemas operativos, y permitir la selección de cuál bootear. El proceso de booteo puede verse como una serie de pequeños programas cuya ejecución se va encadenando. Esto se debe a que los PC estándar imponen límites en el tamaño de los programas que pueden correrse en las diferentes instancias del proceso de booteo. 

Sus 512 bytes contienen tres bloques con información sobre la arquitectura física y lógica del disco: el Código maestro de carga; la Tabla de particiones, y la Firma MCB es un pequeño código (primeros 446 bytes del MBR) que permite arrancar el SO. La última acción del BIOS es leer el MCB. Lo lleva a memoria y lo ejecuta. Dicho código es ya capaz de cargar y ejecutar cualquier otro programa situado en cualquier partición del disco. Que a su vez inicializará directamente el SO, o tal vez una utilidad conocida como gestor de arranque, que permite elegir entre distintas alternativas. Como vemos, es un proceso en cadena: el bootstrap loader es cargado en memoria por un programa situado en la BIOS, y a su vez es capaz de continuar la carga del Sistema Operativo. El MBR es el Master Boot Record.
Sector reservado del disco físico (cilindro 0, cabeza 0, sector 1).

- Existe un MBR en todos los discos.
- Si existiese más de un disco rígido en la máquina, sólo uno es designado como Primary Master Disk.
- El tamaño del MBR coincide con el tamaño estándar de sector: 512 bytes:
  - Los primeros bytes corresponden al Master Boot Code (MBC).
  - A partir del byte 446 está la tabla de particiones. Es de 64 bytes.
  - Al final existen 2 bytes libres.
- Es creado con algún utilitario
- El MBC es un pequeño código que permite arrancar el SO.
- La última acción del BIOS es leer el MBC. Lo lleva a memoria y lo ejecuta.
- El proceso de inicio de una máquina y carga del sistema operativo se denomina proceso de Bootstrap.
- Si se tiene un sistema instalado MBC típico. Sino  uno diferente (booteadores).
- El proceso de booteo puede verse como una serie de pequeños programas cuya ejecución se va encadenando.
- La finalidad del Bootloader es la de cargar una imagen de Kernel de alguna partición para su ejecución.
 
**¿A qué hacen referencia las siglas GPT? ¿Qué sustituye? Indique cuál es su formato.**

GUID Partitio Table Schee. La tabla de particiones GUID (GPT) es un estándar para la colocación de la tabla de particiones en un disco duro físico. Es parte del estándar Extensible Firmware Interface (EFI) propuesto por Intel para reemplazar el viejo BIOS del PC, heredada del IBM PC original. La GPT sustituye al Master Boot Record (MBR) usado con el BIOS.

Mientras que el MBR comienza con el código de arranque maestro (Master Boot Code), que contienen un binario ejecutable que identifica la partición activa e inicia el proceso de arranque, la GPT se basa en las capacidades extendidas del EFI para estos procesos. A pesar de que una entrada de MBR comienza el disco, con propósitos de protectividad y compatibilidad con el viejo esquema BIOS PC, la GPT propiamente dicha comienza con la cabecera de la tabla de particiones.

GPT usa un moderno modo de direccionamiento lógico (LBA, logical block addressing) en lugar del modelo cilindro-cabeza-sector (CHS) usado con el MBR. La información de MBR heredado está almacenada en el LBA 0, la cabecera GPT está en el LBA 1, y la tabla de particiones en sí en los bloques sucesivos. En los sistemas operativos Windows de 64-bits, 16.384 bytes, o lo que es lo mismo, 32 sectores, están reservados para la GPT, dejando el bloque LBA 34 como el primer sector usable del disco.

GPT proporciona asimismo redundancia. La cabecera GPT y la tabla de particiones están escritas tanto al principio como al final del disco.

**¿Cuál es la funcionalidad de un “Gestor de Arranque”? ¿Qué tipos existen? ¿Dónde se instalan? Cite gestores de arranque conocidos.**

Además de GRUB, existen otros menos usados (u obsoletos) que cumplen o cumplieron la misma función. Entre ellos podemos mencionar a LILO y a Syslinux. En este post compartiremos brevemente los conceptos básicos sobre este componente fundamental para el funcionamiento del equipo.

En primer lugar, un gestor de arranque es un componente de software que ayuda al hardware y al firmware del equipo en la carga del sistema operativo. Esto incluye también la posibilidad de elegir entre varios SOs instalados en el equipo e inclusive el arranque desde una partición lógica. 

El gestor de arranque es un pequeño programa que es capaz de cargar el sistema operativo propiamente y, finalmente, transferirle el control. El sistema se auto-iniciará y puede cargar los controladores de dispositivos y otros programas que son necesarios para el normal funcionamiento del sistema operativo.

Estos programas pueden leer automáticamente las particiones del ordenador para detectar y configurar los sistemas instalados, permiten crear nuestras propias entradas (útil en el caso de Linux, por ejemplo, para cargar el sistema con parámetros o un kernel específico) y pueden contar con medidas de seguridad adicionales, como, por ejemplo, protección mediante contraseña.
Los dos gestores de arranque más utilizados en las distros son.GRUB, GRUB 2, LILO o SYSLINUX.

**¿Cuáles son los pasos que se suceden desde que se prende una computadora hasta que el Sistema Operativo es cargado (proceso de bootstrap)?**

En informática, el arranque o secuencia de arranque (en inglés: bootstrapping, boot o booting) es el proceso que inicia el gestor de arranque que es un programa ejecutado por el BIOS cuando se enciende una computadora. Se encarga de la inicialización del sistema operativo y de los dispositivos.

Además de cargar un sistema operativo o una utilidad independiente, el proceso de inicio también puede cargar un programa de volcado de almacenamiento para diagnosticar problemas en un sistema operativo.

**Analice el proceso de arranque en GNU/Linux y describa sus principales pasos**

In Linux, there are 6 distinct stages in the typical booting process.

- **BIOS** stands for Basic Input/Output System.
In simple terms, the BIOS loads and executes the Master Boot Record (MBR) boot loader. When you first turn on your computer, the BIOS first performs some integrity checks of the HDD or SSD. Then, the BIOS searches for, loads, and executes the boot loader program, which can be found in the Master Boot Record (MBR). The MBR is sometimes on a USB stick or CD-ROM such as with a live installation of Linux. Once the boot loader program is detected, it's then loaded into memory and the BIOS gives control of the system to it. 

- **MBR** stands for Master Boot Record, and is responsible for loading and executing the GRUB boot loader. 
The MBR is located in the 1st sector of the bootable disk, which is typically /dev/hda, or /dev/sda, depending on your hardware. The MBR also contains information about GRUB, or LILO in very old systems.

- **GRUB** sometimes called GNU GRUB, which is short for GNU GRand Unified Bootloader, is the typical boot loader for most modern Linux systems.
The GRUB splash screen is often the first thing you see when you boot your computer. It has a simple menu where you can select some options. If you have multiple kernel images installed, you can use your keyboard to select the one you want your system to boot with. By default, the latest kernel image is selected.
The splash screen will wait a few seconds for you to select and option. If you don't, it will load the default kernel image.
In many systems you can find the GRUB configuration file at /boot/grub/grub.conf or /etc/grub.conf. 

- **Kernel** is often referred to as the core of any operating system, Linux included. It has complete control over everything in your system.
In this stage of the boot process, the kernel that was selected by GRUB first mounts the root file system that's specified in the grub.conf file. Then it executes the /sbin/init program, which is always the first program to be executed. You can confirm this with its process id (PID), which should always be 1.
The kernel then establishes a temporary root file system using Initial RAM Disk (initrd) until the real file system is mounted.

- **Init** at this point, your system executes runlevel programs. At one point it would look for an init file, usually found at /etc/inittab to decide the Linux run level.	
Modern Linux systems use systemd to choose a run level instead. According to TecMint, these are the available run levels:
  - Run level 0 is matched by poweroff.target (and runlevel0.target is a symbolic link to poweroff.target).
  - Run level 1 is matched by rescue.target (and runlevel1.target is a symbolic link to rescue.target).
  - Run level 3 is emulated by multi-user.target (and runlevel3.target is a symbolic link to multi-user.target).
 - Run level 5 is emulated by graphical.target (and runlevel5.target is a symbolic link to graphical.target).
 - Run level 6 is emulated by reboot.target (and runlevel6.target is a symbolic link to reboot.target).

Systemd will then begin executing runlevel programs.

Runlevel programs.
Depending on which Linux distribution you have installed, you may be able to see different services getting started. For example, you might catch starting sendmail …. OK.

These are known as runlevel programs, and are executed from different directories depending on your run level. Each of the 6 runlevels described above has its own directory:

- Run level 0 – /etc/rc0.d/
- Run level 1 – /etc/rc1.d/
- Run level 2  – /etc/rc2.d/
- Run level 3  – /etc/rc3.d/
- Run level 4 – /etc/rc4.d/
-  Run level 5 – /etc/rc5.d/
- Run level 6 – /etc/rc6.d/

Note that the exact location of these directories varies from distribution to distribution. If you look in the different run level directories, you'll find programs that start with either an "S" or "K" for startup and kill, respectively. Startup programs are executed during system startup, and kill programs during shutdown.


