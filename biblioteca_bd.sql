-- Crear base de datos con MySQL
CREATE DATABASE SistemaGestionResiduos;

USE SistemaGestionResiduos;

-- Crear tabla Residuos
CREATE TABLE Waste (
    waste_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    waste_type TEXT NOT NULL,
    waste_description TEXT,
    waste_quantity TEXT,  
    waste_collection_date TEXT
);

-- Crear tabla Contenedor
CREATE TABLE Container (
    container_id INT AUTO_INCREMENT PRIMARY KEY,
    container_location TEXT NOT NULL,  
    container_capacity TEXT
    container_fill_level TEXT  
    container_last_emptying_date TEXT
);

-- Crear tabla Ruta de Recolección
CREATE TABLE CollectionRoute (
    route_id INT AUTO_INCREMENT PRIMARY KEY,
    route_start_point TEXT),  
    route_end_point TEXT,  
    route_schedule TEXT, 
    route_vehicles TEXT 
);

-- Crear tabla Vehículo de Recolección
CREATE TABLE CollectionVehicle (
    vehicle_id INT AUTO_INCREMENT PRIMARY KEY,
    vehicle_type TEXT(100),
    vehicle_capacity,  
    vehicle_status (50),
    vehicle_last_maintenance_date DATE
);

-- Crear tabla Mantenimiento
CREATE TABLE Maintenance (
    maintenance_id INT AUTO_INCREMENT PRIMARY KEY,
    maintenance_type TEXT(100),
    maintenance_date DATE NOT NULL,
    maintenance_description TEXT,
    maintenance_container_id INT, 
    maintenance_vehicle_id INT, 
    FOREIGN KEY (maintenance_container_id) REFERENCES Container(container_id),
    FOREIGN KEY (maintenance_vehicle_id) REFERENCES CollectionVehicle(vehicle_id)
);

-- Crear tabla Usuario
CREATE TABLE User (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    user_name TEXT(255) NOT NULL,
    user_email TEXT(255) UNIQUE NOT NULL,
    user_phone TEXT(20),
    user_role TEXT(50)  
);

-- Crear tabla Reporte
CREATE TABLE Report (
    report_id INT AUTO_INCREMENT PRIMARY KEY,
    report_date TEXT NOT NULL,
    report_description TEXT NOT NULL,
    report_status TEXT(50),  
    report_user_id INT,
    FOREIGN KEY (report_user_id) REFERENCES User(user_id)
);
