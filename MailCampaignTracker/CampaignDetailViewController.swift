//
//  CampaignDetailViewController.swift
//  MailCampaignTracker
//
//  Created by Mark Stuver on 10/27/14.
//  Copyright (c) 2014 Mark Stuver. All rights reserved.
//

import UIKit

class CampaignDetailViewController: UIViewController {

    @IBOutlet weak var dateSentLabel: UILabel!
    @IBOutlet weak var courierUsedLabel: UILabel!
    @IBOutlet weak var notesLabel: UILabel!
    
    
    var currentCampaign: Campaign!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureView()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func configureView() {
        // Update the user interface for the Group.
        if let campaignDetail = self.currentCampaign {
            
            print("\(campaignDetail.title)")
            
            self.dateSentLabel.text = "\(campaignDetail.dateSent)"
            self.courierUsedLabel.text = "\(campaignDetail.courierUsed)"
            self.notesLabel.text = "\(campaignDetail.notes)"

            
            self.title = "\(campaignDetail.title)"
            
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
