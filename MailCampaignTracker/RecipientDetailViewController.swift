//
//  RecipientDetailViewController.swift
//  MailCampaignTracker
//
//  Created by Mark Stuver on 10/23/14.
//  Copyright (c) 2014 Mark Stuver. All rights reserved.
//

import UIKit

/// Conform to RecipientDetailVC's delegate
class RecipientDetailViewController: UIViewController, RecipientEditDelegate {
    
    @IBOutlet weak var contactNameLabel: UILabel!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var zipLabel: UILabel!
    
    var currentRecipient: Recipient!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureView()

        // Do any additional setup after loading the view.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func configureView() {
        // Update the user interface for the Group.
        if let recipientDetail = self.currentRecipient {
                       
            self.title = "\(recipientDetail.name)"

            self.contactNameLabel.text = "\(recipientDetail.firstName) \(recipientDetail.lastName)"
            
            self.companyLabel.text = recipientDetail.name
            self.addressLabel.text = recipientDetail.address1
            self.cityLabel.text = recipientDetail.city
            self.stateLabel.text = recipientDetail.state
            self.zipLabel.text = "\(recipientDetail.zipcode)"
        }
    }
    
//Mark: - DELEGATE METHODS

/// Call for RecipientEditVC's Recipient-EDIT-Delegate Method
    func recipientEditDoneButtonPressed(controller: RecipientEditViewController, editedRecipient: String) {
        
 
        self.companyLabel.text = editedRecipient
        
        // remove the RecipientEditVC view from the Navigation Stack & reset view
        controller.navigationController?.popViewControllerAnimated(true)        
    }
    
/// Call for RecipientEditVC's Recipient-ADD-Delegate Method
//    func recipientAddDoneButtonPressed(controller: RecipientEditViewController, addedRecipient: String) {
//        
//        controller.navigationController?.popViewControllerAnimated(true)
//    }
    
 
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    
        if segue.identifier == "ToRecipientEdit" {
            
            let destinationVC = segue.destinationViewController as RecipientEditViewController
            
            destinationVC.currentRecipient = self.currentRecipient
            
            /// Set the destinationVC's delegate to self
                destinationVC.delegateEdit = self
        }
    }
}
