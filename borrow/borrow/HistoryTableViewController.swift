//
//  HistoryTableViewController.swift
//  borrow
//
//  Created by Raphael Brunner on 19.05.16.
//  Copyright © 2016 Raphael Brunner. All rights reserved.
//

import UIKit
import CoreData

class HistoryViewController: UIViewController {
    
    //Mark Properties
    var borrows:[BorrowElement] = [BorrowElement]()
    var fetchedResultsController: NSFetchedResultsController!

    override func viewDidLoad() {
        super.viewDidLoad()
        loadBorrowElements()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return borrows.count
    }

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellIdentifier = "HistoryTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! HistoryTableViewCell
        
        let borrow = borrows[indexPath.row]
        
        cell.name.text = borrow.borrowedBy!.name
        cell.date.text = borrow.lendDate?.description
        cell.title.text = borrow.title

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func loadBorrowElements(){
        let borrowsFetch = NSFetchRequest(entityName: "BorrowElement")
        borrowsFetch.predicate = NSPredicate(format: "done == false")
        let moc = (UIApplication.sharedApplication().delegate as! AppDelegate).dataController.managedObjectContext
        
        fetchedResultsController = NSFetchedResultsController(fetchRequest: borrowsFetch, managedObjectContext: moc, sectionNameKeyPath: nil, cacheName: nil)
        
        do {
            try fetchedResultsController.performFetch()
            borrows = fetchedResultsController.fetchedObjects as! [BorrowElement]
        } catch {
            fatalError("Failed to initialize FetchedResultsController: \(error)")
        }
        
        //fill array with elements
    }

}
