//
//  Usuario.swift
//  RastreadorCovid
//
//  Created by Miguel Ángel Gragera García on 01/12/2020.
//  Copyright © 2020 Miguel Ángel Gragera García. All rights reserved.
//

import UIKit

class Usuario: NSObject {

    var email: String
    var password:String
    //var imagen : UIImage

    
    init(email:String,password:String) {
        self.email = email
        self.password = password
    }
}
