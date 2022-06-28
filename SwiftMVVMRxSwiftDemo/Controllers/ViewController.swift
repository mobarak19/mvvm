//
//  ViewController.swift
//  SwiftMVVMRxSwiftDemo
//
//  Created by Genusys Inc on 6/28/22.
//

import UIKit

class ViewController: UIViewController {

    let tableView = UITableView()
    
    let userVM = UserVM()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.frame = view.bounds
        view.addSubview(tableView)
        
        
        
    }


}

