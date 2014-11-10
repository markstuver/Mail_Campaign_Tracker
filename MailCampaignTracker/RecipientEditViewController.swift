//
//  RecipientEditViewController.swift
//  MailCampaignTracker
//
//  Created by Mark Stuver on 10/27/14.
//  Copyright (c) 2014 Mark Stuver. All rights reserved.
//

import UIKit

protocol RecipientEditDelegate {
    
    func recipientEditDoneButtonPressed(controller:RecipientEditViewController, editedRecipient:String)
}

protocol RecipientAddDelegate {
    
    func recipientAddButtonPressed(controller:RecipientEditViewController, addedRecipient:String)
}

class RecipientEditViewController: UIViewController {
    
    @IBOutlet weak var contactTextField: UITextField!
    @IBOutlet weak var companyNameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var stateTextField: UITextField!
    @IBOutlet weak var zipcodeTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    
    // Create variable to set the delegate
    var delegateAdd:RecipientAddDelegate? = nil
    var delegateEdit:RecipientEditDelegate? = nil
    
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
        // Update the user interface for the Recipient.
        if self.currentRecipient != nil {
            
            self.title = "\(currentRecipient.name)"
            
            self.contactTextField.text = "\(currentRecipient.firstName) \(currentRecipient.lastName)"
            
            self.companyNameTextField.text = currentRecipient.name
            self.addressTextField.text = currentRecipient.address1
            self.cityTextField.text = currentRecipient.city
            self.stateTextField.text = currentRecipient.state
            self.zipcodeTextField.text = "\(currentRecipient.zipcode)"
        }
    }
    
    
    
    @IBAction func doneButtonPressed(sender: UIBarButtonItem) {
        
        let information = companyNameTextField.text
        
// DELEGATE BACK TO EDIT VC
        if (delegateEdit != nil) {

        delegateEdit!.recipientEditDoneButtonPressed(self, editedRecipient:information)
        }
        
// DELEGATE BACK TO TABLE VC
        else if (delegateAdd != nil) {
            
            delegateAdd!.recipientAddButtonPressed(self, addedRecipient:information)
        }
    }
    

    @IBAction func cancelButtonPressed(sender: UIBarButtonItem) {
        
        self.navigationController?.popViewControllerAnimated(true)

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
