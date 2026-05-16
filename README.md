📱 Clínica Jesús - App iOS
Aplicación móvil desarrollada en Swift (UIKit) siguiendo el patrón MVVM + Clean Architecture , que permite gestionar información médica como especialidades, usuarios y navegación de perfiles, utilizando Supabase como backend (BaaS).

🚀 Características
🔐 Autenticación de usuarios (iniciar sesión)
👤 Gestión de perfiles
🩺 Listado de especialidades médicas
🔄 Consumo de API REST desde Supabase
🧠 Arquitectura escalable (MVVM + Clean Architecture)
📱 Interfaz construida programáticamente (UIKit)
🏗️ Arquitectura
El proyecto sigue una estructura basada en Clean Architecture , separando responsabilidades en capas:

Presentation (UI)
│
├── ViewControllers
├── ViewModels
│
Domain
│
├── UseCases
├── Entities
│
Data
│
├── Repositories
├── DTOs
├── API / Network
🔄 Flujo de datos
ViewController → ViewModel → UseCase → Repository → Supabase API
🧰 Tecnologías utilizadas
Swift + UIKit
MVVM
Arquitectura limpia
Supabase (Autenticación + Base de datos + API)
URLSession (Redes)
DTOs para mapeo de datos
Interfaz de usuario programática (sin Storyboards)
🔌 Backend - Supabase
Este proyecto utiliza Supabase como backend, lo que permite:

Autenticación de usuarios

Base de datos PostgreSQL

API REST automática

Manejo de tablas como:

especialidades
usuarios
perfiles
⚙️Configuración del proyecto
Clonar el repositorio:
https://github.com/EDU11QR/ClinicaJesus-iOS.git
Abrir el proyecto en Xcode

Configurar tus credenciales de Supabase:

let supabaseURL = "https://TU-PROYECTO.supabase.co"
let supabaseKey = "TU-API-KEY"
Ejecutar en simulador o dispositivo físico
📂 Estructura del proyecto
📁 App
📁 Presentation
📁 Domain
📁 Data
📁 Network
📁 DTOs
📁 Resources
📸 Funcionalidades principales
Login de usuario
Navegación a pantalla principal
Consumo de especialidades desde Supabase
Renderizado dinámico en listas
🧠 Buenas prácticas aplicadas
Separación de responsabilidades
Uso de DTOs para desacoplar backend
Inyección de dependencias
Código limpio y mantenible
Escalable para futuras funcionalidades
📌 Estado del proyecto
✅ Inicio de sesión funcional ✅ Navegación implementada ✅ Consumo de API desde Supabase 🚧 En desarrollo: gestión de citas médicas, roles (admin/médico/paciente)

👨‍💻 Autor
Educación para desarrolladores

📄 Licencia
Este proyecto es de uso educativo y demostrativo.
