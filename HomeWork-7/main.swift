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

//3.Расширение enum с действиями

enum CarAction {
    case start
    case stop
    case accelerate
    case brake
    case loadCargo
    case unloadCargo
    case activateSportMode
    case deactivateSportMode
}

let trunkCarAction: CarAction = .loadCargo
let sportCarAction: CarAction = .activateSportMode


//4.Переопределение методов в подклассах

class Car {
    var brand: String
    
    init(brand: String) {
        self.brand = brand
    }
    func performAction() {
        print ("Общее действие для всех автомобилей")
    }
}
class SportCar: Car {
    var maxSpeed: Int
    init(brand: String, maxSpeed: Int) {
        self.maxSpeed = maxSpeed
        super.init(brand: brand)
    }
    override func performAction() {
        print("Ускорение на спортивном автомобиле \(brand) до \(maxSpeed) км/ч")
    }
}
class TrunkCar: Car {
    var cargoCapacity: Int
    
    init(brand: String, cargoCapacity: Int) {
        self.cargoCapacity = cargoCapacity
        super.init(brand: brand)
    }
    override func performAction() {
        print ("Погрузка в фуру фирмы \(brand) с максимальной грузоподъемностью \(cargoCapacity) тонн")
    }
}
let trunkCar = TrunkCar(brand: "Mercedes", cargoCapacity: 40)
let sportCar = SportCar(brand: "Aston Martin", maxSpeed: 519)

trunkCar.performAction()
sportCar.performAction()

//5.Задание: Создание объектов и выполнение действий

enum CarAction {
    case startEngine
    case stopEngine
    case loadCargo(volume: Int)
    case unloadCargo(volume: Int)
}
class Car {
    var brand: String
    var year: Int
    
    init(brand: String, year: Int) {
        self.brand = brand
        self.year = year
    }
    func displayProperties() {
        print ("Марка \(brand), год \(year)")
    }
}
class TrunkCar: Car {
    var cargoVolume: Int
    
    init(brand: String, year: Int, cargoVolume: Int) {
        self.cargoVolume = cargoVolume
        super.init(brand: brand, year: year)
    }
    override func displayProperties() {
        super.displayProperties()
        print ("Объем багажника - \(cargoVolume) тонн")
    }
    func performAction(for action: CarAction) {
        switch action {
        case.startEngine:
            print("Запуск двигателя грузовика")
        case.stopEngine:
            print("Остановка двигателя грузовика")
        case.loadCargo(let volume):
            cargoVolume += volume
            print("В грузовик погрузили \(volume) тонн")
        case.unloadCargo(let volume):
            cargoVolume -= volume
            print("Из грузовика выгрузили \(volume) тонн")
        }
    }
}
    class SportCar: Car {
        var isActiveSportMode: Bool
        
        init(brand: String, year: Int, isActiveSportMode: Bool) {
            self.isActiveSportMode = isActiveSportMode
            super.init(brand: brand, year: year)
        }
        override func displayProperties() {
            super.displayProperties()
            let activeSportMode = isActiveSportMode ? "SPORT MODE - ON" : "SPORT MODE - OFF"
            print (activeSportMode)
        }
        func performAction(for action: CarAction) {
            switch action {
            case.startEngine:
                print("Запуск двигателя спорткара")
            case.stopEngine:
                print("Остановка двигателя спорткара")
            default:
                print("Эта функция не доступна в данном автомобиле")
            }
        }
    }
    let trunkCar = TrunkCar(brand: "SCANIA", year: 2020, cargoVolume: 25)
let sportCar = SportCar(brand: "Nissan GTR", year: 2022, isActiveSportMode: true)

trunkCar.performAction(for: .startEngine)
trunkCar.performAction(for: .loadCargo(volume: 15))
trunkCar.displayProperties()

sportCar.performAction(for: .startEngine)
sportCar.displayProperties()


