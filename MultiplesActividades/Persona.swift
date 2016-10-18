//
//  Persona.swift
//  MultiplesActividades
//
//  Created by Isaac Mac on 29/9/16.
//  Copyright (c) 2016 Isaac Mac. All rights reserved.
//

import UIKit

class Persona{
    
    var nombre:String
    var edad:Int
    var sexo: Bool
    
    init(){
        nombre = "?"
        edad = 0
        sexo = true
    }
    
    init(nombre:String, edad:Int, sex: Bool){
        self.nombre = nombre
        self.edad = edad
        self.sexo = sex
    }
    
    func getNombre() -> String{
        return self.nombre
    }
    
    func getEdad() -> Int{
        return self.edad
    }
    func getSexo() -> Bool{
        return self.sexo
    }
    
    func setNombre(nombre: String){
        self.nombre = nombre
    }
    
    func setEdad(edad: Int){
        self.edad = edad
    }
    
    func setSexo(sexo: Bool){
        self.sexo = sexo
    }
   
}
