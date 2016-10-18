//
//  ViewController2ViewController.swift
//  MultiplesActividades
//
//  Created by Isaac Mac on 30/9/16.
//  Copyright (c) 2016 Isaac Mac. All rights reserved.
//

import UIKit

class ViewController2ViewController: UIViewController {
    
    var personaa = Persona()

    override func viewDidLoad() {
        super.viewDidLoad()
        println(personaa)
        
        labelNombre.text = personaa.getNombre()
        labelEdad.text = String(personaa.getEdad())
        labelSexo.text = personaa.getSexo() ? "hombre" : "mujer"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var labelNombre: UILabel!
    @IBOutlet var labelEdad: UILabel!
    @IBOutlet var labelSexo: UILabel!
}
