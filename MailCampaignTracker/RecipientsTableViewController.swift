//
//  RecipientsTableViewController.swift
//  MailCampaignTracker
//
//  Created by Mark Stuver on 10/21/14.
//  Copyright (c) 2014 Mark Stuver. All rights reserved.
//

import UIKit


class RecipientsTableViewController: UITableViewController, RecipientAddDelegate {

    
    
    // Create Instance of Group to receive the current group from the GroupDetailVC
    var currentGroup:Group?
    var currentRecipient:Recipient?
    var currentString:String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       let indexPath = self.tableView.indexPathForSelectedRow()
       var currentRecipient = grabCurrentGroupsRecipients()
        
        
        self.title = "Recipients"
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.leftBarButtonItem = self.editButtonItem()
    }
    
    
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    /// Call delegate method from EditVC
    func recipientAddButtonPressed(controller: RecipientEditViewController, addedRecipient:String) {
        
        println("recipientAddButtomPressed has reached the RecipientTBVC")
        
        self.currentString = addedRecipient
        
        controller.navigationController?.popViewControllerAnimated(true)
    }


    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // Call helper fuction to grab recipients array
        return grabCurrentGroupsRecipients().count
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("RCell", forIndexPath: indexPath) as UITableViewCell
        
        let currentGroupsRecipients = grabCurrentGroupsRecipients()
        

        cell.textLabel.text = currentString//currentGroupsRecipients[indexPath.row].name
        
        let contactFullName = "\(currentGroupsRecipients[indexPath.row].firstName) \(currentGroupsRecipients[indexPath.row].lastName)"
        
        cell.detailTextLabel?.text = contactFullName
        
        return cell
    }
    
   
    
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    

    
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.destinationViewController.isKindOfClass(RecipientDetailViewController) {
            
            var destinationVC = segue.destinationViewController as RecipientDetailViewController
            
            if segue.identifier == "RecipientDetail" {
                
                let currentIndexPath = self.tableView.indexPathForSelectedRow()
                
                let currentGroupOfRecipients:[Recipient] = grabCurrentGroupsRecipients()
                
                let currentRecipient = currentGroupOfRecipients[currentIndexPath!.row] as Recipient
                
                destinationVC.currentRecipient = currentRecipient
            }

        }
        
        else if segue.destinationViewController.isKindOfClass(RecipientEditViewController) {
            
            if segue.identifier == "AddRecipient" {
                
            var destinationVC = segue.destinationViewController as RecipientEditViewController
                
                destinationVC.delegateAdd = self
                
                println("Yeah!! Look at me!!")
                
                /// Set the destinationVC's delegate to self (this VC)
               // destinationVC.delegateAdd = self
                
               //                let currentIndexPath = self.tableView.indexPathForSelectedRow()
//                
//                let currentGroupOfRecipients:[Recipient] = grabCurrentGroupsRecipients()
//                
//                let currentRecipient = currentGroupOfRecipients[currentIndexPath!.row] as Recipient
//                
//                destinationVC.currentRecipient = currentRecipient
            
        
            }
    
        }
    
    }

    

    
    
    
    //MARK: - Helper Functions
    
    // This function is called to get the currentGroup's recipient array
    func grabCurrentGroupsRecipients() -> [Recipient] {
      
        var currentRecipients = currentGroup?.recipients
        
        if currentRecipients != nil {
            
            return currentRecipients!
        }
        else {
        
            var tempRecipient = [Recipient]()
            
            return tempRecipient
        }
    }
    
    
}