# Automatización API con Karate

Este es un proyecto de ejemplo donde se automatizan pruebas de servicios utilizando **Karate**. 

## Desarrollo
* **IntelliJ IDEA 2023.3.3**
* **JDK 17:** Verificar Java en las variables de entorno.
* **Maven 3.9.9:** Importante que tengan Maven en las variables de entorno.
* **Karate:** se instalará automáticamente al ejecutar el proyecto junto a otras dependencias necesarias, estas se encuentran en el pom.xml

## Plugins necesarios en el IDE
* Cucumber for Java
* Gherkin
  
## Funcionalidades

Para el ejercicio de la **API** 

* Se crea un nuevo usuario en singup
* Se intenta crear un usuario ya existente
* Se realiza el login con credenciales correctos
* Se realiza el login con credenciales incorrectos

## Ejecutar las pruebas

### **Clonar repositorio**

git clone https://github.com/Christian1091/Prueba_Karate.git

* Navegar al directorio del proyecto: **cd Prueba_API**
* Instalamos las dependencias: **npm install**

## Ejecutar el proyecto

* Abrir el archivo **RunnersMain** de la ruta "/src/test/java/demoblaze"
* Click sobre **Run** en la clase **RunnerMain**
