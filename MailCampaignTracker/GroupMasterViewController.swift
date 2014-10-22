//
//  GroupMasterViewController.swift
//  MailCampaignTracker
//
//  Created by Mark Stuver on 10/21/14.
//  Copyright (c) 2014 Mark Stuver. All rights reserved.
//

import UIKit

class GroupMasterViewController: UITableViewController {

// Part of Original Boiler-Plate Code
    var groupDetailViewController: GroupDetailViewController? = nil
    var objects = NSMutableArray()
    
// Create an array of Campaign Groups
    var mailCampaigns = Groups.createGroup()


    override func awakeFromNib() {
        super.awakeFromNib()
        self.clearsSelectionOnViewWillAppear = false
        self.preferredContentSize = CGSize(width: 320.0, height: 600.0)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Set TableView's Row Height
        self.tableView.rowHeight = 70.0
        
        
        self.navigationItem.leftBarButtonItem = self.editButtonItem()

        let addButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "insertNewObject:")
        self.navigationItem.rightBarButtonItem = addButton
        let controllers = self.splitViewController!.viewControllers
        self.groupDetailViewController = controllers[controllers.count-1].topViewController as? GroupDetailViewController
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

// INSERT NEW OBJECT
    func insertNewObject(sender: AnyObject) {
        objects.insertObject(NSDate(), atIndex: 0)
        let indexPath = NSIndexPath(forRow: 0, inSection: 0)
        self.tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
    }


// MARK: - Table View

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mailCampaigns.count //objects.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell

        //let object = objects[indexPath.row] as NSDate
        //cell.textLabel.text = object.description
        
        // Create instance and set to the current campaign
        let campaign = mailCampaigns[indexPath.row] as Campaign
        
        // Set cell Labels
        cell.textLabel.text = campaign.title
        cell.detailTextLabel?.text = "Date Mailed: \(campaign.dateGroupCreated)"
        
        return cell
    }

    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            objects.removeObjectAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
        }
    }
    
    
// MARK: - Segues
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow() {
                
                //let object = objects[indexPath.row] as NSDate
                
                let campaign = mailCampaigns[indexPath.row] as Campaign
                
                let controller = (segue.destinationViewController as UINavigationController).topViewController as GroupDetailViewController
                controller.campaignItem = campaign
                controller.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem()
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }



}

