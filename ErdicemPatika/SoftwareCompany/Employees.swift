//
//  Employees.swift
//  ErdicemPatika
//
//  Created by erdicem on 13.11.2022.
//

import Foundation

struct Employees: WorkerWages{

    var employeerName:String? = ""
    var employeerAge:Int? = 0
    var employeerWages: Double? = 0.0
    var employeerMariatalStatus: MariatalStatusType? = MariatalStatusType.single
    var employeerBalance: Double? = 0.0
    var employeerType: WorkerType? = WorkerType.jr
    
    enum  MariatalStatusType {
        case married
        case single
    }
    
    enum WorkerType {
        case jr
        case mid
        case sr
    }
    
    mutating func calculateWages(age:Int, workerType:WorkerType) {
        if workerType == .jr {
            self.employeerWages = Double(age) / 1.5 * 10
        }
        else if workerType == .mid {
            self.employeerWages = Double(age) / 2.5 * 10
        }
        else {
            self.employeerWages = Double(age) / 3.5 * 10
        }
    }
    
    func getWorkerBalance() -> Double? {
        return self.employeerBalance
    }
}
