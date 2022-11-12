//
//  Company.swift
//  ErdicemPatika
//
//  Created by erdicem on 12.11.2022.
//

import Foundation


class Company: CompanyPayments{

    let companyName:String?
    var employee = [Employees]()
    var totalBudget:Double?
    let foundationDate:String?
    var wages:Double?
    
    init(companyName: String?, employee: [Employees] = [Employees](), totalBudget: Double?, foundationDate: String?) {
        self.companyName = companyName
        self.employee = employee
        self.totalBudget = totalBudget
        self.foundationDate = foundationDate
    }
    
     func addEmployer( worker: Employees){
        self.employee.append(worker)
    }
    
     func workerPayments( worker: Employees) {
         self.totalBudget! -= worker.employeerWages!
    }
    
    func getCompanyBalance() -> Double {
        return self.totalBudget!
    }
}






