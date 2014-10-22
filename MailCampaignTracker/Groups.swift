//
//  Groups.swift
//  MailCampaignTracker
//
//  Created by Mark Stuver on 10/21/14.
//  Copyright (c) 2014 Mark Stuver. All rights reserved.
//

import Foundation

class Groups {
    
    class func createGroup()-> [Campaign] {
        
        var group1 = Campaign()
        group1.title = "CANA 2013"
        group1.location = ""
        group1.dateGroupCreated = Date.dateMailingCreated(isDateTodays: false)
        group1.type = "CANA"
        group1.notes = "Sent to attendees selected by Mark Pennington"
        group1.dateMailed = ""
        
        var group2 = Campaign()
        group2.title = "CANA 2014"
        group2.location = ""
        group2.dateGroupCreated = Date.dateMailingCreated(isDateTodays: true)
        group2.type = "CANA"
        group2.notes = "Sent to attendees selected by Mark Pennington"
        group2.dateMailed = ""
        
        var group3 = Campaign()
        group3.title = "Hawaii Funeral Homes"
        group3.location = "Hawaii Funeral Homes"
        group3.dateGroupCreated = Date.dateMailingCreated(isDateTodays: false)
        group3.type = "Prospects"
        group3.notes = "Sent to funeral homes selected by Mark Pennington"
        group3.dateMailed = ""
        
        var group4 = Campaign()
        group4.title = "ICCFA 2010"
        group4.location = "Houston, TX"
        group4.dateGroupCreated = Date.dateMailingCreated(isDateTodays: true)
        group4.type = "ICCFA"
        group4.notes = "Sent to attendees selected by Mark Pennington"
        group4.dateMailed = ""
        
        
        var groupsArray = [group1, group2, group3, group4]
        
        return groupsArray
    
    }
    


        
    
    
    
    
    
}



