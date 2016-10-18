//
//  ViewController.swift
//  MultiplesActividades
//
//  Created by Isaac Mac on 29/9/16.
//  Copyright (c) 2016 Isaac Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var persona : Persona?
    var nombre : String?
    var edad : Int?
    var sexo : Bool = true
    var x:String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        persona = Persona()
        
        labelEstado.text = "N \(persona?.getNombre()) E:\(persona?.getEdad())  S: \(persona?.getSexo())"
        
        print(edad)
        print(nombre)
        print(sexo)
        
        outletStepper.wraps = true
        outletStepper.autorepeat = true
        outletStepper.maximumValue = 100
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var vista:ViewController2ViewController = segue.destinationViewController as! ViewController2ViewController
        
        vista.personaa = persona!
    }

    @IBOutlet var labelEdad: UILabel!
    @IBOutlet var outletStepper: UIStepper!
    @IBOutlet var textNombre: UITextField!
    @IBOutlet var labelSexo: UILabel!
    @IBOutlet var outletSegmented: UISegmentedControl!
    @IBOutlet var labelEstado: UILabel!
    
    @IBAction func segmentedSexo(sender: UISegmentedControl) {
        switch outletSegmented.selectedSegmentIndex
        {
        case 0:
            labelSexo.text = "Hombre";
            sexo = true
        case 1:
            labelSexo.text = "Mujer";
            sexo = false
        default:
            break; 
        }
    }
    
    @IBAction func stepperEdad(sender: UIStepper) {
        labelEdad.text = String(Int(sender.value))
        edad = labelEdad.text!.toInt()
    }
    
    @IBAction func botonOk(sender: UIButton) {
        nombre = textNombre.text
        persona?.setEdad(edad!)
        persona?.setNombre(nombre!)
        persona?.setSexo(sexo)
        labelEstado.text = "N: \(persona?.getNombre()) E:\(persona?.getEdad())  S: \(persona?.getSexo())"

    }
}

