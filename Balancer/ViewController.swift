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
        print(#function)
    }
}

