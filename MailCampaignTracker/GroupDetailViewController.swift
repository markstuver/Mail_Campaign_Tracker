//
//  GroupDetailViewController.swift
//  MailCampaignTracker
//
//  Created by Mark Stuver on 10/21/14.
//  Copyright (c) 2014 Mark Stuver. All rights reserved.
//

import UIKit

class GroupDetailViewController: UIViewController {

    @IBOutlet weak var groupDetailDescriptionLabel: UILabel!
    
    @IBOutlet weak var campaignTitleLabel: UILabel!
    @IBOutlet weak var campaignTypeLabel: UILabel!
    @IBOutlet weak var dateCreatedLabel: UILabel!
    @IBOutlet weak var notesLabel: UILabel!
    @IBOutlet weak var recipientNumberLabel: UILabel!
    
    var campaignItem: Campaign? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the campaign item.
        if let detail: Campaign = self.campaignItem {
            if let label = self.campaignTitleLabel {
                
                label.text = campaignItem?.title
                self.campaignTypeLabel.text = campaignItem?.type
                self.dateCreatedLabel.text = campaignItem?.dateGroupCreated
                self.notesLabel.text = campaignItem?.notes
                
                
            }
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


}

