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
        
        // Create instance of an array that contains the childVCs of the destinationVC
        var navControllers = segue.destinationViewController.childViewControllers
        
        // Iterate through the items in navControllers
        for var i = 0; i < navControllers.count; i++ {
            
            // Create variable that is equal to the navController at the the i index
            var currentNavController: AnyObject = navControllers[i]
            
            // Create instance of an array that contains the childVCs of the current navController
            var viewControllers = currentNavController.childViewControllers
            
            // Iterate through the items in viewControllers
            for var s = 0; s < viewControllers.count; s++ {
                
                // Create variable that is equal to the viewController at the s index
                var currentViewController: AnyObject = viewControllers[s]
                
                // If the currentVC's class is RecipientsTBVC
                if currentViewController.isKindOfClass(RecipientsTableViewController) {

                    // Create instance of the VC and cast as the RecipientTBVC
                    var destinationVC = currentViewController as RecipientsTableViewController
                    
                    // Set destinationVC's currentGroup equal to this VC's currentGroup
                    destinationVC.currentGroup = self.currentGroup
                }
                    
                    // If the currentVC's class is CampaignsTBVC
                   else if currentViewController.isKindOfClass(CampaignsTableViewController) {
                        
                        // Create instance of the VC and cast as the CampaignsTBVC
                        var destinationVC = currentViewController as CampaignsTableViewController
                        
                        // Set destinationVC's currentGroup equal to this VC's currentGroup
                        destinationVC.currentGroup = self.currentGroup
                
                }
                    
                    // If the currentVC's class is MaterialsCollectionVC
                else if currentViewController.isKindOfClass(MaterialsCollectionViewController) {
                    
                    // Create instance of the VC and cast as the MaterialsCollectionVC
                    var destinationVC = currentViewController as MaterialsCollectionViewController
                    
                    // Set destinationVC's currentGroup equal to this VC's currentGroup
                    destinationVC.currentGroup = self.currentGroup
                }
            }
        }
    }

    
    
    
    
}

