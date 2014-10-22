//
//  Group.swift
//  MailCampaignTracker
//
//  Created by Mark Stuver on 10/22/14.
//  Copyright (c) 2014 Mark Stuver. All rights reserved.
//

import Foundation


struct Group {
    
    var name = ""
    var description = ""
    var customerType = ""
    var dateCreated = ""
    var notes = ""
    var dateOfLastCampaign = ""
    var numberOfRecipients = 000
    var recipients:[Recipient]?
    var campaigns:[Campaign]?
    var materialSent:[Material]?
}
