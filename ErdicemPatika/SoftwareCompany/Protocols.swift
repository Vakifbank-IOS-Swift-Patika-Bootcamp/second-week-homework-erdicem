//
//  Protocols.swift
//  ErdicemPatika
//
//  Created by erdicem on 13.11.2022.
//

import Foundation

protocol WorkerWages {
    mutating func calculateWages(age:Int, workerType:Employees.WorkerType)
    func getWorkerBalance() -> Double?
}

protocol CompanyPayments {
    func workerPayments( worker: Employees)
    func getCompanyBalance() -> Double
}
