# Service-Login

![Docker Whale](https://www.docker.com/sites/default/files/social/docker_facebook_share.png)

Este proyecto es el resultado de un *aprendizaje continuo* en la rama de DevOps.
Se verán integrados diferentes programas como:
  - Nginx
  - MySQL
  - Eclipse
  - Terminal de Linux
  - Docker

### Descripción del Proyecto
Este servicio Login ha sido desarrollado en eclipse, unido a una base de datos MySQL con datos solo de prueba que permitan testear el funcionamiento.
Hace uso de la herramienta de los contenedores que permiten tener resultados más rápidos y mejores.

### Funcionamiento

> El usuario ingresa al enlace especificado,
> El proxy redirige la petición entrante hasta la aplicación  
> que se encuentra ejecutandose en un contenedor.
> La aplicación recibe la petición y por medio del controlador
> realiza la consulta a la BD.
> La BD responde un objeto que será analizado para tener finalmente
> una respuesta de "usuario logueado" o "user o password errado".

Según como estén registradas las cuentas, el servicio traerá una respuesta positiva o negativa.

### Detalle del Software usado

El service Login usa de varias herramientas mencionadas a continuación:

| Nombre | Versión |
| ------ | ------ |
| Nginx | 1.15.8 |
| MySQL | 8.0.13 |
| Eclipse | 2018-12 |
| Docker | 18.09.1 |
| GitHub | 2.17.1 |
| Ubuntu | 18.04.1 |

Todo lo usado ha sido en su versión gratuita, en ningpun caso se ha visto afectada la economía del proyecto.

### Instalación y ejecución

Login service necesita de Ubuntu y docker principalmente para poder ejecutarse.
Para instalar Ubuntu debe visitar su página web oficial y descargar la imagen.

[Ubuntu](https://www.ubuntu.com/)

Teniendo ya el Ubuntu, entramos a la terminal y ejecutamos los siguientes comandos:

```sh
$ sudo apt-get update
$ sudo apt-get install docker -y
```
Además de usar los contenedores de docker, haremos uso de la herramienta de automatización llamada Docker-compose, lo podremos instalar de la siguiente manera:
Descargaremos el repositorio:
```sh
$ sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
```
Terminada la descarga, le daremos permisos de ejecución
```
$ sudo chmod +x /usr/local/bin/docker-compose
```
Comprobaremos que se instaló
```
$ docker-compose --version
```

Para fines de ahorrar tiempo en la ejecución del servicio usamos el Docker-compose que nos permite automatizar la creación de todo el ambiente, para ejecutarlo debemos entrar a la raiz del proyecto y luego ejecutar el siguiente comando:

```sh
$ docker-compose up -d --build
```

## Almacenamiento
Guardaremos este proyecto en la nube por lo que necesitaremos el github.
Instalamos primero las dependencias de Git:
```sh
$ apt-get install libcurl4-gnutls-dev libexpat1-dev gettext libz-dev libssl-dev
```
Luego descargamos la ultima versión de Git desde su página web:
[Download Git](http://git-scm.com/download)

Procedemos a instalar el Git:
```sh
$ apt-get install git
```
Al instalar necesitaremos las credenciales de una cuenta de Git para subirlo a un repositorio.
```sh
$ git config --global user.name "usuario"
$ git config --global user.email example@example.com
$ git remote add origin https://github.com/user/repo.git
```
Luego haremos un commit:
```sh
$ git commit -m "Agregar el mensaje que desea"
```
Y por ultimo hacemos push:
```sh
$ git push origin master
```
### Anotaciones
* Los datos usados para este proyecto son solo de prueba.
* Se debe tener en cuenta las versiones usadas en los programas, algunas variaciones pueden generar posibles incompatibilidades.
