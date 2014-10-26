//
//  GroupDetailViewController.swift
//  MailCampaignTracker
//
//  Created by Mark Stuver on 10/21/14.
//  Copyright (c) 2014 Mark Stuver. All rights reserved.
//

import UIKit

protocol GroupDetailVCDelegate {
    
    func sendDataToVC(info:String)
}

class GroupDetailViewController: UIViewController {
    
    @IBOutlet weak var groupNameLabel: UILabel!
    @IBOutlet weak var dateCreatedLabel: UILabel!
    @IBOutlet weak var groupDescriptionLabel: UILabel!
    @IBOutlet weak var customerTypeLabel: UILabel!
    @IBOutlet weak var notesLabel: UILabel!
    
    var delegate:GroupDetailVCDelegate? = nil
    
        var currentGroup: Group? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the Group.
        if let groupDetail: Group = self.currentGroup {
            
            if delegate != nil {
                
                let information:String = "Howdy Neighbor!!"
                delegate!.sendDataToVC(information)
                
            }
            
            
            self.title = "\(groupDetail.name) Details"
                
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
    
    
    func printSomething() {
        println("printSomething Protocol Method has been executed!!")
    }
    
    func sendCurrentGroup()-> Group {
        
        return currentGroup!
    }
    

    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
//        //Create instance array of the views that are connected to the ContainerView
//        let containerView: AnyObject = segue.destinationViewController.childViewControllers.last!
//        println("Views in containerView: \(containerView)")
        
        //Create instance array of the views that are connected to the ContainerView
        let navigationRecipientVC: AnyObject = segue.destinationViewController.childViewControllers.last!
        println("Views in containerView: \(navigationRecipientVC)")
        
        let destinationVC: AnyObject = navigationRecipientVC.childViewControllers.first!
        println("Views in destinationVC: \(destinationVC)")
        
        println("TabBar Item: \(destinationVC.viewControllers.description!)")
        
       // if navigationRecipientVC.tabBarItem.description

        
        //Create instance of the first index (0) in the containerView
      // let navigationRecipientsVC = containerView[0] as UINavigationController

        //Create instance of the first index (1) in the containerView
      //  let navigationCampaignVC = containerView[1] as UINavigationController
        
        // Create instance and set to the first VC in the navigationVC's stack
       // let destinationRecipientVC = navigationRecipientsVC. as RecipientsTableViewController
        
        // Create instance and set to the first VC in the navigationVC's stack
        //let destinationTwoVC = navigationTwoVC.viewControllers.first as CampaignsTableViewController
        
        
        // Verify that destinationVC is of the correct class
     //   if destinationOneVC.isKindOfClass(RecipientsTableViewController) {
            
       //     println("Segue to RecipientsTableViewController")

            //Set DestinationVC's currentGroup equal to this VC's current Group
            //destinationOneVC.currentGroup = self.currentGroup
      //  }
        
//        else if destinationTwoVC.isKindOfClass(CampaignsTableViewController) {
//            
//            println("Segue to CampaignsTableViewController")            
//        }
   }
    
}

