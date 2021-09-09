//
//  ViewController.swift
//  Test
//
//  Created by Picho Man on 9/8/21.
//  Copyright © 2021 Picho Man. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //objeto operaciones
    let operaciones = operations()
    
    //Declaracion outlets
    
    @IBOutlet weak var display: UITextField!
    
    
    
    //Eventos botones
    @IBAction func one(_ sender: Any) {
        display.insertText("1")
    }
    
    @IBAction func two(_ sender: Any) {
        display.insertText("2")
    }
  
    @IBAction func three(_ sender: Any) {
        display.insertText("3")
    }
  
    @IBAction func four(_ sender: Any) {
        display.insertText("4")
    }
    
    @IBAction func five(_ sender: Any) {
        display.insertText("5")
    }
    
    @IBAction func six(_ sender: Any) {
        display.insertText("6")
    }
    
    @IBAction func seven(_ sender: Any) {
        display.insertText("7")
    }

    @IBAction func eight(_ sender: Any) {
        display.insertText("8")
    }
  
    @IBAction func nine(_ sender: Any) {
        display.insertText("9")
    }
    
    @IBAction func zero(_ sender: Any) {
        display.insertText("0")
    }
    
    @IBAction func dot(_ sender: Any) {
        display.insertText(".")
    }
   
    
    //Accion igual para realizar operaciones
    @IBAction func equal(_ sender: Any) {
        let stringOp = display.text
        display.text = ""
        
        //Separamos cadena
        let arrayOp = stringOp!.components(separatedBy: ["+", "x", "-", "/"])
        
        //Verifica que se tiene una operacion con mas de 1 elemento
        if arrayOp.count >= 2 {
            //definimos num1 y num2
            let num1 = Double(arrayOp[0])
            let num2 = Double(arrayOp[1])
            
            
            //Se valida que la operacion no tenga nulos
            if (num1 != nil) && (num2 != nil){
            
                //Si el signo es mas
                if stringOp!.contains("+") {
                    
                    
                    //Metodo Suma
                    let res = operaciones.suma(num1: num1!, num2: num2!)
                    //print ("SUMA")
                                   
                    display.insertText(String(res))
                   
                }
                
                //Si el signo es menos
                else if stringOp!.contains("-") {
                    
                    //Metodo resta
                    let res = operaciones.resta(num1: num1!, num2: num2!)
                    
                    display.insertText(String(res))
                }
                
                //Si el signo es por
                else if stringOp!.contains("x") {
                    
                    //Metodo multi
                    let res = operaciones.multi(num1: num1!, num2: num2!)
                    
                    display.insertText(String(res))
                }
                
                //Si el signo es entre
                else if stringOp!.contains("/") {
                    
                    //Metodo resta
                    let res = operaciones.div(num1: num1!, num2: num2!)
                    
                    display.insertText(String(res))
                }
                
            }
            
            else{
                display.text = "ERROR"
            }
        }
        
        else if arrayOp.count == 1{
            
            let num1 = Double(arrayOp[0])
            display.insertText(String(num1!))
            
        }
            
        else{
            display.text = "ERROR"
        }

    }
    
    
    //Botones de operaciones
    @IBAction func add(_ sender: Any) {
        display.insertText("+")
    }
    
    
    @IBAction func minus(_ sender: Any) {
        display.insertText("-")
    }
    
    @IBAction func by(_ sender: Any) {
        display.insertText("x")
    }
    
    
    @IBAction func divide(_ sender: Any) {
        display.insertText("/")
    }
    
    //boton borrar
    @IBAction func erase(_ sender: Any) {
        display.text = ""
    }
    
}

