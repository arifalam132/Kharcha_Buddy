//
//  MainViewController.swift
//  Kharch-Buddy
//
//  Created by Arif Alam on 26/05/24.
//

import UIKit

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var expenses: [Expense] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    @IBAction func unwindToMainViewController(segue: UIStoryboardSegue) {
        if let sourceVC = segue.source as? AddExpenseViewController, let expense = sourceVC.expense {
            expenses.append(expense)
            tableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return expenses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ExpenseCell", for: indexPath)
        let expense = expenses[indexPath.row]
        cell.textLabel?.text = expense.name
        cell.detailTextLabel?.text = String(format: "$%.2f", expense.amount)
        return cell
    }
}

