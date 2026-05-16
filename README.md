# 🏥 ClinicaJesus-iOS

Aplicación móvil iOS desarrollada en **Swift + UIKit** para la gestión de citas médicas, usuarios, horarios y administración de una clínica.

El proyecto sigue una arquitectura **MVVM + Clean Architecture**, con interfaces construidas **100% programáticamente** (sin Storyboards).

---

# 🚀 Tecnologías utilizadas

* Swift
* UIKit
* MVVM
* Clean Architecture
* Supabase
* PostgreSQL
* Supabase Auth
* RPC Functions
* Async/Await
* Xcode

---

# 📱 Funcionalidades principales

## 👤 Autenticación

* Inicio de sesión
* Registro de pacientes
* Manejo de sesiones
* Roles de usuario:

  * ADMIN
  * DOCTOR
  * PACIENTE

---

## 🩺 Pacientes

* Ver especialidades
* Ver doctores por especialidad
* Reservar citas
* Ver horarios disponibles
* Gestionar citas
* Cancelar citas
* Visualización moderna tipo cards

---

## 👨‍⚕️ Doctores

* Ver citas asignadas
* Confirmar citas
* Cancelar citas
* Marcar citas como atendidas
* Crear horarios disponibles
* Gestión de disponibilidad

---

## 🛠️ Administración

* Gestión de usuarios
* Cambio de roles
* Gestión de especialidades
* Activación/desactivación
* Búsqueda avanzada de usuarios

---

# 🧱 Arquitectura del proyecto

El proyecto está estructurado utilizando:

## MVVM + Clean Architecture

```text
ClinicaJesus-iOS
│
├── Presentation/
│   ├── ViewControllers
│   ├── ViewModels
│   └── Components
│
├── Domain/
│   ├── Entities
│   ├── UseCases
│   └── Repositories
│
├── Data/
│   ├── Services
│   ├── DTOs
│   ├── Repositories
│   └── Mappers
│
└── App/
    └── Dependency Injection
```

---

# 🎨 UI/UX

* Interfaz completamente programática
* Diseño moderno y minimalista
* Cards dinámicas para citas
* Estados visuales:

  * Pendiente
  * Confirmada
  * Cancelada
  * Atendida
* Navegación limpia y escalable

---

# ☁️ Backend

El backend está implementado con:

## Supabase

* PostgreSQL
* Authentication
* RPC Functions
* Row Level Security
* Gestión de sesiones

---

# 🔐 Reglas de negocio implementadas

* Un paciente no puede reservar horarios ocupados
* Un doctor solo puede gestionar sus propias citas
* Validación de estados de citas
* Restricción de horarios duplicados
* Validación de autenticación y roles

---

# 📂 Configuración del proyecto

## 1️⃣ Clonar repositorio

```bash
git clone <URL_DEL_REPOSITORIO>
```

---

## 2️⃣ Abrir proyecto

Abrir:

```text
ClinicaJesus-iOS.xcodeproj
```

---

## 3️⃣ Configurar Supabase

Crear archivo de configuración con:

```swift
SUPABASE_URL
SUPABASE_ANON_KEY
```

---

# ▶️ Ejecutar proyecto

Desde Xcode:

```text
⌘ + R
```

---

# 📸 Capturas

> Próximamente...

---

# 👨‍💻 Autor

Desarrollado por Julio.

---

# 📌 Estado del proyecto

🚧 Proyecto en desarrollo activo.

Actualmente se continúa trabajando en:

* Mejoras visuales
* Optimización de flujos
* Panel administrativo
* Gestión avanzada de horarios
* Mejoras UX/UI

---

# ⭐ Objetivo del proyecto

Desarrollar una aplicación médica moderna utilizando buenas prácticas de arquitectura, separación de responsabilidades y una experiencia de usuario profesional en iOS.
