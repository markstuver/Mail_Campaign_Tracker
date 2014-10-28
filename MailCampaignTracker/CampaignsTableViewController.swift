//
//  CampaignsTableViewController.swift
//  MailCampaignTracker
//
//  Created by Mark Stuver on 10/25/14.
//  Copyright (c) 2014 Mark Stuver. All rights reserved.
//

import UIKit

class CampaignsTableViewController: UITableViewController {
    
    // Create Instance of Group to receive the current group from the GroupDetailVC
    var currentGroup:Group?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Campaigns"
        
        var currentCampaign = grabCurrentGroupsCampaigns()

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return grabCurrentGroupsCampaigns().count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CampaignCell", forIndexPath: indexPath) as UITableViewCell
    
        let currentGroupsCampaigns = grabCurrentGroupsCampaigns()
    
        cell.textLabel.text = currentGroupsCampaigns[indexPath.row].title
    
   // let contactFullName = "\(currentGroupsCampaigns[indexPath.row].firstName) \(currentGroupsCampaigns[indexPath.row].lastName)"
    
        cell.detailTextLabel?.text = currentGroupsCampaigns[indexPath.row].dateSent
    

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
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
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */


    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var destinationVC = segue.destinationViewController as CampaignDetailViewController
        
        if segue.identifier == "CampaignDetail" {
            
            if destinationVC.isKindOfClass(CampaignDetailViewController) {
                
                let currentIndexPath = self.tableView.indexPathForSelectedRow()
                
                let currentGroupOfCampaigns:[Campaign] = grabCurrentGroupsCampaigns()
                
                let currentCampaign = currentGroupOfCampaigns[currentIndexPath!.row] as Campaign
               
                destinationVC.currentCampaign = currentCampaign
            }
        }
    }

    
    

    
    
    //MARK: - Helper Functions
    
    // This function is called to get the currentGroup's campaign array
    func grabCurrentGroupsCampaigns() -> [Campaign] {
        
        var currentCampaigns = currentGroup?.campaigns
        
        if currentCampaigns != nil {
            
            return currentCampaigns!
        }
        else {
            
            var tempCampaign = [Campaign]()
            
            return tempCampaign
        }
    }


    
    
}
