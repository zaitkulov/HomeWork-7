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

//2.Задание: Создание подклассов TrunkCar и SportCar

class Car {
    var brand: String
    var year: Int
    
    init(brand: String, year: Int) {
        self.brand = brand
        self.year = year
    }
    func startEngine() {
        print ("Двигатель запущен")
    }
}
class TrunkCar: Car {
    var cargoCapacity: Int

    init(brand: String, year: Int, cargoCapacity: Int) {
        self.cargoCapacity = cargoCapacity
        super.init(brand: brand, year: year)
    }
    func loadCargo() {
        print("Грузовик загружен")
    }
}
class SportCar: Car {
    var maxSpeed: Int
    
    init(brand: String, year: Int, maxSpeed: Int) {
        self.maxSpeed = maxSpeed
        super.init(brand: brand, year: year)
    }
    func accelerate() {
        print ("Разгон до максимальной скорости")
    }
}
let trunkCar = TrunkCar(brand: "Volvo", year: 2018, cargoCapacity: 40)
trunkCar.startEngine()
trunkCar.loadCargo()
print("Грузоподъемность: \(trunkCar.cargoCapacity) кг")

let sportCar = SportCar(brand: "Спорткар", year: 2022, maxSpeed: 3000)
sportCar.startEngine()
sportCar.accelerate()
print("Максимальная скорость: \(sportCar.maxSpeed) км/ч")

