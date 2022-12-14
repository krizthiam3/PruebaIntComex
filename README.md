# PruebaIntComex
Prueba Developer Intcomex

<p align="left">
   <img src="https://img.shields.io/badge/STATUS-EN%20DESAROLLO-green">
   </p>



INTCOMEX

Tecnologias utilizadas

- Arquitectura Hexagonal 3 capas (Dommain, Application, Infrastructure, Api)
- .Net Core 3.1, EntityFramework, LinQ, json, SqlServer
- Aplicación de principios Solid
- Angular, (Node JS, TypeScript, HTML)
- Swagger

Instrucciones

Base de datos
- Se adjunta script para rollout de base datos, se necesita crear la BD en una instancia local de MSQLSERVER
	1. Crear Base da datos con el nombre: INTCOMEXBD
	2. Ejecutar el script adjunto en el repositorio.
	
Nota: La API, tiene configurado el conexion con autenticacion de Windows, si se desea usar user and password, se debe modificar la cadena.

Aplicación.

La aplicación de encuentra desarrollada en angular, para ejecutarla desde visual studio, posteriormente por medio de swagger o postman se podra consumir los servicios.


Nota: Para que la API pueda acceder a la BD desde SQL Server, se deben modificar la cadena de conexion que se encuentra en la  capa: 
intComexWebAPI.Infra.Context dentro de la clase clase de persistencia: PersistenceContext 
