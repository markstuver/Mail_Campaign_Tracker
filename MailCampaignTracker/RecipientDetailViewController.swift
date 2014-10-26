//
//  RecipientDetailViewController.swift
//  MailCampaignTracker
//
//  Created by Mark Stuver on 10/23/14.
//  Copyright (c) 2014 Mark Stuver. All rights reserved.
//

import UIKit

class RecipientDetailViewController: UIViewController {
    
    @IBOutlet weak var contactNameLabel: UILabel!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var customerTypeLabel: UILabel!
    @IBOutlet weak var groupLabel: UILabel!
    
    
    var currentRecipient: Recipient!

    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        //self.title = "\(currentRecipient!.name)"
        
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
            
            print("\(recipientDetail.name)")
            
            self.title = "\(recipientDetail.name) Details"

            self.contactNameLabel.text = "\(recipientDetail.firstName) \(recipientDetail.lastName)"
            
            self.companyLabel.text = recipientDetail.name
            self.addressLabel.text = recipientDetail.address1
            self.cityLabel.text = recipientDetail.city
            self.stateLabel.text = recipientDetail.state
            self.zipLabel.text = "\(recipientDetail.zipcode)"
            self.customerTypeLabel.text = recipientDetail.customerType
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
