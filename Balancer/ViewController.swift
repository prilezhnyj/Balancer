//
//  ViewController.swift
//  Balancer
//
//  Created by Максим Боталов on 10.10.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Расходы"
        view.backgroundColor = .white
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gear"), style: .done, target: self, action: #selector(openSetupView))
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .done, target: self, action: #selector(openSetupView))
    }
    
    @objc private func openSetupView() {
        addNewExpense()
    }
    
    func addNewExpense() {
        let alert = UIAlertController(title: "Новый расход", message: "Введите сумму, которую потратили", preferredStyle: .alert)
        alert.addTextField { textField in
            textField.placeholder = "Введите сумму"
            textField.autocapitalizationType = .none
            textField.keyboardType = .numberPad
        }
        
        alert.addTextField { textField in
            textField.placeholder = "Добавьте комментарий"
            textField.autocapitalizationType = .none
            textField.keyboardType = .numberPad
        }
        
        let okayAction = UIAlertAction(title: "Добавить", style: .default)
        let cancelAction = UIAlertAction(title: "Отменить", style: .cancel)
        
        alert.addAction(okayAction)
        alert.addAction(cancelAction)
        
        present(alert, animated: true)
    }
}

