//
//  BienvenidoViewController.swift
//  RastreadorCovid
//
//  Created by Miguel Ángel Gragera García on 01/12/2020.
//  Copyright © 2020 Miguel Ángel Gragera García. All rights reserved.
//

import UIKit

class BienvenidoViewController: UIViewController {
    @IBOutlet weak var lblUser: UILabel!
    var email :String?
    override func viewDidLoad() {
        super.viewDidLoad()
        lblUser.text = email
        // Do any additional setup after loading the view.
    }


    
    // MARK: - Navigation


    

}
