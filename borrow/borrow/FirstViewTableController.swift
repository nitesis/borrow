//
//  FirstViewTableControllerViewController.swift
//  borrow
//
//  Created by anilabircher on 02.06.16.
//  Copyright © 2016 Raphael Brunner. All rights reserved.
//

import UIKit
import CoreData

class FirstViewTableController: UIViewController {
    var borrows:[BorrowElement] = [BorrowElement]()
    var fetchedResultsController: NSFetchedResultsController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return borrows.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellIdentifier = "FirstTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! HistoryTableViewCell
        
        let borrow = borrows[indexPath.row]
        
        cell.name.text = borrow.borrowedBy!.name
        cell.date.text = borrow.lendDate?.description
        cell.title.text = borrow.title
        
        return cell
    }
    
    
    func loadBorrowElements(){
        let borrowsFetch = NSFetchRequest(entityName: "BorrowElement")
        borrowsFetch.predicate = NSPredicate(format: "done == true")
        let moc = (UIApplication.sharedApplication().delegate as! AppDelegate).dataController.managedObjectContext
        
        fetchedResultsController = NSFetchedResultsController(fetchRequest: borrowsFetch, managedObjectContext: moc, sectionNameKeyPath: nil, cacheName: nil)
        
        do {
            try fetchedResultsController.performFetch()
            borrows = fetchedResultsController.fetchedObjects as! [BorrowElement]
        } catch {
            fatalError("Failed to initialize FetchedResultsController: \(error)")
        }
    }
    
    
        /*
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
