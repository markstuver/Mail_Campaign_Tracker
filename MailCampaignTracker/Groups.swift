//
//  Groups.swift
//  MailCampaignTracker
//
//  Created by Mark Stuver on 10/21/14.
//  Copyright (c) 2014 Mark Stuver. All rights reserved.
//

import Foundation

class Groups {
    
    
    class func createGroup()-> [Group] {
        
        var arrayOfCampaigns = Campaigns.createCampaign()
        var arrayOfMaterials = Materials.setOfMailingMaterials()
        var arrayOfRecipients = Recipients.createRecipients()

        
        var group1 = Group(name: "CANA", description: "Members of the Cremation Association of North America", customerType: "Prospects", dateCreated: "10/11/14", notes: "This not is a long note because I am check this not to make sure that the note label is long enough to be used for a large note... notes.... notes..... notes......... ok, i'm done!", dateOfLastCampaign: "10/14/14", numberOfRecipients: 110, recipients: arrayOfRecipients, campaigns: arrayOfCampaigns, materialSent: arrayOfMaterials)
        
        var group2 = Group(name: "VFC", description: "Veterans Funeral Care", customerType: "Funeral Homes w/ Discounts", dateCreated: "10/11/14", notes: "Veterans Funeral Care Network headed by Jim Rudolph", dateOfLastCampaign: "10/14/14", numberOfRecipients: 140, recipients: arrayOfRecipients, campaigns: arrayOfCampaigns, materialSent: arrayOfMaterials)
        
        var group3 = Group(name: "YB News", description: "Clients that ordered through the YB Advertisments", customerType: "Prospects", dateCreated: "10/09/14", notes: "Most recipients made only one purchase at the time of the ad", dateOfLastCampaign: "10/19/14", numberOfRecipients: 105, recipients: arrayOfRecipients, campaigns: arrayOfCampaigns, materialSent: arrayOfMaterials)
        
        var group4 = Group(name: "Distributors", description: "Current Distributors", customerType: "Current", dateCreated: "10/19/14", notes: "Current Distributors that are in MAS90", dateOfLastCampaign: "10/23/14", numberOfRecipients: 200, recipients: arrayOfRecipients, campaigns: arrayOfCampaigns, materialSent: arrayOfMaterials)
        
        var groupsArray = [group1, group2, group3, group4]
        
        return groupsArray
    }
}
