//
//  ViewController.swift
//  SwiftMVVMRxSwiftDemo
//
//  Created by Genusys Inc on 6/28/22.
//

import UIKit
import RxSwift
class ViewController: UIViewController {

    let tableView = UITableView()
    
    let userVM = UserVM()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.frame = view.bounds
        view.addSubview(tableView)
        
        userVM.getAllUser().subscribe { event in
            if let userlist = event.element{
                print(userlist.count)
            }
        }.disposed(by: userVM.disposeBag)
        
    }


}

