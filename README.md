# Examen Final
## Ingraestructura como código y orquestación de microservicios

# Tarea1
Se solicita tener dos subredes y un clúster simulado de Kubernetes dentro de Minikube

Para ello lo que realicé fue tomar los recursos creados en mi Proyecto de la práctica calificada 3 donde tenía ya los network-module y el script de versionamiento para modulos que pertenecen a un monorepo.

La carpeta `monorepo` contiene además de network_module, la segunda red creada que es network-2_module para así tener las dos subredes que se solicitan las cuales van a apuntar al puerto 8000 y 8001 respectivamente

Además se creó un pipeline que se encarga de levantar ambas redes



# Tarea 3
Se pide tener dos microservicios de los cuales los tomé de la Actividad 25, pero con la diferencia de que ahora se creó un `docker-compose.yml` el cuál `service-user` se va a encargar del manejo de usuarios y `service-product` se encargará de la gestión de productos, ambos tienen sus métodos `get`, `post`, `delete` solo `service-user` y `put` solo `service-product`, se crea un docker-compose.yml donde ambos servicios estarán en una misma red interna y compartirán un mismo volumen simulado, luego de terminar el docker-compose.yml se hará que el pipeline levante esos dos servicios mediante el compose, pero como directamente desde dentro de minikube no se puede usar el comando compose, lo que hice fue realizar un `docker build -t` y luego señalé el servicio que ejecuta el docker-compose.yml uno por uno, así desde el docker compose podemos levantar los servicios 


# Tarea 4:
Nuevamente usando la carpeta k8s de la actividad25, reusamos los archivos .yml para desplegar los dos microservicios usando deployment