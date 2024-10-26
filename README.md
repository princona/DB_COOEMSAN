# 📄 Descripción General del proyecto
Este proyecto es una base de datos que permite almacenar y administrar la información de la cooperativa COOEMSAN, incluyendo los datos de los asociados, sus aportes y los créditos que han solicitado. Con esta herramienta, es posible tener una visión clara de la situación financiera y del compromiso de cada uno de los miembros. 

## 🗂️ Tablas del Proyecto COOEMSAN
### 1. Asociados
Esta tabla contiene la información básica de cada asociado, como:
- **ID del Asociado** 🆔: Número de identificación único del asociado.
- **Nombre Completo** 👤: Nombre y apellidos del asociado.
- **Fecha de Ingreso** 📅: Fecha en la que el asociado se unió a la cooperativa.
- **Contacto** 📞: Información de contacto del asociado (teléfono, email, etc.).

### 2. Aportes
Aquí se lleva el registro de los aportes financieros que cada asociado realiza a la cooperativa. Incluye:
- **ID de Aporte** 💵: Identificador único del aporte.
- **ID del Asociado** 🆔: Referencia al asociado que realizó el aporte.
- **Monto del Aporte** 💰: Cantidad aportada.
- **Fecha del Aporte** 📅: Fecha en la que se realizó el aporte.

### 3. Crédito
Esta tabla almacena información sobre los créditos solicitados por los asociados. Sus campos son:
- **ID de Crédito** 📝: Número de identificación del crédito.
- **ID del Asociado** 🆔: Referencia al asociado que solicitó el crédito.
- **Monto del Crédito** 💵: Monto solicitado en el crédito.
- **Fecha de Aprobación** ✅: Fecha en la que se aprobó el crédito.
- **Estado** 📊: Estado actual del crédito (pendiente, aprobado, cancelado, etc.).
