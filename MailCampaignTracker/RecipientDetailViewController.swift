//
//  RecipientDetailViewController.swift
//  MailCampaignTracker
//
//  Created by Mark Stuver on 10/23/14.
//  Copyright (c) 2014 Mark Stuver. All rights reserved.
//

import UIKit

class RecipientDetailViewController: UIViewController {
    
    let currentRecipient = Recipient?()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = \(currentRecipient.fu

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
