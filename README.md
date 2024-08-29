Integrantes/Autor
Mariana Moreno Castillo🐸
Valentina solarte gutierrez🦝

Residuos (Waste)

    waste_id (PK): Identificador único del residuo (Número o Alfanumérico).
    waste_type: Tipo de residuo (Texto, por ejemplo, papel, plástico, orgánico).
    waste_description: Descripción del residuo (Texto).
    waste_quantity: Cantidad de residuo (Número o Texto según la unidad de medida).
    waste_collection_date: Fecha en la que se recolectó el residuo (Fecha).

//Contenedor (Container)

    container_id (PK): Identificador único del contenedor (Número o Alfanumérico).
    container_location: Ubicación del contenedor (Texto o Geolocalización).
    container_capacity: Capacidad del contenedor (Número, en litros o metros cúbicos).
    container_fill_level: Nivel de llenado actual del contenedor (Número o Porcentaje).
    container_last_emptying_date: Fecha del último vaciado del contenedor (Fecha).

//Ruta de Recolección (CollectionRoute)

    route_id (PK): Identificador único de la ruta (Número o Alfanumérico).
    route_start_point: Punto de inicio de la ruta (Texto o Geolocalización).
    route_end_point: Punto final de la ruta (Texto o Geolocalización).
    route_schedule: Horario de la ruta (Texto o Fecha y Hora).
    route_vehicles: Vehículos asignados a la ruta (Texto o Lista de Identificadores de Vehículos).

//Vehículo de Recolección (CollectionVehicle)

    vehicle_id (PK): Identificador único del vehículo (Número o Alfanumérico).
    vehicle_type: Tipo de vehículo (Texto, por ejemplo, camión de carga).
    vehicle_capacity: Capacidad del vehículo (Número, en litros o metros cúbicos).
    vehicle_status: Estado del vehículo (Texto, por ejemplo, operativo, en mantenimiento).
    vehicle_last_maintenance_date: Fecha de la última mantención (Fecha).

//Mantenimiento (Maintenance)

    maintenance_id (PK): Identificador único del mantenimiento (Número o Alfanumérico).
    maintenance_type: Tipo de mantenimiento (Texto, por ejemplo, limpieza, reparación).
    maintenance_date: Fecha en que se realizó el mantenimiento (Fecha).
    maintenance_description: Descripción del mantenimiento realizado (Texto).
    maintenance_container_id (FK): Identificador del contenedor relacionado (Número o Alfanumérico, FK a Container).
    maintenance_vehicle_id (FK): Identificador del vehículo relacionado (Número o Alfanumérico, FK a CollectionVehicle - vehicle_id).

// Usuario (User)

    user_id (PK): Identificador único del usuario (Número o Alfanumérico).
    user_name: Nombre del usuario (Texto).
    user_email: Correo electrónico del usuario (Texto).
    user_phone: Teléfono del usuario (Texto).
    user_role: Rol del usuario (Texto, por ejemplo, ciudadano, administrador).

//Reporte (Report) será para un dashboard

    report_id (PK): Identificador único del reporte (Número o Alfanumérico).
    report_date: Fecha del reporte (Fecha).
    report_description: Descripción del problema o incidente reportado (Texto).
    report_status: Estado del reporte (Texto, por ejemplo, pendiente, resuelto).
    report_user_id (FK): Identificador del usuario que hizo el reporte (Número o Alfanumérico, FK a User).

________________________________________________________________________________________

RELACIONES ENTRE LAS ENTIDADES:

🌼🗑.Residuos se asocian a Contenedores mediante la cantidad de residuos y la fecha de recolección.
🌼🗑.Contenedores están asociados a Rutas de Recolección y Vehículos de Recolección para su vaciado.
🌼🗑.Vehículos de Recolección tienen registros de Mantenimiento.
🌼🗑.Usuarios pueden hacer Reportes sobre problemas o incidencias relacionadas con residuos y contenedores.
________________________________________________________________________________________

DESCRIPCIÓN DEL PROYECTO:
🌼🗑título del proyecto: ¨Sistema de gestión de residuos sólidos inteligente¨
objetivo: desarollar un sistema de informacion que ayude a las municipalidades a gestionar de manera eficiente
los residuos sólidos, reducir la contaminación ambiental y promover la conciencia ciudadana sobre la importancia
de la separación y reciclaje de residuos.
este proyecto tiene la funcionalidad de generar un impacto positivo en la comunidad y el medio ambiente, y es 
una excelente oportunidad para aplicar las habilidades de programación y desarollo de software.

:)


