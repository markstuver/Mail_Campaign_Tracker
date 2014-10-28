//
//  GroupDetailViewController.swift
//  MailCampaignTracker
//
//  Created by Mark Stuver on 10/21/14.
//  Copyright (c) 2014 Mark Stuver. All rights reserved.
//

import UIKit


class GroupDetailViewController: UIViewController {
    
    
    @IBOutlet weak var groupNameLabel: UILabel!
    @IBOutlet weak var dateCreatedLabel: UILabel!
    @IBOutlet weak var groupDescriptionLabel: UILabel!
    @IBOutlet weak var customerTypeLabel: UILabel!
    @IBOutlet weak var notesLabel: UILabel!
    
    
        var currentGroup: Group? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the Group.
        if let groupDetail: Group = self.currentGroup {
            
            
            self.title = "Group Details"
                
            self.groupNameLabel?.text = groupDetail.name
            self.groupDescriptionLabel?.text = groupDetail.description
            self.customerTypeLabel?.text = groupDetail.customerType
            self.dateCreatedLabel?.text = groupDetail.dateCreated
            self.notesLabel?.text = groupDetail.notes
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
       
        //Create instance equal to the first UINavigationController in the chidViewControllers array
        let navigationCampaignVC = segue.destinationViewController.childViewControllers.first! as UINavigationController
        
        let destinationCampaignVC = navigationCampaignVC.childViewControllers.last! as CampaignsTableViewController
        
        //Create instance equal to the last UINavigationController in the chidViewControllers array
        let navigationRecipientVC = segue.destinationViewController.childViewControllers[1] as UINavigationController
        
        // Crate instance equal to the last index in the navigationRecipientVC array
        let destinationRecipientVC = navigationRecipientVC.childViewControllers.last! as RecipientsTableViewController

        
        if destinationRecipientVC.isKindOfClass(RecipientsTableViewController) {
            
            destinationRecipientVC.currentGroup = self.currentGroup
        }
        else {
            
            println("Error! destinationRecipientVC is not of the correct class! See GroupDetailViewController")
        }
        
        if destinationCampaignVC.isKindOfClass(CampaignsTableViewController) {
      
            destinationCampaignVC.currentGroup = self.currentGroup
        }
        else {
            println("Error! destinationCampaignVC is not of the correct class! See GroupDetailViewController")
        }
    }
    
    
}

