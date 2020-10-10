# Heimdal App

This application constitutes a MSc final project. 

Heimdal is a mobile and web application that enables the people movement surveillance. 
It allows real-time movement updates, follower - following management, ...

It is specially designed for unsupervised children, people with dementia or disabilities, freight carriers or simply people who want to feel safer when traveling through areas or roads they distrust.


## Project structure

  1) Server

     > `heimdal_server` - Contains the server of the application. It can be divided in:
     >
     >  * `heimdal_backend` - This module contains the logic of application using __*Spring Boot*__, common for mobile and web applications.
     >
     >  * `heimdal_frontend` - This module constains the __*React*__ web application.

  2) App

     > `heimdal_app` - Contains the __*Flutter*__ application for mobile devices.


## Project compilation and execution

  1) Server 

```sh
#Frontend and backend compilation through maven plugin
#React files are copied to SpringBoot package
cd heimdal_server
mvn clean install
```

```sh
#Local execution of backend server
cd heimdal_server/heimdal_backend
mvn spring-boot:run
```  

```sh
#Local execution of frontend server
cd heimdal_server/heimdal_frontend
#Compilation (if necessary)
npm install
#Execution
npm run serve
```
     

  2) App

Import __*heimdal_app*__ into **Android Studio** to build and execute - for android devices.

