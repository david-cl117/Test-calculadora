//
//  testModel.swift
//  Test
//
//  Created by Picho Man on 9/8/21.
//  Copyright © 2021 Picho Man. All rights reserved.
//

import Foundation

class operations {
    
    var resultado: Double = 0.0
    
    //Metodo suma
    func suma (num1: Double, num2: Double) -> Double {
        
        resultado = num1 + num2
        
        return resultado
    }
    
    //Metodo resta
    func resta (num1: Double, num2: Double) -> Double {
        
        resultado = num1 - num2
        
        return resultado
    }
    
    //Metodo multi
    func multi (num1: Double, num2: Double) -> Double {
        
        resultado = num1 * num2
        
        return resultado
    }
    
    //Metodo div
    func div (num1: Double, num2: Double) -> Double {
        
        resultado = num1 / num2
        
        return resultado
    }
}
