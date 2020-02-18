//
//  ViewController.swift
//  Todobox
//
//  Created by USER on 12/02/2020.
//  Copyright © 2020 USER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.tableView.backgroundColor = UIColor.red
    }
    
    //TODO FIX
    //TODO FIX
    // n번째 섹션에 몇 개의 row가 존재하는지를 반환
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) {
        return 100
    }
    
    // n번째 섹션의 m번째 row를 그리는데 필요한 셀 반환
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) {
        let cell = UITableViewCell()
        cell.textField?.text = "\(indexPath.row)"
        return cell
    }
    
    
}

