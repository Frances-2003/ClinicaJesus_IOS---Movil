//
//  DoctorDTO.swift
//  ClinicaJesus-iOS
//
//  Created by XCODE on 20/04/26.
// jorge@gmail.com 12345
// paciente1@gmail.com 123456
 

import Foundation

struct DoctorDTO: Decodable {
    let id: Int
    let usuario_id: Int
    let especialidad_id: Int
    let cmp: String?
    let biografia: String?
    let usuarios: UsuarioDoctorDTO?
    let especialidades: EspecialidadDoctorDTO?
}

struct UsuarioDoctorDTO: Decodable {
    let id: Int
    let nombre: String?
    let apellido: String?
    let telefono: String?
}

struct EspecialidadDoctorDTO: Decodable {
    let id: Int
    let nombre: String?
}
