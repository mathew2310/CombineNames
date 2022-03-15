//
//  ViewController.swift
//  CombineNames
//
//  Created by admin on 15/03/2022.
//

import UIKit



class ViewController: UIViewController {
    
    
    var employees: [Employee] = []
    func fullName () {
        let e1 = Employee(firstName: "Cynthia", lastName: "Brown")
        let e2 = Employee(firstName: "Jack", lastName: "Reed")
        let e3 = Employee(firstName: "Jadon", lastName: "Sancho")
        let e4 = Employee(firstName: "Declan", lastName: "Rice")
        let e5 = Employee(firstName: "Lionel", lastName: "Messi")
        
        
        employees = [e1,e2,e3,e4,e5]
        

        
        let output = employees.reduce(""){partialResult, name in
            return partialResult + name.firstName + name.lastName + ""
        }
        print(output)
        }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        fullName()
    }

    

}

struct Employee {
    var firstName: String
    var lastName: String
    
    
    
}


    


    //func reduce<employees>(_initialResult: employees, _  nextPartialResult: (employees, Employee) throws -> employees) rethrows -> employees

//map() will take a value out of its container, transform it using the code you specify, then put it back in its container. compactMap() does the same thing, but if your transformation returns an optional it will be unwrapped and have any nil values discarded.

// reduce combine all items in a collection to create a single new value. So, the reduce function takes two arguments. One is an initial value which is used to store the initial value or the value or result returned by the closure from each iteration.

//sorted() and sorted(by:) has the same functionality as sort() and sort(by:) . The only difference is that they return the new sorted elements of the sequence instead of modifying the original array

//filter is a higher-order function that processes a data structure (usually a list) in some order to produce a new data structure containing exactly those elements of the original data structure for which a given predicate returns the boolean value true .

//Higher order functions are simply functions that operate on other functions by either taking a function as an argument, or returning a function.

