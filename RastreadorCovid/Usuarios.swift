//
//  Usuarios.swift
//  RastreadorCovid
//
//  Created by Miguel Ángel Gragera García on 01/12/2020.
//  Copyright © 2020 Miguel Ángel Gragera García. All rights reserved.
//

import UIKit

class Usuarios: NSObject {
    var lista = [Usuario]()
    
    override init(){
        let usuario = Usuario(email: "ucam", password: "admin")
        lista.append(usuario)
        
        
    }
    
    func idexOf(email:String) -> Int{
        
        return lista.firstIndex(where: {$0.email == email})!
        
    }
    
    func find(email:String)-> Usuario{
        return lista.first(where: {$0.email == email})!
    }
    
    func count() -> Int{
        return lista.count
    }
    
    func login(email:String,password: String)-> Bool{
        
        if( lista.first(where: {($0.email == email) && ($0.password == password)}) != nil){
            return true
        }
        
    
        return false
    }
    
}


