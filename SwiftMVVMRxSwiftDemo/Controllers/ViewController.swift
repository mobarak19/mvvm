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
    var userList: [User] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.frame = view.bounds
        view.addSubview(tableView)
       
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        userDataObserver()
    }
    
    func userDataObserver(){
        
        //        userVM.getAllUser().subscribe { event in
        //            if let userlist = event.element{
        //                print(userlist.count)
        //            }
        //        }.disposed(by: userVM.disposeBag)
        
        userVM.getAllUser().subscribe(
            
            onNext: { elements in
                self.userList = elements
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                    print(elements)
                }
            }, onError:{ error in
                
                print(error)
                
            }
            
        ).disposed(by: userVM.disposeBag)
    }
}

extension ViewController: UITableViewDelegate,UITableViewDataSource{
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return userList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! UITableViewCell
        cell.textLabel?.text = userList[indexPath.row].name
        return cell
    }
    
    
    
}

