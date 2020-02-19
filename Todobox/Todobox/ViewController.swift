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
    
    // n번째 섹션에 몇 개의 row가 존재하는지를 반환
    /*
     테이블 뷰는 섹션과 row로 구성.
     테이블 뷰는 한 줄에 row 하나가 보여지고, row를 묶는 단위로 섹션을 사용.
     기본적으로는 하나의 섹션이 제공.
     하나의 섹션만 사용하는 경우 section 파라미터를 비교해서 몇 번째 섹션인지를 체크하지 않아도 됨.
     100개의 row가 있다고 가정.
    */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    // n번째 섹션의 m번째 row를 그리는데 필요한 셀 반환
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }
    
}

