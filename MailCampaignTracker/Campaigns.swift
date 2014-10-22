//
//  Campaigns.swift
//  MailCampaignTracker
//
//  Created by Mark Stuver on 10/22/14.
//  Copyright (c) 2014 Mark Stuver. All rights reserved.
//

import Foundation

class Campaigns {
    
    class func createCampaign() -> [Campaign] {
        
        var campaign1 = Campaign(title: "Mailing #1", dateSent: "10/23/14", courierUsed: "UPS Mail Innovations", notes: "Notes can go here", materialsSent: [Materials]?())
        
        var campaign2 = Campaign(title: "Mailing #2", dateSent: "11/21/14", courierUsed: "FedEx Select", notes: "la, la, la, note can go here!", materialsSent: [Materials]?())
        
        var campaign3 = Campaign(title: "New Urn Catalog Mailing", dateSent: "11/30/14", courierUsed: "US Express Mail", notes: "Jingle Bells, Jingle Bells, Jingle Your Notes Right Here", materialsSent: [Materials]?())
        
        var campaign4 = Campaign(title: "Follow Up from November 2014 Conference", dateSent: "12/12/14", courierUsed: "UPS Mail Innovations", notes: "Old McNote Man had a Note, e, i, e, i, o", materialsSent: [Materials]?())
        
        
        var arrayOfCampaigns = [campaign1, campaign2, campaign3, campaign4]
        
        return arrayOfCampaigns
    }
    
   
}
