//
//  AddRecipientViewController.swift
//  MailCampaignTracker
//
//  Created by Mark Stuver on 11/4/14.
//  Copyright (c) 2014 Mark Stuver. All rights reserved.
//

import UIKit

class AddRecipientViewController: UIViewController {

    
    
    
    


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
//MARK: - IBAction Methods
    
    // Add Recipient Button Pressed
    @IBAction func addRecipientButtonPressed(sender: UIButton) {
        
        
    }
    
    // Cancel Button Pressed
    @IBAction func cancelButtonPressed(sender: UIButton) {
        
        self.dismissViewControllerAnimated(true, completion: nil)

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
