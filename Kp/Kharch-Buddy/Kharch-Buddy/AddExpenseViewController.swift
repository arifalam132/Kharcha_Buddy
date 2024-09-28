//
//  AddExpenseViewController.swift
//  Kharch-Buddy
//
//  Created by Arif Alam on 26/05/24.
//

import UIKit

class AddExpenseViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var amountTextField: UITextField!
    
    var expense: Expense?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        guard let name = nameTextField.text, !name.isEmpty,
              let amountText = amountTextField.text, let amount = Double(amountText) else {
            // Show an alert if the input is invalid
            return
        }
        
        expense = Expense(name: name, amount: amount, date: Date())
        performSegue(withIdentifier: "unwindToMainViewController", sender: self)
    }
}

