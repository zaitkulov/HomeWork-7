//
//  main.swift
//  HomeWork-7
//
//  Created by Артем Заиткулов on 15.12.2023.
//

import Foundation

//1.Задание: Создание класса Car

class Car {
    var brand: String
    var model: String
    var year: Int
    
    init(brand: String, model: String, year: Int) {
        self.brand = brand
        self.model = model
        self.year = year
    }
    func performAction() {
        print ("Автомобиль выполняет действие")
    }
}

let myCar = Car(brand: "Tesla", model: "Model X", year: 2022)
print ("Моя машина - \(myCar.brand) \(myCar.model) \(myCar.year) года")

myCar.performAction()


