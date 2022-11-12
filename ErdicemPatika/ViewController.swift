//
//  ViewController.swift
//  ErdicemPatika
//
//  Created by erdicem on 11.11.2022.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Creating Workers
        
        var mehmet = Employees()
        mehmet.employeerAge = 20
        mehmet.employeerMariatalStatus = .single
        mehmet.employeerName = "Mehmet"
        mehmet.employeerType = .jr
        mehmet.employeerWages = 1000
        mehmet.calculateWages(age:mehmet.employeerAge!, workerType: .jr)
        
        
        var ali = Employees()
        ali.employeerAge = 30
        ali.employeerMariatalStatus = .married
        ali.employeerName = "Ali"
        ali.employeerType = .mid
        ali.calculateWages(age:ali.employeerAge!, workerType: .mid)
        
        
        var cem = Employees()
        cem.employeerAge = 40
        cem.employeerMariatalStatus = .married
        cem.employeerName = "Cem"
        cem.employeerType = .sr
        cem.calculateWages(age:cem.employeerAge!, workerType: .sr)
        
        
        // Creating Company
        let company = Company(companyName: "Software", totalBudget: 1000.000000, foundationDate: "1997")
        company.addEmployer(worker: mehmet)
        company.addEmployer(worker: ali)
        company.addEmployer(worker: cem)
        print("Company Name: \(String(describing: company.companyName!))")
        print("Company Budget: \(String(describing: company.totalBudget!))")
        print("Company Foundation Date: \(String(describing: company.foundationDate!))")
       
        
        // List of Workers
        for i in company.employee {
            print(i)
        }
        
        // Payment Wages
        print("Payment Wages ............")
        company.workerPayments(worker: mehmet)
        company.workerPayments(worker: ali)
        company.workerPayments(worker: cem)
        
        print("After Payment Wages, Total Budget of Company: \(String(format: "%.3f", company.getCompanyBalance())) \n")
        
        // Worker Info
        print("//////// Worker Info //////// \n")
        
        for i in company.employee {
            print("Name:\(i.employeerName!) Wages:\(i.employeerWages!) Type:\(i.employeerType!) Age:\(i.employeerAge!) MariatalStatus:\(i.employeerMariatalStatus!)")
        }
        
    }
    
}
    


