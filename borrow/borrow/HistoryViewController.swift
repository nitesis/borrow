//
//  SecondViewController.swift
//  borrow
//
//  Created by Raphael Brunner on 30.03.16.
//  Copyright © 2016 Raphael Brunner. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {
    
    //Mark Properties
    var borrows:[BorrowElement] = [BorrowElement]()

    override func viewDidLoad() {
        super.viewDidLoad()
        loadBorrowElements()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView)  -> Int {
        return 1;
    }
    
    func loadBorrowElements(){
        //fill array with elements
    }


}

